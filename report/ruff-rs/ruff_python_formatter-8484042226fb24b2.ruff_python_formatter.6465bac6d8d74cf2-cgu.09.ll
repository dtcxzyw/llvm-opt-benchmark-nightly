Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.09?download=true
inline.NumInlined: 521
inline.NumDeleted: 332
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor18CommentsMapBuilderEBH_:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor18CommentsVecBuilderEBH_(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitor16DecoratedCommentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenKindBM_ECs8CpBcHC8tKo_21ruff_python_formatter(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error10object_refINtB2_12ContextErrorReNtNtCs7Ma6rQP8bRy_14ruff_formatter11diagnostics10PrintErrorEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @9, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error10object_refINtB2_12ContextErrorReNtNtCs7Ma6rQP8bRy_14ruff_formatter11diagnostics11FormatErrorEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @11, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error10object_refINtB2_12ContextErrorReNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @13, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error12object_boxedINtB2_12ContextErrorReNtNtCs7Ma6rQP8bRy_14ruff_formatter11diagnostics10PrintErrorEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @15, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error12object_boxedINtB2_12ContextErrorReNtNtCs7Ma6rQP8bRy_14ruff_formatter11diagnostics11FormatErrorEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @17, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error12object_boxedINtB2_12ContextErrorReNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @19, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCsiXichZnxgbf_6anyhow5error16context_downcastReNtNtCs7Ma6rQP8bRy_14ruff_formatter11diagnostics10PrintErrorECs8CpBcHC8tKo_21ruff_python_formatter(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !7
  switch i128 %i.a, label %bb.d [
    i128 48856307742461772449142782864826955356, label %bb.b
    i128 -126556387081752002996523474429599155203, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCsiXichZnxgbf_6anyhow5error16context_downcastReNtNtCs7Ma6rQP8bRy_14ruff_formatter11diagnostics11FormatErrorECs8CpBcHC8tKo_21ruff_python_formatter(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !7
  switch i128 %i.a, label %bb.d [
    i128 48856307742461772449142782864826955356, label %bb.b
    i128 -73890167818665984061531283449682897099, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCsiXichZnxgbf_6anyhow5error16context_downcastReNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorECs8CpBcHC8tKo_21ruff_python_formatter(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !7
  switch i128 %i.a, label %bb.d [
    i128 48856307742461772449142782864826955356, label %bb.b
    i128 13309827128426466157999714033080853954, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8CpBcHC8tKo_21ruff_python_formatter(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB2m_INtNtNtB1e_5slice4iter4IterB2m_EEs0_0EB2m_ECs8CpBcHC8tKo_21ruff_python_formatter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !7
  %i.g = shl i64 %i.c, 5                          ; 4 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1M_INtNtNtBc_5slice4iter4IterB1M_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultB4R_zEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1M_EECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #26 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !183

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #25
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order12walk_patternNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1f_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !14, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.j
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.k, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.10.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.l, %bb.i ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 63, %bb.c ], [ 64, %bb.d ], [ 65, %bb.e ], [ 66, %bb.f ], [ 70, %bb.i ], [ 68, %bb.g ], [ 69, %bb.h ], [ 67, %bb.a ] ; 2 uses
  %i.m = tail call noundef zeroext i1 @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10enter_node(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0, ptr noundef nonnull %.sroa.10.0)
  br i1 %i.m, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = load i64, ptr %1, align 8, !range !14, !noundef !7 ; 3 uses
  %i.o = icmp ne i64 %i.n, -9223372036854775804
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.n, -9223372036854775808
  %i.q = icmp slt i64 %i.n, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 4
  switch i64 %i.r, label %bb.b [
    i64 0, label %bb.l
    i64 1, label %bb.s
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 6, label %bb.q
    i64 7, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7
  tail call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_exprNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %i.t), !inline_history !0
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvMsbf_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_20PatternMatchSequence18visit_source_orderNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1D_(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvMsa_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_9generated19PatternMatchMapping18visit_source_orderNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1I_(ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.s

bb.o:                                             ; preds = %bb.k
  tail call void @_RINvMsbg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_17PatternMatchClass18visit_source_orderNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1A_(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.x = load i8, ptr %i.w, align 1, !range !19, !noundef !7
  %.not = icmp eq i8 %i.x, -1
  br i1 %.not, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvMsbi_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_14PatternMatchAs18visit_source_orderNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1x_(ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvMsbj_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_14PatternMatchOr18visit_source_orderNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1x_(ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.p, %bb.t, %bb.j, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l
  tail call void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10leave_node(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0, ptr noundef nonnull %.sroa.10.0)
  ret void

bb.t:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = tail call noundef zeroext i1 @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10enter_node(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 93, ptr noundef nonnull align 8 %i.aa) ; 0 uses
  tail call void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10leave_node(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 93, ptr noundef nonnull align 8 %i.aa)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order12walk_patternNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range17FindEnclosingNodeEB1f_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !14, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.j
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.k, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.10.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.l, %bb.i ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 63, %bb.c ], [ 64, %bb.d ], [ 65, %bb.e ], [ 66, %bb.f ], [ 70, %bb.i ], [ 68, %bb.g ], [ 69, %bb.h ], [ 67, %bb.a ] ; 2 uses
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB4_17FindEnclosingNodeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10enter_node(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0, ptr noundef nonnull %.sroa.10.0)
end_hunk_0
