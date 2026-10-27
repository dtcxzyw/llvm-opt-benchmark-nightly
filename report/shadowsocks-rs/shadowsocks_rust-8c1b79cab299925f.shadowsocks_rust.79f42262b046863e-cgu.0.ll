Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onemECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37
  unreachable

bb.j:                                             ; preds = %bb.e, %.thread, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneyECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 6, 30) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !586, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !586, !noundef !14 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i
  %.sroa.0.0917.i.i = phi ptr [ %i.j, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i = phi i64 [ %i.k, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i, i64 16 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.016.i.i, 1
  %i.l = getelementptr i8, ptr %.sroa.0.0917.i.i, i64 8
  %.val7.i.i = load i64, ptr %i.l, align 8, !noalias !587, !noundef !14
  %i.m = icmp eq i64 %.val7.i.i, %3
  br i1 %i.m, label %.split.i.i, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !587, !nonnull !14, !noundef !14
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.val.i.i, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 6, 30) %3), !alias.scope !588, !noalias !589
  %i.n = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.n, label %bb.b, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.o = icmp eq ptr %i.j, %i.h
  br i1 %i.o, label %.thread, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !586, !noundef !14 ; 2 uses
  %i.r = icmp ult i64 %.sroa.8.016.i.i, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #37, !noalias !587
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !586, !nonnull !14, !noundef !14
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %.sroa.8.016.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !590
  store i128 -147457254988281438159280264631028149675, ptr %i.b, align 16, !noalias !590
  call void @_RNvMNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b) #30, !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !590
  %.sroa.013.0.copyload.i = load i128, ptr %i.c, align 16, !noalias !590 ; 3 uses
  %i.v = icmp eq i128 %.sroa.013.0.copyload.i, -147457254988281438159280264631028149675
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.x = trunc nuw i128 %i.w to i64
  %i.y = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.z = inttoptr i64 %i.y to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !590
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 -147457254988281438159280264631028149675, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !590
  %i.aa = call noundef align 8 ptr @_RNvMNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.u) #30 ; 3 uses
  %.not8 = icmp eq ptr %i.aa, null
  br i1 %.not8, label %.thread, label %bb.g

.thread:                                          ; preds = %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !14, !noundef !14
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val10 = load ptr, ptr %i.ac, align 8, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !25, !invariant.load !14
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = and i64 %i.af, -16
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !14, !nonnull !14
  call void %i.ak(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ai) #35, !inline_history !583
  %i.al = load i128, ptr %i.a, align 16, !noundef !14
  %.not = icmp eq i128 %i.al, -147457254988281438159280264631028149675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.am, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37
  unreachable

bb.j:                                             ; preds = %bb.e, %.thread, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 14, 29) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !603, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !603, !noundef !14 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i
  %.sroa.0.0917.i.i = phi ptr [ %i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i = phi i64 [ %i.j, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.016.i.i, 1
  %i.k = getelementptr i8, ptr %.sroa.0.0917.i.i, i64 8
  %.val7.i.i = load i64, ptr %i.k, align 8, !noalias !604, !noundef !14
  %i.l = icmp eq i64 %.val7.i.i, %3
  br i1 %i.l, label %.split.i.i, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !604, !nonnull !14, !noundef !14
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.val.i.i, ptr noundef nonnull readonly dereferenceable(1) %2, i64 range(i64 3, 29) %3), !alias.scope !605, !noalias !606
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %bb.b, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.i, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !603, !noundef !14 ; 2 uses
  %i.q = icmp ult i64 %.sroa.8.016.i.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #37, !noalias !604
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !603, !nonnull !14, !noundef !14
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %.sroa.8.016.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !607
  store i128 -14408605693253748246545459478122018109, ptr %i.a, align 16, !noalias !607
  call void @_RNvMNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a) #30, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !607
  %.sroa.013.0.copyload.i = load i128, ptr %i.b, align 16, !noalias !607 ; 3 uses
  %i.u = icmp eq i128 %.sroa.013.0.copyload.i, -14408605693253748246545459478122018109
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.y = inttoptr i64 %i.x to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !607
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx21, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 -14408605693253748246545459478122018109, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !607
  %i.aa = call noundef i64 @_RNvMNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !14
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNSINvNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCsgCecv3eZDcN_5alloc6string6StringE5reifyCsat9HgdBb3qc_16shadowsocks_rust, ptr %i.ag, align 8
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

.loopexit:                                        ; preds = %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 0, %bb.f ], [ 1, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsfl4DFYTbOu6_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !28, !noundef !14
  switch i8 %i.b, label %default.unreachable6 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.c
  ]

default.unreachable6:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i64>, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.d = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.e = phi <2 x i64> [ <i64 0, i64 undef>, %bb.e ], [ %i.c, %bb.d ]
  store <2 x i64> %i.e, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyNtNtCsfl4DFYTbOu6_12sharded_slab3tid12RegistrationECsat9HgdBb3qc_16shadowsocks_rust) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f
  %.sroa.02.0 = phi ptr [ %0, %bb.f ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(736) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 8 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [5 x i8], align 8                 ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [17 x i8], align 16               ; 6 uses
  %i.i = alloca [96 x i8], align 8                ; 16 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [96 x i8], align 8                ; 16 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [96 x i8], align 8                ; 16 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [96 x i8], align 8                ; 16 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [96 x i8], align 8                ; 16 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 4 uses
  %i.y = alloca [176 x i8], align 8               ; 7 uses
  %i.z = alloca [184 x i8], align 8               ; 4 uses
  %i.aa = alloca [176 x i8], align 8              ; 7 uses
  %i.ab = alloca [176 x i8], align 8              ; 9 uses
  %i.ac = alloca [184 x i8], align 8              ; 4 uses
  %i.ad = alloca [176 x i8], align 8              ; 7 uses
  %i.ae = alloca [176 x i8], align 8              ; 11 uses
  %i.af = alloca [184 x i8], align 8              ; 4 uses
  %i.ag = alloca [176 x i8], align 8              ; 7 uses
  %i.ah = alloca [176 x i8], align 8              ; 12 uses
  %.sroa.036.sroa.0 = alloca [528 x i8], align 8  ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 1               ; 4 uses
  %i.ak = alloca [17 x i8], align 1               ; 5 uses
  %i.al = alloca [18 x i8], align 1               ; 5 uses
  %i.am = alloca [40 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 8 uses
  %i.ao = alloca [40 x i8], align 8               ; 8 uses
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [40 x i8], align 8               ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [40 x i8], align 8               ; 8 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [40 x i8], align 8               ; 8 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 4 uses
  %i.az = alloca [48 x i8], align 8               ; 12 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [184 x i8], align 8              ; 12 uses
  %i.bc = alloca [184 x i8], align 8              ; 12 uses
  %i.bd = alloca [184 x i8], align 8              ; 11 uses
  %i.be = alloca [184 x i8], align 8              ; 8 uses
  %i.bf = alloca [1 x i8], align 1                ; 9 uses
  %i.bg = alloca [1 x i8], align 1                ; 10 uses
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ugt i64 %i.bl, 4
  br i1 %i.bn, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i141.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert432 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i142.pre = load i64, ptr %.phi.trans.insert432, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.bo, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.bp, align 8, !noundef !14 ; 2 uses
  store ptr %.val.i, ptr %i.bk, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %.val1.i, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.bk, ptr %i.bj, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path4PathNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.478.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !757
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 5, ptr %i.br, align 8, !noalias !757
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i64 24, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !757
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr @46, ptr %i.bs, align 8, !noalias !757
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr %i.bj, ptr %i.bt, align 8, !noalias !757
  store i64 0, ptr %i.v, align 8, !noalias !757
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 24, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !757
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.bu, align 8, !noalias !757
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !757
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 41, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !757
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store i32 1, ptr %i.bv, align 8, !noalias !757
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  store i32 352, ptr %i.bw, align 4, !noalias !757
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.v) #30, !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.val1.i142 = phi i64 [ %.val1.i142.pre, %._crit_edge ], [ %.val1.i, %bb.b ] ; 2 uses
  %.val.i141 = phi ptr [ %.val.i141.pre, %._crit_edge ], [ %.val.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i141, i64 noundef %.val1.i142) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !758
  store i128 18446745954905227264, ptr %i.u, align 16, !noalias !758
  call void @_RNvMsj_NtCs5Xr050g3D4S_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i141, i64 noundef %.val1.i142) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !758
  %i.bx = load i32, ptr %i.bh, align 8, !range !13, !noundef !14
  %i.by = trunc nuw i32 %i.bx to i1
  br i1 %i.by, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store i64 2, ptr %0, align 8
  br label %bb.dq

bb.e:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !range !15, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !759
  %i.ce = call noundef dereferenceable_or_null(8192) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 17) 1) #30, !noalias !759 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.f, label %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #34, !noalias !760
  unreachable

_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i8 0, ptr %i.bg, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 0, ptr %i.bf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules3new(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules3new(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules3new(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 29) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules3new(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 28) #30
  %i.cg = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 6
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp samesign ugt i64 %i.cg, 4
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bg, ptr %i.ba, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !761
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 5, ptr %i.cj, align 8, !noalias !761
  %.sroa.422.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i143, align 8, !noalias !761
  %.sroa.523.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 24, ptr %.sroa.523.0..sroa_idx.i144, align 8, !noalias !761
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store ptr @51, ptr %i.ck, align 8, !noalias !761
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store ptr %i.ba, ptr %i.cl, align 8, !noalias !761
  store i64 0, ptr %i.t, align 8, !noalias !761
  %.sroa.428.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i145, align 8, !noalias !761
  %.sroa.529.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 24, ptr %.sroa.529.0..sroa_idx.i146, align 8, !noalias !761
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.cm, align 8, !noalias !761
  %.sroa.434.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i147, align 8, !noalias !761
  %.sroa.535.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 41, ptr %.sroa.535.0..sroa_idx.i148, align 8, !noalias !761
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i32 1, ptr %i.cn, align 8, !noalias !761
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 76
  store i32 369, ptr %i.co, align 4, !noalias !761
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.t) #30, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.g
  %.sroa.3234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.3234.0..sroa_idx, i8 0, i64 17, i1 false)
  store ptr %i.ce, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  store i64 8192, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.5236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 4 uses
  store i32 %i.cd, ptr %.sroa.5236.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.422.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.523.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.428.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.529.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.434.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.535.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 72
end_hunk_0
begin_hunk_1_@_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.sroa.11.0.copyload = phi i64 [ 0, %bb.r ], [ %spec.select, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i ], [ %i.ic, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %.sroa.0238.0.copyload = load i64, ptr %i.s, align 8, !noalias !762
  %.sroa.9239.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !762
  br label %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i
  %.sroa.0238.1 = phi i64 [ %.sroa.0238.0, %bb.s ], [ %.sroa.0238.0, %bb.t ], [ %.sroa.0238.0.copyload, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 7 uses
  %.sroa.9239.1 = phi ptr [ %.sroa.9239.0, %bb.s ], [ %.sroa.9239.0, %bb.t ], [ %.sroa.9239.0.copyload, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 11 uses
  %.sroa.11.0 = phi i64 [ undef, %bb.s ], [ undef, %bb.t ], [ %.sroa.11.0.copyload, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !763
  switch i64 %.sroa.0238.1, label %bb.af [
    i64 -2, label %bb.u
    i64 -1, label %bb.ae
  ]

bb.u:                                             ; preds = %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %.val1.i.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !798, !noundef !14 ; 2 uses
  %i.ip = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ip, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.u
  %.val.i.i = load ptr, ptr %i.az, align 8, !alias.scope !798, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #30, !noalias !798
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.u, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %.val.i.i.i150 = load i32, ptr %.sroa.5236.0..sroa_idx, align 8, !range !15, !alias.scope !800, !noundef !14
  %i.iq = call noundef i32 @close(i32 noundef %.val.i.i.i150) #30, !noalias !800 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.036.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(184) %i.be, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.af) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ir = load i64, ptr %i.ag, align 8, !range !32, !noundef !14 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 2                    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  br i1 %i.is, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iu, ptr %i.iv, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ad

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5111.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.ir, ptr %i.ah, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.iu, ptr %.sroa.444.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, ptr noundef nonnull align 8 dereferenceable(184) %i.bd, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.ac) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.iw = load i64, ptr %i.ad, align 8, !range !32, !noundef !14 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  br i1 %i.ix, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iz, ptr %i.ja, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5114.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.iw, ptr %i.ae, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.iz, ptr %.sroa.454.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.z, ptr noundef nonnull align 8 dereferenceable(184) %i.bc, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.jb = load i64, ptr %i.aa, align 8, !range !32, !noundef !14 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.je = load ptr, ptr %i.jd, align 8            ; 2 uses
  br i1 %i.jc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.je, ptr %i.jf, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bb) #30
  br label %.thread265

bb.aa:                                            ; preds = %bb.y
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.564.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5117.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.jb, ptr %i.ab, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.je, ptr %.sroa.463.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.x, ptr noundef nonnull align 8 dereferenceable(184) %i.bb, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.jg = load i64, ptr %i.y, align 8, !range !32, !noundef !14 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  br i1 %i.jh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jj, ptr %i.jk, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ab) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  br label %.thread265

bb.ac:                                            ; preds = %bb.aa
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.036.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.036.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5120.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jl = load i8, ptr %i.bg, align 1, !range !19, !noundef !14
  %i.jm = load i8, ptr %i.bf, align 1, !range !19, !noundef !14
  %.sroa.036.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.036.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.036.sroa.0, ptr noundef nonnull align 8 dereferenceable(176) %i.ah, i64 176, i1 false)
  %.sroa.036.sroa.0.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.036.sroa.0.176..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.ae, i64 176, i1 false)
  %.sroa.036.sroa.0.352..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.036.sroa.0.352..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.ab, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(528) %.sroa.036.sroa.0, i64 528, i1 false)
  %.sroa.036.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.jg, ptr %.sroa.036.sroa.9.0..sroa_idx, align 8
  %.sroa.036.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.jj, ptr %.sroa.036.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i8 %i.jl, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 729
  store i8 %i.jm, ptr %.sroa.12.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.dr, %bb.dq, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  ret void

.thread265:                                       ; preds = %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dp

bb.ad:                                            ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br i1 %i.is, label %.split.thread, label %.sink.split

.split.thread:                                    ; preds = %bb.ad
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bd) #30
  br label %.sink.split

bb.ae:                                            ; preds = %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9239.1) ]
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9239.1, ptr %i.jn, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214

bb.af:                                            ; preds = %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.jo = icmp sgt i64 %.sroa.11.0, -1
  call void @llvm.assume(i1 %i.jo)
  %i.jp = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.jp, label %bb.bn, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9239.1) ]
  %rhsc = load i8, ptr %.sroa.9239.1, align 1     ; 2 uses
  %i.jq = icmp eq i8 %rhsc, 35
  br i1 %i.jq, label %bb.bn, label %bb.ag

bb.ag:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.9239.1, i64 %.sroa.11.0 ; 6 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.ithread-pre-split:                     ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.pr = load i8, ptr %.sroa.4.0.i, align 1, !alias.scope !801, !noalias !802
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.ithread-pre-split, %bb.ag
  %i.js = phi i8 [ %.pr, %.lr.ph.i.i.ithread-pre-split ], [ %rhsc, %bb.ag ] ; 5 uses
  %i.jt = phi i64 [ %i.lg, %.lr.ph.i.i.ithread-pre-split ], [ 0, %bb.ag ] ; 4 uses
  %i.ju = phi ptr [ %.sroa.4.0.i, %.lr.ph.i.i.ithread-pre-split ], [ %.sroa.9239.1, %bb.ag ] ; 5 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 1 ; 3 uses
  %i.jx = icmp sgt i8 %i.js, -1
  br i1 %i.jx, label %bb.ah, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jy = and i8 %i.js, 31
  %i.jz = zext nneg i8 %i.jy to i32               ; 3 uses
  %i.ka = icmp ne ptr %i.jw, %i.jr
  call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 2 ; 3 uses
  %i.kc = load i8, ptr %i.jw, align 1, !alias.scope !801, !noalias !802, !noundef !14
  %i.kd = shl nuw nsw i32 %i.jz, 6
  %i.ke = and i8 %i.kc, 63
  %i.kf = zext nneg i8 %i.ke to i32               ; 2 uses
  %i.kg = or disjoint i32 %i.kd, %i.kf
  %i.kh = icmp samesign ugt i8 %i.js, -33
  br i1 %i.kh, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.ki = zext nneg i8 %i.js to i32
  br label %bb.ai

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i
  %i.kj = icmp ne ptr %i.kb, %i.jr
  call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ju, i64 3 ; 3 uses
  %i.kl = load i8, ptr %i.kb, align 1, !alias.scope !801, !noalias !802, !noundef !14
  %i.km = shl nuw nsw i32 %i.kf, 6
  %i.kn = and i8 %i.kl, 63
  %i.ko = zext nneg i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.km, %i.ko            ; 2 uses
  %i.kq = shl nuw nsw i32 %i.jz, 12
  %i.kr = or disjoint i32 %i.kp, %i.kq
  %i.ks = icmp samesign ugt i8 %i.js, -17
  br i1 %i.ks, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i, label %bb.ai

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i
  %i.kt = icmp ne ptr %i.kk, %i.jr
  call void @llvm.assume(i1 %i.kt)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.kv = load i8, ptr %i.kk, align 1, !alias.scope !801, !noalias !802, !noundef !14
  %i.kw = shl nuw nsw i32 %i.jz, 18
  %i.kx = and i32 %i.kw, 1835008
  %i.ky = shl nuw nsw i32 %i.kp, 6
  %i.kz = and i8 %i.kv, 63
  %i.la = zext nneg i8 %i.kz to i32
  %i.lb = or disjoint i32 %i.ky, %i.la
  %i.lc = or disjoint i32 %i.lb, %i.kx
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i, %bb.ah, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i
  %.sroa.4.0.i = phi ptr [ %i.jw, %bb.ah ], [ %i.ku, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i ], [ %i.kk, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i ], [ %i.kb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ki, %bb.ah ], [ %i.lc, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit16.i.i.i.i.i.i ], [ %i.kr, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit14.i.i.i.i.i.i ], [ %i.kg, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit12.i.i.i.i.i.i ] ; 8 uses
  %i.ld = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ld)
  %i.le = ptrtoint ptr %.sroa.4.0.i to i64        ; 2 uses
  %i.lf = sub i64 %i.le, %i.jv
  %i.lg = add i64 %i.lf, %i.jt                    ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.aj [
    i32 32, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 13, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 12, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 11, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 10, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
    i32 9, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.lh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 133
  br i1 %i.lh, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.li, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i [
    i32 0, label %bb.an
    i32 22, label %bb.al
    i32 32, label %bb.ao
    i32 48, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.lj = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.lk = zext i1 %i.lj to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ll = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.lm = zext i1 %i.ll to i8
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.an:                                            ; preds = %bb.ak
  %i.ln = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !803, !noundef !14
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.lr = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !noalias !803, !noundef !14
  %i.lv = lshr i8 %i.lu, 1
  br label %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.lm, %bb.am ], [ %i.lq, %bb.an ], [ %i.lk, %bb.al ], [ %i.lv, %bb.ao ]
  %i.lw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.lw, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %i.lx = icmp eq ptr %.sroa.4.0.i, %i.jr
  br i1 %i.lx, label %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.ithread-pre-split

_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXs3_NtNtCsf3Ta7LF998c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.ak, %bb.aj
  %i.ly = icmp eq ptr %.sroa.4.0.i, %i.jr
  br i1 %i.ly, label %_RINvMNtCsf3Ta7LF998c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.az
  %i.lz = phi ptr [ %i.nj, %bb.az ], [ %i.jr, %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 5 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 -1 ; 3 uses
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !801, !noalias !804, !noundef !14 ; 3 uses
  %i.mc = icmp sgt i8 %i.mb, -1
  br i1 %i.mc, label %bb.ap, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i4.i
  %i.md = icmp ne ptr %.sroa.4.0.i, %i.ma
  call void @llvm.assume(i1 %i.md)
  %i.me = getelementptr inbounds i8, ptr %i.lz, i64 -2 ; 3 uses
  %i.mf = load i8, ptr %i.me, align 1, !alias.scope !801, !noalias !804, !noundef !14 ; 3 uses
  %i.mg = and i8 %i.mf, 31
  %i.mh = zext nneg i8 %i.mg to i32
  %i.mi = icmp slt i8 %i.mf, -64
  br i1 %i.mi, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i4.i
  %i.mj = zext nneg i8 %i.mb to i32
  br label %bb.as

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i
  %i.mk = icmp ne ptr %.sroa.4.0.i, %i.me
  call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr inbounds i8, ptr %i.lz, i64 -3 ; 3 uses
  %i.mm = load i8, ptr %i.ml, align 1, !alias.scope !801, !noalias !804, !noundef !14 ; 3 uses
  %i.mn = and i8 %i.mm, 15
  %i.mo = zext nneg i8 %i.mn to i32
  %i.mp = icmp slt i8 %i.mm, -64
  br i1 %i.mp, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i
  %i.mq = phi ptr [ %i.ne, %bb.ar ], [ %i.me, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.ni, %bb.ar ], [ %i.mh, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i ]
  %i.mr = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.ms = and i8 %i.mb, 63
  %i.mt = zext nneg i8 %i.ms to i32
  %i.mu = or disjoint i32 %i.mr, %i.mt
  br label %bb.as

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsat9HgdBb3qc_16shadowsocks_rust.exit19.i.i.i.i.i.i
  %i.mv = icmp ne ptr %.sroa.4.0.i, %i.ml
  call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr inbounds i8, ptr %i.lz, i64 -4 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !alias.scope !801, !noalias !804, !noundef !14
  %i.my = and i8 %i.mx, 7
  %i.mz = zext nneg i8 %i.my to i32
  %i.na = shl nuw nsw i32 %i.mz, 6
end_hunk_1
begin_hunk_2_@_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dd

bb.cv:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %i.wo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #30
  %i.xa = load i64, ptr %i.w, align 8, !range !31, !noundef !14
  %i.xb = trunc nuw i64 %i.xa to i1
  %i.xc = load i64, ptr %i.ff, align 8, !range !33, !noundef !14 ; 3 uses
  br i1 %i.xb, label %bb.cz, label %bb.da, !prof !23

bb.cw:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(16) %i.fe, i64 16, i1 false)
  call fastcc void @_RINvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_12ParsingRules13add_ipv6_ruleNtNtNtCsf3Ta7LF998c_4core3net7ip_addr8Ipv6AddrECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %.sroa.027.0.ph, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.aj) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cp
  %.sroa.034.0.copyload = load i32, ptr %i.fe, align 1
  call fastcc void @_RINvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_12ParsingRules13add_ipv4_ruleNtNtNtCsf3Ta7LF998c_4core3net7ip_addr8Ipv4AddrECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %.sroa.027.0.ph, i32 noundef %.sroa.034.0.copyload) #30
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.cu

bb.cz:                                            ; preds = %bb.cv
  %i.xd = load i64, ptr %i.fg, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.xc, i64 %i.xd) #34
  unreachable

bb.da:                                            ; preds = %bb.cv
  %i.xe = load ptr, ptr %i.fg, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.xf = icmp ule i64 %i.wo, %i.xc
  call void @llvm.assume(i1 %i.xf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not137 = icmp eq i64 %.sroa.02.1.i424, %.sroa.0.042.i
  br i1 %.not137, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.dc, %bb.da
  store i64 %i.xc, ptr %i.ai, align 8
  store ptr %i.xe, ptr %.sroa.4107.0..sroa_idx, align 8
  store i64 %i.wo, ptr %.sroa.6108.0..sroa_idx, align 8
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules14add_regex_rule(ptr noalias nofree noundef align 8 dereferenceable(184) %.sroa.027.0.ph, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.cy

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xe, ptr nonnull align 1 %i.og, i64 %i.wo, i1 false)
  br label %bb.db

bb.dd:                                            ; preds = %bb.dm, %bb.bw, %bb.dl, %bb.bz, %bb.dk, %bb.cc, %bb.dj, %bb.ce, %bb.di, %bb.cg, %bb.dh, %bb.ci, %bb.dg, %bb.ck, %bb.df, %bb.cn, %bb.cu
  %.sroa.027.1 = phi ptr [ %.sroa.027.0.ph, %bb.cu ], [ %.sroa.027.0.ph, %bb.dm ], [ %.sroa.027.0.ph, %bb.bw ], [ %.sroa.027.0.ph, %bb.dl ], [ %.sroa.027.0.ph, %bb.bz ], [ %.sroa.027.0.ph, %bb.dk ], [ %.sroa.027.0.ph, %bb.cc ], [ %.sroa.027.0.ph, %bb.dj ], [ %.sroa.027.0.ph, %bb.ce ], [ %i.be, %bb.di ], [ %i.be, %bb.cg ], [ %i.bd, %bb.dh ], [ %i.bd, %bb.ci ], [ %i.bc, %bb.dg ], [ %i.bc, %bb.ck ], [ %i.bb, %bb.df ], [ %i.bb, %bb.cn ]
  %i.xg = icmp eq i64 %.sroa.0238.1, 0
  br i1 %i.xg, label %.outer.backedge, label %bb.de

.outer.backedge:                                  ; preds = %bb.dd, %bb.de
  br label %.outer

bb.de:                                            ; preds = %bb.dd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9239.1, i64 noundef %.sroa.0238.1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !827
  br label %.outer.backedge

bb.df:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @36, ptr %i.am, align 8
  store i64 24, ptr %i.eg, align 8
  store ptr @36, ptr %i.eh, align 8
  store i64 24, ptr %i.ei, align 8
  store ptr @54, ptr %i.ej, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 63 to ptr), i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.dd

bb.dg:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !828
  store i64 5, ptr %i.ek, align 8, !noalias !828
  store ptr @36, ptr %.sroa.422.0..sroa_idx.i206, align 8, !noalias !828
  store i64 24, ptr %.sroa.523.0..sroa_idx.i207, align 8, !noalias !828
  store <2 x ptr> <ptr @55, ptr inttoptr (i64 65 to ptr)>, ptr %i.el, align 8, !noalias !828
  store i64 0, ptr %i.b, align 8, !noalias !828
  store ptr @36, ptr %.sroa.428.0..sroa_idx.i208, align 8, !noalias !828
  store i64 24, ptr %.sroa.529.0..sroa_idx.i209, align 8, !noalias !828
  store i64 0, ptr %i.em, align 8, !noalias !828
  store ptr @34, ptr %.sroa.434.0..sroa_idx.i210, align 8, !noalias !828
  store i64 41, ptr %.sroa.535.0..sroa_idx.i211, align 8, !noalias !828
  store i32 1, ptr %i.en, align 8, !noalias !828
  store i32 426, ptr %i.eo, align 4, !noalias !828
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #30, !noalias !828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !828
  br label %bb.dd

bb.dh:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @36, ptr %i.an, align 8
  store i64 24, ptr %i.dq, align 8
  store ptr @36, ptr %i.dr, align 8
  store i64 24, ptr %i.ds, align 8
  store ptr @57, ptr %i.dt, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @56, ptr noundef nonnull inttoptr (i64 55 to ptr), i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.dd

bb.di:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr @36, ptr %i.ao, align 8
  store i64 24, ptr %i.du, align 8
  store ptr @36, ptr %i.dv, align 8
  store i64 24, ptr %i.dw, align 8
  store ptr @59, ptr %i.dx, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 55 to ptr), i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ao) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.dd

bb.dj:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.bf, ptr %i.aq, align 8
  store ptr @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.4105.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @36, ptr %i.ap, align 8
  store i64 24, ptr %i.dy, align 8
  store ptr @36, ptr %i.dz, align 8
  store i64 24, ptr %i.ea, align 8
  store ptr @61, ptr %i.eb, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @60, ptr noundef nonnull %i.aq, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.dd

bb.dk:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.bf, ptr %i.as, align 8
  store ptr @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.4101.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr @36, ptr %i.ar, align 8
  store i64 24, ptr %i.ec, align 8
  store ptr @36, ptr %i.ed, align 8
  store i64 24, ptr %i.ee, align 8
  store ptr @62, ptr %i.ef, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @60, ptr noundef nonnull %i.as, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.dd

bb.dl:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.bg, ptr %i.au, align 8
  store ptr @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.497.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @36, ptr %i.at, align 8
  store i64 24, ptr %i.ep, align 8
  store ptr @36, ptr %i.eq, align 8
  store i64 24, ptr %i.er, align 8
  store ptr @64, ptr %i.es, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @63, ptr noundef nonnull %i.au, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.at) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.dd

bb.dm:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.bg, ptr %i.aw, align 8
  store ptr @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.493.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr @36, ptr %i.av, align 8
  store i64 24, ptr %i.et, align 8
  store ptr @36, ptr %i.eu, align 8
  store i64 24, ptr %i.ev, align 8
  store ptr @65, ptr %i.ew, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @63, ptr noundef nonnull %i.aw, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.av) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.dd

bb.dn:                                            ; preds = %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit
  %.lcssa505.sink = phi ptr [ %i.qv, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit ], [ %i.rd, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit ]
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa505.sink, ptr %i.xh, align 8
  store i64 2, ptr %0, align 8
  %i.xi = icmp eq i64 %.sroa.0238.1, 0
  br i1 %i.xi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9239.1, i64 noundef %.sroa.0238.1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !829
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214: ; preds = %bb.do, %bb.dn, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %.val1.i.i215 = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !832, !noundef !14 ; 2 uses
  %i.xj = icmp eq i64 %.val1.i.i215, 0
  br i1 %i.xj, label %.split, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i216

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i216: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214
  %.val.i.i217 = load ptr, ptr %i.az, align 8, !alias.scope !832, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i217, i64 noundef %.val1.i.i215, i64 noundef 1) #30, !noalias !832
  br label %.split

.split:                                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i216, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %.val.i.i.i218 = load i32, ptr %.sroa.5236.0..sroa_idx, align 8, !range !15, !alias.scope !834, !noundef !14
  %i.xk = call noundef i32 @close(i32 noundef %.val.i.i.i218) #30, !noalias !834 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.be) #30
  br label %bb.dp

.sink.split:                                      ; preds = %bb.ad, %.split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dp

bb.dp:                                            ; preds = %.sink.split, %.thread265, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %.val.i220 = load i64, ptr %i.bi, align 8, !range !16, !alias.scope !836, !noundef !14 ; 2 uses
  %i.xl = icmp eq i64 %.val.i220, 0
  br i1 %i.xl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val1.i221 = load ptr, ptr %i.xm, align 8, !alias.scope !835, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i221, i64 noundef %.val.i220, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !837
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FullINtNtNtB2o_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !864, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.u, %bb.p, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !864
  store i8 0, ptr %i.s, align 8, !noalias !864
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !864 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !864 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !864
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !864
  %i.u = load i64, ptr %i.r, align 8, !noalias !865, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !865
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !865
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !865
  store i64 0, ptr %i.q, align 8, !noalias !865
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !865
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !865
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !865
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !865
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !865
  store ptr %i.y, ptr %i.o, align 8, !noalias !865
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !865
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !865
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 181
  %i.ae = load i8, ptr %i.ad, align 1, !range !19, !noalias !865, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 182
  %i.ag = load i8, ptr %i.af, align 2, !range !19, !noalias !865, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !865
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ah, align 8, !noalias !865
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ae, ptr %i.ai, align 8, !noalias !865
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.ag, ptr %i.aj, align 1, !noalias !865
  %i.ak = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !865
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 183
  %i.an = load i8, ptr %i.am, align 1, !range !19, !noalias !865, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !865
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.aq = call { ptr, ptr } @_RNvXs0_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_19RollingFileAppenderNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer10MakeWriter11make_writer(ptr noundef nonnull align 8 %i.ap) #30, !noalias !865 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  store ptr %i.ar, ptr %i.m, align 8, !noalias !865
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !noalias !865
  %i.au = load ptr, ptr %i.p, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !865, !nonnull !14, !noundef !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !865, !noundef !14
  %i.az = call fastcc noundef ptr @_RNvYNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay) #30, !noalias !865 ; 5 uses
  %i.ba = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 183
  %i.bc = load i8, ptr %i.bb, align 1, !range !19, !noalias !865, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  %.not34.i.i = icmp ne ptr %i.az, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %i.bd
  br i1 %or.cond.not.i.i, label %bb.p, label %bb.o

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !865
  %i.be = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !865, !nonnull !14, !noundef !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !865, !noundef !14
  store ptr %i.bi, ptr %i.i, align 8, !noalias !865, !captures !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !865
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !noalias !865, !noundef !14 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.bs, ptr %i.h, align 8, !noalias !865
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.br, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !865
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bw = load <2 x ptr>, ptr %i.bt, align 8, !noalias !865
  store i64 0, ptr %i.bu, align 8, !noalias !865
  store i64 %i.br, ptr %i.bv, align 8, !noalias !865
  store <2 x ptr> %i.bw, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !865
  store ptr %i.i, ptr %i.g, align 8, !noalias !865
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !865
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bx, align 8, !noalias !865
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !865
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !865
  %.sroa.055.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !865 ; 2 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.456.0.copyload.i.i = load ptr, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !865 ; 3 uses
  %.sroa.6.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx57.i.i, align 8, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !865
  %i.by = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
end_hunk_2
