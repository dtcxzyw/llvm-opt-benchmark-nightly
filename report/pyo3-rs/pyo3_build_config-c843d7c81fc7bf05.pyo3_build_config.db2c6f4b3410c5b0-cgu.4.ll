Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.4?download=true
inline.NumInlined: 46
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1K_NtB1K_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_:bb.a
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENtNtNtB8_6traits8iterator8Iterator9size_hintB1p_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  store <2 x i64> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirB1s_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirBQ_Es0_0EB2h_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.h, ptr %0, align 8
  store ptr %i.e, ptr %i.a, align 8, !captures !27
  %i.i = call zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirNtNtCsG258MDvU3F_3std4path7PathBufEs0_0INtB7_5FnMutTRRB1O_EE8call_mutBV_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  br i1 %i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirBQ_Es0_0EB2h_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirBQ_Es0_0EB2h_.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirB1s_Es0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB28_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRB1s_Es0_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRBQ_Es0_0EB2h_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.h, ptr %0, align 8
  store ptr %i.e, ptr %i.a, align 8, !captures !27
  %i.i = call zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRNtNtCsG258MDvU3F_3std4path7PathBufEs0_0INtB7_5FnMutTRB1O_EE8call_mutBV_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  br i1 %i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRBQ_Es0_0EB2h_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRBQ_Es0_0EB2h_.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsG258MDvU3F_3std4path7PathBufENCINvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_14search_lib_dirRB1s_Es0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB28_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1u_NtB1u_10BuildFlags18from_sysconfigdata0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1w_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorEL_EENtB6_5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.d = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @19, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @18)
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtB7_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @17, i64 4)
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtB7_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtB7_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @19, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @20)
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @17, i64 4)
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSh18split_at_uncheckedCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %i.f, i64 %i.c, i64 %i.e, ptr nonnull align 8 @15) #23
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %1 = inttoptr i64 %.sroa.01.0.copyload to ptr
  %2 = inttoptr i64 %.sroa.4.0.copyload to ptr
  store ptr %2, ptr %0, align 8, !captures !27
  store i64 %.sroa.5.0.copyload, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.sroa.32.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedBT_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %1
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBT_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 2 uses
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define ptr @_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, ptr %1, i64 %2) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7defaultCsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 @16)
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_RNvXs5_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtCs5GPH1eSwN50_14target_lexicon6triple6TripleNtB7_9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = tail call zeroext i1 @_RNvXsJ_NtCs5GPH1eSwN50_14target_lexicon7targetsNtB5_12ArchitectureNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.c, ptr nonnull %i.d) #23
  br i1 %i.e, label %bb.b, label %_RNvXsu_NtCs5GPH1eSwN50_14target_lexicon6tripleNtB5_6TripleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @_RNvXs1U_NtCs5GPH1eSwN50_14target_lexicon7targetsNtB6_6VendorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.a, ptr align 8 %i.b) #23
  br i1 %i.f, label %bb.c, label %_RNvXsu_NtCs5GPH1eSwN50_14target_lexicon6tripleNtB5_6TripleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = tail call zeroext i1 @_RNvXs2c_NtCs5GPH1eSwN50_14target_lexicon7targetsNtB6_15OperatingSystemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 2 %i.g, ptr nonnull align 2 %i.h) #23
  br i1 %i.i, label %bb.d, label %_RNvXsu_NtCs5GPH1eSwN50_14target_lexicon6tripleNtB5_6TripleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.l = tail call zeroext i1 @_RNvXs2k_NtCs5GPH1eSwN50_14target_lexicon7targetsNtB6_11EnvironmentNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.j, ptr nonnull %i.k) #23
  br i1 %i.l, label %bb.e, label %_RNvXsu_NtCs5GPH1eSwN50_14target_lexicon6tripleNtB5_6TripleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.o = tail call zeroext i1 @_RNvXs2s_NtCs5GPH1eSwN50_14target_lexicon7targetsNtB6_12BinaryFormatNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.m, ptr nonnull %i.n) #23
  br label %_RNvXsu_NtCs5GPH1eSwN50_14target_lexicon6tripleNtB5_6TripleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvXsu_NtCs5GPH1eSwN50_14target_lexicon6tripleNtB5_6TripleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i1 [ %i.o, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std7process6OutputENtNtNtB7_3ops9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
