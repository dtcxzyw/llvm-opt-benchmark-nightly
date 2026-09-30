Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.14?download=true
inline.NumInlined: 445
inline.NumDeleted: 152
begin_hunk_0_@_RINvMCsdvWMnWvV8Jx_8clap_lexNtB3_7RawArgs6insertRNtNtCsexYYUdYSQU6_5alloc6string6StringABK_j1_ECs3WYoaQ2jqaU_5wasmi:bb.a
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.m, %.backedge.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val8.i = load i64, ptr %i.j, align 8, !noalias !31, !noundef !5
  %i.k = icmp eq i64 %.val8.i, %3
  br i1 %i.k, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %.backedge.i

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.g, align 8, !noalias !31, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %2, i64 %3), !alias.scope !32, !noalias !31
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.l, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.m = add nuw nsw i64 %i.h, 1
  %i.n = icmp eq ptr %i.i, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util2id2IdE6removeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCs2C93r1qUspC_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %bb.b
  %.sink15 = phi i64 [ 8, %bb.b ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.q, %bb.b ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.018, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE6removeB11_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !41, !noalias !43, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !41, !noalias !43, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.val1.i.i.i.i.i = load i128, ptr %2, align 8, !alias.scope !42, !noalias !44
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.j = add i64 %i.m, 1
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.m = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %.val7.i.i = load i128, ptr %i.l, align 8, !noalias !45
  %i.n = icmp eq i128 %.val7.i.i, %.val1.i.i.i.i.i
  br i1 %i.n, label %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit, label %bb.b

_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %.lr.ph
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value10AnyValueIdE6removeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueE6removeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  %.sroa.4.0.copyload2 = load ptr, ptr %i.p, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.4.0.copyload2, null
  br i1 %.not, label %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit.thread

_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit.thread: ; preds = %bb.b, %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit, %bb.a, %bb.c
  %storemerge = phi ptr [ %.sroa.4.0.copyload2, %bb.c ], [ null, %bb.a ], [ null, %_RINvMNtNtCs2C93r1qUspC_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE12remove_entryB11_ECs3WYoaQ2jqaU_5wasmi.exit ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMNtNtCsefoF4u9kbII_5wasmi6memory4dataNtB3_11DataSegment10new_activeINtNtNtB7_5store7context15StoreContextMutNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(1688) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18alloc_data_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noundef null, i64 undef)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMNtNtCsefoF4u9kbII_5wasmi6memory4dataNtB3_11DataSegment11new_passiveINtNtNtB7_5store7context15StoreContextMutNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18alloc_data_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noundef nonnull %1, i64 %2)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxE4callQINtNtB8_5store5StoreBV_EECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %2, double %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !46, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = call noundef align 8 ptr %i.m(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRINtNtB8_5store5StoreNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1688) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %3 = shl nuw nsw i64 %i.b, 4
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRRQINtNtB8_5store5StoreNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %3 = shl nuw nsw i64 %i.b, 4
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func4callNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxINtNtNtB8_5store7context15StoreContextMutBM_EECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0), !noalias !65 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noalias !65, !noundef !5
  %6 = shl nuw nsw i64 %i.e, 4
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 %6
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  store ptr %2, ptr %i.b, align 8, !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.f, align 8, !noalias !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.g, align 8, !noalias !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %5, ptr %i.h, align 8, !noalias !66
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !64, !noalias !67, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = call noundef range(i8 -1, 5) i8 @_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66
  %.not = icmp eq i8 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1
  store i8 18, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val11 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.o = atomicrmw add ptr %.val11, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !68
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.c
  store ptr %.val11, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.u = invoke noundef align 8 ptr @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine8executorNtB5_11EngineInner12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB7_5value3ValQB1V_ECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5)
          to label %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.e

_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.g
  %i.v = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !69
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14

bb.h:                                             ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14: ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14 ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func4callNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxQINtNtB8_5store5StoreBM_EECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0), !noalias !88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noalias !88, !noundef !5
  %6 = shl nuw nsw i64 %i.e, 4
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 %6
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  store ptr %2, ptr %i.b, align 8, !noalias !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.f, align 8, !noalias !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.g, align 8, !noalias !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %5, ptr %i.h, align 8, !noalias !89
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !87, !noalias !90, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = call noundef range(i8 -1, 5) i8 @_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  %.not = icmp eq i8 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1
  store i8 18, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val11 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.o = atomicrmw add ptr %.val11, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !91
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.c
  store ptr %.val11, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.u = invoke noundef align 8 ptr @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine8executorNtB5_11EngineInner12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB7_5value3ValQB1V_ECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5)
          to label %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.e

_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.g
  %i.v = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !92
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14

bb.h:                                             ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14: ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxRSNtNtB8_5value3ValQB1H_ECs3WYoaQ2jqaU_5wasmi.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit14 ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func4wrapNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxTINtNtB6_6caller6CallerBM_EEINtNtCskKLDkoKarTP_4core6result6ResultlNtNtB8_5error5ErrorEQQINtNtB8_5store5StoreBM_ENCINvNtNtNtNtCs9z5p9SYCPgI_10wasmi_wasi4sync9snapshots9preview_17wrapped11sched_yieldBM_BM_NCNvMNtCs3WYoaQ2jqaU_5wasmi7contextNtB4Q_7Context3news1_0E0EB4S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCsefoF4u9kbII_5wasmi4func9into_funcNCINvNtNtNtNtCs9z5p9SYCPgI_10wasmi_wasi4sync9snapshots9preview_17wrapped11sched_yieldNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxB25_NCNvMNtCs3WYoaQ2jqaU_5wasmi7contextNtB2V_7Context3news1_0E0INtB5_8IntoFuncB25_TINtNtB7_6caller6CallerB25_EEINtNtCskKLDkoKarTP_4core6result6ResultlNtNtB9_5error5ErrorEE9into_funcB2X_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %i.k = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.m = invoke { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxE16alloc_trampolineCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %.val.i, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = extractvalue { i64, i32 } %i.m, 1
  %i.o = extractvalue { i64, i32 } %i.m, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 224
  invoke void @_RNvMs0_NtCsefoF4u9kbII_5wasmi4funcNtB5_14HostFuncEntity3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, i64 noundef %i.o, i32 noundef %i.n)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.r = invoke { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner10alloc_func(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %.val.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.s = load i8, ptr %i.d, align 8, !range !8, !alias.scope !121, !noundef !5
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !124, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !124
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.z = load ptr, ptr %i.i, align 8, !alias.scope !128, !nonnull !5, !noundef !5
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !129
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2X_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4T_4SyncEL_E9drop_slowCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #18
          to label %common.resume unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !133, !nonnull !5, !noundef !5
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !134
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi.exit

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2X_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4T_4SyncEL_E9drop_slowCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi.exit

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %i.ag, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityNtNtCsi0TlgjRRUlD_11wasi_common3ctx7WasiCtxEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { i32, i32 } %i.r

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
