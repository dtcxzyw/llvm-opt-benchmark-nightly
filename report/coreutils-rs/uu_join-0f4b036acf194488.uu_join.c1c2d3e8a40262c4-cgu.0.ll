Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_join-0f4b036acf194488.uu_join.c1c2d3e8a40262c4-cgu.0?download=true
inline.NumInlined: 595
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgDnTRHLCOsi_7uu_join:bb.a
  store ptr null, ptr %i.ab, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val10 = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !9, !invariant.load !4
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = and i64 %i.af, -16
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !4, !nonnull !4
  call void %i.ak(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ai) #26, !inline_history !174
  %i.al = load i128, ptr %i.a, align 16, !noundef !4
  %.not = icmp eq i128 %i.al, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.am, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
  unreachable

bb.j:                                             ; preds = %bb.e, %.thread, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !216
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #24, !noalias !216 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !noalias !216
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i64 1, ptr %i.c, align 8, !noalias !215
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !215
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !215
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !220, !noalias !221, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !220, !noalias !221, !noundef !4 ; 5 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i3, i64 16 ; 2 uses
  %i.m = add i64 %.sroa.8.0.i.i2, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %.sroa.0.0.i.i3 = phi ptr [ %i.l, %bb.c ], [ %i.g, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %.sroa.8.0.i.i2 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i.i3, align 8, !noalias !222
  %i.o = icmp eq i128 %.val.i.i, 63958622876645927927552189038096644140
  br i1 %i.o, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %i.p = load i64, ptr %i.b, align 8, !range !5, !alias.scope !223, !noalias !224, !noundef !4
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgDnTRHLCOsi_7uu_join.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #23, !noalias !224
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !223, !noalias !224
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgDnTRHLCOsi_7uu_join.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgDnTRHLCOsi_7uu_join.exit.i.i: ; preds = %bb.d, %._crit_edge
  %i.r = phi ptr [ %i.g, %._crit_edge ], [ %.pre.i.i, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i ; 2 uses
  store i64 -5875614554295535572, ptr %i.s, align 8, !noalias !225
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !225
  %i.t = add i64 %i.i, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !223, !noalias !224
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !226, !noalias !227, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !5, !alias.scope !226, !noalias !227, !noundef !4
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.thread.i

bb.e:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgDnTRHLCOsi_7uu_join.exit.i.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23, !noalias !227
  br label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.thread.i

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.thread.i: ; preds = %bb.e, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsgDnTRHLCOsi_7uu_join.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !226, !noalias !227, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 %i.e, ptr %i.ab, align 8, !noalias !228
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 ptrtoint (ptr @9 to i64), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !228
  %.sroa.10.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i, align 8, !noalias !228
  %.sroa.13.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i, align 8, !noalias !228
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !226, !noalias !227
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !220, !noalias !221, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.sroa.8.0.i.i2, %i.ae
  br i1 %i.af, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i2, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #25, !noalias !222
  unreachable

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !220, !noalias !221, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i2 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !alias.scope !229, !noalias !222
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !230, !noalias !231 ; 2 uses
  store i64 %i.e, ptr %i.ai, align 1, !alias.scope !230, !noalias !231
  store i64 ptrtoint (ptr @9 to i64), ptr %i.aj, align 1, !alias.scope !232, !noalias !233
  store <2 x i64> %i.am, ptr %i.a, align 16, !alias.scope !225, !noalias !234
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x i64>, ptr %i.ak, align 1, !alias.scope !235, !noalias !222
  store i64 -5875614554295535572, ptr %i.ak, align 1, !alias.scope !236, !noalias !237
  store i64 3467203893602029906, ptr %i.al, align 1, !alias.scope !238, !noalias !239
  store <2 x i64> %i.an, ptr %.sroa.10.0..sroa_idx.i, align 16, !alias.scope !225, !noalias !234
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.i
  %i.ap = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to ptr
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !240
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #23, !noalias !215
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.thread.i, %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCsgDnTRHLCOsi_7uu_join.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserARej2_ECsgDnTRHLCOsi_7uu_join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(640) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %.sroa.4.16.copyload.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !307, !noalias !308 ; 2 uses
  %.sroa.6.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.16.copyload.i.i.i.i = load i64, ptr %.sroa.6.16..sroa_idx.i.i.i.i, align 8, !alias.scope !307, !noalias !308
  %.sroa.7.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.16.copyload.i.i.i.i = load ptr, ptr %.sroa.7.16..sroa_idx.i.i.i.i, align 8, !alias.scope !307, !noalias !308 ; 2 uses
  %.sroa.8.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.16.copyload.i.i.i.i = load i64, ptr %.sroa.8.16..sroa_idx.i.i.i.i, align 8, !alias.scope !307, !noalias !308
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !309
  %i.a = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef range(i64 1, 9) 8) #24, !noalias !309 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXss_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCs6JMX4GRUq9U_4core7convert4FromARej2_E4fromCsgDnTRHLCOsi_7uu_join.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 144) #27, !noalias !310
  unreachable

_RNvXss_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCs6JMX4GRUq9U_4core7convert4FromARej2_E4fromCsgDnTRHLCOsi_7uu_join.exit.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.16.copyload.i.i.i.i) ]
  store i64 0, ptr %i.a, align 8, !noalias !311
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !311
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !311
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !311
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.4.16.copyload.i.i.i.i, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !311
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.6.16.copyload.i.i.i.i, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !312
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !312
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.16.copyload.i.i.i.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.c, align 8, !noalias !311
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, align 8, !noalias !311
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, align 8, !noalias !311
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, align 8, !noalias !311
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %.sroa.7.16.copyload.i.i.i.i, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, align 8, !noalias !311
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %.sroa.8.16.copyload.i.i.i.i, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, align 8, !noalias !312
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, align 8, !noalias !312
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !313
  %i.d = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #24, !noalias !313 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %_RNvXss_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCs6JMX4GRUq9U_4core7convert4FromARej2_E4fromCsgDnTRHLCOsi_7uu_join.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !noalias !313
  unreachable

bb.d:                                             ; preds = %_RNvXss_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCs6JMX4GRUq9U_4core7convert4FromARej2_E4fromCsgDnTRHLCOsi_7uu_join.exit.i.i.i
  store i64 2, ptr %i.d, align 8, !noalias !314
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 8, !noalias !314
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !314
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.g = load i64, ptr %i.f, align 8, !range !11, !alias.scope !315, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECsgDnTRHLCOsi_7uu_join.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %switch.i.i.i = icmp samesign ult i64 %i.g, 4
  br i1 %switch.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECsgDnTRHLCOsi_7uu_join.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !318 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !318, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.k = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !318 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void %i.k(ptr noundef nonnull %.val.i.i.i) #26, !noalias !318, !inline_history !302
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !4, !noalias !318 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECsgDnTRHLCOsi_7uu_join.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !9, !invariant.load !4, !noalias !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #24, !noalias !318
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser11ValueParserEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.d, %bb.e, %bb.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  store i64 4, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @90, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !321, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !321
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgDnTRHLCOsi_7uu_join.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load i32, ptr %i.c, align 8, !range !13, !noundef !4
  %i.d = tail call noundef i32 @close(i32 noundef %.val2) #24 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.g, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtBK_2io5stdio8StdinRawEEECsgDnTRHLCOsi_7uu_join.exit, !prof !10

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtBK_2io5stdio8StdinRawEEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtBK_2io5stdio8StdinRawEEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser20PossibleValuesParserECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !330, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !330, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgDnTRHLCOsi_7uu_join.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsgDnTRHLCOsi_7uu_join.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsgDnTRHLCOsi_7uu_join.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !range !12, !alias.scope !333, !noalias !330, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !333, !noalias !330, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !334
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !range !5, !alias.scope !333, !noalias !330, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsgDnTRHLCOsi_7uu_join.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !333, !noalias !330, !nonnull !4, !noundef !4
  %i.k = shl nuw i64 %.val2.i.i.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !335
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsgDnTRHLCOsi_7uu_join.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsgDnTRHLCOsi_7uu_join.exit.i.i.i: ; preds = %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit.i.i.i.i
  %i.l = icmp eq i64 %i.e, %.val1.i
  br i1 %i.l, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgDnTRHLCOsi_7uu_join.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueECsgDnTRHLCOsi_7uu_join.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !5, !alias.scope !330, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECsgDnTRHLCOsi_7uu_join.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgDnTRHLCOsi_7uu_join.exit.i
  %i.n = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !330
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder14possible_value13PossibleValueENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgDnTRHLCOsi_7uu_join.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %.val.i = load i64, ptr %0, align 8, !range !5, !alias.scope !338, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !338, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !338
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.b = load i64, ptr %0, align 8, !range !12, !alias.scope !345, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !347, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !347
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %.val to i64                ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit
  unreachable

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit
  %i.i = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit
  %i.l = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !348
  store i8 3, ptr %i.a, align 8, !alias.scope !348
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !362
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.d = load i64, ptr %i.c, align 8, !range !364, !alias.scope !363, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !12, !alias.scope !363, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !363, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !365
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !12, !alias.scope !366, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !363, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !367
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !363 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !363, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !363 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #26, !noalias !363, !inline_history !361
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !4, !noalias !363 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !4, !noalias !363
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #24, !noalias !363
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsgDnTRHLCOsi_7uu_join.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit, %bb.a
  %.sroa.01.0.ph = phi i64 [ %i.bu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgDnTRHLCOsi_7uu_join.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.n = load i64, ptr %i.c, align 8, !alias.scope !391, !noalias !392, !noundef !4 ; 2 uses
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !391, !noalias !392, !noundef !4 ; 2 uses
  %.not.i.i = icmp ult i64 %i.n, %i.o
  %.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !391, !noalias !392 ; 3 uses
  br i1 %.not.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !393
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !391, !noalias !392, !noundef !4
  store ptr %.pre.i.i, ptr %i.b, align 8, !noalias !393
  store i64 %i.p, ptr %i.g, align 8, !noalias !393
  store i64 0, ptr %i.h, align 8, !noalias !393
  %i.q = load i8, ptr %i.j, align 8, !range !14, !alias.scope !391, !noalias !392, !noundef !4
  store i8 %i.q, ptr %i.i, align 8, !noalias !393
  %i.r = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #24, !noalias !394 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !391, !noalias !392
  %i.s = load i64, ptr %i.h, align 8, !noalias !393, !noundef !4 ; 2 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !391, !noalias !392
  %i.t = load i8, ptr %i.i, align 8, !range !14, !noalias !393, !noundef !4
  store i8 %i.t, ptr %i.j, align 8, !alias.scope !391, !noalias !392
  %.not3.i.i = icmp eq ptr %i.r, null
  br i1 %.not3.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit.thread

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit.thread: ; preds = %bb.c
  %i.u = ptrtoint ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.b, %bb.d
  %i.v = phi i64 [ %i.o, %bb.b ], [ %i.s, %bb.d ]
  %i.w = phi i64 [ %i.n, %bb.b ], [ 0, %bb.d ]    ; 2 uses
  %i.x = sub nuw i64 %i.v, %i.w                   ; 9 uses
  %i.y = icmp eq ptr %.pre.i.i, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit.thread, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit
  %.sroa.8.025 = phi i64 [ %i.u, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit.thread ], [ %i.x, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit ] ; 5 uses
  %i.z = inttoptr i64 %.sroa.8.025 to ptr         ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = and i64 %.sroa.8.025, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split28
    i64 1, label %.split27
  ], !prof !15

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.ab = lshr i64 %.sroa.8.025, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = call noundef zeroext i1 %i.af(i32 noundef %i.ac) #24, !inline_history !375
  br i1 %i.ag, label %.thread, label %.loopexit

.split28:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !16, !noundef !4
  %i.aj = icmp eq i8 %i.ai, 35
  br i1 %i.aj, label %.thread, label %.loopexit

.split27:                                         ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.z, i64 31
  %i.al = load i8, ptr %i.ak, align 8, !range !16, !noundef !4
  %i.am = icmp eq i8 %i.al, 35
  br i1 %i.am, label %bb.o, label %.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.an = lshr i64 %.sroa.8.025, 32
  %i.ao = icmp ult i64 %.sroa.8.025, 188978561024 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.an to i8
  %spec.select.i.i.i = select i1 %i.ao, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ap = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.aq, label %bb.n, label %.loopexit

bb.f:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsgDnTRHLCOsi_7uu_join.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.w ; 3 uses
  %i.as = icmp samesign ult i64 %i.x, 16
  br i1 %i.as, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.at = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.x) #24
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i, %.preheader.i
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.x, %bb.h ], [ %.sroa.01.05.i, %.lr.ph.i ]
  %.sroa.0.1.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ]
  %i.au = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i, 0
  %i.av = insertvalue { i64, i64 } %i.au, i64 %.sroa.01.0.lcssa.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.az, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.05.i
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !395, !noundef !4
  %i.ay = icmp eq i8 %i.ax, %1
  br i1 %i.ay, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.az = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.x
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit: ; preds = %bb.g, %._crit_edge.i
  %.merged.i = phi { i64, i64 } [ %i.av, %._crit_edge.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.ba = extractvalue { i64, i64 } %.merged.i, 0
  %i.bb = trunc nuw i64 %i.ba to i1               ; 2 uses
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit
  %i.bc = extractvalue { i64, i64 } %.merged.i, 1 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %i.x
  br i1 %i.bd, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsgDnTRHLCOsi_7uu_join.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #25, !noalias !396
  unreachable

_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.i
  %i.be = add nuw nsw i64 %i.bc, 1
  br label %bb.k

bb.k:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsgDnTRHLCOsi_7uu_join.exit
  %.sroa.6.0 = phi i64 [ %i.be, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsgDnTRHLCOsi_7uu_join.exit ], [ %i.x, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.bf = load i64, ptr %i.l, align 8, !alias.scope !398, !noundef !4 ; 5 uses
  %i.bg = load i64, ptr %2, align 8, !range !5, !alias.scope !398, !noundef !4
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = icmp ugt i64 %.sroa.6.0, %i.bh
  br i1 %i.bi, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i: ; preds = %bb.k
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bf, i64 noundef %.sroa.6.0, i64 noundef 1, i64 noundef 1) #24
  %i.bj = load i64, ptr %i.l, align 8, !alias.scope !397, !noundef !4 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  br label %bb.l

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.k
  %i.bl = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bl)
  %.not.i15 = icmp eq i64 %.sroa.6.0, 0
  br i1 %.not.i15, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i
  %i.bm = phi i64 [ %i.bj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i ], [ %i.bf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i ] ; 2 uses
  %i.bn = load ptr, ptr %i.m, align 8, !alias.scope !397, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.ar, i64 %.sroa.6.0, i1 false), !noalias !397
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, %bb.l
  %i.bp = phi i64 [ %i.bm, %bb.l ], [ %i.bf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i ]
  %i.bq = add i64 %i.bp, %.sroa.6.0
  store i64 %i.bq, ptr %i.l, align 8, !alias.scope !397
  %i.br = load i64, ptr %i.c, align 8, !alias.scope !399, !noundef !4
  %i.bs = add i64 %i.br, %.sroa.6.0
  %i.bt = load i64, ptr %i.d, align 8, !alias.scope !399, !noundef !4
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bs)
  store i64 %..i.i, ptr %i.c, align 8, !alias.scope !399
  %i.bu = add i64 %.sroa.6.0, %.sroa.01.0.ph      ; 2 uses
  %i.bv = icmp eq i64 %.sroa.6.0, 0
  %or.cond = or i1 %i.bv, %i.bb
  br i1 %or.cond, label %bb.m, label %.outer

bb.m:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit
  %i.bw = inttoptr i64 %i.bu to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split27, %.split28, %bb.m
  %.sroa.3.0 = phi ptr [ %i.bw, %bb.m ], [ %i.z, %.split28 ], [ %i.z, %.split27 ], [ %i.z, %.split ], [ %i.z, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.m ], [ 1, %.split28 ], [ 1, %.split27 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %i.bx = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.by = insertvalue { i64, ptr } %i.bx, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.by

.thread:                                          ; preds = %.split, %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgDnTRHLCOsi_7uu_join.exit

bb.n:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgDnTRHLCOsi_7uu_join.exit

bb.o:                                             ; preds = %.split27
  %i.bz = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  store ptr %i.bz, ptr %i.k, align 8, !alias.scope !400
  store i8 3, ptr %i.a, align 8, !alias.scope !400
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.n, %bb.o, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !403, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !403
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !403
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) #24, !noalias !403
  %i.h = load i64, ptr %i.a, align 8, !range !17, !noalias !403, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !18, !noalias !403, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !403
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !403, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !403
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !403
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !403
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef nonnull align 8 ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !9, !invariant.load !4
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !nonnull !4
  call void %i.j(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.h) #26, !inline_history !404
  %i.k = load i128, ptr %i.a, align 16, !noundef !4
  %.not.i = icmp eq i128 %i.k, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i, label %_RINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
  unreachable

_RINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a
  ret ptr %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgDnTRHLCOsi_7uu_join14parse_settings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [40 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [16 x i8], align 16              ; 4 uses
  %i.am = alloca [16 x i8], align 16              ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [16 x i8], align 16              ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [40 x i8], align 8               ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 6 uses
  %i.az = alloca [40 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [40 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 6 uses
  %i.be = alloca [40 x i8], align 8               ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [40 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [40 x i8], align 8               ; 4 uses
  %i.bj = alloca [40 x i8], align 8               ; 4 uses
  %i.bk = alloca [40 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 10 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !561
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !561
  store ptr @27, ptr %i.bf, align 8, !noalias !563
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 1, ptr %i.bp, align 8, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !563
  %i.bq = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !562, !noalias !564, !noundef !4
  %.not.i.i = icmp eq i64 %i.bq, 2
  br i1 %.not.i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !563
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !563
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgDnTRHLCOsi_7uu_join, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !563
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.be, ptr %i.br, align 8, !noalias !563
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !563
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25, !noalias !565
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !562, !noalias !564, !align !8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !561
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgDnTRHLCOsi_7uu_join.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !566, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !566, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !567
  call fastcc void @_RNvCsgDnTRHLCOsi_7uu_join18parse_field_number(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bx) #24, !noalias !568
  %i.by = load ptr, ptr %i.bc, align 8, !noalias !567, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvCsgDnTRHLCOsi_7uu_join6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsgDnTRHLCOsi_7uu_join.exit
  %.sroa.01464.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %.sroa.01464.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01464.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01464.sroa.38.0..sroa_idx, align 8
  %.sroa.01464.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01464.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01464.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01464.sroa.40.0..sroa_idx, align 8
  %.sroa.01464.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01464.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01464.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01464.sroa.42.0..sroa_idx, align 8
  %.sroa.01464.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %.sroa.01464.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01464.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01464.sroa.45.0..sroa_idx, align 8
  %.sroa.01464.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01464.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01464.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01464.sroa.47.0..sroa_idx, align 8
  %.sroa.01464.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  store i64 0, ptr %.sroa.01464.sroa.48.0..sroa_idx, align 8
  %.sroa.41465.0..sroa_idx1466 = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store i64 %.sroa.01761.0.copyload, ptr %.sroa.41465.0..sroa_idx1466, align 8
  %.sroa.61468.0..sroa_idx1469 = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  store ptr %.sroa.21762.0.copyload, ptr %.sroa.61468.0..sroa_idx1469, align 8
  %.sroa.71471.0..sroa_idx1472 = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  store i64 %.sroa.31763.0.copyload, ptr %.sroa.71471.0..sroa_idx1472, align 8
  %.sroa.71471.sroa.5.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  store i64 -1, ptr %.sroa.71471.sroa.5.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.7.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  store i64 -2, ptr %.sroa.71471.sroa.7.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.9.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  store ptr @37, ptr %.sroa.71471.sroa.9.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.10.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 584
  store i64 1, ptr %.sroa.71471.sroa.10.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.11.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  store ptr @75, ptr %.sroa.71471.sroa.11.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.12.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  store i64 15, ptr %.sroa.71471.sroa.12.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.13.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  store ptr null, ptr %.sroa.71471.sroa.13.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.15.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  store i32 122, ptr %.sroa.71471.sroa.15.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.16.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 628
  store i32 -1, ptr %.sroa.71471.sroa.16.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 4
  %.sroa.71471.sroa.17.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 632
  store i32 0, ptr %.sroa.71471.sroa.17.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 8
  %.sroa.71471.sroa.18.0..sroa.71471.0..sroa_idx1472.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 2, ptr %.sroa.71471.sroa.18.0..sroa.71471.0..sroa_idx1472.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.g) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ba, ptr noundef nonnull align 8 dereferenceable(712) %i.az, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1276
  %i.ef = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #24, !noalias !1276 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit534
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #27, !noalias !1277
  unreachable

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsgDnTRHLCOsi_7uu_join.exit534
  store ptr @78, ptr %i.ef, align 8, !noalias !1278
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 5, ptr %i.eh, align 8, !noalias !1279
  store i64 0, ptr %i.d, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.21540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.21540.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.31542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.31542.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.41544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.41544.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.51546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 -1, ptr %.sroa.51546.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.61548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %.sroa.61548.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.71549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.71549.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.81550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81550.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.91551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.91551.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.101552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.101552.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.111553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.111553.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.121554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.121554.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.131555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.131555.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.141556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.141556.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.151557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.151557.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.161558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.161558.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.171559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.171559.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.181560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.181560.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.191561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.191561.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.201562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.201562.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.211563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.211563.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.221564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.sroa.241566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221564.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.241566.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.251567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.251567.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.261568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.261568.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.271569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store i64 0, ptr %.sroa.271569.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.281570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store i64 1, ptr %.sroa.281570.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.301571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store ptr %i.ef, ptr %.sroa.301571.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.331572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i64 1, ptr %.sroa.331572.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.351573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store i64 0, ptr %.sroa.351573.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.361574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.361574.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.371575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.371575.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.381576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.381576.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.391577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.391577.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.401578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.401578.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.411579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %.sroa.431581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411579.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.431581.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.441582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441582.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.451583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.451583.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.461584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  store i64 0, ptr %.sroa.461584.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.471585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  store i64 -1, ptr %.sroa.471585.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.481587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store i64 -1, ptr %.sroa.481587.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.491589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  store i64 -2, ptr %.sroa.491589.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.501591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  store ptr @77, ptr %.sroa.501591.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.521592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  store i64 5, ptr %.sroa.521592.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.541593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store ptr null, ptr %.sroa.541593.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.551595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  store ptr null, ptr %.sroa.551595.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.561597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  store i32 -1, ptr %.sroa.561597.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.571598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  store i32 -1, ptr %.sroa.571598.0..sroa_idx, align 4, !alias.scope !1280, !noalias !1281
  %.sroa.581599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 632
  store i32 1, ptr %.sroa.581599.0..sroa_idx, align 8, !alias.scope !1280, !noalias !1281
  %.sroa.611600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 636
  store i8 -1, ptr %.sroa.611600.0..sroa_idx, align 4, !alias.scope !1280, !noalias !1281
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !range !11, !noundef !4
  %.off = add nsw i64 %i.ej, -4
  %switch = icmp ult i64 %.off, -5
  br i1 %switch, label %bb.o, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit585

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.val.i.i.i.i580 = load ptr, ptr %i.ek, align 8 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val1.i.i.i.i581 = load ptr, ptr %i.el, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.em = load ptr, ptr %.val1.i.i.i.i581, align 8, !invariant.load !4, !noalias !1282 ; 2 uses
  %.not.i.i.i.i.i582 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i582, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i580) ]
  call void %i.em(ptr noundef nonnull %.val.i.i.i.i580) #26, !noalias !1282, !inline_history !1163
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.en = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i581, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !5, !invariant.load !4, !noalias !1282 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit585, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i583

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i583: ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i581, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !range !9, !invariant.load !4, !noalias !1282
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i580) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i580, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) %i.er) #24, !noalias !1282
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit585

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit585: ; preds = %bb.n, %bb.q, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i583
  store i64 2, ptr %i.ei, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 632 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !noundef !4
  %i.eu = or i32 %i.et, 4
  store i32 %i.eu, ptr %i.es, align 8
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.e) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bb, ptr noundef nonnull align 8 dereferenceable(712) %i.ba, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1285
  %i.ev = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #24, !noalias !1285 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit585
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #27, !noalias !1286
  unreachable

bb.s:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit585
  store ptr @80, ptr %i.ev, align 8, !noalias !1287
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 5, ptr %i.ex, align 8, !noalias !1288
  store i64 0, ptr %i.b, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.21605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.21605.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.31607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.31607.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.41609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %.sroa.41609.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.51611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %.sroa.51611.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.61613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.61613.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.71614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.71614.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.81615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81615.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.91616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.91616.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.101617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.101617.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.111618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.111618.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.121619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.121619.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.131620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.131620.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.141621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.141621.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.151622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.151622.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.161623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.161623.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.171624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.171624.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.181625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.181625.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.191626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.191626.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.201627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.201627.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.211628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.211628.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.221629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.241631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221629.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.241631.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.251632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.251632.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.261633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.261633.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.271634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i64 0, ptr %.sroa.271634.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.281635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i64 1, ptr %.sroa.281635.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.301636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr %i.ev, ptr %.sroa.301636.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.331637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 1, ptr %.sroa.331637.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.351638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i64 0, ptr %.sroa.351638.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.361639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.361639.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.371640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.371640.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.381641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.381641.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.391642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.391642.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.401643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.401643.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.411644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %.sroa.431646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411644.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.431646.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.441647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441647.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.451648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.451648.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.461649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.461649.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.471650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i64 -1, ptr %.sroa.471650.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.481652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %.sroa.481652.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.491654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.491654.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.501656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr @79, ptr %.sroa.501656.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.521657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i64 5, ptr %.sroa.521657.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.541658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr null, ptr %.sroa.541658.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.551660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.551660.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.561662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %.sroa.561662.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.571663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.571663.0..sroa_idx, align 4, !alias.scope !1289, !noalias !1290
  %.sroa.581664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 1, ptr %.sroa.581664.0..sroa_idx, align 8, !alias.scope !1289, !noalias !1290
  %.sroa.611665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  store i8 -1, ptr %.sroa.611665.0..sroa_idx, align 4, !alias.scope !1289, !noalias !1290
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !range !11, !noundef !4
  %.off1790 = add nsw i64 %i.ez, -4
  %switch1791 = icmp ult i64 %.off1790, -5
  br i1 %switch1791, label %bb.t, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit636

bb.t:                                             ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.val.i.i.i.i631 = load ptr, ptr %i.fa, align 8 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val1.i.i.i.i632 = load ptr, ptr %i.fb, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.fc = load ptr, ptr %.val1.i.i.i.i632, align 8, !invariant.load !4, !noalias !1291 ; 2 uses
  %.not.i.i.i.i.i633 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i633, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i631) ]
  call void %i.fc(ptr noundef nonnull %.val.i.i.i.i631) #26, !noalias !1291, !inline_history !1163
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i632, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !5, !invariant.load !4, !noalias !1291 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit636, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i634

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i634: ; preds = %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i632, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !range !9, !invariant.load !4, !noalias !1291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i631) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i631, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) %i.fh) #24, !noalias !1291
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit636

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit636: ; preds = %bb.s, %bb.v, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i634
  store i64 2, ptr %i.ey, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !noundef !4
  %i.fk = or i32 %i.fj, 4
  store i32 %i.fk, ptr %i.fi, align 8
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.c) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.bb, i64 712, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %.val.i637 = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1292, !noundef !4 ; 2 uses
  %i.fl = icmp eq i64 %.val.i637, 0
  br i1 %i.fl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit, label %bb.w

bb.w:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit636
  %.val1.i638 = load ptr, ptr %i.bh, align 8, !alias.scope !1292, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i638, i64 noundef %.val.i637, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1292
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsgDnTRHLCOsi_7uu_join.exit636, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCsgDnTRHLCOsi_7uu_join4LineE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1295
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48) #24, !noalias !1295
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1295, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1295, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1295
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1295, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1295
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1295
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1295
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCsgDnTRHLCOsi_7uu_join4SpecE8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1298
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1298
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16) #24, !noalias !1298
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1298, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1298, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1298
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1298, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1298
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1298
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1298
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgDnTRHLCOsi_7uu_join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 73) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !19
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #24
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgDnTRHLCOsi_7uu_join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 73) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 4 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !19
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %2 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.f, %bb.g, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #24 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.m, align 8
  br label %bb.e

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMsa_CsgDnTRHLCOsi_7uu_joinNtB5_4Line9get_field(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %1, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.sroa.3.0 = phi i64 [ %i.r, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.s, %bb.e ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.j
  %.not = icmp ugt i64 %i.l, %i.n
  %or.cond = or i1 %i.o, %.not
  br i1 %or.cond, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = sub nuw i64 %i.l, %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMsb_CsgDnTRHLCOsi_7uu_joinNtB5_5State15get_current_key(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1301, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.f, %i.h
  br i1 %i.j, label %bb.c, label %_RNvMsa_CsgDnTRHLCOsi_7uu_joinNtB5_4Line9get_field.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1301, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.f ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1301, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1301, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1301, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.n
  %.not.i = icmp ugt i64 %i.p, %i.r
  %or.cond.i = or i1 %i.s, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #25, !noalias !1301
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1301, !nonnull !4, !noundef !4
  %i.v = sub nuw i64 %i.p, %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.n
  br label %_RNvMsa_CsgDnTRHLCOsi_7uu_joinNtB5_4Line9get_field.exit

_RNvMsa_CsgDnTRHLCOsi_7uu_joinNtB5_4Line9get_field.exit: ; preds = %bb.b, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.v, %bb.e ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.w, %bb.e ], [ null, %bb.b ]
  %i.x = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.y = insertvalue { ptr, i64 } %i.x, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.y

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #25
  unreachable
}
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exactCsgDnTRHLCOsi_7uu_join:bb.a
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1407, !noalias !1408, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1407, !noalias !1408, !noundef !4
  %i.g = sub nuw i64 %i.f, %i.d
  %.not.i.not = icmp ugt i64 %2, %i.g
  br i1 %.not.i.not, label %.lr.ph.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !alias.scope !1407, !noalias !1408, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !1409, !noalias !1410
  %i.j = add i64 %i.d, %2
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !1407, !noalias !1408
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.0.026.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.118.i, %bb.q ] ; 5 uses
  %.sroa.7.025.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.116.i, %bb.q ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.r = load i64, ptr %i.c, align 8, !alias.scope !1415, !noalias !1416, !noundef !4 ; 3 uses
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !1415, !noalias !1416, !noundef !4 ; 3 uses
  %i.t = icmp ne i64 %i.r, %i.s
  %i.u = load i64, ptr %i.k, align 8, !alias.scope !1415, !noalias !1416 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.7.025.i, %i.u
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %.not.i.i.i = icmp ult i64 %i.r, %i.s
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1418, !noalias !1419 ; 3 uses
  br i1 %.not.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !1420
  store i64 %i.u, ptr %i.m, align 8, !noalias !1420
  store i64 0, ptr %i.n, align 8, !noalias !1420
  %i.v = load i8, ptr %i.p, align 8, !range !14, !alias.scope !1418, !noalias !1419, !noundef !4
  store i8 %i.v, ptr %i.o, align 8, !noalias !1420
  %i.w = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #24, !noalias !1421 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !1418, !noalias !1419
  %i.x = load i64, ptr %i.n, align 8, !noalias !1420, !noundef !4 ; 2 uses
  store i64 %i.x, ptr %i.e, align 8, !alias.scope !1418, !noalias !1419
  %i.y = load i8, ptr %i.o, align 8, !range !14, !noalias !1420, !noundef !4
  store i8 %i.y, ptr %i.p, align 8, !alias.scope !1418, !noalias !1419
  %.not3.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not3.i.i.i, label %bb.e, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread.i.i: ; preds = %bb.d
  %i.z = ptrtoint ptr %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.i.i: ; preds = %bb.e, %bb.c
  %i.aa = phi i64 [ %i.s, %bb.c ], [ %i.x, %bb.e ] ; 2 uses
  %i.ab = phi i64 [ %i.r, %bb.c ], [ 0, %bb.e ]   ; 3 uses
  %i.ac = sub nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.ae, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !1415, !noalias !1416
  %i.af = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull %.sroa.0.026.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.025.i) #24
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join.exit.i

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.i.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread.i.i
  %.sroa.69.012.i.i = phi i64 [ %i.z, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread.i.i ], [ %i.ac, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.i.i ]
  %i.ag = inttoptr i64 %.sroa.69.012.i.i to ptr
  %i.ah = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ag, 1
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join.exit.i

bb.h:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 range(i64 0, -9223372036854775808) %.sroa.7.025.i) ; 4 uses
  %i.ai = icmp eq i64 %..i.i.i.i, 1
  br i1 %i.ai, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgDnTRHLCOsi_7uu_join.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.ad, align 1, !noalias !1423, !noundef !4
  store i8 %i.aj, ptr %.sroa.0.026.i, align 1, !alias.scope !1424, !noalias !1425
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgDnTRHLCOsi_7uu_join.exit.i.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.026.i, ptr nonnull readonly align 1 %i.ad, i64 range(i64 0, -9223372036854775808) %..i.i.i.i, i1 false), !alias.scope !1426, !noalias !1427
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgDnTRHLCOsi_7uu_join.exit.i.i.i, %bb.i
  %i.ak = inttoptr i64 %..i.i.i.i to ptr
  %i.al = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ak, 1
  %i.am = add i64 %..i.i.i.i, %i.ab
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.am)
  store i64 %..i.i.i, ptr %i.c, align 8, !alias.scope !1415, !noalias !1416
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join.exit.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i, %bb.g, %bb.f
  %.merged.i.i = phi { i64, ptr } [ %i.af, %bb.f ], [ %i.ah, %bb.g ], [ %i.al, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ] ; 2 uses
  %i.an = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ao = extractvalue { i64, ptr } %.merged.i.i, 1 ; 11 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 8 uses
  %i.aq = trunc nuw i64 %i.an to i1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ar = and i64 %i.ap, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split13.i
    i64 1, label %.split12.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.j
  unreachable

.split.i:                                         ; preds = %bb.j
  %i.as = lshr i64 %i.ap, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.ax = call noundef zeroext i1 %i.aw(i32 noundef %i.at) #24, !inline_history !1404
  br i1 %i.ax, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

.split13.i:                                       ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !16, !noundef !4
  %i.ba = icmp eq i8 %i.az, 35
  br i1 %i.ba, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

.split12.i:                                       ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.ao, i64 31
  %i.bc = load i8, ptr %i.bb, align 8, !range !16, !noundef !4
  %i.bd = icmp eq i8 %i.bc, 35
  br i1 %i.bd, label %bb.p, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.j
  %i.be = lshr i64 %i.ap, 32
  %i.bf = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.be to i8
  %spec.select.i.i.i.i = select i1 %i.bf, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.bg = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.bh, label %bb.o, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

bb.k:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join.exit.i
  %i.bi = icmp eq ptr %i.ao, null
  br i1 %i.bi, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp ult i64 %.sroa.7.025.i, %i.ap
  br i1 %i.bj, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %.sroa.7.025.i, i64 noundef %.sroa.7.025.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bk = sub nuw nsw i64 %.sroa.7.025.i, %i.ap
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 %i.ap
  br label %bb.q

.thread.i:                                        ; preds = %.split13.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1428
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i

bb.o:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1428
  %i.bm = and i64 %i.ap, 1095216660480
  %i.bn = icmp ne i64 %i.bm, 1095216660480
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.assume(i1 %i.bn)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i

bb.p:                                             ; preds = %.split12.i
  %i.bo = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1428
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  store ptr %i.bo, ptr %i.q, align 8, !alias.scope !1429, !noalias !1428
  store i8 3, ptr %i.a, align 8, !alias.scope !1429, !noalias !1428
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.p, %bb.o, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1428
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i, %bb.n
  %.sroa.0.118.i = phi ptr [ %.sroa.0.026.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i ], [ %i.bl, %bb.n ]
  %.sroa.7.116.i = phi i64 [ %.sroa.7.025.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bp = icmp eq i64 %.sroa.7.116.i, 0
  br i1 %i.bp, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.q, %bb.k, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split12.i, %.split13.i, %.split.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread ], [ null, %bb.q ], [ %i.ao, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.ao, %.split.i ], [ %i.ao, %.split12.i ], [ @18, %bb.k ], [ %i.ao, %.split13.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = sub nuw i64 %i.f, %i.d                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.j = load i64, ptr %1, align 8, !range !5, !alias.scope !1436, !noundef !4 ; 3 uses
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %i.m = add i64 %i.g, %i.i                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgDnTRHLCOsi_7uu_join.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %i.j, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 range(i64 0, -1) %i.o)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i.i, i64 range(i64 0, -1) 8) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1438
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1438
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.j, ptr %.val13.i.i, i64 noundef %..i14.i.i, i64 noundef 1, i64 noundef 1) #24, !noalias !1438
  %i.q = load i64, ptr %i.a, align 8, !range !17, !noalias !1438, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1438
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgDnTRHLCOsi_7uu_join.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1438, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1438
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !1438
  %i.u = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  store i64 %..i14.i.i, ptr %1, align 8, !alias.scope !1438
  %.pre.i = sub i64 %..i14.i.i, %i.i
  %i.v = icmp ule i64 %i.g, %.pre.i
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.a, %bb.e
  %i.w = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1439, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.x, i64 %i.g, i1 false), !noalias !1439
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, %bb.f
  %i.ab = add i64 %i.i, %i.g
  store i64 %i.ab, ptr %i.h, align 8, !alias.scope !1439
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ad = tail call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #24 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = trunc nuw i64 %i.ae to i1
  %i.ai = select i1 %i.ah, i64 0, i64 %i.g
  %spec.select = add i64 %i.ai, %i.ag
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgDnTRHLCOsi_7uu_join.exit.thread

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgDnTRHLCOsi_7uu_join.exit.thread: ; preds = %bb.d, %bb.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit ], [ 163208757251, %bb.b ], [ 163208757251, %bb.d ]
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit ], [ 1, %bb.b ], [ 1, %bb.d ]
  %i.aj = inttoptr i64 %.sroa.4.0 to ptr
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %i.aj, 1
  ret { i64, ptr } %i.al
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read13read_vectoredCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgDnTRHLCOsi_7uu_join.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %2, %i.f                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec21 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec22 = shufflevector <4 x i64> %wide.vec21, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1440

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader26

.preheader.preheader26:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader26, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader26 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader26 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !4
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgDnTRHLCOsi_7uu_join.exit, label %.preheader, !llvm.loop !1441

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgDnTRHLCOsi_7uu_join.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgDnTRHLCOsi_7uu_join.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !1458, !noalias !1459 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1460
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !1460
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !1460
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !1460
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !14, !alias.scope !1458, !noalias !1459, !noundef !4
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read13read_vectoredCsgDnTRHLCOsi_7uu_join:bb.a
  store i64 0, ptr %i.t, align 8, !alias.scope !1458, !noalias !1459
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !1460, !noundef !4 ; 2 uses
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !1458, !noalias !1459
  %i.ai = load i8, ptr %i.ad, align 8, !range !14, !noalias !1460, !noundef !4
  store i8 %i.ai, ptr %i.ae, align 8, !alias.scope !1458, !noalias !1459
  %.not3.i = icmp eq ptr %i.ag, null
  br i1 %.not3.i, label %bb.d, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread: ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1460
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1460
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %i.w, %bb.b ], [ %i.ah, %bb.d ]
  %i.al = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = icmp eq ptr %.pre.i, null
  br i1 %i.an, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgDnTRHLCOsi_7uu_join.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.ap = tail call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2) #24
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit.thread ], [ %i.am, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.j

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.as = icmp eq i64 %2, 0
  br i1 %i.as, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ]
  %.sroa.03.0.i17 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.at, %.lr.ph ], [ %i.bd, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.av = phi i64 [ %i.am, %.lr.ph ], [ %i.be, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.03.0.i17, align 8, !alias.scope !1462, !noalias !1463, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1462, !noalias !1463, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 range(i64 0, -9223372036854775808) %i.az) ; 5 uses
  %i.ba = icmp eq i64 %..i.i.i, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgDnTRHLCOsi_7uu_join.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.au, align 1, !noalias !1465, !noundef !4
  store i8 %i.bb, ptr %i.ax, align 1, !alias.scope !1464, !noalias !1466
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgDnTRHLCOsi_7uu_join.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.au, i64 range(i64 0, -9223372036854775808) %..i.i.i, i1 false), !alias.scope !1467, !noalias !1468
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgDnTRHLCOsi_7uu_join.exit.i.i, %bb.i
  %i.bc = add i64 %..i.i.i, %.sroa.01.0.i18       ; 2 uses
  %.not.i8 = icmp ule i64 %i.av, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i
  %i.be = sub nuw nsw i64 %i.av, %..i.i.i
  %i.bf = icmp eq ptr %i.aw, %i.b
  %or.cond25 = select i1 %.not.i8, i1 true, i1 %i.bf
  br i1 %or.cond25, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %bb.h

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 2 uses
  %i.bg = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bh = load i64, ptr %i.t, align 8, !noundef !4
  %i.bi = add i64 %i.bh, %.sroa.01.1.i
  %i.bj = load i64, ptr %i.v, align 8, !noundef !4
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi)
  store i64 %..i, ptr %i.t, align 8
  %i.bk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.ap, %bb.e ], [ %i.ar, %bb.f ], [ %i.bk, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exactCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1485, !noalias !1486, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1485, !noalias !1486, !noundef !4
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !1485, !noalias !1486, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !1487, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !alias.scope !1488, !noalias !1489
  store i64 %i.c, ptr %i.d, align 8, !noalias !1487
  %i.p = add i64 %i.h, %i.f
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1485, !noalias !1486
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %.not9.i = icmp eq i64 %i.c, %i.e
  br i1 %.not9.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.r = phi i64 [ %i.e, %.lr.ph.i ], [ %i.aq, %.backedge.i ]
  %i.s = call noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read8read_bufCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #24 ; 10 uses
  %.not2.i = icmp eq ptr %i.s, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split7.i
    i64 1, label %.split6.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.v = lshr i64 %i.t, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = call noundef zeroext i1 %i.z(i32 noundef %i.w) #24, !inline_history !1481
  br i1 %i.aa, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

.split7.i:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !16, !noundef !4
  %i.ad = icmp eq i8 %i.ac, 35
  br i1 %i.ad, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

.split6.i:                                        ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.s, i64 31
  %i.af = load i8, ptr %i.ae, align 8, !range !16, !noundef !4
  %i.ag = icmp eq i8 %i.af, 35
  br i1 %i.ag, label %bb.f, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.ah = lshr i64 %i.t, 32
  %i.ai = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ah to i8
  %spec.select.i.i.i.i = select i1 %i.ai, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.aj = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.ak, label %bb.e, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit

bb.d:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !1490, !noalias !1491, !noundef !4 ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.r
  br i1 %i.am, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split7.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1492
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1492
  %i.an = and i64 %i.t, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i

bb.f:                                             ; preds = %.split6.i
  %i.ap = getelementptr i8, ptr %i.s, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1492
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.q, align 8, !alias.scope !1493, !noalias !1492
  store i8 3, ptr %i.a, align 8, !alias.scope !1493, !noalias !1492
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1492
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !1490, !noalias !1491
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i, %bb.d
  %i.aq = phi i64 [ %.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgDnTRHLCOsi_7uu_join.exit.i ], [ %i.al, %bb.d ] ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !alias.scope !1490, !noalias !1491, !noundef !4
  %.not.i1 = icmp eq i64 %i.ar, %i.aq
  br i1 %.not.i1, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %.backedge.i, %bb.d, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split6.i, %.split7.i, %.split.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit.thread ], [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsgDnTRHLCOsi_7uu_join.exit ], [ null, %.backedge.i ], [ %i.s, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.s, %.split.i ], [ %i.s, %.split6.i ], [ @18, %bb.d ], [ %i.s, %.split7.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_to_stringCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #24 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.m = tail call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1503, !noalias !1504, !nonnull !4, !noundef !4
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !1503, !noalias !1504, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1505
  call void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.p) #24
  %i.q = load i64, ptr %i.a, align 8, !range !17, !noalias !1505, !noundef !4
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1505
  %i.r = load i64, ptr %i.d, align 8, !alias.scope !1503, !noalias !1504, !noundef !4 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsgDnTRHLCOsi_7uu_join.exit

bb.e:                                             ; preds = %bb.c
  %i.t = extractvalue { i64, ptr } %i.m, 1
  %i.u = extractvalue { i64, ptr } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1505
  %i.v = trunc nuw i64 %i.u to i1
  %..i = select i1 %i.v, ptr %i.t, ptr @14
  %i.w = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsgDnTRHLCOsi_7uu_join.exit

_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.012.i = phi i64 [ %i.r, %bb.d ], [ 0, %bb.e ]
  %.merged.i = phi { i64, ptr } [ %i.m, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store i64 %.sroa.0.012.i, ptr %i.d, align 8, !alias.scope !1506, !noalias !1504
  %i.x = extractvalue { i64, ptr } %.merged.i, 0
  %i.y = extractvalue { i64, ptr } %.merged.i, 1
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.aa = extractvalue { i64, ptr } %i.j, 1
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.ad = load i64, ptr %i.i, align 8, !noundef !4
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad) #24
  %i.ae = load i64, ptr %i.b, align 8, !range !17, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.ak = load i64, ptr %1, align 8, !range !5, !alias.scope !1508, !noundef !4
  %i.al = sub nsw i64 %i.ak, %i.e
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i: ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e, i64 noundef %i.aj, i64 noundef 1, i64 noundef 1) #24
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !1507, !noundef !4 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i: ; preds = %bb.i
  %.not.i12 = icmp eq i64 %i.aj, 0
  br i1 %.not.i12, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i
  %i.ap = phi i64 [ %i.an, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.thread.i ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !1507, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.ah, i64 %i.aj, i1 false), !noalias !1507
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgDnTRHLCOsi_7uu_join.exit.i ]
  %i.au = add i64 %i.at, %i.aj
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !1507
  %.val10 = load i64, ptr %i.c, align 8, !range !5, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %.val10, 0
  br i1 %i.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgDnTRHLCOsi_7uu_join.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.f
  %.sroa.5.0 = phi i64 [ %i.ab, %bb.f ], [ ptrtoint (ptr @14 to i64), %bb.h ]
  %.val = load i64, ptr %i.c, align 8, !range !5, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsgDnTRHLCOsi_7uu_join.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit13
  %.sroa.5.1 = phi i64 [ %i.z, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsgDnTRHLCOsi_7uu_join.exit ], [ %.sroa.5.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit13 ], [ %i.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit ]
  %.sroa.0.1 = phi i64 [ %i.x, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsgDnTRHLCOsi_7uu_join.exit ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit13 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgDnTRHLCOsi_7uu_join.exit ]
  %i.ax = inttoptr i64 %.sroa.5.1 to ptr
  %i.ay = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.az = insertvalue { i64, ptr } %i.ay, ptr %i.ax, 1
  ret { i64, ptr } %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read16is_read_vectoredCsgDnTRHLCOsi_7uu_join(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = icmp ne i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp ult i64 %2, %i.h
  %or.cond = select i1 %i.f, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %.not.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !1520, !noalias !1521 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsgDnTRHLCOsi_7uu_join.exit, label %bb.c

end_hunk_3
