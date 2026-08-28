Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs8_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp:bb.a
  %.sroa.3.0.i5 = phi i64 [ %i.q, %bb.f ], [ %i.t, %bb.i ] ; 2 uses
  %.sroa.0.0.i6 = phi ptr [ %i.o, %bb.f ], [ %i.v, %bb.i ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i, i64 %.sroa.3.0.i5)
  %i.w = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i, ptr nonnull %.sroa.0.0.i6, i64 %spec.store.select) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.sroa.3.0.i, %.sroa.3.0.i5
  %spec.select = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  ret i8 %i.aa
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs9_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.a = load i8, ptr %0, align 8, !range !169, !alias.scope !535, !noalias !530, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !535, !noalias !530, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !535, !noalias !530, !noundef !5
  br label %_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !535, !noalias !530, !noundef !5 ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = icmp ult i8 %i.h, 13
  br i1 %i.j, label %bb.e, label %bb.d, !prof !170

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #36, !noalias !536
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit.i

_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit.i: ; preds = %bb.e, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.e ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.l = load i8, ptr %1, align 8, !range !169, !alias.scope !540, !noalias !527, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !540, !noalias !527, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !540, !noalias !527, !noundef !5
  br label %_RNvXs8_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

bb.g:                                             ; preds = %_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !540, !noalias !527, !noundef !5 ; 2 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = icmp ult i8 %i.s, 13
  br i1 %i.u, label %bb.i, label %bb.h, !prof !170

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #36, !noalias !541
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %_RNvXs8_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

_RNvXs8_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit: ; preds = %bb.f, %bb.i
  %.sroa.3.0.i5.i = phi i64 [ %i.q, %bb.f ], [ %i.t, %bb.i ] ; 2 uses
  %.sroa.0.0.i6.i = phi ptr [ %i.o, %bb.f ], [ %i.v, %bb.i ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i, i64 %.sroa.3.0.i5.i)
  %i.w = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i6.i, i64 %spec.store.select.i) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.sroa.3.0.i.i, %.sroa.3.0.i5.i
  %spec.select.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  ret i8 %i.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB4_7PicoStrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !240, !noundef !5
  call void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.c = load i8, ptr %i.a, align 8, !range !169, !alias.scope !542, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !542, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !542, !noundef !5
  br label %_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !542, !noundef !5 ; 2 uses
  %i.k = zext i8 %i.j to i64                      ; 2 uses
  %i.l = icmp ult i8 %i.j, 13
  br i1 %i.l, label %bb.e, label %bb.d, !prof !170

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #36, !noalias !542
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit

_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str.exit: ; preds = %bb.b, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.h, %bb.b ], [ %i.k, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.e ]
  %i.n = call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvXs_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB4_6BitSetNtNtCs3oUPovFnLWP_4core7default7Default7default() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  ret i64 ptrtoint (ptr @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER to i64)
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1v_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB1w_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB5_8HashLockNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 16 %1) unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef i128 %i.a(ptr noundef nonnull align 16 %1), !inline_history !545
  store i128 %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNCNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 9), (16, 72)) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !alias.scope !546
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 9, i1 false), !alias.scope !546
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !546
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !546
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !549
  store ptr @7, ptr %i.h, align 8, !noalias !549, !captures !336
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 6, ptr %i.i, align 8, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !549
  call void @_RNvMCs8SJOCDJuMgL_6semverNtB2_7Version5parse(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 6), !noalias !549
  %i.j = load ptr, ptr %i.g, align 8, !noalias !549, !noundef !5
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !549
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !549
  store i64 %i.m, ptr %i.e, align 8, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !549
  store ptr %i.h, ptr %i.d, align 8, !noalias !549
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs6xpQEr8gLsQ_11typst_utils, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !549
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.n, align 8, !noalias !549
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1_NtCs8SJOCDJuMgL_6semver5errorNtNtB7_5parse5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !549
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #36, !noalias !549
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !549
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !549, !noundef !5 ; 2 uses
  %i.q = icmp ugt i64 %i.p, 4294967295
  %i.r = shl nuw i64 %i.p, 32
  %.sroa.017.0.insert.insert.i = select i1 %i.q, i64 513, i64 %i.r ; 2 uses
  %i.s = trunc i64 %.sroa.017.0.insert.insert.i to i1
  br i1 %i.s, label %bb.d, label %bb.f, !prof !4

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.i, %bb.g, %bb.d
  %.sink.i = phi ptr [ %i.c, %bb.i ], [ %i.b, %bb.g ], [ %i.a, %bb.d ] ; 2 uses
  %i.t = phi ptr [ @12, %bb.i ], [ @11, %bb.g ], [ @10, %bb.d ]
  store i8 2, ptr %.sink.i, align 1, !noalias !549
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %.sink.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #36
          to label %.cont.i unwind label %bb.e, !noalias !549

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8SJOCDJuMgL_6semver7VersionECs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #37
          to label %common.resume.i unwind label %bb.m, !noalias !549

bb.f:                                             ; preds = %bb.c
  %.sroa.6.0.extract.shift.i40.i = lshr i64 %.sroa.017.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i41.i = trunc nuw i64 %.sroa.6.0.extract.shift.i40.i to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noalias !549, !noundef !5 ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4294967295
  %i.y = shl nuw i64 %i.w, 32
  %.sroa.024.0.insert.insert.i = select i1 %i.x, i64 513, i64 %i.y ; 2 uses
  %i.z = trunc i64 %.sroa.024.0.insert.insert.i to i1
  br i1 %i.z, label %bb.g, label %bb.h, !prof !4

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !555
  br label %.invoke.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !549, !noundef !5 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 4294967295
  %i.ad = shl nuw i64 %i.ab, 32
  %.sroa.028.0.insert.insert.i = select i1 %i.ac, i64 513, i64 %i.ad ; 2 uses
  %i.ae = trunc i64 %.sroa.028.0.insert.insert.i to i1
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !558
  br label %.invoke.i

bb.j:                                             ; preds = %bb.h
  %.sroa.6.0.extract.shift.i34.i = lshr i64 %.sroa.024.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i35.i = trunc nuw i64 %.sroa.6.0.extract.shift.i34.i to i32
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.028.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.6.0.extract.trunc.i41.i, ptr %i.af, align 8, !alias.scope !549
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.6.0.extract.trunc.i35.i, ptr %i.ag, align 4, !alias.scope !549
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %i.ah, align 8, !alias.scope !549
  store ptr @7, ptr %0, align 8, !alias.scope !549
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.ai, align 8, !alias.scope !549
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @8, ptr %i.aj, align 8, !alias.scope !549
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 40, ptr %i.ak, align 8, !alias.scope !549
  invoke void @_RNvXs0_NtCs8SJOCDJuMgL_6semver10identifierNtB5_10IdentifierNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RNCNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE0B7_.exit unwind label %bb.k, !noalias !549

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs0_NtCs8SJOCDJuMgL_6semver10identifierNtB5_10IdentifierNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %common.resume.i unwind label %bb.l, !noalias !549

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !549
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.u, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !549
  unreachable

_RNCNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE0B7_.exit: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXs0_NtCs8SJOCDJuMgL_6semver10identifierNtB5_10IdentifierNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !549
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #18

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: nonlazybind uwtable
end_hunk_0
