Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind:bb.a
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtCs7tKScEop1B6_5alloc6string6StringNtB2_3Any7type_idCsdit6BuOJVAc_5uu_od(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCsdit6BuOJVAc_5uu_od(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB1H_15CommandLineOpts12opts_present0EB1J_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.f, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.val2.i = load ptr, ptr %i.b, align 8, !noalias !2265, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val3.i = load i64, ptr %i.c, align 8, !noalias !2265, !noundef !5
  %i.d = tail call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i) #29, !noalias !2265
  %i.e = icmp eq i8 %i.d, 2                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.f, %i.a
  %or.cond = select i1 %i.e, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB1H_15CommandLineOpts12opts_present0EB1J_.exit, label %.lr.ph

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB1H_15CommandLineOpts12opts_present0EB1J_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts6inputs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2311, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2311, !noundef !5 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.o, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.j, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.p, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.q = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.q, align 8, !noalias !2312, !noundef !5
  %i.r = icmp eq i64 %.val7.i.i.i, 8
  br i1 %i.r, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !2312, !nonnull !5, !noundef !5
  %i.s = load i64, ptr %.val.i.i.i, align 1
  %i.t = icmp ne i64 %i.s, 4993719366249630022
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.w = icmp eq ptr %i.o, %i.m
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.split.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2311, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %.sroa.8.016.i.i.i, %i.y
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30, !noalias !2312
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2311, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2313
  store i128 53410479646238849826493945191968316847, ptr %i.g, align 16, !noalias !2313
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.g) #29, !noalias !2313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2313
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.h, align 16, !noalias !2313 ; 3 uses
  %i.ad = icmp eq i128 %.sroa.013.0.copyload.i.i, 53410479646238849826493945191968316847
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.af = trunc nuw i128 %i.ae to i64
  %i.ag = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.ah = inttoptr i64 %i.ag to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @117, ptr %i.f, align 8, !noalias !2314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 8, ptr %i.ai, align 8, !noalias !2314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2314
  store i64 0, ptr %i.e, align 8, !noalias !2315
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ah, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !2315
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.af, ptr %.sroa.13.8..sroa_idx, align 8, !noalias !2315
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 3117803386453401007, ptr %.sroa.15.8..sroa_idx, align 8, !noalias !2315
  %.sroa.15.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 2895387903297248865, ptr %.sroa.15.8..sroa_idx.sroa_idx, align 8, !noalias !2315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2314
  store ptr %i.f, ptr %i.d, align 8, !noalias !2314
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2314
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.aj, align 8, !noalias !2314
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2314
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30, !noalias !2314
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2313
  %i.ak = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ac) #29, !noalias !2316
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !noalias !2316, !nonnull !5, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !noalias !2316, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ao, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2317
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.ar = icmp eq ptr %i.as, %i.ap
  br i1 %i.ar, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %select.unfold.i.i.i.i
  %.sroa.48.0.copyload.i59148 = phi ptr [ %i.as, %select.unfold.i.i.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i59148, i64 24 ; 3 uses
  %i.at = getelementptr i8, ptr %.sroa.48.0.copyload.i59148, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !2318, !noundef !5 ; 2 uses
  %i.au = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.au, label %select.unfold.i.i.i.i, label %.loopexit.i1

.loopexit.i1:                                     ; preds = %.lr.ph
  %i.av = getelementptr i8, ptr %.sroa.48.0.copyload.i59148, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.av, align 8, !noalias !2318, !nonnull !5, !noundef !5 ; 4 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.le
  call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  %.val.i = load ptr, ptr %.val.i.i.i.i.le, align 8, !alias.scope !2319, !noalias !2320, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 8
  %.val1.i = load ptr, ptr %i.ax, align 8, !alias.scope !2319, !noalias !2320, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !10, !invariant.load !5, !noalias !2321
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = and i64 %i.ba, -16
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2321
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !5, !noalias !2321, !nonnull !5
  call void %i.bf(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.bd) #31, !noalias !2321, !inline_history !2290
  %i.bg = load i128, ptr %i.b, align 16, !noalias !2321, !noundef !5
  %.not.i.i = icmp eq i128 %i.bg, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2321
  br i1 %.not.i.i, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %.loopexit.i1
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #30, !noalias !2321
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit: ; preds = %.loopexit.i1
  %i.bh = add i64 %i.ak, -1                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 24
  %.val.i.i = load ptr, ptr %i.bi, align 8, !noalias !2322, !nonnull !5, !noundef !5
  %i.bj = getelementptr i8, ptr %i.bc, i64 32
  %.val3.i.i = load i64, ptr %i.bj, align 8, !noalias !2322, !noundef !5
  %i.bk = call i64 @llvm.uadd.sat.i64(i64 %i.bh, i64 1) ; 2 uses
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.bk, i64 4) ; 2 uses
  %i.bl = shl i64 %..i.i, 4                       ; 3 uses
  %i.bm = icmp ugt i64 %i.bk, 1152921504606846975
  %.not.i.i.i = icmp ugt i64 %i.bl, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bm, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !11

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2323
  %i.bn = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bl, i64 noundef range(i64 1, 9) 8) #29, !noalias !2323 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.bl) #32, !noalias !2317
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  store ptr %.val.i.i, ptr %i.bn, align 8, !noalias !2317, !captures !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.val3.i.i, ptr %i.bp, align 8, !noalias !2317
  store i64 %..i.i, ptr %i.c, align 8, !noalias !2317
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i2, align 8, !noalias !2317
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !2317
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i
  %i.bq = phi ptr [ %i.cu, %bb.k ], [ %i.bn, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i ]
  %.sroa.622.0.copyload24 = phi i64 [ %i.cx, %bb.k ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i ] ; 6 uses
  %i.br = phi i64 [ %i.cn, %bb.k ], [ %i.bh, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i ]
  %i.bs = phi ptr [ %.lcssa3.i.i, %bb.k ], [ %i.aw, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i ] ; 2 uses
  %i.bt = phi ptr [ %.lcssa.i.i, %bb.k ], [ %i.as, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i ] ; 3 uses
  %.val.i.i.i10.i.lcssa.i.i.pn = phi ptr [ %.val.i.i.i10.i.lcssa.i.i, %bb.k ], [ %.val.i.i.i.i.le, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdit6BuOJVAc_5uu_od.exit.i ]
  %.val.i.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i.pn, i64 32 ; 2 uses
  %i.bu = icmp eq ptr %.val.i.i.i11.i.i.i, %i.bs
  br i1 %i.bu, label %select.unfold.i.i.i.i.i.preheader.i, label %.loopexit.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.i
  %i.bv = icmp eq ptr %i.bt, %i.ap
  br i1 %i.bv, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.bw = icmp eq ptr %i.by, %i.ap
  br i1 %i.bw, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.by, %select.unfold.i.i.i.i.i.i ], [ %i.bt, %select.unfold.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !2326, !noundef !5 ; 2 uses
  %i.ca = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.ca, label %select.unfold.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit.i

.loopexit.loopexit.i.i.loopexit.i:                ; preds = %.lr.ph.i
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.cb, align 8, !noalias !2326, !nonnull !5, !noundef !5 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.i, %.loopexit.loopexit.i.i.loopexit.i
  %.lcssa3.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.cc, %.loopexit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.bt, %bb.i ], [ %i.by, %.loopexit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i10.i.lcssa.i.i = phi ptr [ %.val.i.i.i11.i.i.i, %bb.i ], [ %.val.i.i.i.i.i.le.i, %.loopexit.loopexit.i.i.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %.val.i92 = load ptr, ptr %.val.i.i.i10.i.lcssa.i.i, align 8, !alias.scope !2327, !noalias !2328, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i, i64 8
  %.val1.i93 = load ptr, ptr %i.cd, align 8, !alias.scope !2327, !noalias !2328, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i93, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !10, !invariant.load !5, !noalias !2329
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i92, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2329
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1.i93, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !5, !noalias !2329, !nonnull !5
  call void %i.cl(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.cj) #31, !noalias !2329, !inline_history !2307
  %i.cm = load i128, ptr %i.a, align 16, !noalias !2329, !noundef !5
  %.not.i.i94 = icmp eq i128 %i.cm, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2329
  br i1 %.not.i.i94, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit95, label %bb.j, !prof !8

bb.j:                                             ; preds = %.loopexit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #30, !noalias !2329
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit95: ; preds = %.loopexit.i.i.i
  %i.cn = add i64 %i.br, -1                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.ci, i64 24
  %.val.i.i.i6.i = load ptr, ptr %i.co, align 8, !noalias !2330, !nonnull !5, !noundef !5
  %i.cp = getelementptr i8, ptr %i.ci, i64 32
  %.val3.i.i.i.i = load i64, ptr %i.cp, align 8, !noalias !2330, !noundef !5
  %i.cq = icmp samesign ult i64 %.sroa.622.0.copyload24, 576460752303423488
  call void @llvm.assume(i1 %i.cq)
  %i.cr = load i64, ptr %i.c, align 8, !range !6, !alias.scope !2331, !noalias !2317, !noundef !5
  %i.cs = icmp eq i64 %.sroa.622.0.copyload24, %i.cr
  br i1 %i.cs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsdit6BuOJVAc_5uu_od.exit.i.i.i, label %bb.k

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsdit6BuOJVAc_5uu_od.exit.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit95
  %i.ct = call i64 @llvm.uadd.sat.i64(i64 %i.cn, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.622.0.copyload24, i64 noundef range(i64 1, 0) %i.ct, i64 noundef 8, i64 noundef 16) #29, !noalias !2332
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2, align 8, !alias.scope !2331, !noalias !2317
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsdit6BuOJVAc_5uu_od.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit95
  %i.cu = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsdit6BuOJVAc_5uu_od.exit.i.i.i ], [ %i.bq, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsdit6BuOJVAc_5uu_od.exit95 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.sroa.622.0.copyload24 ; 2 uses
  store ptr %.val.i.i.i6.i, ptr %i.cv, align 8, !noalias !2333, !captures !26
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.cw, align 8, !noalias !2333
  %i.cx = add nuw nsw i64 %.sroa.622.0.copyload24, 1 ; 2 uses
  store i64 %i.cx, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !2331, !noalias !2317
  br label %bb.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i: ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.017.0.copyload18 = load i64, ptr %i.c, align 8, !noalias !2334
  %.sroa.519.0.copyload21 = load ptr, ptr %.sroa.4.0..sroa_idx.i2, align 8, !noalias !2334
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit: ; preds = %select.unfold.i.i.i.i, %bb.f, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i
  %.sroa.622.0 = phi i64 [ %.sroa.622.0.copyload24, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i ], [ 0, %bb.f ], [ 0, %select.unfold.i.i.i.i ]
  %.sroa.519.0 = phi ptr [ %.sroa.519.0.copyload21, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i ], [ inttoptr (i64 8 to ptr), %bb.f ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i ]
  %.sroa.017.0 = phi i64 [ %.sroa.017.0.copyload18, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsdit6BuOJVAc_5uu_od.exit.i ], [ 0, %bb.f ], [ 0, %select.unfold.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2317
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.a, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit
  %.sink91 = phi i64 [ %.sroa.017.0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit ], [ 0, %bb.a ], [ 0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ]
  %.sink89 = phi ptr [ %.sroa.519.0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit ], [ inttoptr (i64 8 to ptr), %bb.a ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ]
  %.sink = phi i64 [ %.sroa.622.0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsdit6BuOJVAc_5uu_od.exit ], [ 0, %bb.a ], [ 0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ]
  store i64 %.sink91, ptr %0, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink89, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.cz, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, ptr } @_RNvXNtCsdit6BuOJVAc_5uu_od16multifile_readerNtB2_13CurrentReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !17, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = trunc nuw i32 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %i.b, align 4, !range !18, !alias.scope !2344, !noundef !5
  %i.d = zext i32 %.val to i64
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = inttoptr i64 %2 to ptr
  %i.g = tail call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr null, ptr %i.e, ptr nonnull %1, ptr %i.f) #29, !noalias !2345, !srcloc !19
  %i.h = extractvalue { ptr, i32, i32 } %i.g, 0   ; 4 uses
  %.not.i.i.i.i = icmp sgt ptr %i.h, inttoptr (i64 -4096 to ptr)
  %i.i = icmp slt ptr %i.h, null
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.i
  br i1 %.sroa.0.0.i.i.i.i, label %bb.c, label %_RNvXNtNtCsh036I4OHgIr_6uucore4mods2ioINtB2_9RawReaderNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsdit6BuOJVAc_5uu_od.exit

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !2346
  %.not.i.i = icmp eq ptr %i.k, @161
  br i1 %.not.i.i, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #29
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.d, %bb.c
  %.neg.i = mul i64 %i.j, -4294967296
  %i.l = or disjoint i64 %.neg.i, 2
  %i.m = inttoptr i64 %i.l to ptr
  br label %_RNvXNtNtCsh036I4OHgIr_6uucore4mods2ioINtB2_9RawReaderNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsdit6BuOJVAc_5uu_od.exit

_RNvXNtNtCsh036I4OHgIr_6uucore4mods2ioINtB2_9RawReaderNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.b, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %.sroa.3.0.i = phi ptr [ %i.m, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ], [ %i.h, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ], [ 0, %bb.b ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = tail call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull %1, i64 noundef %2) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods2ioINtB2_9RawReaderNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsdit6BuOJVAc_5uu_od.exit
  %.pn = phi { i64, ptr } [ %i.o, %_RNvXNtNtCsh036I4OHgIr_6uucore4mods2ioINtB2_9RawReaderNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdENtNtNtCs7tKScEop1B6_5alloc2io4read4Read4readCsdit6BuOJVAc_5uu_od.exit ], [ %i.p, %bb.e ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsdit6BuOJVAc_5uu_od19formatter_item_infoNtB2_12FormatWriterNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2347, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 10) #29
  br i1 %i.c, label %bb.g, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 12) #29
  br i1 %i.d, label %bb.g, label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 17) #29
  br i1 %i.e, label %bb.g, label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 13) #29
  br i1 %i.f, label %bb.g, label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 16) #29
  br i1 %i.g, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c
end_hunk_0
