Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-a7f17b7b4e7a41f9.dsl_auto_type.a0dd34975a68d28a-cgu.2?download=true
inline.NumInlined: 115
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXsD_Csf5uYjtxkodL_11proc_macro2NtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsdOh5Xhm0ZW8_13dsl_auto_type:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8
  invoke void @_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_strCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1, ptr %i.c, i64 %i.e)
          to label %_RINvXss_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsdOh5Xhm0ZW8_13dsl_auto_type.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.a) #28
          to label %bb.d unwind label %bb.c

_RINvXss_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.a
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsdfcQ11shQaG_6strsim(ptr nonnull align 8 %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXsd_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB3O_17ErrorUnknownValue9with_altsB3C_RAB3C_j5_E0EECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !25 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB19_8adapters3map3MapINtNtNtB1b_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB3l_17ErrorUnknownValue9with_altsB39_RAB39_j5_E0EECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %1, ptr %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  invoke void @_RINvNtCs40k4W9msRzi_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltECsjWx9XcG30NR_12darling_core(ptr align 8 %i.g, i64 %i.d)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.010.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.211.0.copyload = load ptr, ptr %i.f, align 8 ; 3 uses
  %.sroa.312.0.copyload = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.211.0.copyload, i64 %.sroa.312.0.copyload
  store ptr %.sroa.211.0.copyload, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.010.0.copyload, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.211.0.copyload, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.k, align 8
  call void @_RINvMse_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB18_EECsjWx9XcG30NR_12darling_core(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.b) #28
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXss_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_strCsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %1, ptr %i.b, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBa_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10filter_mapB15_NCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0EB2Y_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 !guid !27 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBa_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_mapB15_QNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0EB2W_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !28 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not14.i = icmp eq ptr %i.g, %i.f
  br i1 %.not14.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtB4_9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i
  %i.h = phi ptr [ %i.m, %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtB4_9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0INtB7_5FnMutTINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEE8call_mutBW_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b, ptr %i.i)
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtB4_9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, label %bb.b

_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtB4_9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void

.loopexit:                                        ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtB4_9try_trait3Try6branchCsdOh5Xhm0ZW8_13dsl_auto_type.exit.i, %bb.a
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCshMFl0SviwmK_3syn5error5ErrorEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.c)
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBJ_NvYBJ_NtNtBa_5clone5Clone5cloneECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1) unnamed_addr #3 !guid !29 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEENtNtNtNtBa_4iter6traits8iterator8Iterator6clonedBJ_ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1) unnamed_addr #4 !guid !30 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB2g_17ErrorUnknownValue9with_altsBJ_RABJ_j5_E0ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1) unnamed_addr #3 !guid !31 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1c_2ty4TypeEIB18_NtNtB1c_4expr4ExprEENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB2y_12TypeInferrer25try_infer_expression_types_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1a_10PunctuatedB1L_NtNtB1c_5token5CommaEEB2C_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !32 {
bb.a:
  tail call void @_RINvXs4_NtCshMFl0SviwmK_3syn10punctuatedINtB6_10PunctuatedNtNtB8_2ty4TypeNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1A_8adapters3map3MapINtNtB2M_3zip3ZipINtB6_4IterBU_EIB3r_NtNtB8_4expr4ExprEENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB4a_12TypeInferrer25try_infer_expression_types_0EEB4e_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBW_4expr4ExprENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB1U_12TypeInferrer25try_infer_expression_types0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_10PunctuatedNtNtBW_2ty4TypeNtNtBW_5token5CommaEEB1Y_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !33 {
bb.a:
  tail call void @_RINvXs4_NtCshMFl0SviwmK_3syn10punctuatedINtB6_10PunctuatedNtNtB8_2ty4TypeNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1A_8adapters3map3MapINtB6_4IterNtNtB8_4expr4ExprENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB3J_12TypeInferrer25try_infer_expression_types0_0EEB3N_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBW_4expr4ExprENcNtINtNtBc_6option6OptionRB1v_E4Some0ENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_3ops5range9RangeFromlENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB3L_12TypeInferrer27infer_generics_or_use_hintss_0EEB3P_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr align 8 %2, i32 %3) unnamed_addr #5 personality ptr @rust_eh_personality !guid !34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  %4 = freeze i32 %3
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, 1
  store i64 %7, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1t_17ErrorUnknownValue9with_altsB1h_RAB1h_j5_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB3K_6string6StringEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #1 !guid !35 {
bb.a:
  tail call void @_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB19_8adapters3map3MapINtNtNtB1b_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB3l_17ErrorUnknownValue9with_altsB39_RAB39_j5_E0EECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1t_17ErrorUnknownValue9with_altsB1h_RAB1h_j5_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3set8BTreeSetNtNtB3O_6string6StringEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #1 !guid !36 {
bb.a:
  tail call void @_RINvXsd_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtB1D_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB3O_17ErrorUnknownValue9with_altsB3C_RAB3C_j5_E0EECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1t_17ErrorUnknownValue9with_altsB1h_RAB1h_j5_E0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3P_3VecNtNtB3R_6string6StringE14extend_trustedB3_E0ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !37 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1z_17ErrorUnknownValue9with_altsB1n_RAB1n_j5_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callNtNtCs40k4W9msRzi_5alloc6string6StringNCINvMsj_NtB4c_3vecINtB4T_3VecB48_E14extend_trustedBN_E0E0ECsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i.i, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRReNtNtCs40k4W9msRzi_5alloc6string6StringuNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB25_17ErrorUnknownValue9with_altsB1h_RAB1h_j5_E0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1j_NCINvMsj_NtB1n_3vecINtB4G_3VecB1j_E14extend_trustedINtBG_3MapINtNtNtB4_5slice4iter4IterB1h_EB1W_EE0E0E0ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.c) #28
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB8_17ErrorUnknownValue9with_altsReRAB1n_j5_E0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull %i.i, ptr align 8 %i.k)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke void @_RNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB2L_17ErrorUnknownValue9with_altsB2z_RAB2z_j5_E0EE0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h
  br i1 %i.m, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1z_17ErrorUnknownValue9with_altsB1n_RAB1n_j5_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callNtNtCs40k4W9msRzi_5alloc6string6StringNCINvMsj_NtB4c_3vecINtB4T_3VecB48_E14extend_trustedBN_E0E0ECsdOh5Xhm0ZW8_13dsl_auto_type.exit, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1z_17ErrorUnknownValue9with_altsB1n_RAB1n_j5_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callNtNtCs40k4W9msRzi_5alloc6string6StringNCINvMsj_NtB4c_3vecINtB4T_3VecB48_E14extend_trustedBN_E0E0ECsdOh5Xhm0ZW8_13dsl_auto_type.exit: ; preds = %bb.e, %bb.a
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRReNtNtCs40k4W9msRzi_5alloc6string6StringuNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB25_17ErrorUnknownValue9with_altsB1h_RAB1h_j5_E0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1j_NCINvMsj_NtB1n_3vecINtB4G_3VecB1j_E14extend_trustedINtBG_3MapINtNtNtB4_5slice4iter4IterB1h_EB1W_EE0E0E0ECsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtCshMFl0SviwmK_3syn8generics10TypeParamsNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtCsf5uYjtxkodL_11proc_macro25IdentbEEEB1G_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr align 8 %2) unnamed_addr #1 !guid !38 {
bb.a:
  tail call void @_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTRNtCsf5uYjtxkodL_11proc_macro25IdentbEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1r_8adapters3map3MapNtNtCshMFl0SviwmK_3syn8generics10TypeParamsNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss_0EEB3P_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtCshMFl0SviwmK_3syn8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtBV_8lifetime8LifetimebEEEB1E_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr align 8 %2) unnamed_addr #1 !guid !39 {
bb.a:
  tail call void @_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1w_8adapters3map3MapNtNtBM_8generics9LifetimesNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EEB3D_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBW_2ty4TypeEIBS_NtNtBW_4expr4ExprEENtNtNtBa_6traits8iterator8Iterator3mapB1v_NCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB2V_12TypeInferrer25try_infer_expression_types_0EB2Z_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 !guid !40 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBW_4path15GenericArgumentEINtNtB8_5chain5ChainINtNtB8_3map3MapIBS_NtNtBW_4expr4ExprENcNtINtNtBc_6option6OptionRB2D_E4Some0EIB2k_INtNtNtBc_3ops5range9RangeFromlENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB4g_12TypeInferrer27infer_generics_or_use_hintss_0EEENtNtNtBa_6traits8iterator8Iterator3mapB1v_NCB4b_s0_0EB4k_(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 64)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 !guid !41 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtB8_6cloned6ClonedINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtB1m_4path11PathSegmentEEINtNtNtBc_5array4iter8IntoIterB1V_Kj1_EENtNtNtBa_6traits8iterator8Iterator7collectINtB1k_10PunctuatedB1V_NtNtB1m_5token7PathSepEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !42 {
bb.a:
  tail call void @_RINvXs4_NtCshMFl0SviwmK_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4path11PathSegmentNtNtB8_5token7PathSepEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1M_8adapters5chain5ChainINtNtB2Y_6cloned6ClonedINtB6_4IterBU_EEINtNtNtB1O_5array4iter8IntoIterBU_Kj1_EEECsdOh5Xhm0ZW8_13dsl_auto_type(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCshMFl0SviwmK_3syn4path15GenericArgumentEINtCschbeoyK22qs_6either6EitherINtNtB8_3map3MapINtNtB1n_10punctuated4IterNtNtB1n_4expr4ExprENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB3D_12TypeInferrer27infer_generics_or_use_hints0EIB2y_INtNtB8_3zip3ZipIB2O_B1j_EIB4_IB2y_B2N_NcNtINtBY_6OptionRB3d_E4Some0EIB2y_INtNtNtBc_3ops5range9RangeFromlENCB3y_s_0EEENCB3y_s0_0EEENtNtNtBa_6traits8iterator8Iterator7collectINtB2Q_10PunctuatedB1j_NtNtB1n_5token5CommaEEB3H_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !43 {
bb.a:
  tail call void @_RINvXs4_NtCshMFl0SviwmK_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4path15GenericArgumentNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1O_8adapters5chain5ChainINtNtB1Q_6option8IntoIterBU_EINtCschbeoyK22qs_6either6EitherINtNtB30_3map3MapINtB6_4IterNtNtB8_4expr4ExprENCNvMs_NtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inferenceNtB5g_12TypeInferrer27infer_generics_or_use_hints0EIB4q_INtNtB30_3zip3ZipIB4H_BU_EIB2W_IB4q_B4G_NcNtINtB3u_6OptionRB4R_E4Some0EIB4q_INtNtNtB1Q_3ops5range9RangeFromlENCB5b_s_0EEENCB5b_s0_0EEEEB5k_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtCshMFl0SviwmK_3syn8generics10TypeParamsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3mapTRNtCsf5uYjtxkodL_11proc_macro25IdentbENCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss_0EB2u_(ptr %0, ptr align 8 %1) unnamed_addr #3 !guid !44 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtCshMFl0SviwmK_3syn8generics9LifetimesNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3mapTRNtNtB7_8lifetime8LifetimebENCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics0EB2i_(ptr %0, ptr align 8 %1) unnamed_addr #3 !guid !45 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSTRNtCsf5uYjtxkodL_11proc_macro25IdentbE20binary_search_by_keyBy_NCNvXNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1E_7VisitorNtNtNtCshMFl0SviwmK_3syn3gen5visit5Visit15visit_type_path0E0B1K_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !46 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 @_RNvXsC_Csf5uYjtxkodL_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr align 8 %.val, ptr align 8 %i.c)
  ret i8 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCshMFl0SviwmK_3syn8lifetime8LifetimebE20binary_search_by_keyBy_NCNvXNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1J_7VisitorNtNtNtBD_3gen5visit5Visit14visit_lifetime0E0B1P_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !47 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 @_RNvXs4_NtCshMFl0SviwmK_3syn8lifetimeNtB5_8LifetimeNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr align 8 %.val, ptr align 8 %i.c)
  ret i8 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3D_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call ptr @_RNvYNvYINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneINtNtNtB1d_3ops8function5FnMutTRB5_EE8call_mutCsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull %i.a, ptr align 8 %1)
  tail call void @_RNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB8_3VecINtNtBa_2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterBI_EEE0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRReNtNtCs40k4W9msRzi_5alloc6string6StringuNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB1J_17ErrorUnknownValue9with_altsBV_RABV_j5_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsj_NtB11_3vecINtB4h_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !49 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB8_17ErrorUnknownValue9with_altsReRAB1n_j5_E0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull %i.c, ptr align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterReENCINvMs3_NtNtCsjWx9XcG30NR_12darling_core5error4kindNtB2L_17ErrorUnknownValue9with_altsB2z_RAB2z_j5_E0EE0CsdOh5Xhm0ZW8_13dsl_auto_type(ptr align 8 %0, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEB1L_QNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0E0B2x_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1, ptr %2) unnamed_addr #1 !guid !50 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCsdOh5Xhm0ZW8_13dsl_auto_type9auto_type25expression_type_inference21infer_expression_type0INtB7_5FnMutTINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCshMFl0SviwmK_3syn5error5ErrorEEE8call_mutBW_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1, ptr %2)
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d
end_hunk_0
