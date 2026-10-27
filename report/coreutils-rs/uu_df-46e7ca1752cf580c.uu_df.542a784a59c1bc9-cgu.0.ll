Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df
define internal fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !152, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !152, !noundef !6 ; 2 uses
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
  %.val7.i.i = load i64, ptr %i.l, align 8, !noalias !153, !noundef !6
  %i.m = icmp eq i64 %.val7.i.i, 9
  br i1 %i.m, label %.split.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !153, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = load i64, ptr %.val.i.i, align 1
  %i.o = xor i64 %i.n, 8820708250248768610
  %i.p = getelementptr i8, ptr %.val.i.i, i64 8
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = xor i64 %i.r, 101
  %i.t = or i64 %i.o, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.x = icmp eq ptr %i.j, %i.h
  br i1 %i.x, label %.thread, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !152, !noundef !6 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.8.016.i.i, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !153
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !152, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw [104 x i8], ptr %i.ac, i64 %.sroa.8.016.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !154
  store i128 53410479646238849826493945191968316847, ptr %i.b, align 16, !noalias !154
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b) #28, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !154
  %.sroa.013.0.copyload.i = load i128, ptr %i.c, align 16, !noalias !154 ; 3 uses
  %i.ae = icmp eq i128 %.sroa.013.0.copyload.i, 53410479646238849826493945191968316847
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.ag = trunc nuw i128 %i.af to i64
  %i.ah = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.ai = inttoptr i64 %i.ah to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 53410479646238849826493945191968316847, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154
  %i.aj = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ad) #28 ; 3 uses
  %.not8 = icmp eq ptr %i.aj, null
  br i1 %.not8, label %.thread, label %bb.g

.thread:                                          ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ak, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val10 = load ptr, ptr %i.al, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !9, !invariant.load !6
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = and i64 %i.ao, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !6, !nonnull !6
  call void %i.at(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ar) #30, !inline_history !149
  %i.au = load i128, ptr %i.a, align 16, !noundef !6
  %.not = icmp eq i128 %i.au, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.av, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable

bb.j:                                             ; preds = %bb.e, %.thread, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 4, 13) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !167, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !167, !noundef !6 ; 2 uses
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
  %.val7.i.i = load i64, ptr %i.k, align 8, !noalias !168, !noundef !6
  %i.l = icmp eq i64 %.val7.i.i, %3
  br i1 %i.l, label %.split.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !168, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.val.i.i, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 4, 13) %3), !alias.scope !169, !noalias !170
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.i, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !167, !noundef !6 ; 2 uses
  %i.q = icmp ult i64 %.sroa.8.016.i.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !168
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !167, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %.sroa.8.016.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  store i128 -49237559333878691962261109163680243548, ptr %i.a, align 16, !noalias !171
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a) #28, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  %.sroa.013.0.copyload.i = load i128, ptr %i.b, align 16, !noalias !171 ; 3 uses
  %i.u = icmp eq i128 %.sroa.013.0.copyload.i, -49237559333878691962261109163680243548
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.y = inttoptr i64 %i.x to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx21, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 -49237559333878691962261109163680243548, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171
  %i.aa = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCss03989lGqH_5uu_df, ptr %i.ag, align 8
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
  br label %.sink.split

.loopexit:                                        ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 0, %bb.f ], [ 1, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !268, !noundef !6 ; 6 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !268, !noundef !6 ; 13 uses
  %i.g = icmp ult i64 %i.f, 8
  %i.h = add i64 %i.f, 1                          ; 8 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %.sroa.03.0.i = select i1 %i.g, i64 %i.f, i64 %i.j ; 3 uses
  %i.k = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #28, !noalias !269 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.c) ; 5 uses
  %i.p = icmp ult i64 %..i, 15
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.q, label %bb.l, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw i64 %..i, 3
  %i.s = udiv i64 %i.r, 7
  %i.t = add nsw i64 %i.s, -1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = lshr i64 -1, %i.u
  %i.w = add nuw nsw i64 %i.v, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i64 %..i, 4
  %i.y = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.y, 8
  %.sroa.03.0.i.i = select i1 %i.x, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.w, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 168) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = add nuw i64 %i.ab, 8
  %i.ad = and i64 %i.ac, -16                      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !12

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !270
  %i.ai = tail call noundef align 16 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !270 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #28, !noalias !270
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit.thread.i

bb.k:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af) #28, !noalias !270
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit.thread.i

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #28, !noalias !271 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit.thread.i: ; preds = %bb.k, %bb.j
  %.pn.i = phi { i64, i64 } [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.ae, i1 false), !noalias !271
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = load ptr, ptr %0, align 8, !alias.scope !272, !nonnull !6, !noundef !6 ; 5 uses
  %i.aw = icmp eq i64 %i.b, 0
  br i1 %i.aw, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECss03989lGqH_5uu_df.exit
  %.val241 = load <16 x i8>, ptr %i.av, align 16
  %i.ax = icmp sgt <16 x i8> %.val241, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val.i.i = load i64, ptr %2, align 8, !noalias !273, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.az, align 8, !noalias !273, !noundef !6
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.025.055 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %.sroa.025.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.054 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.053 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.052 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i147 = icmp eq i16 %.sroa.13.052, 0
  br i1 %.not.i147, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.025.149 = phi ptr [ %i.ba, %.lr.ph ], [ %.sroa.025.055, %.preheader ] ; 2 uses
  %.sroa.5.148 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.5.054, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.149) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.025.149, i64 16 ; 3 uses
  %.val42 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val42, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.148, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.052, %.preheader ], [ %i.bc, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.054, %.preheader ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.sroa.025.1.lcssa = phi ptr [ %.sroa.025.055, %.preheader ], [ %i.ba, %.lr.ph ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.053, -1                ; 2 uses
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds [168 x i8], ptr %i.av, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -168
  %i.bn = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECss03989lGqH_5uu_df(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.bm) #28, !noalias !274 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bn, %i.aq            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !275
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !276

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bq, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.ch, %.lr.ph.i ]
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bs
  %i.bu = and i64 %i.bt, %i.aq                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !6
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.m, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !11

bb.m:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.at, align 16
  %i.by = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ce, %i.aq            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !275
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !277

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.m
end_hunk_0
begin_hunk_1_@_RNvMs_Css03989lGqH_5uu_dfNtB4_7Options12from_matches:bb.a
_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.thread.i: ; preds = %bb.ae, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i.i, %.lr.ph.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2795
  br label %bb.r

_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2795
  %.not52.i = icmp eq i64 %.sroa.0.0.copyload.pre.i.i, -1
  br i1 %.not52.i, label %bb.r, label %bb.af

bb.af:                                            ; preds = %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options21get_intersected_types.exit.i
  %i.er = ptrtoint ptr %.sroa.5.0.copyload.pre.i.i to i64
  br label %bb.ag

bb.ag:                                            ; preds = %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i, %bb.af
  %.sroa.23.0 = phi i64 [ %.sroa.23.24.copyload, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %i.eh, %bb.af ] ; 3 uses
  %.sroa.19.0 = phi i64 [ %.sroa.19.24.copyload, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %i.er, %bb.af ] ; 3 uses
  %.sroa.15.0 = phi i64 [ %.sroa.6.0.copyload.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.0.0.copyload.pre.i.i, %bb.af ] ; 3 uses
  %.sroa.9.0 = phi i64 [ %.sroa.010.0.copyload.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ 4, %bb.af ] ; 3 uses
  %.sroa.11.0240258.i = phi i64 [ %.sroa.11.0239.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.7194.0.i, %bb.af ] ; 2 uses
  %.sroa.9.0242257.i = phi ptr [ %.sroa.9.0241.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.5193.0.i, %bb.af ] ; 3 uses
  %.sroa.0148.0244256.i = phi i64 [ %.sroa.0148.0243.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.0192.0.i, %bb.af ] ; 2 uses
  %.not50246254.i = phi i1 [ %.not50245.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ false, %bb.af ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0242257.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %i.es = icmp eq i64 %.sroa.11.0240258.i, 0
  br i1 %i.es, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.eu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ 0, %bb.ag ] ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.sroa.9.0242257.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %.val.i.i.i.i.i.i = load i64, ptr %i.et, align 8, !range !7, !alias.scope !2806, !noalias !2807, !noundef !6 ; 2 uses
  %i.ev = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ev, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !2806, !noalias !2807, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2808
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %i.ex = icmp eq i64 %i.eu, %.sroa.11.0240258.i
  br i1 %i.ex, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i.i, %bb.ag
  %i.ey = icmp eq i64 %.sroa.0148.0244256.i, 0
  br i1 %i.ey, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i, label %.split.i

.split.i:                                         ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i
  %i.ez = mul nuw i64 %.sroa.0148.0244256.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0242257.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !2807
  br i1 %.not50246254.i, label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread, label %bb.ai

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i: ; preds = %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i
  %.sroa.23.2 = phi i64 [ %.sroa.23.24.copyload, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.23.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.19.24.copyload, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.19.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i ] ; 2 uses
  %.sroa.15.2 = phi i64 [ %.sroa.6.0.copyload.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.15.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i ] ; 2 uses
  %.sroa.9.2 = phi i64 [ %.sroa.010.0.copyload.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.sroa.9.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i ] ; 2 uses
  %.not50246255.i = phi i1 [ %.not50245.i, %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i ], [ %.not50246254.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i80.i ]
  br i1 %.not50246255.i, label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i, %.split.i
  %.sroa.23.1 = phi i64 [ %.sroa.23.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i ], [ %.sroa.23.0, %.split.i ] ; 2 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i ], [ %.sroa.19.0, %.split.i ] ; 2 uses
  %.sroa.15.1 = phi i64 [ %.sroa.15.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i ], [ %.sroa.15.0, %.split.i ] ; 2 uses
  %.sroa.9.1 = phi i64 [ %.sroa.9.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i ], [ %.sroa.9.0, %.split.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.fa = icmp eq i64 %.sroa.10.0.i, 0
  br i1 %i.fa, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i88.i, label %.lr.ph.i.i.i.i83.i

.lr.ph.i.i.i.i83.i:                               ; preds = %bb.ai, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i87.i
  %.sroa.0.03.i.i.i.i84.i = phi i64 [ %i.fc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i87.i ], [ 0, %bb.ai ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.i, i64 %.sroa.0.03.i.i.i.i84.i ; 2 uses
  %i.fc = add nuw nsw i64 %.sroa.0.03.i.i.i.i84.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %.val.i.i.i.i.i85.i = load i64, ptr %i.fb, align 8, !range !7, !alias.scope !2811, !noalias !2812, !noundef !6 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i.i.i.i85.i, 0
  br i1 %i.fd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i87.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i83.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val1.i.i.i.i.i86.i = load ptr, ptr %i.fe, align 8, !alias.scope !2811, !noalias !2812, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i86.i, i64 noundef %.val.i.i.i.i.i85.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2813
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i87.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i87.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i83.i
  %i.ff = icmp eq i64 %i.fc, %.sroa.10.0.i
  br i1 %i.ff, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i88.i, label %.lr.ph.i.i.i.i83.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i.i88.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i.i87.i, %bb.ai
  %i.fg = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.fg, label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread, label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread.sink.split

_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i: ; preds = %bb.z
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2788
  store i64 %i.dl, ptr %i.ap, align 8, !alias.scope !2786, !noalias !2736
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.dn, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !alias.scope !2786, !noalias !2736
  %.sroa.5206.0.copyload.i = load ptr, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !2736 ; 5 uses
  %.sroa.6207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.6207.0.copyload.i = load i64, ptr %.sroa.6207.0..sroa_idx.i, align 8, !noalias !2736 ; 3 uses
  switch i64 %i.dl, label %default.unreachable [
    i64 0, label %.thread2.i.i
    i64 1, label %bb.am
    i64 2, label %bb.ak
    i64 3, label %bb.am
  ]

default.unreachable:                              ; preds = %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i
  unreachable

.thread2.i.i:                                     ; preds = %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.dn, ptr %i.fh, align 8, !noalias !2736
  store ptr %.sroa.5206.0.copyload.i, ptr %i.aq, align 8, !noalias !2736
  %.sroa.8201.8..sroa_idx202.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.6207.0.copyload.i, ptr %.sroa.8201.8..sroa_idx202.i, align 8, !noalias !2736
  store i64 2, ptr %i.ak, align 8, !noalias !2736
  br label %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i

bb.ak:                                            ; preds = %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2815
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2815
  store ptr @53, ptr %i.l, align 8, !noalias !2817
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 9, ptr %i.fi, align 8, !noalias !2817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2817
  %i.fj = load i64, ptr %i.m, align 8, !range !20, !alias.scope !2816, !noalias !2815, !noundef !6
  %.not.i.i90.i = icmp eq i64 %i.fj, 2
  br i1 %.not.i.i90.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i93.i, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !2815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2817
  store ptr %i.l, ptr %i.j, align 8, !noalias !2817
  %.sroa.42.0..sroa_idx.i.i91.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCss03989lGqH_5uu_df, ptr %.sroa.42.0..sroa_idx.i.i91.i, align 8, !noalias !2817
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.fk, align 8, !noalias !2817
  %.sroa.46.0..sroa_idx.i.i92.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i92.i, align 8, !noalias !2817
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !noalias !2818
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i93.i: ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !2816, !noalias !2815, !align !8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2815
  %.not.i94.i = icmp eq ptr %i.fm, null
  br i1 %.not.i94.i, label %bb.an, label %bb.ao, !prof !11

bb.am:                                            ; preds = %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.thread259.i
  %.sroa.6207.0.copyload268.i = phi i64 [ %.sroa.6207.0.copyload265.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.thread259.i ], [ %.sroa.6207.0.copyload.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i ], [ %.sroa.6207.0.copyload.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i ]
  %.sroa.5206.0.copyload267.i = phi ptr [ %.sroa.5206.0.copyload263.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.thread259.i ], [ %.sroa.5206.0.copyload.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i ], [ %.sroa.5206.0.copyload.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i ]
  %.sroa.4205.0.copyload266.i = phi i64 [ %.sroa.4205.0.copyload261.i, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.thread259.i ], [ %i.dn, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i ], [ %i.dn, %_RNvNtCss03989lGqH_5uu_df6blocks15read_block_size.exit.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.4205.0.copyload266.i, ptr %i.fn, align 8, !noalias !2736
  store ptr %.sroa.5206.0.copyload267.i, ptr %i.aq, align 8, !noalias !2736
  %.sroa.5232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.6207.0.copyload268.i, ptr %.sroa.5232.0..sroa_idx.i, align 8, !noalias !2736
  store i64 1, ptr %i.ak, align 8, !noalias !2736
  br label %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i

bb.an:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i93.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #29, !noalias !2819
  unreachable

bb.ao:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECss03989lGqH_5uu_df.exit.i93.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm) #28, !noalias !2737
  store i64 0, ptr %i.ak, align 8, !noalias !2736
  %i.fp = icmp eq i64 %i.dn, 0
  br i1 %i.fp, label %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.sink.split.i.i.i: ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5206.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5206.0.copyload.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2820
  br label %_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i

_RNCNvMs0_Css03989lGqH_5uu_dfNtB7_7Options4froms0_0B7_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.sink.split.i.i.i, %bb.ao, %bb.am, %.thread2.i.i
  %.sroa.010.0.copyload.i = phi i64 [ 2, %.thread2.i.i ], [ 1, %bb.am ], [ 0, %bb.ao ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2736 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2736
  %.sroa.19.24.copyload = load i64, ptr %i.aq, align 8, !noalias !2735 ; 2 uses
  %.sroa.23.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.23.24.copyload = load i64, ptr %.sroa.23.24..sroa_idx, align 8, !noalias !2735 ; 2 uses
  br i1 %.not51247.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB12_6string6StringEEECss03989lGqH_5uu_df.exit.i, label %bb.ag

bb.ap:                                            ; preds = %bb.ab, %bb.y, %bb.x, %bb.w
  %i.fq = phi i64 [ %i.de, %bb.w ], [ %i.dn, %bb.ab ], [ %i.df, %bb.x ], [ %i.dg, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2736
  %i.fr = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 21) #28, !noalias !2737
  br i1 %i.fr, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 22) #28, !noalias !2737
  br i1 %i.fs, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ft = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 11) #28, !noalias !2737
  br i1 %i.ft, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6) #28, !noalias !2737
  %i.fv = icmp eq i8 %i.fu, 2
  %..i = select i1 %i.fv, i8 3, i8 0
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.018.0.i = phi i8 [ 2, %bb.ar ], [ %..i, %bb.as ], [ 1, %bb.ap ], [ 1, %bb.aq ]
  %i.fw = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 21) #28, !noalias !2737
  br i1 %i.fw, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 22) #28, !noalias !2737
  %.54.i = select i1 %i.fx, i8 0, i8 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.021.0.i = phi i8 [ %.54.i, %bb.au ], [ 1, %bb.at ]
  %i.fy = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 5) #28, !noalias !2737
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  %i.fz = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 10) #28, !noalias !2822 ; 2 uses
  %i.ga = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 6) #28, !noalias !2822 ; 4 uses
  %i.gb = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6) #28, !noalias !2822 ; 2 uses
  %.not.i95.i = icmp eq i8 %i.gb, -1
  br i1 %.not.i95.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = icmp eq i8 %i.gb, 2                     ; 4 uses
  br i1 %i.fz, label %bb.bj, label %bb.bi

bb.ax:                                            ; preds = %bb.av
  br i1 %i.fz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ga, label %bb.bc, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  br i1 %i.ga, label %bb.bg, label %bb.be

bb.ba:                                            ; preds = %bb.bk, %bb.ay
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2822
  %i.gd = call noundef dereferenceable_or_null(6) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2822 ; 5 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.bb, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !11

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 6) #31, !noalias !2822
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ba
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.gd, align 1, !noalias !2822
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i8 4, ptr %i.gf, align 1, !noalias !2822
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 5
  store i8 5, ptr %i.gg, align 1, !noalias !2822
  br label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread83

bb.bc:                                            ; preds = %bb.bl, %bb.ay
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2822
  %i.gh = call noundef dereferenceable_or_null(6) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2822 ; 5 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.bd, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit34.i.i, !prof !11

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 6) #31, !noalias !2822
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit34.i.i: ; preds = %bb.bc
  store <4 x i8> <i8 0, i8 6, i8 7, i8 8>, ptr %i.gh, align 1, !noalias !2822
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i8 9, ptr %i.gj, align 1, !noalias !2822
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 5
  store i8 5, ptr %i.gk, align 1, !noalias !2822
  br label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread83

bb.be:                                            ; preds = %bb.cr, %bb.az
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2822
  %i.gl = call noundef dereferenceable_or_null(7) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2822 ; 6 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.bf, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit35.i.i, !prof !11

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 7) #31, !noalias !2822
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit35.i.i: ; preds = %bb.be
  store <4 x i8> <i8 0, i8 11, i8 1, i8 2>, ptr %i.gl, align 1, !noalias !2822
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i8 3, ptr %i.gn, align 1, !noalias !2822
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 5
  store i8 4, ptr %i.go, align 1, !noalias !2822
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  store i8 5, ptr %i.gp, align 1, !noalias !2822
  br label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread83

bb.bg:                                            ; preds = %bb.cs, %bb.az
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2822
  %i.gq = call noundef dereferenceable_or_null(7) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2822 ; 6 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.bh, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit36.i.i, !prof !11

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 7) #31, !noalias !2822
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit36.i.i: ; preds = %bb.bg
  store <4 x i8> <i8 0, i8 11, i8 6, i8 7>, ptr %i.gq, align 1, !noalias !2822
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 8, ptr %i.gs, align 1, !noalias !2822
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 5
  store i8 9, ptr %i.gt, align 1, !noalias !2822
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 6
  store i8 5, ptr %i.gu, align 1, !noalias !2822
  br label %_RNvMs0_Css03989lGqH_5uu_dfNtB5_7Options4from.exit.thread83

bb.bi:                                            ; preds = %bb.aw
  br i1 %i.ga, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.aw
  br i1 %i.ga, label %bb.cs, label %bb.cr

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.gc, label %bb.bm, label %bb.ba

bb.bl:                                            ; preds = %bb.bi
  br i1 %i.gc, label %bb.cq, label %bb.bc, !prof !11

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !2826, !nonnull !6, !noundef !6 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !2826, !noundef !6 ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.gy, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx.i.i.i.i.i
  %i.ha = icmp eq i64 %i.gy, 0
  br i1 %i.ha, label %.loopexit93.i.i, label %.lr.ph.i.i.i.i97.i

.lr.ph.i.i.i.i97.i:                               ; preds = %bb.bm, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i
  %.sroa.0.0917.i.i.i.i.i = phi ptr [ %i.hb, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i ], [ %i.gw, %bb.bm ] ; 3 uses
  %.sroa.8.016.i.i.i.i.i = phi i64 [ %i.hc, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i ], [ 0, %bb.bm ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i.i.i, i64 16 ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.8.016.i.i.i.i.i, 1
  %i.hd = getelementptr i8, ptr %.sroa.0.0917.i.i.i.i.i, i64 8
  %.val7.i.i.i.i.i = load i64, ptr %i.hd, align 8, !noalias !2827, !noundef !6
  %i.he = icmp eq i64 %.val7.i.i.i.i.i, 6
  br i1 %i.he, label %.split.i.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i97.i
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i.i.i, align 8, !noalias !2827, !nonnull !6, !noundef !6 ; 2 uses
  %i.hf = load i32, ptr %.val.i.i.i.i.i, align 1
  %i.hg = xor i32 %i.hf, 1886680431
  %i.hh = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4
  %i.hi = load i16, ptr %i.hh, align 1
  %i.hj = zext i16 %i.hi to i32
  %i.hk = xor i32 %i.hj, 29813
  %i.hl = or i32 %i.hg, %i.hk
  %i.hm = icmp ne i32 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bn, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i97.i
  %i.hp = icmp eq ptr %i.hb, %i.gz
  br i1 %i.hp, label %.loopexit93.i.i, label %.lr.ph.i.i.i.i97.i

bb.bn:                                            ; preds = %.split.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !2826, !noundef !6 ; 2 uses
  %i.hs = icmp ult i64 %.sroa.8.016.i.i.i.i.i, %i.hr
  br i1 %i.hs, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i.i.i, i64 noundef %i.hr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !2827
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !2826, !nonnull !6, !noundef !6
  %i.hv = getelementptr inbounds nuw [104 x i8], ptr %i.hu, i64 %.sroa.8.016.i.i.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2828
  store i128 53410479646238849826493945191968316847, ptr %i.f, align 16, !noalias !2828
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.hv, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f) #28, !noalias !2829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2828
  %.sroa.013.0.copyload.i.i.i.i = load i128, ptr %i.g, align 16, !noalias !2828 ; 3 uses
end_hunk_1
