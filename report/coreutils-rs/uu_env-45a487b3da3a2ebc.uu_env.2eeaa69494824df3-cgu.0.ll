Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_env-45a487b3da3a2ebc.uu_env.2eeaa69494824df3-cgu.0?download=true
inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs41JD7yXDh97_6uu_env:bb.a
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !156, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !156, !noundef !5 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i
  %.sroa.0.0917.i.i = phi ptr [ %i.j, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i = phi i64 [ %i.k, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i, i64 16 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.016.i.i, 1
  %i.l = getelementptr i8, ptr %.sroa.0.0917.i.i, i64 8
  %.val7.i.i = load i64, ptr %i.l, align 8, !noalias !157, !noundef !5
  %i.m = icmp eq i64 %.val7.i.i, 5
  br i1 %i.m, label %.split.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !157, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = load i32, ptr %.val.i.i, align 1
  %i.o = load i32, ptr %2, align 1
  %i.p = xor i32 %i.n, %i.o
  %i.q = getelementptr i8, ptr %.val.i.i, i64 4
  %i.r = getelementptr i8, ptr %2, i64 4
  %i.s = load i8, ptr %i.q, align 1
  %i.t = load i8, ptr %i.r, align 1
  %i.u = zext i8 %i.s to i32
  %i.v = zext i8 %i.t to i32
  %i.w = xor i32 %i.u, %i.v
  %i.x = or i32 %i.p, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.ab = icmp eq ptr %i.j, %i.h
  br i1 %i.ab, label %.thread, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !156, !noundef !5 ; 2 uses
  %i.ae = icmp ult i64 %.sroa.8.016.i.i, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !157
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !156, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.ag, i64 %.sroa.8.016.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !158
  store i128 -49237559333878691962261109163680243548, ptr %i.b, align 16, !noalias !158
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b) #26, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !158
  %.sroa.013.0.copyload.i = load i128, ptr %i.c, align 16, !noalias !158 ; 3 uses
  %i.ai = icmp eq i128 %.sroa.013.0.copyload.i, -49237559333878691962261109163680243548
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.ak = trunc nuw i128 %i.aj to i64
  %i.al = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.am = inttoptr i64 %i.al to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 -49237559333878691962261109163680243548, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  %i.an = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah) #26 ; 3 uses
  %.not8 = icmp eq ptr %i.an, null
  br i1 %.not8, label %.thread, label %bb.g

.thread:                                          ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ao, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %.val10 = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !8, !invariant.load !5
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !5, !nonnull !5
  call void %i.ax(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.av) #29, !inline_history !153
  %i.ay = load i128, ptr %i.a, align 16, !noundef !5
  %.not = icmp eq i128 %i.ay, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.i, !prof !9

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !171, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !171, !noundef !5 ; 2 uses
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
  %.val7.i.i = load i64, ptr %i.k, align 8, !noalias !172, !noundef !5
  %i.l = icmp eq i64 %.val7.i.i, %3
  br i1 %i.l, label %.split.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !172, !nonnull !5, !noundef !5
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.val.i.i, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 4, 15) %3), !alias.scope !173, !noalias !174
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.i, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !171, !noundef !5 ; 2 uses
  %i.q = icmp ult i64 %.sroa.8.016.i.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !172
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !171, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %.sroa.8.016.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  store i128 -49237559333878691962261109163680243548, ptr %i.a, align 16, !noalias !175
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a) #26, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  %.sroa.013.0.copyload.i = load i128, ptr %i.b, align 16, !noalias !175 ; 3 uses
  %i.u = icmp eq i128 %.sroa.013.0.copyload.i, -49237559333878691962261109163680243548
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.y = inttoptr i64 %i.x to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !175
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !175
  %i.aa = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !208
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #26, !noalias !208 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !208
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i64 1, ptr %i.c, align 8, !noalias !207
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !207
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !207
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !212, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !212, !noundef !5 ; 5 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9, i64 16 ; 2 uses
  %i.m = add i64 %.sroa.8.0.i.i8, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %.sroa.0.0.i.i9 = phi ptr [ %i.l, %bb.c ], [ %i.g, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %.sroa.8.0.i.i8 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i.i9, align 8, !noalias !213
  %i.o = icmp eq i128 %.val.i.i, 63958622876645927927552189038096644140
  br i1 %i.o, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %i.p = load i64, ptr %i.b, align 8, !range !6, !alias.scope !214, !noundef !5
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #27, !noalias !215
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !214
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i: ; preds = %bb.d, %._crit_edge
  %i.r = phi ptr [ %i.g, %._crit_edge ], [ %.pre.i.i, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i ; 2 uses
  store i64 -5875614554295535572, ptr %i.s, align 8, !noalias !216
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !216
  %i.t = add i64 %i.i, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !214
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !217, !noundef !5 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !6, !alias.scope !217, !noundef !5
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i

bb.e:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #27, !noalias !218
  br label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i: ; preds = %bb.e, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs41JD7yXDh97_6uu_env.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !217, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 %i.e, ptr %i.ab, align 8, !noalias !219
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 ptrtoint (ptr @8 to i64), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !219
  %.sroa.10.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i, align 8, !noalias !219
  %.sroa.13.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i, align 8, !noalias !219
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !217
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !212, !noundef !5 ; 2 uses
  %i.af = icmp ult i64 %.sroa.8.0.i.i8, %i.ae
  br i1 %i.af, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i8, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !213
  unreachable

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !212, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !noalias !213
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !220, !noalias !213 ; 2 uses
  store i64 %i.e, ptr %i.ai, align 1, !alias.scope !220, !noalias !213
  store i64 ptrtoint (ptr @8 to i64), ptr %i.aj, align 1, !alias.scope !221, !noalias !213
  store <2 x i64> %i.am, ptr %i.a, align 16, !alias.scope !216, !noalias !207
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x i64>, ptr %i.ak, align 1, !noalias !213
  store i64 -5875614554295535572, ptr %i.ak, align 1, !alias.scope !222, !noalias !213
  store i64 3467203893602029906, ptr %i.al, align 1, !alias.scope !223, !noalias !213
  store <2 x i64> %i.an, ptr %.sroa.10.0..sroa_idx.i, align 16, !alias.scope !216, !noalias !207
  %.not17.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not17.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i
  %i.ao = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to ptr
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !224
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #27, !noalias !207
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs41JD7yXDh97_6uu_env.exit: ; preds = %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.thread.i, %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs41JD7yXDh97_6uu_env.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !207
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !243
  store i128 18446745954905227264, ptr %i.f, align 16, !noalias !243
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !243
  %i.j = load i32, ptr %i.h, align 8, !range !244, !noundef !5
  %i.k = trunc nuw i32 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = load i32, ptr %i.o, align 4, !range !245, !noundef !5
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
end_hunk_0
