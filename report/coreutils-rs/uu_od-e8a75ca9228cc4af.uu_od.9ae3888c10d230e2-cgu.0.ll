Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvCsdit6BuOJVAc_5uu_od17map_input_strings:bb.a
  %i.c = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, 9) 8) #29, !noalias !501 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #32, !noalias !500
  unreachable

.preheader.i.i.i:                                 ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i
  %i.e = phi i64 [ %i.m, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !502, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !502, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val12.i.i.i.i.i.i, 1
  br i1 %i.i, label %bb.c, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.preheader.i.i.i
  %lhsc.i.i.i.i.i.i.i.i = load i8, ptr %.val11.i.i.i.i.i.i, align 1, !noalias !503
  %i.j = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i, 45
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.j, ptr null, ptr %.val11.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.preheader.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i.i, %bb.c ], [ %.val11.i.i.i.i.i.i, %.preheader.i.i.i ]
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !504
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val12.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !505
  %i.m = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.m, %2
  br i1 %i.n, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterNtNtB8_6string6StringENCNvB17_17map_input_strings0EE9from_iterB17_.exit, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterNtNtB8_6string6StringENCNvB17_17map_input_strings0EE9from_iterB17_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i, %bb.a
  %.sroa.10.0.i8.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCsdit6BuOJVAc_5uu_od16multifile_reader11InputSourceuNCNvB1B_17map_input_strings0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3Z_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0E0E0B1B_.exit.i.i.i.i.i.i ]
  store i64 %2, ptr %0, align 8, !alias.scope !500
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i8.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !500
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !500
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsdit6BuOJVAc_5uu_od18parse_bytes_option(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 7, 11) %5, i32 noundef range(i32 78, 107) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %4, ptr %i.c, align 8, !noalias !516
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %5, ptr %i.h, align 8, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !516
  %i.i = load i64, ptr %i.e, align 8, !range !7, !alias.scope !515, !noundef !5
  %.not.i = icmp eq i64 %i.i, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516
  store ptr %i.c, ptr %i.a, align 8, !noalias !516
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !516
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8, !noalias !516
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !516
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30, !noalias !515
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !515, !align !9, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od15parse_nrofbytes21parse_number_of_bytes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p) #29
  %i.q = load i64, ptr %i.g, align 8, !range !23, !noundef !5 ; 2 uses
  %.not2 = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  br i1 %.not2, label %bb.i, label %bb.f

bb.d:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsdit6BuOJVAc_5uu_od.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.u = load i64, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvCsdit6BuOJVAc_5uu_od19option_display_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i32 noundef %6) #29
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  call fastcc void @_RNvCsdit6BuOJVAc_5uu_od20format_error_message(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i64 %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y) #29
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !518
  %i.z = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #29, !noalias !518 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32, !noalias !518
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %.val.i = load i64, ptr %i.f, align 8, !range !6, !alias.scope !519, !noundef !5 ; 2 uses
  %i.ad = icmp eq i64 %.val.i, 0
  br i1 %i.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, label %bb.h

bb.h:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !519
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ae = icmp eq i64 %i.s, 0
  br i1 %i.ae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsdit6BuOJVAc_5uu_od.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.sink.split.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !520
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsdit6BuOJVAc_5uu_od.exit

bb.i:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.ag, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.sink.split.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsdit6BuOJVAc_5uu_od19option_display_name(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 5, 11) %4, i32 noundef range(i32 78, 120) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @38, ptr noundef nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @39, ptr noundef nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.076.0.copyload = load i64, ptr %i.e, align 8 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %5, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCs6JMX4GRUq9U_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @40, ptr noundef nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.078.0.copyload = load i64, ptr %i.b, align 8 ; 4 uses
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.881.0.copyload = load ptr, ptr %.sroa.881.0..sroa_idx, align 8 ; 8 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.idx = mul nuw nsw i64 %2, 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not.i.not.peel = icmp samesign ugt i64 %2, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  br i1 %.not.i.not.peel, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.loopexit110

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not.i48.peel = icmp samesign ult i64 %i.p, 2
  br i1 %.not.i48.peel, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread.peel, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.peel

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.peel: ; preds = %bb.b
  %i.q = load i16, ptr %i.n, align 1
  %i.r = icmp ne i16 11565, %i.q
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread.peel

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread.peel: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.peel, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.881.0.copyload) ]
  %.not.i66.peel = icmp samesign ult i64 %i.p, %.sroa.10.0.copyload
  br i1 %.not.i66.peel, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.peel

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.peel: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread.peel
  %bcmp.i.i67.peel = call i32 @bcmp(ptr nonnull readonly %.sroa.881.0.copyload, ptr nonnull readonly %i.n, i64 range(i64 0, -9223372036854775808) %.sroa.10.0.copyload), !alias.scope !541
  %i.u = icmp eq i32 %bcmp.i.i67.peel, 0
  br i1 %i.u, label %.loopexit107, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.peel, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread.peel, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.peel
  %i.v = icmp eq i64 %2, 2
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread
  %.sroa.092.0118 = phi ptr [ %i.w, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread ], [ %i.k, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.092.0118, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.092.0118, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.092.0118, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %.not.i48 = icmp samesign ult i64 %i.aa, 2
  br i1 %.not.i48, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit: ; preds = %.lr.ph
  %i.ab = load i16, ptr %i.y, align 1
  %i.ac = icmp ne i16 11565, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread

._crit_edge:                                      ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.ag
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %bcmp.peel = call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.ai, i64 %i.ag)
  %i.ap = icmp eq i32 %bcmp.peel, 0
  br i1 %i.ap, label %.loopexit111, label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %.not.i56.peel = icmp samesign ult i64 %i.am, %.sroa.12.0.copyload
  br i1 %.not.i56.peel, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel, label %.split102.peel

.split102.peel:                                   ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i57.peel = call i32 @bcmp(ptr nonnull readonly %.sroa.8.0.copyload, ptr nonnull readonly %i.aq, i64 range(i64 0, -9223372036854775808) %.sroa.12.0.copyload), !alias.scope !542
  %i.ar = icmp eq i32 %bcmp.i.i57.peel, 0
  br i1 %i.ar, label %.loopexit111, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel: ; preds = %.split102.peel, %bb.d
  %i.as = icmp eq i64 %2, 2
  br i1 %i.as, label %.loopexit110, label %.lr.ph120

.lr.ph120:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge
  %.sroa.096.0119 = phi ptr [ %i.at, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge ], [ %i.aj, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.ag
  br i1 %i.ax, label %bb.g, label %bb.h

.loopexit110:                                     ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel, %.thread
  %i.ay = phi ptr [ %i.l, %.thread ], [ %i.ah, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge.peel ], [ %i.ah, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge ]
  store i64 %.sroa.078.0.copyload, ptr %0, align 8
  %.sroa.881.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.881.0.copyload, ptr %.sroa.881.0..sroa_idx82, align 8
  %.sroa.10.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx86, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = icmp eq i64 %.sroa.076.0.copyload, 0
  br i1 %i.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %.sroa.076.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !543
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit: ; preds = %.loopexit110, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %.val.i53 = load i64, ptr %i.g, align 8, !range !6, !alias.scope !544, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %.val.i53, 0
  br i1 %i.ba, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  %.val1.i54 = load ptr, ptr %i.ay, align 8, !alias.scope !544, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i54, i64 noundef %.val.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !544
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55

bb.g:                                             ; preds = %.lr.ph120
  %i.bb = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %bcmp = call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %i.ai, i64 %i.ag)
  %i.bc = icmp eq i32 %bcmp, 0
  br i1 %i.bc, label %.loopexit111, label %bb.h

bb.h:                                             ; preds = %.lr.ph120, %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %.not.i56 = icmp samesign ult i64 %i.aw, %.sroa.12.0.copyload
  br i1 %.not.i56, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge, label %.split102

.split102:                                        ; preds = %bb.h
  %i.bd = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i57 = call i32 @bcmp(ptr nonnull readonly %.sroa.8.0.copyload, ptr nonnull readonly %i.bd, i64 range(i64 0, -9223372036854775808) %.sroa.12.0.copyload), !alias.scope !542
  %i.be = icmp eq i32 %bcmp.i.i57, 0
  br i1 %i.be, label %.loopexit111, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit59.backedge: ; preds = %.split102, %bb.h
  %i.bf = icmp eq ptr %i.at, %i.j
  br i1 %i.bf, label %.loopexit110, label %.lr.ph120, !llvm.loop !531

.loopexit111:                                     ; preds = %.split102, %bb.g, %.split102.peel, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bg = icmp eq i64 %.sroa.078.0.copyload, 0
  br i1 %i.bg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit62, label %bb.i

bb.i:                                             ; preds = %.loopexit111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.881.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.881.0.copyload, i64 noundef %.sroa.078.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !545
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit62

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit62: ; preds = %.loopexit111, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bh = icmp eq i64 %.sroa.076.0.copyload, 0
  br i1 %i.bh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %.sroa.076.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !546
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread: ; preds = %.lr.ph, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.881.0.copyload) ]
  %.not.i66 = icmp samesign ult i64 %i.aa, %.sroa.10.0.copyload
  br i1 %.not.i66, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread
  %bcmp.i.i67 = call i32 @bcmp(ptr nonnull readonly %.sroa.881.0.copyload, ptr nonnull readonly %i.y, i64 range(i64 0, -9223372036854775808) %.sroa.10.0.copyload), !alias.scope !541
  %i.bi = icmp eq i32 %bcmp.i.i67, 0
  br i1 %i.bi, label %.loopexit107, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread

.loopexit107:                                     ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.peel
  store i64 %.sroa.078.0.copyload, ptr %0, align 8
  %.sroa.881.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.881.0.copyload, ptr %.sroa.881.0..sroa_idx84, align 8
  %.sroa.10.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx88, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bj = icmp eq i64 %.sroa.076.0.copyload, 0
  br i1 %i.bj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit72, label %bb.k

bb.k:                                             ; preds = %.loopexit107
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %.sroa.076.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !547
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit72

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit72: ; preds = %.loopexit107, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %.val.i73 = load i64, ptr %i.g, align 8, !range !6, !alias.scope !548, !noundef !5 ; 2 uses
  %i.bk = icmp eq i64 %.val.i73, 0
  br i1 %i.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i74 = load ptr, ptr %i.bl, align 8, !alias.scope !548, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i74, i64 noundef %.val.i73, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !548
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69.thread: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.thread, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit69, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit
  %i.bm = icmp eq ptr %i.w, %i.j
  br i1 %i.bm, label %._crit_edge, label %.lr.ph, !llvm.loop !540

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit55: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit62, %bb.j, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit72, %bb.l, %bb.f, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsdit6BuOJVAc_5uu_od20format_error_message(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, i64 %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %.not.i = icmp slt i64 %4, 0                    ; 3 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ab, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  br i1 %.not.i, label %bb.h, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp eq i64 %4, 0
  br i1 %i.ac, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !588
  %i.ad = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) 1) #29, !noalias !588 ; 18 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  br i1 %.not.i, label %bb.cc, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %.thread139, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i30

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i30: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !589
  %i.ag = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) 1) #29, !noalias !589 ; 18 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.cc, label %bb.cd

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br i1 %.not.i, label %bb.as, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i64 %4, 0
  br i1 %i.ai, label %.thread115, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i34

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i34: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !590
  %i.aj = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) 1) #29, !noalias !590 ; 18 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.as, label %bb.at

bb.h:                                             ; preds = %bb.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %4) #32
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %3, i64 %4, i1 false)
  %cond = icmp eq i64 %4, 1
  %i.al = load i8, ptr %i.ad, align 1, !alias.scope !591 ; 2 uses
  br i1 %cond, label %bb.j, label %thread-pre-split.i

bb.j:                                             ; preds = %bb.i
  switch i8 %i.al, label %bb.q [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.i
  switch i8 %i.al, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]
end_hunk_0
