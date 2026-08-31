Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-2eecfb50b9afc52a.tokio_macros.7ac2b7d1e952eaa1-cgu.1?download=true
inline.NumInlined: 169
inline.NumDeleted: 123
begin_hunk_0_@_RINvYINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtBP_8fallbackNtB2s_11TokenStreamINtNtB1z_7collect6ExtendBN_E6extendABN_B1r_E0ECsaxs130FOtor_12tokio_macros:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8
  invoke void @_RINvXs_NtNtCs3oUPovFnLWP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE8try_folduNCINvMNtB7_9try_traitINtB4t_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCINvXsa_NtB3A_8fallbackNtB63_11TokenStreamINtNtB14_7collect6ExtendB3y_E6extendAB3y_j1_E0E0E0B4I_E0B4I_ECsaxs130FOtor_12tokio_macros(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1B_8for_each4callBT_NCINvXsa_NtBV_8fallbackNtB2X_11TokenStreamINtNtB1F_7collect6ExtendBT_E6extendABT_B1x_E0E0ECsaxs130FOtor_12tokio_macros.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECsaxs130FOtor_12tokio_macros(ptr align 8 %0) #18
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1B_8for_each4callBT_NCINvXsa_NtBV_8fallbackNtB2X_11TokenStreamINtNtB1F_7collect6ExtendBT_E6extendABT_B1x_E0E0ECsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1H_3ops5range5RangejENCNvNtCsaxs130FOtor_12tokio_macros6select19declare_output_enum0EE0B2V_(ptr nofree align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = load i64, ptr %i.c, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE3newCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #4 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE17unwrap_or_defaultCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_Csfr4kGEjnBfC_11proc_macro2NtB4_11TokenStreamNtNtCs3oUPovFnLWP_4core7default7Default7default(ptr sret([32 x i8]) align 8 %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE7is_someCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsaxs130FOtor_12tokio_macros5entry13RuntimeFlavorE7is_noneBL_(ptr nofree readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, -1
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsaxs130FOtor_12tokio_macros5entry13RuntimeFlavorE7is_someBL_(ptr nofree readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp ne i8 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsaxs130FOtor_12tokio_macros5entry13RuntimeFlavorE9unwrap_orBL_(i8 %0, i8 %1) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i8 %0, -1
  %. = select i1 %.not, i8 %1, i8 %0
  ret i8 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCscBrinq2mG3I_3syn4path4PathE7is_someCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCscBrinq2mG3I_3syn5token5AsyncE7is_noneCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp ne i32 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionTNtNtCsaxs130FOtor_12tokio_macros5entry14UnhandledPanicNtCsfr4kGEjnBfC_11proc_macro24SpanEE7is_someBM_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  %i.b = icmp ne i8 %i.a, 2
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionTbNtCsfr4kGEjnBfC_11proc_macro24SpanEE7is_someCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  %i.b = icmp ne i8 %i.a, 2
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionTjNtCsfr4kGEjnBfC_11proc_macro24SpanEE7is_someCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE4iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefBK_(ptr align 8 %0) #17 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtCscBrinq2mG3I_3syn2ty4TypeNtNtBz_5token5CommaE4iterBz_(ptr align 8 %i.d, i64 %i.e) #17 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn2ty4TypeEE6as_refB1k_(ptr nonnull align 8 %i.i) #17
  %i.k = tail call align 8 ptr @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn2ty4TypeEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refEB1m_(ptr align 8 %i.j) #17
  %i.l = tail call align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCscBrinq2mG3I_3syn2ty4TypeENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBP_(ptr align 8 %i.k) #17
  store ptr %i.g, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.n, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_2ty4TypeNtNtB4_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.o = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @6, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE16parse_terminatedCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [232 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [232 x i8], align 8               ; 4 uses
  %i.i = alloca [232 x i8], align 8               ; 4 uses
  %i.j = alloca [232 x i8], align 8               ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !alias.scope !16, !noalias !19
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !16, !noalias !19
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !16, !noalias !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCsaxs130FOtor_12tokio_macros.exit.i, %bb.a
  %i.o = invoke zeroext i1 @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer8is_empty(ptr align 8 %1)
          to label %bb.c unwind label %.loopexit.i, !noalias !19

.body.i:                                          ; preds = %.loopexit.split-lp7.i, %.loopexit6.i, %.body.i.i, %.loopexit.split-lp2.i, %.loopexit1.i, %bb.q, %.thread.i.i, %bb.l, %.loopexit.split-lp.i, %.loopexit.i
  %.pn9.i = phi { ptr, i32 } [ %i.aj, %.body.i.i ], [ %i.u, %bb.l ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.y, %.thread.i.i ], [ %i.z, %bb.q ], [ %lpad.loopexit.split-lp4.i, %.loopexit.split-lp2.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit3.i, %.loopexit1.i ], [ %lpad.loopexit8.i, %.loopexit6.i ], [ %lpad.loopexit.split-lp9.i, %.loopexit.split-lp7.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_4attr4MetaNtNtBG_5token5CommaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.k) #18
          to label %bb.ah unwind label %bb.ag

.loopexit.i:                                      ; preds = %bb.f, %bb.d, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXNtNtCscBrinq2mG3I_3syn4attr7parsingNtB4_4MetaNtNtB6_5parse5Parse5parse(ptr nonnull sret([232 x i8]) align 8 %i.i, ptr align 8 %1)
          to label %bb.f unwind label %.loopexit.i, !noalias !19

bb.e:                                             ; preds = %bb.t, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE21parse_terminated_withCsaxs130FOtor_12tokio_macros.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([232 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.g unwind label %.loopexit.i, !noalias !19

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.j, align 8, !noalias !19
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !19
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @19)
          to label %bb.af unwind label %.loopexit.split-lp.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.h, ptr noundef nonnull align 8 dereferenceable(232) %i.j, i64 232, i1 false), !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19
  %.val.i.i = load ptr, ptr %i.l, align 8, !noalias !19
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = invoke { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaxs130FOtor_12tokio_macros(ptr nonnull @16, i64 87)
          to label %bb.n unwind label %bb.q, !noalias !19 ; 2 uses

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %i.j, i64 232, i1 false), !noalias !19
  %i.t = invoke ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 232)
          to label %bb.p unwind label %bb.l, !noalias !19 ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.c) #18
          to label %.body.i unwind label %bb.m, !noalias !19

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !19
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.w = extractvalue { ptr, ptr } %i.s, 0
  %i.x = extractvalue { ptr, ptr } %i.s, 1
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.w, ptr %i.x, ptr nonnull align 8 @17) #22
          to label %bb.o unwind label %bb.q, !noalias !19

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.t, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !19
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.l)
          to label %bb.s unwind label %.thread.i.i, !noalias !19

.thread.i.i:                                      ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %i.l, align 8, !noalias !19
  br label %.body.i

bb.q:                                             ; preds = %bb.n, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.h) #18
          to label %.body.i unwind label %bb.r, !noalias !19

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !19
  unreachable

.loopexit1.i:                                     ; preds = %bb.v, %bb.u, %bb.s
  %lpad.loopexit3.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp2.i:                            ; preds = %bb.x
  %lpad.loopexit.split-lp4.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %bb.p
  store ptr %i.t, ptr %i.l, align 8, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19
  %i.ab = invoke zeroext i1 @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer8is_empty(ptr align 8 %1)
          to label %bb.t unwind label %.loopexit1.i, !noalias !19

bb.t:                                             ; preds = %bb.s
  br i1 %i.ab, label %bb.e, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvMs9_NtCscBrinq2mG3I_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr align 8 %1)
          to label %bb.v unwind label %.loopexit1.i, !noalias !19

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCscBrinq2mG3I_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.w unwind label %.loopexit1.i, !noalias !19

bb.w:                                             ; preds = %bb.v
  %i.ac = load i64, ptr %i.g, align 8, !noalias !19
  %.not.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !19
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB26_EE13from_residualCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 @18)
          to label %bb.af unwind label %.loopexit.split-lp2.i

bb.y:                                             ; preds = %bb.w
  %.sroa.02.0.copyload.i = load i32, ptr %i.m, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19
  %.val.i11.i = load ptr, ptr %i.l, align 8, !noalias !19 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i11.i, null
  br i1 %.not.i.i, label %bb.z, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEE6unwrapCsaxs130FOtor_12tokio_macros.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.ad = invoke { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaxs130FOtor_12tokio_macros(ptr nonnull @13, i64 106) #17
          to label %.noexc.i unwind label %.loopexit.split-lp7.i, !noalias !19 ; 2 uses

.noexc.i:                                         ; preds = %bb.z
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.ae, ptr %i.af, ptr nonnull align 8 @15) #21
          to label %.noexc12.i unwind label %.loopexit.split-lp7.i, !noalias !19

.noexc12.i:                                       ; preds = %.noexc.i
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEE6unwrapCsaxs130FOtor_12tokio_macros.exit.i.i: ; preds = %bb.y
  store ptr null, ptr %i.l, align 8, !noalias !19
  store ptr %.val.i11.i, ptr %i.b, align 8, !noalias !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %.val.i11.i, i64 232, i1 false), !noalias !19
  store i32 %.sroa.02.0.copyload.i, ptr %i.n, align 8, !noalias !19
  %i.ag = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !19 ; 3 uses
  %i.ah = load i64, ptr %i.k, align 8, !noalias !19
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEE6unwrapCsaxs130FOtor_12tokio_macros.exit.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBR_5token5CommaEE8grow_oneCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.k)
          to label %bb.ad unwind label %bb.ab, !noalias !19

bb.ab:                                            ; preds = %bb.aa
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtBG_5token5CommaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.a) #18
          to label %.body.i.i unwind label %bb.ac, !noalias !19

bb.ac:                                            ; preds = %bb.ab
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !19
  unreachable

.body.i.i:                                        ; preds = %bb.ab
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.b) #18
          to label %.body.i unwind label %bb.ae, !noalias !19

end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE6clonedCsaxs130FOtor_12tokio_macros:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE4pushCsaxs130FOtor_12tokio_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8push_mutCsaxs130FOtor_12tokio_macros.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8grow_oneCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8push_mutCsaxs130FOtor_12tokio_macros.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECsaoeXog3N7id_5quote(ptr align 8 %1) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamE8push_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs3oUPovFnLWP_4core10intrinsics9cold_pathCsaxs130FOtor_12tokio_macros() unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXNvNtCsa5ERaWwhjCQ_10proc_macro6bridges3_1__INtNtCs3oUPovFnLWP_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCsaxs130FOtor_12tokio_macros(i32 %0, ptr align 8 %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %i.a, align 4
  invoke void @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaxs130FOtor_12tokio_macros(ptr align 8 %1, i8 0)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaxs130FOtor_12tokio_macros(ptr align 8 %1, i8 1) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsaxs130FOtor_12tokio_macros(i32 %0, ptr align 8 %1, ptr %2)
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.b

bb.g:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client11TokenStreamECsfr4kGEjnBfC_11proc_macro2(ptr nonnull align 4 %i.a) #18
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXNvNtCsa5ERaWwhjCQ_10proc_macro6bridges3_1__INtNtCs3oUPovFnLWP_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCsaxs130FOtor_12tokio_macros(ptr %0, i64 %1, ptr align 8 %2, ptr nofree readnone captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaxs130FOtor_12tokio_macros(ptr align 8 %2, i8 0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_RINvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsaxs130FOtor_12tokio_macros(ptr align 8 %2, ptr nonnull %i.a) #17
  call void @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer17extend_from_sliceCsaxs130FOtor_12tokio_macros(ptr align 8 %2, ptr nonnull %0, i64 %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaxs130FOtor_12tokio_macros(ptr align 8 %2, i8 1) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterAARej4_j2_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([144 x i8]) align 8 captures(none) initializes((0, 144)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %.sroa.36 = alloca [128 x i8], align 8          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.36, i64 128, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs2_NtCsfr4kGEjnBfC_11proc_macro26markerNtB5_19ProcMacroAutoTraitsNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr nofree readnone captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE4nextCsaxs130FOtor_12tokio_macros(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, i64 1) #17
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitReEE4nextCsaxs130FOtor_12tokio_macros(ptr align 8 %0, i64 4) #17
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCscBrinq2mG3I_3syn4path4PathENtNtB7_5clone5Clone5cloneCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs21_NtNtCscBrinq2mG3I_3syn3gen5cloneNtNtBa_4path4PathNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCscBrinq2mG3I_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 3 uses
  %i.b = alloca [232 x i8], align 8               ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [240 x i8], align 8               ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val9 = load ptr, ptr %i.h, align 8
  %.not.i = icmp ne ptr %.val9, null
  %..i = zext i1 %.not.i to i64
  %i.i = add i64 %.val, %..i
  %i.j = invoke { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfr4kGEjnBfC_11proc_macro2(i64 %i.i, i64 8, i64 232) #17
          to label %bb.c unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %bb.q, %bb.k
  %.sroa.02.2 = phi i1 [ true, %bb.k ], [ false, %bb.q ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, ptr } %i.j, 0
  %i.m = extractvalue { i64, ptr } %i.j, 1
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !22
  %.sroa.018.0.copyload = load i64, ptr %1, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.219.0.copyload = load i64, ptr %.sroa.219.0..sroa_idx, align 8 ; 3 uses
  %.sroa.320.0.copyload = load i64, ptr %i.g, align 8
  %.idx = mul nuw nsw i64 %.sroa.320.0.copyload, 240
  %2 = add nuw i64 %.idx, %.sroa.219.0.copyload
  store i64 %.sroa.219.0.copyload, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.219.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.018.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit, %bb.c
  invoke void @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB11_5token5CommaEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsaxs130FOtor_12tokio_macros(ptr nonnull sret([240 x i8]) align 8 %i.d, ptr nonnull align 8 %i.e)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.u, %bb.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1u_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.e) #18
          to label %bb.t unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false)
  %i.r = load i64, ptr %i.o, align 8              ; 3 uses
  %i.s = load i64, ptr %i.f, align 8
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.h, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaE8grow_oneCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.a) #18
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaE4pushCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.g, %bb.h
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw [232 x i8], ptr %i.w, i64 %i.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.x, ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 232, i1 false)
  %i.y = add i64 %i.r, 1
  store i64 %i.y, ptr %i.o, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1u_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not5 = icmp eq ptr %i.z, null
  br i1 %.not5, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.z, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.z, i64 232, i1 false)
  %i.aa = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ab = load i64, ptr %i.f, align 8
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr4MetaE8grow_oneCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr4MetaEBF_(ptr nonnull align 8 %i.b) #18
          to label %.body10 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body10:                                          ; preds = %bb.o
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.c) #18
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.af = load ptr, ptr %i.n, align 8
  %i.ag = getelementptr inbounds nuw [232 x i8], ptr %i.af, i64 %i.aa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ag, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false)
  %i.ah = add i64 %i.aa, 1
  store i64 %i.ah, ptr %i.o, align 8
  invoke void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.c)
          to label %bb.s unwind label %bb.b

bb.r:                                             ; preds = %bb.w, %bb.u, %bb.t, %.body10, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.s:                                             ; preds = %bb.l, %bb.q
  %.sroa.025.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.226.0.copyload = load i64, ptr %i.n, align 8 ; 3 uses
  %.sroa.327.0.copyload = load i64, ptr %i.o, align 8
  %.idx33 = mul nuw nsw i64 %.sroa.327.0.copyload, 232
  %3 = add nuw i64 %.idx33, %.sroa.226.0.copyload
  store i64 %.sroa.226.0.copyload, ptr %0, align 8
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.226.0.copyload, ptr %.sroa.222.0..sroa_idx, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.025.0.copyload, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.424.0..sroa_idx, align 8
  ret void

bb.t:                                             ; preds = %bb.b, %.body, %.body10
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.k, %bb.b ], [ %i.ad, %.body10 ]
  %.sroa.02.1 = phi i1 [ true, %.body ], [ %.sroa.02.2, %bb.b ], [ false, %.body10 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #18
          to label %.thread unwind label %bb.r

.thread:                                          ; preds = %bb.t, %bb.u
  %.sroa.02.032 = phi i1 [ true, %bb.u ], [ %.sroa.02.1, %bb.t ]
  %.pn.pn.pn31 = phi { ptr, i32 } [ %i.al, %bb.u ], [ %.pn.pn, %bb.t ]
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond = and i1 %.sroa.02.032, %i.ak
  br i1 %or.cond, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn4attr4MetaNtNtB1d_5token5CommaEEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %1) #18
          to label %.thread unwind label %bb.r

bb.v:                                             ; preds = %bb.w, %.thread
  resume { ptr, i32 } %.pn.pn.pn31

bb.w:                                             ; preds = %.thread
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4attr4MetaEECsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.h) #18
          to label %bb.v unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs4_NtNtCsaoeXog3N7id_5quote9___private3extINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtB5_16RepAsIteratorExt15quote_into_iterCsaxs130FOtor_12tokio_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = tail call { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtCsfr4kGEjnBfC_11proc_macro25Ident4iterCsaxs130FOtor_12tokio_macros(ptr align 8 %.val, i64 %.val1) #17
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterARej4_Kj2_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEj1_EECsaxs130FOtor_12tokio_macros(ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj4_ENtNtNtB9_3ops4drop4Drop4dropCsaxs130FOtor_12tokio_macros(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMsa_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7IterMutTNtNtCscBrinq2mG3I_3syn3pat3PatNtNtBW_5token2OrEE3newCsaxs130FOtor_12tokio_macros(ptr align 8 %.val.i, i64 %.val1.i) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token2OrE8iter_mutCsaxs130FOtor_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn3pat3PatEINtNtCs3oUPovFnLWP_4core7convert5AsMutBE_E6as_mutINtNtNtB1e_3ops8function6FnOnceTQB5_EE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #17
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token2OrE8iter_mutCsaxs130FOtor_12tokio_macros.exit

_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token2OrE8iter_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = extractvalue { ptr, ptr } %i.e, 0
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.02.0.i.i, ptr %i.l, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_3pat3PatNtNtB4_5token2OrEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.m = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @8, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMsa_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7IterMutTNtNtCscBrinq2mG3I_3syn3pat3PatNtNtBW_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr align 8 %.val.i, i64 %.val1.i) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn3pat3PatEINtNtCs3oUPovFnLWP_4core7convert5AsMutBE_E6as_mutINtNtNtB1e_3ops8function6FnOnceTQB5_EE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #17
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit

_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat3PatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = extractvalue { ptr, ptr } %i.e, 0
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.02.0.i.i, ptr %i.l, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_3pat3PatNtNtB4_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.m = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @10, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCscBrinq2mG3I_3syn10punctuatedQINtB5_10PunctuatedNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsaxs130FOtor_12tokio_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8
  %i.e = tail call { ptr, ptr } @_RNvMsa_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7IterMutTNtNtCscBrinq2mG3I_3syn3pat8FieldPatNtNtBW_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr align 8 %.val.i, i64 %.val1.i) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat8FieldPatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn3pat8FieldPatEINtNtCs3oUPovFnLWP_4core7convert5AsMutBE_E6as_mutINtNtNtB1j_3ops8function6FnOnceTQB5_EE9call_onceCsaxs130FOtor_12tokio_macros(ptr nonnull align 8 %i.f) #17
  br label %_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat8FieldPatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit

_RNvMNtCscBrinq2mG3I_3syn10punctuatedINtB2_10PunctuatedNtNtB4_3pat8FieldPatNtNtB4_5token5CommaE8iter_mutCsaxs130FOtor_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = extractvalue { ptr, ptr } %i.e, 1
  %i.j = extractvalue { ptr, ptr } %i.e, 0
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.02.0.i.i, ptr %i.l, align 8
  call void @_RNvMNtCscBrinq2mG3I_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_3pat8FieldPatNtNtB4_5token5CommaEE3newCsaxs130FOtor_12tokio_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.m = call ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaxs130FOtor_12tokio_macros(i64 8, i64 24) #17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @12, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 16)) %0, ptr align 8 %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !25
  %i.b = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !25
  %i.c = tail call i32 @_RNvXs9_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17, !noalias !25
  %i.d = tail call i32 @_RNvXs5_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr align 8 %1, ptr %2) #17
  store i32 %i.a, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %.sroa.3.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCsaxs130FOtor_12tokio_macros(ptr nofree writeonly sret([20 x i8]) align 4 captures(none) initializes((0, 20)) %0, ptr align 8 %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
