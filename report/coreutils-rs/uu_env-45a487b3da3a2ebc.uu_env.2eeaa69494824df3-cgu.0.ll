inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env:bb.a
  %i.am = inttoptr i64 %i.al to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 -49237559333878691962261109163680243548, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !145
  %i.an = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah) #26 ; 3 uses
  %.not8 = icmp eq ptr %i.an, null
  br i1 %.not8, label %.thread, label %bb.g

.thread:                                          ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ao, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.an, align 8, !nonnull !11, !noundef !11
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %.val10 = load ptr, ptr %i.ap, align 8, !nonnull !11, !align !146, !noundef !11 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !147, !invariant.load !11
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !11, !nonnull !11
  call void %i.ax(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.av) #29, !inline_history !148
  %i.ay = load i128, ptr %i.a, align 16, !noundef !11
  %.not = icmp eq i128 %i.ay, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.i, !prof !149

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.az, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
  unreachable

bb.j:                                             ; preds = %bb.e, %.thread, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 4, 15) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !156, !noalias !157, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !156, !noalias !157, !noundef !11 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i
  %.sroa.0.0917.i.i = phi ptr [ %i.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i = phi i64 [ %i.j, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.016.i.i, 1
  %i.k = getelementptr i8, ptr %.sroa.0.0917.i.i, i64 8
  %.val7.i.i = load i64, ptr %i.k, align 8, !noalias !161, !noundef !11
  %i.l = icmp eq i64 %.val7.i.i, %3
  br i1 %i.l, label %.split.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !161, !nonnull !11, !noundef !11
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.val.i.i, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 4, 15) %3), !alias.scope !162, !noalias !166
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.i, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !156, !noalias !157, !noundef !11 ; 2 uses
  %i.q = icmp ult i64 %.sroa.8.016.i.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !161
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !156, !noalias !157, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %.sroa.8.016.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167
  store i128 -49237559333878691962261109163680243548, ptr %i.a, align 16, !noalias !167
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a) #26, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  %.sroa.013.0.copyload.i = load i128, ptr %i.b, align 16, !noalias !167 ; 3 uses
  %i.u = icmp eq i128 %.sroa.013.0.copyload.i, -49237559333878691962261109163680243548
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.y = inttoptr i64 %i.x to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx21, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 -49237559333878691962261109163680243548, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  %i.aa = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs41JD7yXDh97_6uu_env, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.g

.loopexit:                                        ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs41JD7yXDh97_6uu_env(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1, i8 noundef range(i8 3, 5) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !171
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #26, !noalias !171 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !174

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !171
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i64 1, ptr %i.c, align 8, !noalias !168
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !168
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !168
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !182, !noalias !183, !nonnull !11, !noundef !11 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !182, !noalias !183, !noundef !11 ; 5 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9, i64 16 ; 2 uses
  %i.m = add nuw i64 %.sroa.8.0.i.i8, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %.sroa.0.0.i.i9 = phi ptr [ %i.l, %bb.c ], [ %i.g, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %.sroa.8.0.i.i8 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i.i9, align 8, !noalias !185
  %i.o = icmp eq i128 %.val.i.i, 63958622876645927927552189038096644140
  br i1 %i.o, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %i.p = load i64, ptr %i.b, align 8, !range !47, !alias.scope !186, !noalias !189, !noundef !11
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #27, !noalias !189
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !186, !noalias !189
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i: ; preds = %bb.d, %._crit_edge
  %i.r = phi ptr [ %i.g, %._crit_edge ], [ %.pre.i.i, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i ; 2 uses
  store i64 -5875614554295535572, ptr %i.s, align 8, !noalias !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !191
  %i.t = add i64 %i.i, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !186, !noalias !189
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !192, !noalias !195, !noundef !11 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !47, !alias.scope !192, !noalias !195, !noundef !11
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i

bb.e:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #27, !noalias !195
  br label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i: ; preds = %bb.e, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !192, !noalias !195, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 %i.e, ptr %i.ab, align 8, !noalias !197
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 ptrtoint (ptr @8 to i64), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !197
  %.sroa.10.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i, align 8, !noalias !197
  %.sroa.13.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i, align 8, !noalias !197
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !192, !noalias !195
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !182, !noalias !183, !noundef !11 ; 2 uses
  %i.af = icmp ult i64 %.sroa.8.0.i.i8, %i.ae
  br i1 %i.af, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i8, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #28, !noalias !185
  unreachable

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !182, !noalias !183, !nonnull !11, !noundef !11
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !alias.scope !198, !noalias !185
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !202, !noalias !203 ; 2 uses
  store i64 %i.e, ptr %i.ai, align 1, !alias.scope !202, !noalias !203
  store i64 ptrtoint (ptr @8 to i64), ptr %i.aj, align 1, !alias.scope !205, !noalias !206
  store <2 x i64> %i.am, ptr %i.a, align 16, !alias.scope !191, !noalias !208
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x i64>, ptr %i.ak, align 1, !alias.scope !209, !noalias !185
  store i64 -5875614554295535572, ptr %i.ak, align 1, !alias.scope !212, !noalias !213
  store i64 3467203893602029906, ptr %i.al, align 1, !alias.scope !215, !noalias !216
  store <2 x i64> %i.an, ptr %.sroa.10.0..sroa_idx.i, align 16, !alias.scope !191, !noalias !208
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i
  %i.ap = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to ptr
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !218
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #27, !noalias !168
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit: ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i, %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMsq_Cs4wMsmSZJqIm_3iniNtB6_3Ini18load_from_file_optRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECs41JD7yXDh97_6uu_env(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [3 x i8], align 4                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [4 x i8], align 4                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !227
  store i128 18446745954905227264, ptr %i.f, align 16, !noalias !227
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !227
  %i.j = load i32, ptr %i.h, align 8, !range !231, !noundef !11
  %i.k = trunc nuw i32 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = load i32, ptr %i.o, align 4, !range !232, !noundef !11
  store i32 %i.p, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.g, i8 0, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %.sroa.0.026.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.0.118.i, %bb.l ] ; 3 uses
  %.sroa.7.025.i = phi i64 [ 3, %bb.c ], [ %.sroa.7.116.i, %bb.l ] ; 6 uses
  %i.r = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull %.sroa.0.026.i, i64 noundef %.sroa.7.025.i) #26 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 11 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 8 uses
  %i.v = trunc nuw i64 %i.s to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.w = and i64 %i.u, 3
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split13.i
    i64 1, label %.split12.i
  ], !prof !233

default.unreachable:                              ; preds = %bb.e
  unreachable

.split.i:                                         ; preds = %bb.e
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
  %i.ac = call noundef zeroext i1 %i.ab(i32 noundef %i.y) #26, !inline_history !234
  br i1 %i.ac, label %.thread.i, label %._crit_edge

.split13.i:                                       ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !235, !noundef !11
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %.thread.i, label %._crit_edge

.split12.i:                                       ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.t, i64 31
  %i.ah = load i8, ptr %i.ag, align 8, !range !235, !noundef !11
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %bb.k, label %._crit_edge

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.e
  %i.aj = lshr i64 %i.u, 32
  %i.ak = icmp ult ptr %i.t, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.aj to i8
  %spec.select.i.i.i.i = select i1 %i.ak, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.al = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.am, label %bb.j, label %._crit_edge

bb.f:                                             ; preds = %bb.d
  %i.an = icmp eq ptr %i.t, null
end_hunk_0
begin_hunk_1_@_RNvCs41JD7yXDh97_6uu_env20build_signal_request:bb.a
  %i.hh = zext i16 %i.hg to i64                   ; 5 uses
  %.idx1403 = shl nuw nsw i64 %i.hh, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx1403
  %i.hj = icmp eq i16 %i.hg, 0
  br i1 %i.hj, label %._crit_edge, label %.lr.ph

bb.bi:                                            ; preds = %.lr.ph
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i1394, i64 8 ; 2 uses
  %i.hl = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i1393, 1
  %i.hm = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.bi
  %.sroa.0.03.i.i.i.i.i1394 = phi ptr [ %i.hk, %bb.bi ], [ %i.he, %.preheader.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i1393 = phi i64 [ %i.hl, %bb.bi ], [ 0, %.preheader.i ] ; 2 uses
  %.val6.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i1394, align 8, !noalias !934, !noundef !11
  %i.hn = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.7.0.i, i64 %.val6.i.i.i.i.i)
  switch i8 %i.hn, label %bb.bj [
    i8 -1, label %._crit_edge
    i8 0, label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapjNtNtB7_7set_val9SetValZSTE6insertCs41JD7yXDh97_6uu_env.exit.i
    i8 1, label %bb.bi
  ]

bb.bj:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.bi, %.lr.ph, %.preheader.i
  %.sroa.4.0.i.ph.i.i.i.i = phi i64 [ %i.hh, %.preheader.i ], [ %i.hh, %bb.bi ], [ %.sroa.8.0.i.i.i.i.i1393, %.lr.ph ] ; 12 uses
  %i.ho = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %i.ho, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 104
  %i.hq = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 12
  call void @llvm.assume(i1 %i.hq)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.4.0.i.ph.i.i.i.i
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !934, !nonnull !11, !noundef !11
  %i.ht = add i64 %.sroa.3.0.i.i.i.i, -1
  br label %.preheader.i

bb.bl:                                            ; preds = %._crit_edge
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 98 ; 3 uses
  %i.hv = icmp ult i16 %i.hg, 11
  br i1 %i.hv, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hw = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 5
  br i1 %i.hw, label %bb.bs, label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i.i.i.not.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, %i.hh
  br i1 %.not.i.i.i.i.not.i.i, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.4.0.i.ph.i.i.i.i ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = sub nuw nsw i64 %i.hh, %.sroa.4.0.i.ph.i.i.i.i
  %i.ia = shl nuw nsw i64 %i.hz, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hy, ptr nonnull align 8 %i.hx, i64 %i.ia, i1 false), !alias.scope !942, !noalias !945
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bm
  switch i64 %.sroa.4.0.i.ph.i.i.i.i, label %bb.bq [
    i64 5, label %bb.bs
    i64 6, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ib = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i, -7
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bm
  %.sroa.09.0.i.i.i.i.i = phi i1 [ true, %bb.br ], [ true, %bb.bq ], [ false, %bb.bm ], [ false, %bb.bp ]
  %.sroa.510.0.i.i.i.i.i = phi i64 [ 0, %bb.br ], [ %i.ib, %bb.bq ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.bm ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.bp ] ; 4 uses
  %.sroa.013.0.i.i.i.i.i = phi i64 [ 5, %bb.br ], [ 6, %bb.bq ], [ 4, %bb.bm ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.bp ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !958
  %i.ic = call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 104, i64 noundef range(i64 1, 9) 8) #26, !noalias !958 ; 7 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.bt, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i, !prof !174

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #30, !noalias !958
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i: ; preds = %bb.bs
  store ptr null, ptr %i.ic, align 8, !noalias !958
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 98
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.if = load i16, ptr %i.hu, align 2, !noalias !965, !noundef !11
  %i.ig = zext i16 %i.if to i64
  %i.ih = xor i64 %.sroa.013.0.i.i.i.i.i, -1
  %i.ii = add nsw i64 %i.ig, %i.ih                ; 4 uses
  %i.ij = trunc i64 %i.ii to i16
  store i16 %i.ij, ptr %i.ie, align 2, !alias.scope !962, !noalias !958
  %i.ik = icmp ult i64 %i.ii, 12
  br i1 %i.ik, label %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i, label %bb.bu, !prof !966

bb.bu:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ii, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #28, !noalias !965
  unreachable

_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.013.0.i.i.i.i.i ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !noalias !965, !noundef !11 ; 2 uses
  %i.in = getelementptr i8, ptr %i.il, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ip = shl nuw nsw i64 %i.ii, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.io, ptr nonnull readonly align 8 %i.in, i64 %i.ip, i1 false), !alias.scope !967, !noalias !958
  %i.iq = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i to i16
  store i16 %i.iq, ptr %i.hu, align 2, !noalias !965
  %spec.select36.i.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i.i, ptr %i.ic, ptr %.sroa.0.0.i.i.i.i ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select36.i.i.i.i.i, i64 98 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !noalias !971, !noundef !11 ; 2 uses
  %i.it = zext i16 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %spec.select36.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i14.not.i.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i.i, %i.it
  br i1 %.not.i14.not.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.sroa.510.0.i.i.i.i.i ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = sub nuw nsw i64 %i.it, %.sroa.510.0.i.i.i.i.i
  %i.iy = shl nuw nsw i64 %i.ix, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr nonnull align 8 %i.iv, i64 %i.iy, i1 false), !alias.scope !975, !noalias !971
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  %i.iz = add i16 %i.is, 1
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.sroa.510.0.i.i.i.i.i
  store i64 %.sroa.7.0.i, ptr %i.ja, align 8, !alias.scope !975, !noalias !971
  store i16 %i.iz, ptr %i.ir, align 2, !noalias !971
  %i.jb = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !978, !noundef !11 ; 2 uses
  %.not.i88.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i88.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i69.i

bb.bx:                                            ; preds = %bb.bo, %bb.bn
  %i.jc = add nuw nsw i16 %i.hg, 1
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.4.0.i.ph.i.i.i.i
  store i64 %.sroa.7.0.i, ptr %i.jd, align 8, !alias.scope !942, !noalias !945
  store i16 %i.jc, ptr %i.hu, align 2, !noalias !945
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i, %bb.bw
  %.sroa.11.0.lcssa.i.i.i.i = phi i64 [ %i.im, %bb.bw ], [ %i.me, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ]
  %.sroa.9.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.bw ], [ %i.jp, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ]
  %.sroa.7.0.lcssa.i.i.i.i = phi ptr [ %i.ic, %bb.bw ], [ %i.lt, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !981
  %i.je = call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 200, i64 noundef range(i64 1, 9) 8) #26, !noalias !981 ; 10 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.by, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.i.i.i, !prof !174

bb.by:                                            ; preds = %._crit_edge.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #30, !noalias !981
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  store ptr null, ptr %i.je, align 8, !noalias !981
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 98 ; 2 uses
  store i16 0, ptr %i.jg, align 2, !noalias !981
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 104
  store ptr %.ph1424, ptr %i.jh, align 8, !noalias !981
  %i.ji = add i64 %.ph1423, 1                     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bz, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i, !prof !174

bb.bz:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !981
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.je, ptr %.ph1424, align 8, !noalias !986
  %i.jj = getelementptr inbounds nuw i8, ptr %.ph1424, i64 96
  store i16 0, ptr %i.jj, align 8, !noalias !991
  %i.jk = icmp eq i64 %.sroa.9.0.lcssa.i.i.i.i, %.ph1423
  br i1 %i.jk, label %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i, label %bb.ca, !prof !149

bb.ca:                                            ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #28, !noalias !992
  unreachable

_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  store i16 1, ptr %i.jg, align 2, !noalias !992
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %.sroa.11.0.lcssa.i.i.i.i, ptr %i.jl, align 8, !noalias !992
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 112
  store ptr %.sroa.7.0.lcssa.i.i.i.i, ptr %i.jm, align 8, !noalias !992
  store ptr %i.je, ptr %.sroa.7.0.lcssa.i.i.i.i, align 8, !noalias !992
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i, i64 96
  store i16 1, ptr %i.jn, align 8, !noalias !992
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i

.lr.ph.i.i.i69.i:                                 ; preds = %bb.bw, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i
  %i.jo = phi ptr [ %i.pr, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %i.jb, %bb.bw ] ; 14 uses
  %.sroa.0.093.i.i.i.i = phi ptr [ %i.jo, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bw ]
  %.sroa.6.092.i.i.i.i = phi i64 [ %i.jp, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ 0, %bb.bw ]
  %.sroa.7.091.i.i.i.i = phi ptr [ %i.lt, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %i.ic, %bb.bw ] ; 2 uses
  %.sroa.11.089.i.i.i.i = phi i64 [ %i.me, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %i.im, %bb.bw ] ; 2 uses
  %i.jp = add nuw i64 %.sroa.6.092.i.i.i.i, 1     ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.093.i.i.i.i, i64 96
  %i.jr = load i16, ptr %i.jq, align 8, !noalias !978 ; 4 uses
  %i.js = zext i16 %i.jr to i64                   ; 8 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 98 ; 4 uses
  %i.ju = load i16, ptr %i.jt, align 2, !noalias !993, !noundef !11 ; 5 uses
  %i.jv = icmp ult i16 %i.ju, 11
  br i1 %i.jv, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i69.i
  %i.jw = icmp ult i16 %i.jr, 5
  br i1 %i.jw, label %bb.ch, label %bb.ce

bb.cc:                                            ; preds = %.lr.ph.i.i.i69.i
  %i.jx = zext nneg i16 %i.ju to i64              ; 4 uses
  %i.jy = add nuw nsw i16 %i.ju, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.ka = add nuw nsw i64 %i.js, 1                ; 6 uses
  %.not.i.i32.not.i.i.i.i = icmp ult i16 %i.jr, %i.ju
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.js ; 2 uses
  br i1 %.not.i.i32.not.i.i.i.i, label %bb.cd, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.ka
  %i.kd = sub nsw i64 %i.jx, %i.js
  %i.ke = shl nuw nsw i64 %i.kd, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kc, ptr nonnull align 8 %i.kb, i64 %i.ke, i1 false), !alias.scope !997, !noalias !1000
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jo, i64 104 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ka
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.js
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr nonnull align 8 %i.kg, i64 %i.ke, i1 false), !alias.scope !1003, !noalias !1000
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  store i64 %.sroa.11.089.i.i.i.i, ptr %i.kb, align 8, !alias.scope !997, !noalias !1000
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jo, i64 104 ; 6 uses
  %i.kk = add nuw nsw i64 %i.jx, 2                ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ka
  store ptr %.sroa.7.091.i.i.i.i, ptr %i.kl, align 8, !alias.scope !1003, !noalias !1000
  store i16 %i.jy, ptr %i.jt, align 2, !noalias !1000
  %i.km = icmp samesign ult i64 %i.ka, %i.kk
  br i1 %i.km, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  %i.kn = add nuw nsw i64 %i.jx, 1
  %i.ko = sub nsw i64 %i.kn, %i.js
  %i.kp = sub nsw i64 %i.jx, %i.js
  %xtraiter1749 = and i64 %i.ko, 3                ; 2 uses
  %lcmp.mod1750.not = icmp eq i64 %xtraiter1749, 0
  br i1 %lcmp.mod1750.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter1751 = phi i64 [ %prol.iter1751.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.kq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.kr = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.sroa.0.06.i.i.i.i.i.i.i.prol
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !1000, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.jo, ptr %i.kt, align 8, !noalias !1000
  %i.ku = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 96
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !1000
  %prol.iter1751.next = add i64 %prol.iter1751, 1 ; 2 uses
  %prol.iter1751.cmp.not = icmp eq i64 %prol.iter1751.next, %xtraiter1749
  br i1 %prol.iter1751.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1006

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.kw = icmp ult i64 %i.kp, 3
  br i1 %i.kw, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.lm, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.kx = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.sroa.0.06.i.i.i.i.i.i.i
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !1000, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.jo, ptr %i.kz, align 8, !noalias !1000
  %i.la = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i to i16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 96
  store i16 %i.la, ptr %i.lb, align 8, !noalias !1000
  %i.lc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kx
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !1000, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.jo, ptr %i.le, align 8, !noalias !1000
  %i.lf = trunc nuw nsw i64 %i.kx to i16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 96
  store i16 %i.lf, ptr %i.lg, align 8, !noalias !1000
  %i.lh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.lc
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !1000, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.jo, ptr %i.lj, align 8, !noalias !1000
  %i.lk = trunc nuw nsw i64 %i.lc to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 96
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !1000
  %i.lm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ln = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ln)
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.lh
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !1000, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.jo, ptr %i.lp, align 8, !noalias !1000
  %i.lq = trunc nuw nsw i64 %i.lh to i16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 96
  store i16 %i.lq, ptr %i.lr, align 8, !noalias !1000
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.lm, %i.kk
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cb
  switch i16 %i.jr, label %bb.cf [
    i16 5, label %bb.ch
    i16 6, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.ls = add nsw i64 %i.js, -7
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cb
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 5, %bb.cg ], [ 6, %bb.cf ], [ 4, %bb.cb ], [ 5, %bb.ce ] ; 5 uses
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %bb.cg ], [ %i.ls, %bb.cf ], [ %i.js, %bb.cb ], [ 5, %bb.ce ] ; 7 uses
  %.sroa.03.0.i.i.i.i.i = phi i1 [ true, %bb.cg ], [ true, %bb.cf ], [ false, %bb.cb ], [ false, %bb.ce ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1007
  %i.lt = call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 200, i64 noundef range(i64 1, 9) 8) #26, !noalias !1007 ; 13 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.ci, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i, !prof !174

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #30, !noalias !1007
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i: ; preds = %bb.ch
  store ptr null, ptr %i.lt, align 8, !noalias !1007
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 98 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.lw = load i16, ptr %i.jt, align 2, !noalias !1014, !noundef !11
  %i.lx = zext i16 %i.lw to i64
  %i.ly = xor i64 %.sroa.06.0.i.i.i.i.i, -1
  %i.lz = add nsw i64 %i.lx, %i.ly                ; 4 uses
  %i.ma = trunc i64 %i.lz to i16
  store i16 %i.ma, ptr %i.lv, align 2, !alias.scope !1011, !noalias !1007
  %i.mb = icmp ult i64 %i.lz, 12
  br i1 %i.mb, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i, label %bb.cj, !prof !966

bb.cj:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lz, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #28, !noalias !1014
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %.sroa.06.0.i.i.i.i.i ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !noalias !1014, !noundef !11 ; 2 uses
  %i.mf = getelementptr i8, ptr %i.md, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.mh = shl nuw nsw i64 %i.lz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr nonnull readonly align 8 %i.mf, i64 %i.mh, i1 false), !alias.scope !1015, !noalias !1007
  %i.mi = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i to i16
  store i16 %i.mi, ptr %i.jt, align 2, !noalias !1014
  %i.mj = load i16, ptr %i.lv, align 2, !noalias !1007, !noundef !11 ; 3 uses
  %i.mk = zext i16 %i.mj to i64
  %i.ml = add nuw nsw i64 %i.mk, 1                ; 5 uses
  %i.mm = icmp ult i16 %i.mj, 12
  br i1 %i.mm, label %bb.ck, label %bb.cn, !prof !966

bb.ck:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lt, i64 104 ; 6 uses
  %i.mo = zext i16 %i.ju to i64
  %i.mp = sub nuw nsw i64 %i.mo, %.sroa.06.0.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.mq = icmp eq i64 %i.mp, %i.ml
  br i1 %i.mq, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i, label %bb.cl, !prof !149

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28, !noalias !1024
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i: ; preds = %bb.ck
  %i.mr = getelementptr i8, ptr %i.jo, i64 112
  %i.ms = getelementptr [8 x i8], ptr %i.mr, i64 %.sroa.06.0.i.i.i.i.i
  %i.mt = shl nuw nsw i64 %i.ml, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mn, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ms, i64 %i.mt, i1 false), !alias.scope !1025, !noalias !1007
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %xtraiter = and i64 %i.ml, 3                    ; 3 uses
  %i.mu = icmp ult i16 %i.mj, 3
  br i1 %i.mu, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  %unroll_iter = and i64 %i.ml, 28
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.new ], [ %i.nk, %bb.cm ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i.new ], [ %niter.next.3, %bb.cm ]
  %i.mv = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %.sroa.0.09.i.i.i.i.i.i.i.i
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !1026, !noalias !1029, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.lt, ptr %i.mx, align 8, !noalias !1032
  %i.my = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i to i16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 96
  store i16 %i.my, ptr %i.mz, align 8, !noalias !1029
  %i.na = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mv
  %i.nc = load ptr, ptr %i.nb, align 8, !alias.scope !1026, !noalias !1029, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.lt, ptr %i.nc, align 8, !noalias !1032
  %i.nd = trunc nuw nsw i64 %i.mv to i16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  store i16 %i.nd, ptr %i.ne, align 8, !noalias !1029
  %i.nf = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.na
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !1026, !noalias !1029, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.lt, ptr %i.nh, align 8, !noalias !1032
  %i.ni = trunc nuw nsw i64 %i.na to i16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 96
  store i16 %i.ni, ptr %i.nj, align 8, !noalias !1029
  %i.nk = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.nf
  %i.nm = load ptr, ptr %i.nl, align 8, !alias.scope !1026, !noalias !1029, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.lt, ptr %i.nm, align 8, !noalias !1032
  %i.nn = trunc nuw nsw i64 %i.nf to i16
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 96
  store i16 %i.nn, ptr %i.no, align 8, !noalias !1029
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.unr-lcssa, label %bb.cm

bb.cn:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ml, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !noalias !1007
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.unr-lcssa: ; preds = %bb.cm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i ], [ %i.nk, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod1746 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1746)
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.np, %bb.co ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.co ]
  %i.np = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.epil, 1
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.epil
  %i.nr = load ptr, ptr %i.nq, align 8, !alias.scope !1026, !noalias !1029, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.lt, ptr %i.nr, align 8, !noalias !1032
  %i.ns = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.epil to i16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 96
  store i16 %i.ns, ptr %i.nt, align 8, !noalias !1029
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i, label %bb.co, !llvm.loop !1033

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i: ; preds = %bb.co, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.unr-lcssa
  %spec.select.i31.i.i.i.i = select i1 %.sroa.03.0.i.i.i.i.i, ptr %i.lt, ptr %i.jo ; 9 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i.i.i, i64 98 ; 2 uses
  %i.nv = load i16, ptr %i.nu, align 2, !noalias !1034, !noundef !11 ; 2 uses
  %i.nw = zext i16 %i.nv to i64                   ; 5 uses
  %i.nx = add i16 %i.nv, 1
  %i.ny = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i.i.i, i64 8 ; 2 uses
  %i.nz = add nuw nsw i64 %.sroa.5.0.i.i.i.i.i, 1 ; 6 uses
  %.not.i8.not.i.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i.i, %i.nw
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %.sroa.5.0.i.i.i.i.i ; 2 uses
  br i1 %.not.i8.not.i.i.i.i.i, label %bb.cp, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i10.i.i.i.i.i

bb.cp:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.nz
  %i.oc = sub nuw nsw i64 %i.nw, %.sroa.5.0.i.i.i.i.i
  %i.od = shl nuw nsw i64 %i.oc, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ob, ptr nonnull align 8 %i.oa, i64 %i.od, i1 false), !alias.scope !1037, !noalias !1034
  %i.oe = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i.i.i, i64 104 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.nz
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %.sroa.5.0.i.i.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oh, ptr nonnull align 8 %i.of, i64 %i.od, i1 false), !alias.scope !1040, !noalias !1034
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i10.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i10.i.i.i.i.i: ; preds = %bb.cp, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  store i64 %.sroa.11.089.i.i.i.i, ptr %i.oa, align 8, !alias.scope !1037, !noalias !1034
  %i.oi = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i.i.i, i64 104 ; 6 uses
  %i.oj = add nuw nsw i64 %i.nw, 2                ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.nz
  store ptr %.sroa.7.091.i.i.i.i, ptr %i.ok, align 8, !alias.scope !1040, !noalias !1034
  store i16 %i.nx, ptr %i.nu, align 2, !noalias !1034
  %i.ol = icmp samesign ult i64 %i.nz, %i.oj
  br i1 %i.ol, label %.lr.ph.i.i11.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i

.lr.ph.i.i11.i.i.i.i.i.preheader:                 ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i10.i.i.i.i.i
  %i.om = add nuw nsw i64 %i.nw, 1
  %i.on = sub nsw i64 %i.om, %.sroa.5.0.i.i.i.i.i
  %i.oo = sub nsw i64 %i.nw, %.sroa.5.0.i.i.i.i.i
  %xtraiter1747 = and i64 %i.on, 3                ; 2 uses
  %lcmp.mod1748.not = icmp eq i64 %xtraiter1747, 0
  br i1 %lcmp.mod1748.not, label %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i11.i.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.i.prol = phi i64 [ %i.op, %.lr.ph.i.i11.i.i.i.i.i.prol ], [ %i.nz, %.lr.ph.i.i11.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.i.preheader ]
  %i.op = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol, 1 ; 2 uses
  %i.oq = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.oq)
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol
  %i.os = load ptr, ptr %i.or, align 8, !noalias !1034, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i31.i.i.i.i, ptr %i.os, align 8, !noalias !1034
  %i.ot = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol to i16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 96
  store i16 %i.ot, ptr %i.ou, align 8, !noalias !1034
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1747
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.i.prol, !llvm.loop !1043

.lr.ph.i.i11.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i11.i.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.i.unr = phi i64 [ %i.nz, %.lr.ph.i.i11.i.i.i.i.i.preheader ], [ %i.op, %.lr.ph.i.i11.i.i.i.i.i.prol ]
  %i.ov = icmp ult i64 %i.oo, 3
  br i1 %i.ov, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i.i

.lr.ph.i.i11.i.i.i.i.i:                           ; preds = %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i.i = phi i64 [ %i.pl, %.lr.ph.i.i11.i.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ow = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 1 ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %.sroa.0.06.i.i12.i.i.i.i.i
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !1034, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i31.i.i.i.i, ptr %i.oy, align 8, !noalias !1034
  %i.oz = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i to i16
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 96
  store i16 %i.oz, ptr %i.pa, align 8, !noalias !1034
  %i.pb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 2 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ow
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !1034, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i31.i.i.i.i, ptr %i.pd, align 8, !noalias !1034
  %i.pe = trunc nuw nsw i64 %i.ow to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 96
  store i16 %i.pe, ptr %i.pf, align 8, !noalias !1034
  %i.pg = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 3 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.pb
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !1034, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i31.i.i.i.i, ptr %i.pi, align 8, !noalias !1034
  %i.pj = trunc nuw nsw i64 %i.pb to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 96
  store i16 %i.pj, ptr %i.pk, align 8, !noalias !1034
  %i.pl = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 4 ; 2 uses
  %i.pm = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.pm)
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.pg
  %i.po = load ptr, ptr %i.pn, align 8, !noalias !1034, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i31.i.i.i.i, ptr %i.po, align 8, !noalias !1034
  %i.pp = trunc nuw nsw i64 %i.pg to i16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 96
  store i16 %i.pp, ptr %i.pq, align 8, !noalias !1034
  %exitcond.not.i.i13.i.i.i.i.i.3 = icmp eq i64 %i.pl, %i.oj
  br i1 %exitcond.not.i.i13.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs41JD7yXDh97_6uu_env.exit.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i10.i.i.i.i.i
  %i.pr = load ptr, ptr %i.jo, align 8, !noalias !978, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i69.i

.thread.i.i:                                      ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1044
  %i.ps = call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 104, i64 noundef range(i64 1, 9) 8) #26, !noalias !1044 ; 6 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %bb.cq, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i, !prof !174

bb.cq:                                            ; preds = %.thread.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #30, !noalias !1044
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i: ; preds = %.thread.i.i
  store ptr null, ptr %i.ps, align 8, !noalias !1044
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 98
  store i16 1, ptr %i.pu, align 2, !noalias !1045
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i64 %.sroa.7.0.i, ptr %i.pv, align 8, !noalias !1045
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i

_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtB9_7set_val9SetValZSTE12insert_entryCs41JD7yXDh97_6uu_env.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i, %bb.bx
  %i.pw = phi i64 [ 0, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i ], [ %i.ji, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %.ph1420, %bb.bx ], [ %.ph1420, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i ], [ %.ph1420, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph1420, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.px = phi ptr [ %i.ps, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i ], [ %i.je, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %.ph1421, %bb.bx ], [ %.ph1421, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i ], [ %.ph1421, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph1421, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.py = phi i64 [ 0, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i ], [ %i.ji, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %.ph1423, %bb.bx ], [ %.ph1423, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i ], [ %.ph1423, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph1423, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.pz = phi ptr [ %i.ps, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs41JD7yXDh97_6uu_env.exit.i.i.i ], [ %i.je, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0Cs41JD7yXDh97_6uu_env.exit.i.i.i.i ], [ %.ph1424, %bb.bx ], [ %.ph1424, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i.i ], [ %.ph1424, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph1424, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.qa = add i64 %.ph1422, 1
  br label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapjNtNtB7_7set_val9SetValZSTE6insertCs41JD7yXDh97_6uu_env.exit.i.outer

bb.cr:                                            ; preds = %bb.g
  br i1 %.not.i, label %.outer.outer.backedge, label %.preheader.i26

.preheader.i26:                                   ; preds = %bb.cr, %bb.cu
  %.sroa.3.0.i.i = phi i64 [ %i.qu, %bb.cu ], [ %.8.val, %bb.cr ] ; 2 uses
  %.sroa.0.0.i.i27 = phi ptr [ %i.qt, %bb.cu ], [ %.0.val, %bb.cr ] ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i27, i64 186
  %i.qc = load i16, ptr %i.qb, align 2, !noalias !1048, !noundef !11 ; 2 uses
  %i.qd = zext i16 %i.qc to i64                   ; 3 uses
  %.idx1404 = shl nuw nsw i64 %i.qd, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i27, i64 %.idx1404
  %i.qf = icmp eq i16 %i.qc, 0
  br i1 %i.qf, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i

bb.cs:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i1399, i64 16 ; 2 uses
  %i.qh = add nuw nsw i64 %.sroa.8.0.i.i.i1398, 1
  %i.qi = icmp eq ptr %i.qg, %i.qe
  br i1 %i.qi, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i: ; preds = %.preheader.i26, %bb.cs
  %.sroa.0.01.i.i.i1399 = phi ptr [ %i.qg, %bb.cs ], [ %.sroa.0.0.i.i27, %.preheader.i26 ] ; 3 uses
  %.sroa.8.0.i.i.i1398 = phi i64 [ %i.qh, %bb.cs ], [ 0, %.preheader.i26 ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.01.i.i.i1399, align 8, !noalias !1048, !nonnull !11, !noundef !11
  %i.qj = getelementptr i8, ptr %.sroa.0.01.i.i.i1399, i64 8
  %.val6.i.i.i = load i64, ptr %i.qj, align 8, !noalias !1048, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 12, 15) %3, i64 %.val6.i.i.i)
  %i.qk = call i32 @memcmp(ptr nonnull readonly %2, ptr nonnull readonly %.val.i.i.i, i64 %spec.store.select.i.i.i.i), !alias.scope !1056, !noalias !1060 ; 2 uses
  %i.ql = sext i32 %i.qk to i64
  %i.qm = icmp eq i32 %i.qk, 0
  %i.qn = sub i64 %3, %.val6.i.i.i
  %spec.select.i.i.i.i = select i1 %i.qm, i64 %i.qn, i64 %i.ql
  %i.qo = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  switch i8 %i.qo, label %bb.ct [
    i8 -1, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i._crit_edge
    i8 0, label %.outer
    i8 1, label %bb.cs
  ]

bb.ct:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit.i.i.i
end_hunk_1
begin_hunk_2_@_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record:bb.a
bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.h
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  br i1 %.not.i.i.i.i.i.not, label %bb.l, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i: ; preds = %bb.k
  store i64 %1, ptr %i.aa, align 8, !alias.scope !2522, !noalias !2525
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ab = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ab
  %i.ad = sub nuw nsw i64 %i.h, %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.aa, i64 %i.ae, i1 false), !alias.scope !2522, !noalias !2525
  store i64 %1, ptr %i.aa, align 8, !alias.scope !2522, !noalias !2525
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 100 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.sroa.4.0.i.ph.i.i
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ab
  %i.ai = shl nuw nsw i64 %i.ad, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ag, i64 %i.ai, i1 false), !alias.scope !2540, !noalias !2525
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.n [
    i64 5, label %bb.p
    i64 6, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.j
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.j ], [ false, %bb.m ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.aj, %bb.n ], [ %.sroa.4.0.i.ph.i.i, %bb.j ], [ %.sroa.4.0.i.ph.i.i, %bb.m ] ; 6 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.o ], [ 6, %bb.n ], [ 4, %bb.j ], [ %.sroa.4.0.i.ph.i.i, %bb.m ] ; 5 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2543
  %i.ak = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, 9) 8) #26, !noalias !2543 ; 8 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.q, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1s_.exit.i.i.i.i.i, !prof !174

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #30, !noalias !2543
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1s_.exit.i.i.i.i.i: ; preds = %bb.p
  store ptr null, ptr %i.ak, align 8, !noalias !2543
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  %i.an = load i16, ptr %i.x, align 2, !noalias !2550, !noundef !11
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !2547, !noalias !2552
  %i.as = icmp ult i64 %i.aq, 12
  br i1 %i.as, label %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i, label %bb.r, !prof !966

bb.r:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1s_.exit.i.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #28, !noalias !2550
  unreachable

_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1s_.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 100 ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.sroa.013.0.i.i.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !454, !noalias !2550, !noundef !11 ; 2 uses
  %i.ax = load i8, ptr %i.au, align 1, !range !358, !noalias !2550, !noundef !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.013.0.i.i.i.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !2550, !noundef !11 ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.013.0.i.i.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bd = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull readonly align 8 %i.bb, i64 %i.bd, i1 false), !alias.scope !2553, !noalias !2552
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  %i.bg = shl nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull readonly align 1 %i.be, i64 %i.bg, i1 false), !alias.scope !2557, !noalias !2552
  %i.bh = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i to i16
  store i16 %i.bh, ptr %i.x, align 2, !noalias !2550
  %spec.select41.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i, ptr %i.ak, ptr %.sroa.0.0.i.i ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i.i, i64 98 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !noalias !2561, !noundef !11 ; 2 uses
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i.i, i64 8 ; 2 uses
  %.not.i14.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.510.0.i.i.i.i ; 3 uses
  br i1 %.not.i14.not.i.i.i.i, label %bb.s, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECs41JD7yXDh97_6uu_env.exit.i15.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECs41JD7yXDh97_6uu_env.exit.i15.i.i.i.i: ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i
  store i64 %1, ptr %i.bm, align 8, !alias.scope !2565, !noalias !2561
  br label %bb.t

bb.s:                                             ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.510.0.i.i.i.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = sub nuw nsw i64 %i.bk, %.sroa.510.0.i.i.i.i ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bm, i64 %i.bq, i1 false), !alias.scope !2565, !noalias !2561
  store i64 %1, ptr %i.bm, align 8, !alias.scope !2565, !noalias !2561
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i.i, i64 100 ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %.sroa.510.0.i.i.i.i
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bn
  %i.bu = shl nuw nsw i64 %i.bp, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %i.bs, i64 %i.bu, i1 false), !alias.scope !2568, !noalias !2561
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECs41JD7yXDh97_6uu_env.exit.i15.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i.i, i64 100
  %i.bw = add i16 %i.bj, 1
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %.sroa.510.0.i.i.i.i ; 2 uses
  store i8 %i.a, ptr %i.bx, align 1, !alias.scope !2568, !noalias !2561
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %2, ptr %i.by, align 1, !alias.scope !2568, !noalias !2561
  store i16 %i.bw, ptr %i.bi, align 2, !noalias !2561
  %i.bz = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !2571, !noundef !11 ; 2 uses
  %.not.i112.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i112.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.u:                                             ; preds = %bb.l, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECs41JD7yXDh97_6uu_env.exit.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 100
  %i.cb = add nuw nsw i16 %i.g, 1
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  store i8 %i.a, ptr %i.cc, align 1, !alias.scope !2540, !noalias !2525
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 %2, ptr %i.cd, align 1, !alias.scope !2540, !noalias !2525
  store i16 %i.cb, ptr %i.x, align 2, !noalias !2525
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i

._crit_edge.i.i.i:                                ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i, %bb.t
  %.sroa.14.0.lcssa.i.i.i = phi i8 [ %i.aw, %bb.t ], [ %i.fq, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ]
  %.sroa.13.0.lcssa.i.i.i = phi i8 [ %i.ax, %bb.t ], [ %i.fr, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ]
  %.sroa.11.0.lcssa.i.i.i = phi i64 [ %i.az, %bb.t ], [ %i.ft, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ]
  %.sroa.9.0.lcssa.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cr, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ]
  %.sroa.7.0.lcssa.i.i.i = phi ptr [ %i.ak, %bb.t ], [ %i.fd, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2577
  %i.ce = tail call noalias noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 224, i64 noundef range(i64 1, 9) 8) #26, !noalias !2577 ; 11 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.v, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i.i.i.i, !prof !174

bb.v:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #30, !noalias !2577
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  store ptr null, ptr %i.ce, align 8, !noalias !2577
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 98 ; 2 uses
  store i16 0, ptr %i.cg, align 2, !noalias !2577
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  store ptr %i.b, ptr %i.ch, align 8, !noalias !2577
  %i.ci = add i64 %i.d, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1G_.exit.i.i.i.i, !prof !174

bb.w:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !2577
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1G_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ce, ptr %i.b, align 8, !noalias !2580
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 0, ptr %i.cj, align 8, !noalias !2585
  store ptr %i.ce, ptr %0, align 8, !alias.scope !2574, !noalias !2586
  store i64 %i.ci, ptr %i.c, align 8, !alias.scope !2574, !noalias !2586
  %i.ck = icmp eq i64 %.sroa.9.0.lcssa.i.i.i, %i.d
  br i1 %i.ck, label %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entry0B1o_.exit.i.i.i, label %bb.x, !prof !149

bb.x:                                             ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1G_.exit.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #28, !noalias !2586
  unreachable

_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entry0B1o_.exit.i.i.i: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1G_.exit.i.i.i.i
  store i16 1, ptr %i.cg, align 2, !noalias !2586
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.11.0.lcssa.i.i.i, ptr %i.cl, align 8, !noalias !2586
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 100
  store i8 %.sroa.13.0.lcssa.i.i.i, ptr %i.cm, align 4, !noalias !2586
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 101
  store i8 %.sroa.14.0.lcssa.i.i.i, ptr %i.cn, align 1, !noalias !2586
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 136
  store ptr %.sroa.7.0.lcssa.i.i.i, ptr %i.co, align 8, !noalias !2586
  store ptr %i.ce, ptr %.sroa.7.0.lcssa.i.i.i, align 8, !noalias !2586
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i, i64 96
  store i16 1, ptr %i.cp, align 8, !noalias !2586
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i
  %i.cq = phi ptr [ %i.js, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ %i.bz, %bb.t ] ; 17 uses
  %.sroa.0.0119.i.i.i = phi ptr [ %i.cq, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.6.0118.i.i.i = phi i64 [ %i.cr, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ 0, %bb.t ]
  %.sroa.7.0117.i.i.i = phi ptr [ %i.fd, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ %i.ak, %bb.t ] ; 2 uses
  %.sroa.11.0115.i.i.i = phi i64 [ %i.ft, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ %i.az, %bb.t ] ; 4 uses
  %.sroa.13.0114.i.i.i = phi i8 [ %i.fr, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ %i.ax, %bb.t ] ; 4 uses
  %.sroa.14.0113.i.i.i = phi i8 [ %i.fq, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i ], [ %i.aw, %bb.t ] ; 4 uses
  %i.cr = add nuw i64 %.sroa.6.0118.i.i.i, 1      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0119.i.i.i, i64 96
  %i.ct = load i16, ptr %i.cs, align 8, !noalias !2571 ; 4 uses
  %i.cu = zext i16 %i.ct to i64                   ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 98 ; 4 uses
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !2587, !noundef !11 ; 5 uses
  %i.cx = icmp ult i16 %i.cw, 11
  br i1 %i.cx, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = icmp ult i16 %i.ct, 5
  br i1 %i.cy, label %bb.ae, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.cz = zext nneg i16 %i.cw to i64              ; 4 uses
  %i.da = add nuw nsw i16 %i.cw, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.dc = add nuw nsw i64 %i.cu, 1                ; 7 uses
  %.not.i.i52.not.i.i.i = icmp ult i16 %i.ct, %i.cw
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cu ; 3 uses
  br i1 %.not.i.i52.not.i.i.i, label %bb.aa, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCs41JD7yXDh97_6uu_env18SignalActionRecordEB16_.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCs41JD7yXDh97_6uu_env18SignalActionRecordEB16_.exit.i.i.i.i.i: ; preds = %bb.z
  store i64 %.sroa.11.0115.i.i.i, ptr %i.dd, align 8, !alias.scope !2591, !noalias !2594
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 100
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.cu ; 2 uses
  store i8 %.sroa.13.0114.i.i.i, ptr %i.df, align 1, !alias.scope !2597, !noalias !2594
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store i8 %.sroa.14.0113.i.i.i, ptr %i.dg, align 1, !alias.scope !2597, !noalias !2594
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.di = sub nsw i64 %i.cz, %i.cu                ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.dd, i64 %i.dj, i1 false), !alias.scope !2591, !noalias !2594
  store i64 %.sroa.11.0115.i.i.i, ptr %i.dd, align 8, !alias.scope !2591, !noalias !2594
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 100 ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.cu ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dc
  %i.dn = shl nuw nsw i64 %i.di, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %i.dl, i64 %i.dn, i1 false), !alias.scope !2597, !noalias !2594
  store i8 %.sroa.13.0114.i.i.i, ptr %i.dl, align 1, !alias.scope !2597, !noalias !2594
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %.sroa.14.0113.i.i.i, ptr %i.do, align 1, !alias.scope !2597, !noalias !2594
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 128 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dc
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.cu
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull align 8 %i.dq, i64 %i.dj, i1 false), !alias.scope !2600, !noalias !2594
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i.i.i.i.i: ; preds = %bb.aa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCs41JD7yXDh97_6uu_env18SignalActionRecordEB16_.exit.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 128 ; 6 uses
  %i.du = add nuw nsw i64 %i.cz, 2                ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dc
  store ptr %.sroa.7.0117.i.i.i, ptr %i.dv, align 8, !alias.scope !2600, !noalias !2594
  store i16 %i.da, ptr %i.cv, align 2, !noalias !2594
  %i.dw = icmp samesign ult i64 %i.dc, %i.du
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.preheader, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i.i.i.i.i
  %i.dx = add nuw nsw i64 %i.cz, 1
  %i.dy = sub nsw i64 %i.dx, %i.cu
  %i.dz = sub nsw i64 %i.cz, %i.cu
  %xtraiter496 = and i64 %i.dy, 3                 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter498 = phi i64 [ %prol.iter498.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ea = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.eb = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !2594, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.cq, ptr %i.ed, align 8, !noalias !2594
  %i.ee = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store i16 %i.ee, ptr %i.ef, align 8, !noalias !2594
  %prol.iter498.next = add i64 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i64 %prol.iter498.next, %xtraiter496
  br i1 %prol.iter498.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2603

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.eg = icmp ult i64 %i.dz, 3
  br i1 %i.eg, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.eh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !2594, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.cq, ptr %i.ej, align 8, !noalias !2594
  %i.ek = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  store i16 %i.ek, ptr %i.el, align 8, !noalias !2594
  %i.em = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eh
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !2594, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.cq, ptr %i.eo, align 8, !noalias !2594
  %i.ep = trunc nuw nsw i64 %i.eh to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store i16 %i.ep, ptr %i.eq, align 8, !noalias !2594
  %i.er = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.em
  %i.et = load ptr, ptr %i.es, align 8, !noalias !2594, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.cq, ptr %i.et, align 8, !noalias !2594
  %i.eu = trunc nuw nsw i64 %i.em to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !2594
  %i.ew = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.ex = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.er
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !2594, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.cq, ptr %i.ez, align 8, !noalias !2594
  %i.fa = trunc nuw nsw i64 %i.er to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  store i16 %i.fa, ptr %i.fb, align 8, !noalias !2594
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ew, %i.du
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.y
  switch i16 %i.ct, label %bb.ac [
    i16 5, label %bb.ae
    i16 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fc = add nsw i64 %i.cu, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ 5, %bb.ab ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.fc, %bb.ac ], [ %i.cu, %bb.y ], [ 5, %bb.ab ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2604
  %i.fd = tail call noalias noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 224, i64 noundef range(i64 1, 9) 8) #26, !noalias !2604 ; 14 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.af, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i, !prof !174

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #30, !noalias !2604
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i: ; preds = %bb.ae
  store ptr null, ptr %i.fd, align 8, !noalias !2604
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 98 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.fg = load i16, ptr %i.cv, align 2, !noalias !2611, !noundef !11
  %i.fh = zext i16 %i.fg to i64
  %i.fi = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.fj = add nsw i64 %i.fh, %i.fi                ; 5 uses
  %i.fk = trunc i64 %i.fj to i16
  store i16 %i.fk, ptr %i.ff, align 2, !alias.scope !2608, !noalias !2613
  %i.fl = icmp ult i64 %i.fj, 12
  br i1 %i.fl, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1F_.exit.i.i.i.i.i, label %bb.ag, !prof !966

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fj, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #28, !noalias !2611
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1F_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEE13new_uninit_inB1x_.exit.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cq, i64 100 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %.sroa.06.0.i.i.i.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !range !454, !noalias !2611, !noundef !11 ; 2 uses
  %i.fr = load i8, ptr %i.fo, align 1, !range !358, !noalias !2611, !noundef !11 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.sroa.06.0.i.i.i.i
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !2611, !noundef !11 ; 2 uses
  %i.fu = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fx = shl nuw nsw i64 %i.fj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull readonly align 8 %i.fv, i64 %i.fx, i1 false), !alias.scope !2614, !noalias !2613
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fu
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 100
  %i.ga = shl nuw nsw i64 %i.fj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fz, ptr nonnull readonly align 1 %i.fy, i64 %i.ga, i1 false), !alias.scope !2618, !noalias !2613
  %i.gb = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.gb, ptr %i.cv, align 2, !noalias !2611
  %i.gc = load i16, ptr %i.ff, align 2, !noalias !2604, !noundef !11 ; 3 uses
  %i.gd = zext i16 %i.gc to i64
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 5 uses
  %i.gf = icmp ult i16 %i.gc, 12
  br i1 %i.gf, label %bb.ah, label %bb.ak, !prof !966

bb.ah:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1F_.exit.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 128 ; 6 uses
  %i.gh = zext i16 %i.cw to i64
  %i.gi = sub nuw nsw i64 %i.gh, %.sroa.06.0.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  %i.gj = icmp eq i64 %i.gi, %i.ge
  br i1 %i.gj, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i, label %bb.ai, !prof !149

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28, !noalias !2627
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.gk = getelementptr i8, ptr %i.cq, i64 136
  %i.gl = getelementptr [8 x i8], ptr %i.gk, i64 %.sroa.06.0.i.i.i.i
  %i.gm = shl nuw nsw i64 %i.ge, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gg, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gl, i64 %i.gm, i1 false), !alias.scope !2628, !noalias !2604
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  %xtraiter = and i64 %i.ge, 3                    ; 3 uses
  %i.gn = icmp ult i16 %i.gc, 3
  br i1 %i.gn, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.ge, 28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i.new ], [ %i.hd, %bb.aj ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.aj ]
  %i.go = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !2629, !noalias !2632, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.fd, ptr %i.gq, align 8, !noalias !2635
  %i.gr = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  store i16 %i.gr, ptr %i.gs, align 8, !noalias !2632
  %i.gt = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.go
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !2629, !noalias !2632, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.fd, ptr %i.gv, align 8, !noalias !2635
  %i.gw = trunc nuw nsw i64 %i.go to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  store i16 %i.gw, ptr %i.gx, align 8, !noalias !2632
  %i.gy = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gt
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !2629, !noalias !2632, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.fd, ptr %i.ha, align 8, !noalias !2635
  %i.hb = trunc nuw nsw i64 %i.gt to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store i16 %i.hb, ptr %i.hc, align 8, !noalias !2632
  %i.hd = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gy
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !2629, !noalias !2632, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.fd, ptr %i.hf, align 8, !noalias !2635
  %i.hg = trunc nuw nsw i64 %i.gy to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 96
  store i16 %i.hg, ptr %i.hh, align 8, !noalias !2632
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i.unr-lcssa, label %bb.aj

bb.ak:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1F_.exit.i.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ge, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !noalias !2604
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB28_.exit.i.i.i.i.i ], [ %i.hd, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod493 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod493)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.hi, %bb.al ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.al ]
  %i.hi = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !2629, !noalias !2632, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.fd, ptr %i.hk, align 8, !noalias !2635
  %i.hl = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  store i16 %i.hl, ptr %i.hm, align 8, !noalias !2632
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i, label %bb.al, !llvm.loop !2636

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i: ; preds = %bb.al, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i.unr-lcssa
  %spec.select.i51.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.fd, ptr %i.cq ; 11 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %spec.select.i51.i.i.i, i64 98 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !noalias !2637, !noundef !11 ; 2 uses
  %i.hp = zext i16 %i.ho to i64                   ; 5 uses
  %i.hq = add i16 %i.ho, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select.i51.i.i.i, i64 8 ; 2 uses
  %i.hs = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1   ; 7 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.hp
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.sroa.5.0.i.i.i.i ; 3 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.am, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCs41JD7yXDh97_6uu_env18SignalActionRecordEB16_.exit.i9.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCs41JD7yXDh97_6uu_env18SignalActionRecordEB16_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i
  store i64 %.sroa.11.0115.i.i.i, ptr %i.ht, align 8, !alias.scope !2640, !noalias !2637
  %i.hu = getelementptr inbounds nuw i8, ptr %spec.select.i51.i.i.i, i64 100
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  store i8 %.sroa.13.0114.i.i.i, ptr %i.hv, align 1, !alias.scope !2643, !noalias !2637
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store i8 %.sroa.14.0113.i.i.i, ptr %i.hw, align 1, !alias.scope !2643, !noalias !2637
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i10.i.i.i.i

bb.am:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i.i
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hy = sub nuw nsw i64 %i.hp, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.hz = shl nuw nsw i64 %i.hy, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.ht, i64 %i.hz, i1 false), !alias.scope !2640, !noalias !2637
  store i64 %.sroa.11.0115.i.i.i, ptr %i.ht, align 8, !alias.scope !2640, !noalias !2637
  %i.ia = getelementptr inbounds nuw i8, ptr %spec.select.i51.i.i.i, i64 100 ; 2 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %.sroa.5.0.i.i.i.i ; 3 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.hs
  %i.id = shl nuw nsw i64 %i.hy, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull align 1 %i.ib, i64 %i.id, i1 false), !alias.scope !2643, !noalias !2637
  store i8 %.sroa.13.0114.i.i.i, ptr %i.ib, align 1, !alias.scope !2643, !noalias !2637
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %.sroa.14.0113.i.i.i, ptr %i.ie, align 1, !alias.scope !2643, !noalias !2637
  %i.if = getelementptr inbounds nuw i8, ptr %spec.select.i51.i.i.i, i64 128 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.hs
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.sroa.5.0.i.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr nonnull align 8 %i.ig, i64 %i.hz, i1 false), !alias.scope !2646, !noalias !2637
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i10.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i10.i.i.i.i: ; preds = %bb.am, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCs41JD7yXDh97_6uu_env18SignalActionRecordEB16_.exit.i9.i.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %spec.select.i51.i.i.i, i64 128 ; 6 uses
  %i.ik = add nuw nsw i64 %i.hp, 2                ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.hs
  store ptr %.sroa.7.0117.i.i.i, ptr %i.il, align 8, !alias.scope !2646, !noalias !2637
  store i16 %i.hq, ptr %i.hn, align 2, !noalias !2637
  %i.im = icmp samesign ult i64 %i.hs, %i.ik
  br i1 %i.im, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i10.i.i.i.i
  %i.in = add nuw nsw i64 %i.hp, 1
  %i.io = sub nsw i64 %i.in, %.sroa.5.0.i.i.i.i
  %i.ip = sub nsw i64 %i.hp, %.sroa.5.0.i.i.i.i
  %xtraiter494 = and i64 %i.io, 3                 ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.hs, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.iq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.ir = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.it = load ptr, ptr %i.is, align 8, !noalias !2637, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i51.i.i.i, ptr %i.it, align 8, !noalias !2637
  %i.iu = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 96
  store i16 %i.iu, ptr %i.iv, align 8, !noalias !2637
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter494
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !2649

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.hs, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.iq, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.iw = icmp ult i64 %i.ip, 3
  br i1 %i.iw, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.jm, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ix = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !2637, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i51.i.i.i, ptr %i.iz, align 8, !noalias !2637
  %i.ja = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  store i16 %i.ja, ptr %i.jb, align 8, !noalias !2637
  %i.jc = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ix
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !2637, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i51.i.i.i, ptr %i.je, align 8, !noalias !2637
  %i.jf = trunc nuw nsw i64 %i.ix to i16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  store i16 %i.jf, ptr %i.jg, align 8, !noalias !2637
  %i.jh = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jc
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !2637, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i51.i.i.i, ptr %i.jj, align 8, !noalias !2637
  %i.jk = trunc nuw nsw i64 %i.jc to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !2637
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.jn = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jh
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !2637, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %spec.select.i51.i.i.i, ptr %i.jp, align 8, !noalias !2637
  %i.jq = trunc nuw nsw i64 %i.jh to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !2637
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.jm, %i.ik
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1G_.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i10.i.i.i.i
  %i.js = load ptr, ptr %i.cq, align 8, !noalias !2571, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.thread:                                          ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2650
  %i.jt = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, 9) 8) #26, !noalias !2650 ; 7 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.an, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB19_4LeafE16push_with_handleB1s_.exit.i.i, !prof !174

bb.an:                                            ; preds = %.thread
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #30, !noalias !2650
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB19_4LeafE16push_with_handleB1s_.exit.i.i: ; preds = %.thread
  store ptr null, ptr %i.jt, align 8, !noalias !2650
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 98
  store ptr %i.jt, ptr %0, align 8, !noalias !2650
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jw, align 8, !noalias !2650
  store i16 1, ptr %i.jv, align 2, !noalias !2651
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i64 %1, ptr %i.jx, align 8, !noalias !2651
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 100
  store i8 %i.a, ptr %i.jy, align 4, !noalias !2651
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 101
  store i8 %2, ptr %i.jz, align 1, !noalias !2651
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i

_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjNtCs41JD7yXDh97_6uu_env18SignalActionRecordNtB19_4LeafE16push_with_handleB1s_.exit.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtCs41JD7yXDh97_6uu_env18SignalActionRecordEEEB27_.exit.i.i.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entry0B1o_.exit.i.i.i, %bb.u
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !2650, !noundef !11
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !noalias !2650
  br label %_RNvMs2_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_5EntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE9or_insertB1f_.exit

_RNvMs2_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_5EntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE9or_insertB1f_.exit: ; preds = %bb.g, %bb.h, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtCs41JD7yXDh97_6uu_env18SignalActionRecordE12insert_entryB1m_.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_Cs41JD7yXDh97_6uu_envNtB5_10EnvAppData11run_program(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(232) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvXs4_Cs41JD7yXDh97_6uu_envNtB5_8EnvErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %.sroa.084.3143.i691 = phi i64 [ %i.agu, %bb.ie ], [ 0, %bb.ib ]
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i689, i64 1
  %i.agj = add nsw i64 %.sroa.26.3144.i690, -1    ; 2 uses
  %i.agk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i691, i64 10) ; 2 uses
  %i.agl = extractvalue { i64, i1 } %i.agk, 0
  %i.agm = extractvalue { i64, i1 } %i.agk, 1
  br i1 %i.agm, label %.loopexit1170, label %bb.ic, !prof !174

bb.ic:                                            ; preds = %.preheader111.i688
  %i.agn = load i8, ptr %.sroa.0.3145.i689, align 1, !alias.scope !3345, !noalias !3348, !noundef !11
  %i.ago = zext i8 %i.agn to i32
  %i.agp = add nsw i32 %i.ago, -48                ; 2 uses
  %i.agq = icmp ult i32 %i.agp, 10
  br i1 %i.agq, label %bb.id, label %.loopexit1170

bb.id:                                            ; preds = %bb.ic
  %i.agr = zext nneg i32 %i.agp to i64
  %i.ags = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.agl, i64 %i.agr) ; 2 uses
  %i.agt = extractvalue { i64, i1 } %i.ags, 1
  br i1 %i.agt, label %.loopexit1170, label %bb.ie, !prof !174

bb.ie:                                            ; preds = %bb.id
  %i.agu = extractvalue { i64, i1 } %i.ags, 0     ; 2 uses
  %.not104.i693 = icmp eq i64 %i.agj, 0
  br i1 %.not104.i693, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.preheader111.i688

.lr.ph150.i696:                                   ; preds = %.preheader.i694, %bb.if
  %.sroa.0.4149.i697 = phi ptr [ %i.ahb, %bb.if ], [ %.sroa.0.0.i687, %.preheader.i694 ] ; 2 uses
  %.sroa.26.4148.i698 = phi i64 [ %i.aha, %bb.if ], [ %.sroa.26.0.i686, %.preheader.i694 ]
  %.sroa.084.4147.i699 = phi i64 [ %i.ahd, %bb.if ], [ 0, %.preheader.i694 ]
  %i.agv = load i8, ptr %.sroa.0.4149.i697, align 1, !alias.scope !3345, !noalias !3348, !noundef !11
  %i.agw = zext i8 %i.agv to i32
  %i.agx = add nsw i32 %i.agw, -48                ; 2 uses
  %i.agy = icmp ult i32 %i.agx, 10
  br i1 %i.agy, label %bb.if, label %.loopexit1170

bb.if:                                            ; preds = %.lr.ph150.i696
  %i.agz = mul i64 %.sroa.084.4147.i699, 10
  %i.aha = add nsw i64 %.sroa.26.4148.i698, -1    ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i697, i64 1
  %i.ahc = zext nneg i32 %i.agx to i64
  %i.ahd = add i64 %i.agz, %i.ahc                 ; 2 uses
  %.not105.i700 = icmp eq i64 %i.aha, 0
  br i1 %.not105.i700, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703, label %.lr.ph150.i696

bb.ig:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i664
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aey, ptr nonnull align 1 %i.aeu, i64 %i.aew, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs41JD7yXDh97_6uu_env.exit666.thread1089

.loopexit1170:                                    ; preds = %.lr.ph.i671, %bb.hy, %bb.hx, %.lr.ph141.i681, %.preheader111.i688, %bb.ic, %bb.id, %.lr.ph150.i696, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit669, %bb.ht, %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afc, i64 noundef %i.aew) #27
  %i.ahe = load i8, ptr %i.o, align 8, !range !358, !noundef !11
  %i.ahf = trunc nuw i8 %i.ahe to i1
  br i1 %i.ahf, label %bb.ij, label %bb.ik

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703: ; preds = %bb.hz, %bb.ia, %bb.ie, %bb.if, %.preheader.i694, %.preheader114.i679
  %.sroa.15796.0 = phi i64 [ %i.ahd, %bb.if ], [ %i.agg, %bb.ia ], [ %i.agu, %bb.ie ], [ 0, %.preheader.i694 ], [ 0, %.preheader114.i679 ], [ %i.afx, %bb.hz ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, i64 noundef %.sroa.15796.0) #26
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ik, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.aex, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afc, i64 noundef %i.aew, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3350
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706

bb.ij:                                            ; preds = %.loopexit1170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.aew, ptr %i.n, align 8
  %.sroa.5789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.afc, ptr %.sroa.5789.0..sroa_idx, align 8
  %.sroa.9791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.aew, ptr %.sroa.9791.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706

bb.ik:                                            ; preds = %.loopexit1170
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ahh = load double, ptr %i.ahg, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, double noundef %i.ahh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ih

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706: ; preds = %bb.ii, %bb.ih, %bb.ij
  %i.ahi = icmp eq i64 %i.ec, 0
  %or.cond1108 = or i1 %.sroa.04.0.not, %i.ahi
  br i1 %or.cond1108, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712, label %bb.im

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712: ; preds = %bb.im, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.t, ptr %i.l, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4180.0..sroa_idx, align 8
  %i.ahj = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8, !nonnull !11, !align !146, !noundef !11
  %i.ahm = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ahj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ahl, ptr noundef nonnull @42, ptr noundef nonnull %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %.val.i707 = load i64, ptr %i.t, align 8, !range !47, !alias.scope !3353, !noundef !11 ; 2 uses
  %i.ahn = icmp eq i64 %.val.i707, 0
  br i1 %i.ahn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709, label %bb.il

bb.il:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712
  %i.aho = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i708 = load ptr, ptr %i.aho, align 8, !alias.scope !3353, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i708, i64 noundef %.val.i707, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit709: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bd

bb.im:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit706
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aes, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3356
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs41JD7yXDh97_6uu_env.exit712
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertRINtNtCs7tKScEop1B6_5alloc3vec3VecReEIB18_INtNtB1c_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3359)
  %i.e = mul i64 %i.d, 24                         ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.d, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.b, !prof !359

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3362
  %i.g = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #26, !noalias !3362 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e) #30, !noalias !3359
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.i = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i
  %xtraiter = and i64 %i.d, 1
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.d, 576460752303423486
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.t, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !3365, !nonnull !11, !noundef !11
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val12.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !3365, !noundef !11
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i, i64 %i.l ; 3 uses
  store i64 -1, ptr %i.o, align 8, !noalias !3376
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.val11.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3376
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3376
  %i.p = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.q, align 8, !noalias !3365, !nonnull !11, !noundef !11
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.r, align 8, !noalias !3365, !noundef !11
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i, i64 %i.p ; 3 uses
  store i64 -1, ptr %i.s, align 8, !noalias !3376
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val11.i.i.i.i.i.i.1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3376
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val12.i.i.i.i.i.i.1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3376
  %i.t = add nuw i64 %i.l, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.t, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.epil.init ; 2 uses
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.u, align 8, !noalias !3365, !nonnull !11, !noundef !11
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.v, align 8, !noalias !3365, !noundef !11
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.w, align 8, !noalias !3376
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3376
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3376
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterReENCNvXs4_NtCs41JD7yXDh97_6uu_env14native_int_strNtB3k_4NCvtINtB3k_7ConvertRIBU_B39_EBT_E7convert0EE9from_iterB3m_.exit.loopexit.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCs41JD7yXDh97_6uu_env.exit.i.i.i
  store i64 %.sroa.4.0.i.i, ptr %0, align 8, !alias.scope !3359
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3359
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3359
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs5_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertINtNtCs7tKScEop1B6_5alloc3vec3VecReEIB17_INtNtB1b_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 7 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !47, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  %i.g = mul nuw i64 %i.d, 24                     ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %i.d, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.b, !prof !359

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %._crit_edge.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3386
  %i.i = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #26, !noalias !3386 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.k = add nuw nsw i64 %i.d, 1152921504606846975 ; 2 uses
  %i.l = and i64 %i.k, 1152921504606846975        ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.m, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #30, !noalias !3390
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3391, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !3391, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.o ; 3 uses
  store i64 -1, ptr %i.u, align 8, !noalias !3407
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3407
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.s, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3415
  %i.v = load ptr, ptr %i.t, align 8, !noalias !3391, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noalias !3391, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.o ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 -1, ptr %i.aa, align 8, !noalias !3407
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.v, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3407
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.x, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3415
  %i.ab = add nuw nsw i64 %i.o, 2                 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init8 = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.ad = load ptr, ptr %.epil.init8, align 8, !noalias !3391, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.epil.init8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3391, !noundef !11
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.ag, align 8, !noalias !3407
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ad, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3407
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.af, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3415
  %i.ah = add nuw nsw i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.b
  %.sroa.4.0.i.i6 = phi i64 [ 0, %bb.b ], [ %i.d, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.10.0.i.i5 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.42.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.ai = icmp eq i64 %i.f, 0
  br i1 %i.ai, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3h_7ConvertB39_B13_E7convertEE9from_iterB3j_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aj = shl nuw i64 %i.f, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3391
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3h_7ConvertB39_B13_E7convertEE9from_iterB3j_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3h_7ConvertB39_B13_E7convertEE9from_iterB3j_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d
  store i64 %.sroa.4.0.i.i6, ptr %0, align 8, !alias.scope !3383, !noalias !3416
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i5, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3383, !noalias !3416
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3383, !noalias !3416
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs6_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertRINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB1c_6string6StringEIB18_INtNtB1c_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  %.idx = mul nuw nsw i64 %i.d, 24                ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3420
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #26, !noalias !3420 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  %xtraiter = and i64 %i.d, 1
  %i.h = icmp eq i64 %i.d, 1
  br i1 %i.h, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #30, !noalias !3417
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.s, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !3423, !nonnull !11, !noundef !11
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !3423, !noundef !11
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.i ; 3 uses
  store i64 -1, ptr %i.m, align 8, !noalias !3434
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.val11.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3434
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3434
  %i.n = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.p, align 8, !noalias !3423, !nonnull !11, !noundef !11
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.q, align 8, !noalias !3423, !noundef !11
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.n ; 3 uses
  store i64 -1, ptr %i.r, align 8, !noalias !3434
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val11.i.i.i.i.i.i.1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3434
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val12.i.i.i.i.i.i.1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.1, align 8, !noalias !3434
  %i.s = add nuw i64 %i.i, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.s, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.epil.init ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.u, align 8, !noalias !3423, !nonnull !11, !noundef !11
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.v, align 8, !noalias !3423, !noundef !11
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.w, align 8, !noalias !3434
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3434
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.epil, align 8, !noalias !3434
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.10.0.i8.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtB8_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB3A_7ConvertRB39_B13_E7convertEE9from_iterB3C_.exit.loopexit.unr-lcssa ], [ %i.f, %.preheader.i.i.i.epil.preheader ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !3417
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i8.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3417
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3417
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError5usage(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs7_NtCs41JD7yXDh97_6uu_env14native_int_strNtB5_4NCvtINtB5_7ConvertINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB1b_6string6StringEIB17_INtNtB1b_6borrow3CowShEEE7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENvYNtNtCs41JD7yXDh97_6uu_env14native_int_str4NCvtINtB2M_7ConvertB2l_INtNtB6_6borrow3CowShEE7convertEB3N_EB2O_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !47, !noundef !11
  store i64 %i.f, ptr %0, align 8, !alias.scope !3441, !noalias !3444
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !alias.scope !3441, !noalias !3444
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.h, align 8, !alias.scope !3441, !noalias !3444
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 5) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

end_hunk_3
