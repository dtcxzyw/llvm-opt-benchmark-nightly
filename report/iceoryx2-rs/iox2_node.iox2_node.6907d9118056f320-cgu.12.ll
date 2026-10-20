Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_node.iox2_node.6907d9118056f320-cgu.12?download=true
inline.NumInlined: 223
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCs5WK5l2q0aFk_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECs914H3uZQmS2_9iox2_node:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.val7 = load i128, ptr %1, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0819, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.018, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0819 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.018 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val = load i128, ptr %.sroa.0.0819, align 8
  %i.j = icmp eq i128 %.val, %.val7
  br i1 %i.j, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.018, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.8.018
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.018, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCshX8c74mBP8L_12iceoryx2_cli6filter11StateFilterEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load i64, ptr %2, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs914H3uZQmS2_9iox2_node, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !22, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCshX8c74mBP8L_12iceoryx2_cli6filter14NodeIdentifierEECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load i64, ptr %3, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs914H3uZQmS2_9iox2_node, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCshX8c74mBP8L_12iceoryx2_cli6format6FormatEECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load i64, ptr %2, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs914H3uZQmS2_9iox2_node, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j0_ECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECs914H3uZQmS2_9iox2_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !33, !nonnull !5, !noundef !5
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.c = tail call { ptr, i64 } @_RNvXsk_NtNtCs5WK5l2q0aFk_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload) #21, !noalias !35 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECs914H3uZQmS2_9iox2_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.c, 1
  %i.g = load i64, ptr %i.a, align 8, !alias.scope !36, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %1, align 8, !range !8, !alias.scope !36, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #23, !noalias !37
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i: ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !36, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !38
  %i.m = add i64 %i.g, 1
  br label %_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECs914H3uZQmS2_9iox2_node.exit

_RINvMNtNtCs5WK5l2q0aFk_12clap_builder7builder9arg_groupNtB3_8ArgGroup3argNtNtNtB7_4util2id2IdECs914H3uZQmS2_9iox2_node.exit: ; preds = %bb.a, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i
  %storemerge = phi i64 [ %i.m, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdE8push_mutCs914H3uZQmS2_9iox2_node.exit.i ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %i.a, align 8, !alias.scope !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateE0ECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !65, !noundef !5 ; 5 uses
  %2 = add nuw i64 %i.d, 1                        ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !65, !noundef !5 ; 11 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = add i64 %i.g, 1                          ; 6 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = mul nuw i64 %i.j, 7
  %.sroa.03.0.i = select i1 %i.h, i64 %i.g, i64 %i.k ; 3 uses
  %i.l = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.l
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #21, !noalias !66
  %i.n = extractvalue { i64, i64 } %i.m, 0
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %2, i64 %3) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  %i.o = icmp ult i64 %4, 15
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.p, label %bb.l, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw i64 %4, 3
  %i.r = udiv i64 %i.q, 7
  %i.s = add nsw i64 %i.r, -1
  %i.t = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = sub nuw nsw i64 64, %i.t
  %i.v = shl nuw nsw i64 1, %i.u
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.w = icmp samesign ult i64 %4, 4
  %i.x = and i64 %4, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.v, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.y = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 96) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.aa = extractvalue { i64, i1 } %i.y, 0        ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = icmp ugt i64 %i.ac, 9223372036854775792
  %or.cond.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i, !prof !10

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !69
  %i.af = tail call noundef align 16 ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !69 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #21, !noalias !69
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  %i.ai = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ac) #21, !noalias !69
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.aj = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #21, !noalias !70
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread

_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aa ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ak, i8 -1, i64 %i.ab, i1 false), !noalias !70
  %i.al = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.am = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.an = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ao = mul nuw nsw i64 %i.an, 7
  %.sroa.07.0.i.i = select i1 %i.al, i64 %i.am, i64 %i.ao ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !noalias !68
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 96, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ak, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.am, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %i.ap = icmp eq i64 %i.d, 0
  br i1 %i.ap, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !71, !nonnull !5, !noundef !5 ; 3 uses
  %.val430 = load <16 x i8>, ptr %i.aq, align 16
  %i.ar = icmp sgt <16 x i8> %.val430, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16
  br label %.preheader

_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aj, %bb.l ], [ %i.ah, %bb.j ], [ %i.ai, %bb.k ]
  %.sroa.7.029 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.014.044 = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.sroa.014.1.lcssa, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.043 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.042 = phi i64 [ %i.d, %.preheader.lr.ph ], [ %i.bc, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.041 = phi i16 [ %i.as, %.preheader.lr.ph ], [ %i.ba, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i136 = icmp eq i16 %.sroa.13.041, 0
  br i1 %.not.i136, label %.lr.ph, label %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.014.138 = phi ptr [ %i.at, %.lr.ph ], [ %.sroa.014.044, %.preheader ] ; 2 uses
  %.sroa.5.137 = phi i64 [ %i.aw, %.lr.ph ], [ %.sroa.5.043, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.138) ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.138, i64 16 ; 3 uses
  %.val331 = load <16 x i8>, ptr %i.at, align 16
  %i.au = icmp sgt <16 x i8> %.val331, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %i.aw = add i64 %.sroa.5.137, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.av, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.041, %.preheader ], [ %i.av, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.043, %.preheader ], [ %i.aw, %.lr.ph ] ; 2 uses
  %.sroa.014.1.lcssa = phi ptr [ %.sroa.014.044, %.preheader ], [ %i.at, %.lr.ph ]
  %i.ax = add i16 %.sroa.13.1.lcssa, -1
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az         ; 2 uses
  %i.bc = add i64 %.sroa.9.042, -1                ; 2 uses
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds [96 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -96
  %i.bg = tail call noundef i64 @_RINvYNtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateNtNtCs8Chj7Szqq0n_4core4hash11BuildHasher8hash_oneRNtNtCsbqH9stoieM8_5alloc6string6StringECs914H3uZQmS2_9iox2_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bf) #21, !noalias !72 ; 2 uses
  %.sroa.0.07.i = and i64 %i.am, %i.bg            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !73
  %i.bi = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !74

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bj, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.ca, %.lr.ph.i ]
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bl
  %i.bn = and i64 %i.bm, %i.am                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.m, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.m:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ak, align 16
  %i.br = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bs, 0
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bs, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i ], [ 0, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bw = add i64 %i.bv, 16                       ; 2 uses
  %i.bx = add i64 %i.bw, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.bx, %i.am            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.by, align 1, !noalias !73
  %i.bz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !75

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.m
  %.sroa.0.0.i5.i = phi i64 [ %i.bu, %bb.m ], [ %i.bn, %._crit_edge.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.i5.i
  %i.cc = lshr i64 %i.bg, 57
  %i.cd = trunc nuw nsw i64 %i.cc to i8           ; 2 uses
  %i.ce = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cf = and i64 %i.ce, %i.am
  store i8 %i.cd, ptr %i.cb, align 1
  %i.cg = getelementptr i8, ptr %i.ak, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i8 %i.cd, ptr %i.ch, align 1
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !71, !nonnull !5, !noundef !5
  %.neg.i.i = mul i64 %i.bb, -96
  %i.cj = getelementptr i8, ptr %i.ci, i64 %.neg.i.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 -96
  %.neg59.i.i = mul i64 %.sroa.0.0.i5.i, -96
  %i.cl = getelementptr i8, ptr %i.ak, i64 %.neg59.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 -96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cm, ptr noundef nonnull align 1 dereferenceable(96) %i.ck, i64 96, i1 false)
  %i.cn = icmp eq i64 %i.bc, 0
  br i1 %i.cn, label %._crit_edge.loopexit, label %.preheader

._crit_edge.loopexit:                             ; preds = %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.c, align 8, !alias.scope !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit
  %i.co = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECs914H3uZQmS2_9iox2_node.exit ] ; 2 uses
  %i.cp = sub i64 %.sroa.07.0.i.i, %i.co
  store i64 %i.cp, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  store i64 %i.co, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  call void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs914H3uZQmS2_9iox2_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !78 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !78 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !78, !noundef !5 ; 3 uses
  %i.cq = icmp eq i64 %.val3.i.i, 0
  br i1 %i.cq, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECs914H3uZQmS2_9iox2_node.exit, label %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !78
  %i.cr = add i64 %.val3.i.i, 1
  %i.cs = mul nuw i64 %.val.i.i, %i.cr            ; 2 uses
  %i.ct = add i64 %.val1.i.i, -1
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = icmp uge i64 %i.cu, %i.cs
  call void @llvm.assume(i1 %i.cv)
  %i.cw = sub i64 0, %.val1.i.i
end_hunk_0
