Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-a7f17b7b4e7a41f9.dsl_auto_type.a0dd34975a68d28a-cgu.0?download=true
inline.NumInlined: 58
inline.NumDeleted: 10
begin_hunk_0_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtB17_8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EE9from_iterB3B_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = invoke { ptr, i8 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtCshMFl0SviwmK_3syn8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0ENtNtNtB9_6traits8iterator8Iterator4nextB1J_(ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i8 } %i.e, 0
  %i.h = extractvalue { ptr, i8 } %i.e, 1         ; 2 uses
  %.not = icmp eq i8 %i.h, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtCshMFl0SviwmK_3syn8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCshMFl0SviwmK_3syn8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EEB1W_(ptr nonnull align 8 %i.c)
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtBX_8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EE11spec_extendB3h_.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8
  %i.m = call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 1)
  %i.n = invoke i64 @_RNvYjNtNtCscI6d9CVNmLh_4core3cmp3Ord3maxCsdfcQ11shQaG_6strsim(i64 4, i64 %i.m)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.o = invoke { i64, ptr } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdfcQ11shQaG_6strsim(i64 %i.n, i64 8, i64 16)
          to label %bb.j unwind label %bb.g       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 3 uses
  store ptr %i.g, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 %i.h, ptr %i.r, align 8
  store i64 %i.p, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.d, align 8
  invoke void @_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtBM_8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EEB33_(ptr nonnull align 8 %i.b, ptr %i.s, ptr align 8 %i.t)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtBX_8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EE11spec_extendB3h_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.b) #23
          to label %bb.m unwind label %bb.l

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtBX_8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EE11spec_extendB3h_.exit: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.f

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.n
  %.pn11 = phi { ptr, i32 } [ %.pn.ph, %bb.n ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %.pn11

bb.n:                                             ; preds = %bb.g, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.k, %bb.g ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCshMFl0SviwmK_3syn8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EEB1W_(ptr nonnull align 8 %i.c) #23
          to label %bb.m unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecINtNtB9_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE8as_sliceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscIsuJ8n2VmD_9addr2line(ptr nonnull align 8 %0, i64 %i.f, i64 %i.d, i64 8, i64 8)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread.i
  %.pre.i = load i64, ptr %i.e, align 8
  br label %bb.c

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i: ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, %.noexc
  %i.j = phi i64 [ %.pre.i, %.noexc ], [ %i.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  %i.n = shl i64 %i.d, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr readonly align 8 %i.c, i64 %i.n, i1 false)
  %.pre2.i = load i64, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i
  %i.o = phi i64 [ %.pre2.i, %bb.c ], [ %i.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ]
  %i.p = add i64 %i.o, %i.d
  store i64 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.t, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE7reserveCsdOh5Xhm0ZW8_13dsl_auto_type.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1) #23
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtB7_14DeriveSettingsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @89, i64 3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @_RINvNtCshMFl0SviwmK_3syn11parse_quote5parseNtNtB4_4path4PathECsjWx9XcG30NR_12darling_core(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 @91)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.g, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0INtB7_5FnMutTINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEE8call_mutBW_(ptr sret([24 x i8]) align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCshMFl0SviwmK_3syn5error5ErrorE10try_unwrapCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %2), !noalias !9
  call void @_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCshMFl0SviwmK_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBH_EE2okCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference12literal_type0NtB5_11MultiCharEq7matchesBM_(ptr nofree readnone captures(none) %0, i32 %1) unnamed_addr #6 {
bb.a:
  %i.a = add i32 %1, -58
  %.sroa.0.0.i.i = icmp ult i32 %i.a, -10
  %i.b = icmp ne i32 %1, 95
  %.sroa.0.0.i = and i1 %i.b, %.sroa.0.0.i.i
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16settings_builderNtNtB7_25expression_type_inference16InferrerSettingsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @89, i64 3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @_RINvNtCshMFl0SviwmK_3syn11parse_quote5parseNtNtB4_4path4PathECsjWx9XcG30NR_12darling_core(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 @92)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %i.f, align 1
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs7_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5derefCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs7_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn4stmt4StmtENtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5derefCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs7_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjWx9XcG30NR_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5derefCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs7_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtCsf5uYjtxkodL_11proc_macro25IdentbEENtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5derefCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs7_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEENtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5derefCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtCsf5uYjtxkodL_11proc_macro25IdentbEENtNtNtCscI6d9CVNmLh_4core3ops5deref8DerefMut9deref_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEENtNtNtCscI6d9CVNmLh_4core3ops5deref8DerefMut9deref_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 4 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_RNvXs8_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr nonnull align 4 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecINtNtB8_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEINtB4_10SpecExtendBT_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtB2b_5slice4iter4IterBT_EEE11spec_extendCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = load i64, ptr %0, align 8
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.i, %i.m
  br i1 %i.n, label %bb.c, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEECsdOh5Xhm0ZW8_13dsl_auto_type.exit

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscIsuJ8n2VmD_9addr2line(ptr nonnull align 8 %0, i64 %i.k, i64 %i.i, i64 8, i64 8)
  %.pre.i = load i64, ptr %i.j, align 8
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEECsdOh5Xhm0ZW8_13dsl_auto_type.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #25
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.t, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.u, align 8
  call void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB1s_3vecINtB3j_3VecB1n_E14extend_trustedB3_E0ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %i.r, ptr %i.s, ptr nonnull align 8 %i.a)
end_hunk_0
begin_hunk_1_@_RNvXsd_NtCsjWx9XcG30NR_12darling_core9from_metaINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB7_4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEENtB5_8FromMeta9from_noneCsdOh5Xhm0ZW8_13dsl_auto_type
; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB5_11Accumulator6finish(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultuNtNtCsjWx9XcG30NR_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionIBv_NtNtCshMFl0SviwmK_3syn4path4PathEE6expectCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([48 x i8]) align 8, ptr align 8, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtNtCsjWx9XcG30NR_12darling_core4util4flag4FlagE6expectCsdOh5Xhm0ZW8_13dsl_auto_type(i32, i32, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionIBv_NtCsf5uYjtxkodL_11proc_macro25IdentEE6expectCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8, ptr align 8, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionIBv_INtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEE6expectCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([32 x i8]) align 8, ptr align 8, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type16DeriveParametersNtNtCsjWx9XcG30NR_12darling_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1J_EE13from_residualBO_(ptr sret([120 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTbINtNtB4_6option6OptionIBE_INtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTbINtNtB4_6option6OptionIBE_NtCsf5uYjtxkodL_11proc_macro25IdentEEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTbINtNtB4_6option6OptionIBE_NtNtCshMFl0SviwmK_3syn4path4PathEEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs_NtCshMFl0SviwmK_3syn4attrNtB4_4Meta4path(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsjWx9XcG30NR_12darling_core4util14path_to_string14path_to_string(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsdOh5Xhm0ZW8_13dsl_auto_type(ptr, i64, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMNtCsjWx9XcG30NR_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j5_ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([80 x i8]) align 8, ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs0_NtCsjWx9XcG30NR_12darling_core5errorNtB6_5Error9with_spanNtNtCshMFl0SviwmK_3syn4attr4MetaEB8_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtCsjWx9XcG30NR_12darling_core9from_metaINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB7_4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEENtB5_8FromMeta9from_metaCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtNtCsjWx9XcG30NR_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB1b_5error5ErrorE7map_errB2P_NCNvXNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_typeNtB3r_16DeriveParametersNtNtB1b_9from_meta8FromMeta9from_lists2_0EB3t_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtB8_4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjWx9XcG30NR_12darling_core5errorNtB2_5Error15duplicate_field(ptr sret([80 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtCsjWx9XcG30NR_12darling_core9from_metaINtNtCscI6d9CVNmLh_4core6option6OptionNtCsf5uYjtxkodL_11proc_macro25IdentENtB5_8FromMeta9from_metaCsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtCsf5uYjtxkodL_11proc_macro25IdentENtNtCsjWx9XcG30NR_12darling_core5error5ErrorE7map_errB1E_NCNvXNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_typeNtB2E_16DeriveParametersNtNtB1I_9from_meta8FromMeta9from_lists1_0EB2G_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleINtNtCscI6d9CVNmLh_4core6option6OptionNtCsf5uYjtxkodL_11proc_macro25IdentEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsjWx9XcG30NR_12darling_core4util4flagNtB4_4FlagNtNtB8_9from_meta8FromMeta9from_meta(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCsjWx9XcG30NR_12darling_core4util4flag4FlagNtNtBO_5error5ErrorE7map_errB1v_NCNvXNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_typeNtB26_16DeriveParametersNtNtBO_9from_meta8FromMeta9from_lists0_0EB28_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleNtNtNtB8_4util4flag4FlagECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCsjWx9XcG30NR_12darling_core4util4flag4FlagNtNtBO_5error5ErrorE7map_errB1v_NCNvXNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_typeNtB26_16DeriveParametersNtNtBO_9from_meta8FromMeta9from_lists_0EB28_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtCsjWx9XcG30NR_12darling_core9from_metaINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCshMFl0SviwmK_3syn4path4PathENtB5_8FromMeta9from_metaB7_(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtCshMFl0SviwmK_3syn4path4PathENtNtCsjWx9XcG30NR_12darling_core5error5ErrorE7map_errB1B_NCNvXNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_typeNtB2B_16DeriveParametersNtNtB1F_9from_meta8FromMeta9from_list0EB2D_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs8_NtCsjWx9XcG30NR_12darling_core5errorNtB6_11Accumulator6handleINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCshMFl0SviwmK_3syn4path4PathEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjWx9XcG30NR_12darling_core5errorNtB2_5Error18unsupported_format(ptr sret([80 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMs0_NtCsjWx9XcG30NR_12darling_core5errorNtB6_5Error9with_spanNtNtCshMFl0SviwmK_3syn3lit3LitEB8_(ptr sret([80 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjWx9XcG30NR_12darling_core5error11AccumulatorEBF_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdfcQ11shQaG_6strsim(i64, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn5error5ErrorEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtCsf5uYjtxkodL_11proc_macro25IdentbEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE8as_sliceCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshMFl0SviwmK_3syn11parse_quote5parseNtNtB4_4path4PathECsjWx9XcG30NR_12darling_core(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXs8_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsjWx9XcG30NR_12darling_core(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtB13_5token5CommaEE5indexCsdOh5Xhm0ZW8_13dsl_auto_type(i64, ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSTNtNtCshMFl0SviwmK_3syn4expr4ExprNtNtB13_5token5CommaEE5indexCsdOh5Xhm0ZW8_13dsl_auto_type(i64, ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSTRNtCsf5uYjtxkodL_11proc_macro25IdentbEE9index_mutCsdOh5Xhm0ZW8_13dsl_auto_type(i64, ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs0_NtNtCscI6d9CVNmLh_4core5slice5indexjINtB5_10SliceIndexSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEE9index_mutCsdOh5Xhm0ZW8_13dsl_auto_type(i64, ptr align 8, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCshMFl0SviwmK_3syn5error5ErrorECsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs7_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_18MultiCharEqPatternNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference12literal_type0ENtB5_7Pattern13into_searcherB1c_(ptr sret([40 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{ptr @_RNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer21infer_expression_type}
!7 = distinct !{!7, i1 false, !"_RNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0B7_"}
!8 = distinct !{!8, !7, !"_RNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0B7_: argument 0"}
!9 = !{!8}
end_hunk_1
