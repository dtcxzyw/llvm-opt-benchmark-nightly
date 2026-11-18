Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.3?download=true
inline.NumInlined: 64
inline.NumDeleted: 5
begin_hunk_0_@_RNvXs8_NtNtCsexYYUdYSQU6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderRShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config:bb.a
  %i.o = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs73YwgZoc6jV_9addr2line(ptr %i.j, i64 %i.k, ptr %i.m, i64 %i.n)
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = invoke i32 @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3popCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %bb.b       ; 0 uses

bb.l:                                             ; preds = %bb.p, %bb.o, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.q = load ptr, ptr %.sroa.26.0..sroa_idx, align 8
  %i.r = load i64, ptr %.sroa.37.0..sroa_idx, align 8
  store i32 0, ptr %i.a, align 4
  %i.s = invoke { ptr, i64 } @_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_rawCsiOEEQt9hBE2_17pyo3_build_config(i32 13, ptr nonnull %i.a, i64 4)
          to label %bb.n unwind label %bb.b       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = invoke zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs73YwgZoc6jV_9addr2line(ptr %i.q, i64 %i.r, ptr %i.t, i64 %i.u)
          to label %bb.o unwind label %bb.b

bb.o:                                             ; preds = %bb.n
  br i1 %i.v, label %bb.p, label %bb.l

bb.p:                                             ; preds = %bb.o
  %i.w = invoke i32 @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3popCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c)
          to label %bb.l unwind label %bb.b       ; 0 uses

bb.q:                                             ; preds = %bb.l, %bb.h
  ret void

bb.r:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.s:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvXsS_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_5OsStrINtNtCskKLDkoKarTP_4core7convert5AsRefBB_E6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsT_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringINtNtCskKLDkoKarTP_4core7convert5AsRefNtB5_5OsStrE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtCsiOEEQt9hBE2_17pyo3_build_config6errorsNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.c = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECs5GPH1eSwN50_14target_lexicon(ptr nonnull @29, ptr nonnull align 8 %i.b) #23 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %1, ptr %i.d, ptr %i.e) #23
  ret i1 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowIBK_uNtNtB8_3cmp8OrderingEEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiOEEQt9hBE2_17pyo3_build_config(i8 returned %0) unnamed_addr #5 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowhEINtNtB6_9try_trait12FromResidualIBK_hzEE13from_residualCsiOEEQt9hBE2_17pyo3_build_config(i8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %0, 1
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowjEINtNtB6_9try_trait12FromResidualIBK_jzEE13from_residualCsiOEEQt9hBE2_17pyo3_build_config(i64 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources5emptyINtB4_5EmptyTReBZ_EENtNtNtB8_6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readnone captures(none) %1) unnamed_addr #11 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtBc_3ops4drop4Drop4dropCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.c, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define nonnull align 8 ptr @_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.c) #23
  %i.d = call { ptr, i64 } @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.a, i64 8, i64 24) #23
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE13new_uninit_inCsiOEEQt9hBE2_17pyo3_build_config.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 8, i64 24) #28
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE13new_uninit_inCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8
  %i.g = load ptr, ptr %0, align 8
  invoke void @_RNvXNtNtCskKLDkoKarTP_4core5clone6uninitNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_8CopySpec9clone_oneCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.g, ptr nonnull %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE13new_uninit_inCsiOEEQt9hBE2_17pyo3_build_config.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtBG_6string6StringEEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #26
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtB6_6string6StringE13new_uninit_inCsiOEEQt9hBE2_17pyo3_build_config.exit
  ret ptr %i.e

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchrCsiOEEQt9hBE2_17pyo3_build_config(i8 %i.a, ptr %1, i64 %2) #23
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = icmp eq i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtBM_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call zeroext i1 %i.e(ptr %i.a, ptr align 8 %1) #23
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXsp_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtNtBM_3ops5deref5Deref5derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EENtNtNtB1T_3ops4drop4Drop4dropCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit

_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread: ; preds = %bb.b
  call void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.e) #23
  call void @_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.b
  %i.h = add i64 %i.f, -1
  store i64 %i.h, ptr %i.d, align 8
  call void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull %i.e) #23
  call void @_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0) #23
  %.sroa.0.0.copyload1 = load ptr, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  store ptr %0, ptr %i.b, align 8
  invoke void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c)
          to label %bb.b unwind label %bb.d

.loopexit:                                        ; preds = %_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit, %_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB17_EE10dying_nextCsiOEEQt9hBE2_17pyo3_build_config.exit.thread
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #26
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYINtNtNtCsexYYUdYSQU6_5alloc2io4util5LinesINtNtNtB7_8buffered9bufreader9BufReaderIBI_NtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9enumerateCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 96)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYINtNtNtCsexYYUdYSQU6_5alloc2io4util5LinesINtNtNtB7_8buffered9bufreader9BufReaderRShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9enumerateCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 64)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, i64 } @_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionB6_(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @30, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeB6_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EE8as_derefCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #23
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideB6_(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idB6_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @31, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @30, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @32, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64, i64) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, i64, ptr align 8, i64, i32, ptr align 8, ptr) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsG258MDvU3F_3std4path7PathBuf7reverseCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1Q_NtB1Q_10BuildFlags18from_sysconfigdata0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_TB1O_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4T_7HashSetB1O_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3B_7collect6ExtendB1O_E6extendBP_E0NCINvNvB3x_8for_each4callB4C_NCINvXs1i_NtB4V_3mapINtB7L_7HashMapB1O_uB5G_EIB6u_B4C_E6extendINtB4g_3MapBP_B4K_EE0E0E0EB1S_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1L_NtB1L_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTRB1J_B3p_EB1J_uNCB3v_s_0NCIB5y_B1J_TB1J_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6J_7HashSetB1J_NtNtNtB4k_4hash6random11RandomStateEINtNtB4V_7collect6ExtendB1J_E6extendINtB5A_3MapBQ_B68_EE0NCINvNvB4R_8for_each4callB6s_NCINvXs1i_NtB6L_3mapINtB9E_7HashMapB1J_uB7w_EIB87_B6s_E6extendIB8H_B8G_B6A_EE0E0E0E0EB1N_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs7_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB22_8adapters3map3MapINtNtB3f_6filter6FilterINtNtB3f_3zip3ZipINtNtNtB24_5slice4iter4IterB13_EINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B15_NtB15_10BuildFlags16from_interpreterNtNtBc_4path7PathBufE0ENCB5G_s_0EEB17_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB8_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBQ_E6extendINtNtNtB2B_8adapters3map3MapINtNtB3D_6filter6FilterINtNtB3D_3zip3ZipINtNtNtB2D_5slice4iter4IterBQ_EINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_BS_NtBS_10BuildFlags16from_interpreterNtNtB1N_4path7PathBufE0ENCB63_s_0EE0BU_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlaguENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2j_7HashMapB1g_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4u_INtNtB4y_6filter6FilterINtNtB4y_3zip3ZipINtNtNtBe_5slice4iter4IterB1g_EINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1i_NtB1i_10BuildFlags16from_interpreterNtNtB3d_4path7PathBufE0ENCB72_s_0ENCINvXs8_NtB2l_3setINtB8u_7HashSetB1g_B37_EIB3V_B1g_E6extendB4U_E0EE0E0B1k_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB8_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBQ_E6extendINtNtNtB2B_8adapters6cloned6ClonedINtNtB3D_6filter6FilterINtNtNtB2D_5slice4iter4IterBQ_ENCNvMsj_BS_NtBS_10BuildFlags18from_sysconfigdata0EEE0BU_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlaguENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2j_7HashMapB1g_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtB4y_6cloned6ClonedINtNtB4y_6filter6FilterINtNtNtBe_5slice4iter4IterB1g_ENCNvMsj_B1i_NtB1i_10BuildFlags18from_sysconfigdata0EENCINvXs8_NtB2l_3setINtB79_7HashSetB1g_B37_EIB3V_B1g_E6extendB4U_E0EE0E0B1k_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNvYNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagNtNtCskKLDkoKarTP_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutB9_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0CsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0CsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, i8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvMsj_NtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB8_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufEs_0Ba_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvNtCsiOEEQt9hBE2_17pyo3_build_config5impl_22find_all_sysconfigdata0B5_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorEBF_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5GPH1eSwN50_14target_lexicon(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBy_E4intoCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsd_NtCskKLDkoKarTP_4core3fmtzNtB5_5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXse_NtCskKLDkoKarTP_4core3fmtzNtB5_7Display3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvYzNtNtCskKLDkoKarTP_4core5error5Error6sourceCsiOEEQt9hBE2_17pyo3_build_config(ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvYzNtNtCskKLDkoKarTP_4core5error5Error7type_idCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([16 x i8]) align 8, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvYzNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsiOEEQt9hBE2_17pyo3_build_config(ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvYzNtNtCskKLDkoKarTP_4core5error5Error5causeCsiOEEQt9hBE2_17pyo3_build_config(ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvYzNtNtCskKLDkoKarTP_4core5error5Error7provideCsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvMNtCsiOEEQt9hBE2_17pyo3_build_config5impl_NtB5_17InterpreterConfig9from_pathRNtNtCsG258MDvU3F_3std4path4PathE0B7_(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr align 8) unnamed_addr #0

end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocateCsiOEEQt9hBE2_17pyo3_build_config
; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiOEEQt9hBE2_17pyo3_build_config(ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5GPH1eSwN50_14target_lexicon(ptr sret([24 x i8]) align 8, ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiOEEQt9hBE2_17pyo3_build_config(i64, i64, i1 zeroext) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1p_NtCsG258MDvU3F_3std4patheINtNtCskKLDkoKarTP_4core7convert5AsRefNtB6_4PathE6as_refCsiOEEQt9hBE2_17pyo3_build_config(ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EE8as_derefCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagENCNvMsj_B1P_NtB1P_10BuildFlags18from_sysconfigdata0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B1K_NtB1K_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXsH_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs4_NtCskKLDkoKarTP_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs9B9e4vRv5d_5gimli(ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs5GPH1eSwN50_14target_lexicon(i1 zeroext) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRDNtNtB4_5error5ErrorEL_E7is_someCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCsiOEEQt9hBE2_17pyo3_build_config(ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr, ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displaylECsiOEEQt9hBE2_17pyo3_build_config(ptr sret([16 x i8]) align 8, ptr align 4) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRDNtNtB7_5error5ErrorEL_ECsiOEEQt9hBE2_17pyo3_build_config(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKjd_Kj2_ECsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs5GPH1eSwN50_14target_lexicon(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsA_NtCsG258MDvU3F_3std4pathNtB5_7PathBufINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_3ffi6os_str8OsStringE4fromCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4fromCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXsb_NtCskKLDkoKarTP_4core6optionINtB5_6OptionmEINtNtB7_7convert4FrommE4fromCsiOEEQt9hBE2_17pyo3_build_config(i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringeNtB5_8ToString9to_stringCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE4intoB1p_(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsiOEEQt9hBE2_17pyo3_build_config(ptr sret([32 x i8]) align 8, ptr, i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorEL_EENtB6_5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr align 8, ptr, i64, ptr, i64, ptr, ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i64 @_RINvNtCskKLDkoKarTP_4core10intrinsics11rotate_leftyECsiOEEQt9hBE2_17pyo3_build_config(i64, i32) unnamed_addr #18

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCsiOEEQt9hBE2_17pyo3_build_config(ptr, ptr, i64, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderIB3_NtNtCsG258MDvU3F_3std2fs4FileEENtNtB9_8buf_read7BufRead9read_lineCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_rawCsiOEEQt9hBE2_17pyo3_build_config(i32, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs73YwgZoc6jV_9addr2line(ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3popCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderRShENtNtB9_8buf_read7BufRead9read_lineCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECsiOEEQt9hBE2_17pyo3_build_config(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECs5GPH1eSwN50_14target_lexicon(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCskKLDkoKarTP_4core5clone6uninitNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_8CopySpec9clone_oneCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8, ptr) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtBG_6string6StringEEECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchrCsiOEEQt9hBE2_17pyo3_build_config(i8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint }
attributes #24 = { noinline }
attributes #25 = { noinline noreturn }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"address", !"read_provenance"}
!5 = !{}
!6 = !{ptr @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtBM_3fmt5Debug3fmtCsiOEEQt9hBE2_17pyo3_build_config}
end_hunk_1
