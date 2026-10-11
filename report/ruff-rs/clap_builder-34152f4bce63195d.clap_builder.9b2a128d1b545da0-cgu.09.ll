Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.09?download=true
inline.NumInlined: 306
inline.NumDeleted: 218
begin_hunk_0_@_RNvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag:bb.a
  %i.q = call noundef ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs4NRVxsYgnAr_4core6option6OptionRbEEB7_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !3

bb.h:                                             ; preds = %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onebEBc_.exit
  %i.r = load i8, ptr %i.q, align 1, !range !11, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  ret i1 %i.s

bb.i:                                             ; preds = %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onebEBc_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %.not5 = icmp eq i64 %i.c, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.4.0 = phi i64 [ %i.h, %bb.d ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef i8 @_RNvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches9get_count(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.g = tail call noundef align 8 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !262 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !263
  store i128 -64211143891970825072924515826960835547, ptr %i.a, align 16, !noalias !263
  call void @_RNvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !263
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.b, align 16, !noalias !263 ; 3 uses
  %i.h = icmp eq i128 %.sroa.013.0.copyload.i.i, -64211143891970825072924515826960835547
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.j = trunc nuw i128 %i.i to i64
  %i.k = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !263
  store i64 0, ptr %i.d, align 8, !alias.scope !261, !noalias !264
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !261, !noalias !264
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !261, !noalias !264
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i128 -64211143891970825072924515826960835547, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !261, !noalias !264
  br label %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !263
  %i.m = call noundef align 8 ptr @_RNvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.g), !noalias !261 ; 2 uses
  %.not8.i = icmp eq ptr %i.m, null
  br i1 %.not8.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.n, align 8, !alias.scope !261, !noalias !264
  store i64 2, ptr %i.d, align 8, !alias.scope !261, !noalias !264
  br label %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refhEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m), !noalias !261 ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %bb.g, label %bb.f, !prof !3

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !261, !noalias !264
  store i64 2, ptr %i.d, align 8, !alias.scope !261, !noalias !264
  br label %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_.exit

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 99, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !noalias !261
  unreachable

_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_.exit: ; preds = %bb.c, %.thread.i, %bb.f
  %i.q = call noundef ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs4NRVxsYgnAr_4core6option6OptionRhEEB7_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !3

bb.h:                                             ; preds = %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_.exit
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  ret i8 %i.r

bb.i:                                             ; preds = %_RINvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvMs0_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsString9as_os_str(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.val1, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches11try_get_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_RNvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.7.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.46.sroa.7.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %_RNvMs0_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsString9as_os_str.sink = phi ptr [ @_RNvMs0_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsString9as_os_str, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_RNvMs0_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsString9as_os_str.sink, ptr %i.h, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches12try_clear_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeEB7_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.b = load i64, ptr %i.a, align 8, !range !275, !noundef !5 ; 2 uses
  %i.c = icmp ne i64 %i.b, 2                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = zext i1 %i.c to i8
  store i8 %i.e, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtB14_6parser7matches11matched_arg10MatchedArgEEEB14_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %4 = icmp eq i64 %i.b, 0
  br i1 %4, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEEBI_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !281, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEEBI_.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !281, !nonnull !5, !noundef !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #21, !noalias !281
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEEBI_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEEBI_.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEEBI_.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i.i unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEEBI_.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsdjW2DEjcQy2_12clap_builder.exit.i.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.j, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.m) #22
          to label %.body2.i.i unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsdjW2DEjcQy2_12clap_builder.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsdjW2DEjcQy2_12clap_builder.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body2.i.i unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsdjW2DEjcQy2_12clap_builder.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEEEB1h_.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

.body2.i.i:                                       ; preds = %bb.k, %bb.h, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.r, %bb.k ], [ %i.o, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.q) #22
          to label %common.resume.i.i unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEEEB1h_.exit.i.i: ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEEEB1h_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume.i.i:                                ; preds = %bb.l, %.body2.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.t, %bb.l ], [ %.pn.i.i, %.body2.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.n:                                             ; preds = %.body2.i.i, %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueEEEB1h_.exit.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtB14_6parser7matches11matched_arg10MatchedArgEEEB14_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtNtB14_6parser7matches11matched_arg10MatchedArgEEEB14_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches15try_contains_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12contains_keyeEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches23try_get_raw_occurrences(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_RNvYNCNvMs0_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtBa_10ArgMatches23try_get_raw_occurrences0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEE9call_onceBg_, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.g, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB4_10ArgMatches17remove_subcommand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !5 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 80, i64 noundef 8) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBK_6marker4SendNtB1d_4SyncEL_E9drop_slowCsdjW2DEjcQy2_12clap_builder(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !7, !invariant.load !5 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsdjW2DEjcQy2_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.c, !inline_history !282

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtNtBa_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENCNvMs0_NtNtB1Y_6parser6parserNtB2K_6Parser18did_you_mean_errors1_0ENCB2E_s2_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1Y_:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtNtBa_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENCNvMs_NtNtB1Y_6parser6parserNtB2J_6Parser14parse_long_args0_0ENCB2E_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !509
  store ptr %i.d, ptr %i.b, align 8, !noalias !510
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !noalias !510
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !511, !noalias !512, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !511, !noalias !512 ; 2 uses
  %i.h = icmp eq ptr %.promoted.i.i.i.i, %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i
  %i.i = phi ptr [ %i.n, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.k, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !511, !noalias !512
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !514, !nonnull !5, !align !12, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.val.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20), !noalias !515
  br i1 %i.l, label %bb.b, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516
  store ptr %i.j, ptr %i.a, align 8, !noalias !517
  %i.m = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_args1_0INtB7_5FnMutTRRNtNtNtBZ_4util2id2IdEE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !516
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !513, !noalias !518
  br i1 %i.m, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.i, %.lr.ph.i.i.i.i ]
  %i.o = icmp eq ptr %i.k, %i.g
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !509
  %i.p = load i64, ptr %i.j, align 8, !range !8, !alias.scope !519, !noalias !520, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r), !noalias !520 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  br label %_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0.copyload.i = load ptr, ptr %i.r, align 8, !alias.scope !519, !noalias !520
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !519, !noalias !520
  br label %_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.e
  %.sroa.6.0.i = phi i64 [ %i.u, %bb.d ], [ %.sroa.6.0.copyload.i, %bb.e ]
  %.sroa.5.0.i = phi ptr [ %i.t, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.d ], [ 0, %bb.e ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1c_6parser6parserNtB2H_6Parser14parse_long_args0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s1_0E0E0B1c_.exit.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !509
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtNtBa_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENCNvMs_NtNtB1Y_6parser6parserNtB2J_6Parser14parse_long_args0_0ENCB2E_s1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  store i64 0, ptr %0, align 8, !alias.scope !523
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !523
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !523
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_3map3MapIB12_INtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB1N_2id2IdNtNtNtNtB1P_6parser7matches11matched_arg10MatchedArgENCNvMNtB2U_9validatorNtB3K_9Validator22missing_required_errors_0ENCB3H_s0_0ENCB3H_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef align 8 ptr @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB1o_2id2IdNtNtNtNtB1q_6parser7matches11matched_arg10MatchedArgENCNvMNtB2v_9validatorNtB3l_9Validator22missing_required_errors_0ENCB3i_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4u_4find5checkRB2b_QNCB3i_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5y_EEB1q_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !8, !alias.scope !527, !noalias !528, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !528 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  br label %_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0.copyload.i = load ptr, ptr %i.e, align 8, !alias.scope !527, !noalias !528
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !527, !noalias !528
  br label %_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.d
  %.sroa.6.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.6.0.copyload.i, %bb.d ]
  %.sroa.5.0.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.5.0.copyload.i, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXsm_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_3map3MapIB12_INtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB1N_2id2IdNtNtNtNtB1P_6parser7matches11matched_arg10MatchedArgENCNvMNtB2U_9validatorNtB3K_9Validator22missing_required_errors_0ENCB3H_s0_0ENCB3H_s1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  call void @_RNvXs1_NtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB5_4IterNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !540
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !539
  store i64 0, ptr %0, align 8, !alias.scope !538, !noalias !541
  store <2 x i64> %i.d, ptr %i.c, align 8, !alias.scope !538, !noalias !541
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !544
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !544
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !544
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !554, !nonnull !5, !noundef !5 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !554, !nonnull !5, !noundef !5
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.h, ptr %1, align 8, !alias.scope !554
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.i = load i64, ptr %i.d, align 8, !range !8, !alias.scope !555, !noalias !556, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k), !noalias !556 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0.copyload.i = load ptr, ptr %i.k, align 8, !alias.scope !555, !noalias !556
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !555, !noalias !556
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.0.i = phi i64 [ %i.n, %bb.c ], [ %.sroa.6.0.copyload.i, %bb.d ] ; 3 uses
  %.sroa.5.0.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.5.0.copyload.i, %bb.d ] ; 3 uses
  %.sroa.0.0.i2 = phi i64 [ 1, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !557
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !4, !alias.scope !555, !noalias !556, !noundef !5
  %.not.i = icmp eq i64 %i.p, -1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.k unwind label %bb.j, !noalias !556

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %i.c, align 8, !noalias !557
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !557
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.l, !noalias !556

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.s, %bb.j ]
  %i.r = icmp ne i64 %.sroa.6.0.i, 0
  %or.cond.not.i = select i1 %i.j, i1 %i.r, i1 false
  br i1 %or.cond.not.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %.sroa.6.0.i, i64 noundef 1) #21, !noalias !558
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.i unwind label %bb.m, !noalias !556

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !556
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.i
  resume { ptr, i32 } %.pn.i

_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.w = load i8, ptr %i.v, align 8, !range !11, !alias.scope !555, !noalias !556, !noundef !5
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !557
  store i64 %.sroa.0.0.i2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.w, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 80                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !561
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !561
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !561
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtB4_13SpecAdvanceBy15spec_advance_byB2g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 9 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCNvXs_NvB2F_10advance_byBP_NtB3Z_13SpecAdvanceBy15spec_advance_by0INtNtBb_6option6OptionB3m_EEB1y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !589, !nonnull !5, !noundef !5
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !589
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i, %bb.b
  %i.h = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.j, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i ] ; 8 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.ai, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i ] ; 3 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCNvXs_NvB2F_10advance_byBP_NtB3Z_13SpecAdvanceBy15spec_advance_by0INtNtBb_6option6OptionB3m_EEB1y_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !589
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !591
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.k = load i64, ptr %i.h, align 8, !range !8, !alias.scope !593, !noalias !594, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !594 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !593, !noalias !594
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !593, !noalias !594
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ] ; 5 uses
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.f ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !595
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !4, !alias.scope !593, !noalias !594, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !595
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.m unwind label %bb.l, !noalias !594

bb.i:                                             ; preds = %bb.g
  store i64 -1, ptr %i.c, align 8, !noalias !595
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !595
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.n, !noalias !594

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.u, %bb.l ] ; 2 uses
  %i.t = icmp ne i64 %.sroa.6.0.i.i.i.i, 0
  %or.cond.not.i.i.i.i = select i1 %i.l, i1 %i.t, i1 false
  br i1 %or.cond.not.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, label %common.resume.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i, i64 noundef 1) #21, !noalias !596
  br label %common.resume.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !595
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.k unwind label %bb.o, !noalias !594

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !594
  unreachable

common.resume.i.i.i:                              ; preds = %bb.t, %.body.i.i.i.i.i, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.k
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i ], [ %i.af, %bb.t ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.y = load i8, ptr %i.x, align 8, !range !11, !alias.scope !593, !noalias !594, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !595
  store i64 %.sroa.01.0.i.i, ptr %i.d, align 8, !noalias !591
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.g, align 8, !noalias !591
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !591
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !591
  store i8 %i.y, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !591
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.z = icmp ne i64 %.sroa.6.0.i.i.i.i, 0
  %or.cond.not.i.i.i = select i1 %i.l, i1 %i.z, i1 false
  br i1 %or.cond.not.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i, i64 noundef 1) #21, !noalias !599
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %_RNvXs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  %i.aa = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !range !4, !alias.scope !600, !noalias !591, !noundef !5
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEBH_.exit.i.i.i.i.i.i unwind label %bb.q, !noalias !601

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.r, !noalias !601

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !601
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEBH_.exit.i.i.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i unwind label %bb.s, !noalias !601

.body.i.i.i.i.i:                                  ; preds = %bb.s, %bb.q
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.ae, %bb.s ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i) #22
          to label %common.resume.i.i.i unwind label %bb.v, !noalias !601

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEBH_.exit.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEBH_.exit.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i unwind label %bb.t, !noalias !601

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i)
          to label %common.resume.i.i.i unwind label %bb.u, !noalias !601

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !601
  unreachable

bb.v:                                             ; preds = %.body.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !601
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i
  %i.ai = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !591
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCNvXs_NvB2F_10advance_byBP_NtB3Z_13SpecAdvanceBy15spec_advance_by0INtNtBb_6option6OptionB3m_EEB1y_.exit, label %bb.c

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCNvXs_NvB2F_10advance_byBP_NtB3Z_13SpecAdvanceBy15spec_advance_by0INtNtBb_6option6OptionB3m_EEB1y_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i, %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned14clone_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2f_ENCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EENtB3j_13SpecAdvanceBy15spec_advance_by0E0B1a_.exit.i.i ], [ %.sroa.01.0.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder6os_strNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_5OsStrE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsb_NtNtCsdjW2DEjcQy2_12clap_builder7builder6os_strNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_5OsStrE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXsd_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB5_9RawValuesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted.i = load ptr, ptr %i.b, align 8, !alias.scope !616
  %.promoted19.i = load ptr, ptr %i.a, align 8, !alias.scope !616
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !616, !nonnull !5
  %.promoted20.i = load ptr, ptr %i.c, align 8, !alias.scope !616
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ %i.n, %bb.c ], [ %.promoted20.i, %bb.a ]
  %i.g = phi ptr [ %i.k, %bb.c ], [ %.promoted19.i, %bb.a ] ; 5 uses
  %spec.select.i18.i = phi ptr [ %.val.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %.not.i.i = icmp eq ptr %spec.select.i18.i, null
  br i1 %.not.i.i, label %select.unfold.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b
  %i.h = icmp eq ptr %spec.select.i18.i, %i.f     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i18.i, i64 24
  %spec.select.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select.i.i, ptr %i.b, align 8, !alias.scope !617
  br i1 %i.h, label %select.unfold.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit

select.unfold.i:                                  ; preds = %.sink.split.i.i, %bb.b
  %.not.i5.i = icmp eq ptr %i.g, null
  %i.j = icmp eq ptr %i.g, %i.e
  %or.cond.i.i = select i1 %.not.i5.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !alias.scope !618
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !616, !nonnull !5, !noundef !5 ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %.val4.i = load i64, ptr %i.m, align 8, !noalias !616, !noundef !5
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val4.i ; 2 uses
  store ptr %.val.i, ptr %i.b, align 8, !alias.scope !616
  store ptr %i.n, ptr %i.c, align 8, !alias.scope !616
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !619, !noundef !5 ; 4 uses
  %.not.i7.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.thread, label %.sink.split.i8.i

.sink.split.i8.i:                                 ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !620, !nonnull !5, !noundef !5
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %spec.select.i9.i = select i1 %i.s, ptr null, ptr %i.t
  store ptr %spec.select.i9.i, ptr %i.o, align 8, !alias.scope !619
  br i1 %i.s, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.thread, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit: ; preds = %.sink.split.i.i, %.sink.split.i8.i
  %.sroa.0.0.i = phi ptr [ %i.p, %.sink.split.i8.i ], [ %spec.select.i18.i, %.sink.split.i.i ]
  %i.u = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.v = tail call { ptr, i64 } %i.u(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !5
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.thread

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.thread: ; preds = %.sink.split.i8.i, %bb.d, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit
  %.sroa.3.0 = phi i64 [ %i.x, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit ], [ undef, %bb.d ], [ undef, %.sink.split.i8.i ]
  %.sroa.0.0 = phi ptr [ %i.w, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEIB1c_B27_EENtNtNtB9_6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit ], [ null, %bb.d ], [ null, %.sink.split.i8.i ]
  %i.ab = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ac = insertvalue { ptr, i64 } %i.ab, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXse_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB5_9RawValuesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load ptr, ptr %i.b, align 8, !alias.scope !639 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !639
  %.fr.i = freeze ptr %i.d                        ; 2 uses
  %.not.i5.i = icmp eq ptr %.fr.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.c, align 8, !alias.scope !639 ; 3 uses
  br i1 %.not.i5.i, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.a
  %.promoted15.i = load ptr, ptr %i.e, align 8, !alias.scope !639
  br label %.split.i

.split.us.i:                                      ; preds = %bb.a
  %.not.i.us.i = icmp eq ptr %.promoted.i, null
  br i1 %.not.i.us.i, label %.split17.us.i, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.f = icmp eq ptr %.promoted.i, %.promoted14.i
  br i1 %i.f, label %bb.c, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringERB1w_NCNvXsj_B2_INtB2_13FlattenCompatIB17_INtNtCscdodAO9FK5_5alloc3vec3VecB1w_EEB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECsdjW2DEjcQy2_12clap_builder.exit.i

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !alias.scope !640
  br label %.split17.us.i

.split.i:                                         ; preds = %bb.g, %.split.preheader.i
  %i.g = phi ptr [ %i.m, %bb.g ], [ %.promoted15.i, %.split.preheader.i ] ; 4 uses
  %i.h = phi ptr [ %i.p, %bb.g ], [ %.promoted14.i, %.split.preheader.i ] ; 2 uses
  %i.i = phi ptr [ %.val.i, %bb.g ], [ %.promoted.i, %.split.preheader.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
end_hunk_1
