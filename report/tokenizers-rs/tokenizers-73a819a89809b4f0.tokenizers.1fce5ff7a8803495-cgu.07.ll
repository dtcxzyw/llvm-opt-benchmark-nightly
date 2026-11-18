Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers:bb.a
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1647
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1647
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1647
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !guid !1650 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1651
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1651
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1651
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !guid !1654 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1655
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1655
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1655
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model15UnigramIteratorENtNtNtB8_6traits8iterator8Iterator9size_hintB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 !guid !1658 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1659
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtNtCsgbNVBrIJ05E_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecTTTmmElEjEEEE6reduceCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1660 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  store ptr null, ptr %2, align 8
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB17_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB17_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB17_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.b, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !9
  store ptr null, ptr %i.g, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !9
  store i64 0, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB17_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !1661 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !18, !noundef !9 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i32 -1 release, align 4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = and i32 %i.d, -1073741825
  %or.cond.not = icmp eq i32 %i.e, -2147483648
  br i1 %or.cond.not, label %bb.b, label %bb.c, !prof !1662

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.b, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1V_3vec3VecB1R_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !1663 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !10, !noundef !9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8, !range !20, !noundef !9
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.h, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = atomicrmw add ptr %i.a, i32 -1073741823 release, align 4
  %i.j = add i32 %i.i, -1073741823                ; 2 uses
  %or.cond = icmp ult i32 %i.j, 1073741824
  br i1 %or.cond, label %bb.e, label %bb.f, !prof !1664

bb.e:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit, %bb.f
  ret void

bb.f:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.a, i32 noundef %i.j)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_18GraphemeIncompleteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !1665 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !1666, !noundef !9
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 9)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 13)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1677 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !9
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !20, !alias.scope !1678, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1678, !nonnull !9, !noundef !9 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1678, !noundef !9 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !1678 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1680, !noalias !1681, !noundef !9
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !1682, !noundef !9 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !1682, !noundef !9
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !1682, !noundef !9
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !1682, !noundef !9
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !1679
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !9
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !9 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !1680, !noalias !1683, !noundef !9
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !1684, !noundef !9 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !1684, !noundef !9
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.cj, -33
  br i1 %i.cs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ct = zext nneg i8 %i.cj to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cu = load i8, ptr %i.bq, align 1, !noalias !1684, !noundef !9
  %i.cv = shl nuw nsw i32 %i.cq, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cm, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cj, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.dc = load i8, ptr %i.bt, align 1, !noalias !1684, !noundef !9
  %i.dd = shl nuw nsw i32 %i.cm, 18
  %i.de = and i32 %i.dd, 1835008
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.dc, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.de
  br label %.loopexit.loopexit

.loopexit74:                                      ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa70 = phi i8 [ %.promoted26, %.split.i.i.peel ], [ %.promoted26, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa67 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dk = xor i8 %.lcssa70, 1
  store i8 %i.dk, ptr %i.g, align 8, !alias.scope !1678
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa67, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #29, !noalias !1683
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i ], [ %i.dj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ], [ %i.cr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i ], [ %i.ct, %bb.p ]
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %.loopexit

.loopexit75:                                      ; preds = %bb.d
  %i.dm = xor i8 %.promoted26, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !1678
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit75
  store i8 1, ptr %i.d, align 2, !alias.scope !1678
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa69 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !1678
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !1678
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit75
  %i.dn = phi i64 [ %.lcssa69, %.loopexit ], [ %i.k, %.loopexit75 ], [ %i.k, %.critedge ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %i.dp, align 8
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7: ; preds = %.preheader, %bb.q, %bb.r
  %storemerge = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.u, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7
  ret void

bb.t:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext true)
  br label %bb.s

bb.u:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext false)
  br label %bb.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_strNtNtB22_5impls10StrVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs5OnaahQymqO_6base646decode13decode_configReECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i24 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls10StrVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #17

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtB21_5chain5ChainIB1X_INtNtB21_9enumerate9EnumerateNtNtNtBT_3str4iter5CharsENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3N_16NormalizedString7prepend0EINtNtNtBR_7sources4once4OnceTciEEENCINvB3J_15transform_rangeINtNtNtBT_3ops5range5RangejEB2n_Es_0EEB3R_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #20

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtB21_5chain5ChainINtNtNtBR_7sources4once4OnceTciEEIB1X_NtNtNtBT_3str4iter5CharsNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3Q_16NormalizedString6append0EENCINvB3M_15transform_rangeINtNtNtBT_3ops5range9RangeFromjEB2n_Es_0EEB3U_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtBT_3str4iter5CharsENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4c_16NormalizedString15transform_rangeNtNtNtBT_3ops5range9RangeFullB2n_Es_0EEB4g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtBT_3str4iter5CharsENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4c_16NormalizedString15transform_rangeNtNtNtBT_3ops5range9RangeFullB2n_Es_0EEB4g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtNtB8_3vec9into_iter8IntoIterTciEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB38_16NormalizedString15transform_rangeNtNtNtBT_3ops5range9RangeFullINtB2s_3VecB2U_EEs_0EEB3c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtNtBR_7sources5empty5EmptyTciEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB35_16NormalizedString15transform_rangeNtNtNtBT_3ops5range9RangeFullB2n_Es_0EEB39_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapIB1X_NtNtNtBT_3str4iter5CharsNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString6appends_0ENCINvB2U_15transform_rangeNtNtNtBT_3ops5range9RangeFullB2n_Es_0EEB32_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTciEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1u_3str4iter5CharsNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2H_16NormalizedString3mapNCNvMs_NtNtB2L_11normalizers4bertNtB46_14BertNormalizer13do_clean_texts_0E0EE9from_iterB2L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTciEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1u_3str4iter5CharsNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2H_16NormalizedString3mapNCNvNtNtB2L_11normalizers7unicode6do_nmts_0E0EE9from_iterB2L_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterBT_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2N_16NormalizedString5sliceINtNtNtB1u_3ops5range5RangejEE0EE9from_iterB2R_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtB9_5utils4onig8SysRegexENtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitINtNtB3e_7pattern6InvertRNtNtNtB3g_5utils4onig8SysRegexEE0EE9from_iterB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitINtNtB2t_7pattern6InvertRNtNtNtB2v_5utils4onig8SysRegexEEs0_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitINtNtB2t_7pattern6InvertRNtNtNtB2v_5utils4onig8SysRegexEEs_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterTTjjEbEENCINvMs0_BZ_BX_5splitINtNtB11_7pattern6InvertRNtNtNtB13_5utils4onig8SysRegexEEs2_0EE9from_iterB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitINtNtB3e_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEE0EE9from_iterB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitINtNtB2t_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEEs0_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitINtNtB2t_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEEs_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterTTjjEbEENCINvMs0_BZ_BX_5splitINtNtB11_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEEs2_0EE9from_iterB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc10is_numericNtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitNvMNtNtB1T_4char7methodsc10is_numericE0EE9from_iterB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvMNtNtB1c_4char7methodsc10is_numericEs0_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvMNtNtB1c_4char7methodsc10is_numericEs_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterTTjjEbEENCINvMs0_BZ_BX_5splitNvMNtNtB2W_4char7methodsc10is_numericEs2_0EE9from_iterB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceNtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitNvMNtNtB1T_4char7methodsc13is_whitespaceE0EE9from_iterB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvMNtNtB1c_4char7methodsc13is_whitespaceEs0_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvMNtNtB1c_4char7methodsc13is_whitespaceEs_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterTTjjEbEENCINvMs0_BZ_BX_5splitNvMNtNtB2W_4char7methodsc13is_whitespaceEs2_0EE9from_iterB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvNtNtB9_14pre_tokenizers11punctuation7is_puncNtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitNvNtNtB3g_14pre_tokenizers11punctuation7is_puncE0EE9from_iterB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvNtNtB2v_14pre_tokenizers11punctuation7is_puncEs0_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvNtNtB2v_14pre_tokenizers11punctuation7is_puncEs_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterTTjjEbEENCINvMs0_BZ_BX_5splitNvNtNtB13_14pre_tokenizers11punctuation7is_puncEs2_0EE9from_iterB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvNtNtB9_14pre_tokenizers4bert12is_bert_puncNtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitNvNtNtB3g_14pre_tokenizers4bert12is_bert_puncE0EE9from_iterB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvNtNtB2v_14pre_tokenizers4bert12is_bert_puncEs0_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitNvNtNtB2v_14pre_tokenizers4bert12is_bert_puncEs_0EB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef dereferenceable(1)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1473 = !{!1397}
!1474 = !{!1399, !1397}
!1475 = !{!1393, !1391, !1385}
!1476 = !{i8 -1, i8 16}
!1477 = !{!1402, !1400, !1393, !1394, !1391, !1385, !1397}
!1478 = !{!"branch_weights", i32 2000, i32 2000}
!1479 = !{!1404, !1397}
!1480 = !{!1406}
!1481 = !{!1407}
!1482 = !{i8 0, i8 7}
!1483 = !{!1406, !1393, !1391, !1385}
!1484 = !{!1409, !1407, !1394}
!1485 = !{!1407, !1394}
!1486 = !{!1411, !1397}
!1487 = !{!"branch_weights", i32 2000, i32 2000, i32 2000, i32 2000}
!1488 = !{!1413, !1407, !1394}
!1489 = !{!1415, !1397}
!1490 = !{!"branch_weights", !"expected", i32 3130185, i32 2144353463}
!1491 = !{!1417, !1407, !1394}
!1492 = !{!1419, !1407, !1394}
!1493 = !{!1421}
!1494 = !{!1422}
!1495 = !{!1421, !1385}
!1496 = !{!1423, !1400}
!1497 = !{!1425, !1423, !1400, !1397}
!1498 = !{!1427, !1421, !1422, !1423, !1400, !1385, !1397}
!1499 = !{!1429, !1407, !1394}
!1500 = !{!1431}
!1501 = !{!1432}
!1502 = !{!1431, !1385}
!1503 = !{!1434, !1423, !1400, !1397}
!1504 = !{!1436}
!1505 = !{!1438, !1423, !1400, !1397}
!1506 = !{!1440, !1423, !1400, !1397}
!1507 = !{!1442, !1391, !1385, !1397}
!1508 = !{!1391, !1385}
!1509 = !{!1444}
!1510 = !{!1448, !1446}
!1511 = !{!1452, !1450, !1397}
!1512 = !{!1454, !1448, !1446}
!1513 = !{!1456}
!1514 = !{!1458, !1457, !1397}
!1515 = !{!1460, !1385}
!1516 = !{!1462, !1385}
!1517 = !{!1464, !1462, !1385}
!1518 = !{i64 -7106988122510245968}
!1519 = !{i64 5967387432341570632}
!1520 = !{i64 4168013165214370329}
!1521 = !{i64 5928395794220593879}
!1522 = distinct !{!1522, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2JiOgHzbbc7_10tokenizers"}
!1523 = distinct !{!1523, !1522, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1524 = distinct !{!1524, !1522, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1525 = distinct !{!1525, !31}
!1526 = !{i64 -3964196041678739653}
!1527 = !{!1524, !1523}
!1528 = !{i64 -5692310933697724408}
!1529 = distinct !{!1529, i1 true, !"_RNvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hint"}
!1530 = distinct !{!1530, !1529, !"_RNvXs7_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hint: argument 0"}
!1531 = distinct !{!1531, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers"}
!1532 = distinct !{!1532, !1531, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1533 = !{i64 -3584828583797981677}
!1534 = !{!1532, !1530}
!1535 = !{i64 -749615203688870782}
!1536 = !{i64 2834864204361692354}
!1537 = !{i64 5165814627783881173}
!1538 = !{i64 6574855957132410104}
!1539 = distinct !{!1539, i1 true, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtNtBO_4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBO_3ops9try_traitINtB2j_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1o_8for_each4callBJ_INvNtBO_3mem4dropBJ_EE0E0B2E_ECs2JiOgHzbbc7_10tokenizers"}
!1540 = distinct !{!1540, !1539, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtNtBO_4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBO_3ops9try_traitINtB2j_17NeverShortCircuituE10wrap_mut_2uBJ_NCINvNvB1o_8for_each4callBJ_INvNtBO_3mem4dropBJ_EE0E0B2E_ECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1541 = distinct !{!1541, i1 true, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtNtBT_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers"}
!1542 = distinct !{!1542, !1541, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtNtBT_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1543 = !{i64 2528578244736845785}
!1544 = !{!1542, !1540}
!1545 = !{i64 0, i64 3}
!1546 = distinct !{!1546, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitINtNtBa_7pattern6InvertRNtNtNtBc_5utils4onig8SysRegexEEs2_0Bc_"}
!1547 = distinct !{!1547, !1546, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitINtNtBa_7pattern6InvertRNtNtNtBc_5utils4onig8SysRegexEEs2_0Bc_: argument 0"}
!1548 = distinct !{!1548, !1546, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitINtNtBa_7pattern6InvertRNtNtNtBc_5utils4onig8SysRegexEEs2_0Bc_: argument 1"}
!1549 = !{i64 -1258455693697954593}
!1550 = !{!1547}
!1551 = !{!1547, !1548}
!1552 = !{!1548}
!1553 = distinct !{!1553, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitINtNtBa_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEEs2_0Bc_"}
!1554 = distinct !{!1554, !1553, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitINtNtBa_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEEs2_0Bc_: argument 0"}
!1555 = distinct !{!1555, !1553, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitINtNtBa_7pattern6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexEEs2_0Bc_: argument 1"}
!1556 = !{i64 7265851482205438859}
!1557 = !{!1554}
!1558 = !{!1554, !1555}
!1559 = !{!1555}
!1560 = distinct !{!1560, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc10is_numericEs2_0Bc_"}
!1561 = distinct !{!1561, !1560, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc10is_numericEs2_0Bc_: argument 0"}
!1562 = distinct !{!1562, !1560, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc10is_numericEs2_0Bc_: argument 1"}
!1563 = !{i64 3124451135679882575}
!1564 = !{!1561}
!1565 = !{!1561, !1562}
!1566 = !{!1562}
!1567 = distinct !{!1567, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceEs2_0Bc_"}
!1568 = distinct !{!1568, !1567, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceEs2_0Bc_: argument 0"}
!1569 = distinct !{!1569, !1567, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceEs2_0Bc_: argument 1"}
!1570 = !{i64 8575563845635009248}
!1571 = !{!1568}
!1572 = !{!1568, !1569}
!1573 = !{!1569}
!1574 = distinct !{!1574, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvNtNtBc_14pre_tokenizers11punctuation7is_puncEs2_0Bc_"}
!1575 = distinct !{!1575, !1574, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvNtNtBc_14pre_tokenizers11punctuation7is_puncEs2_0Bc_: argument 0"}
!1576 = distinct !{!1576, !1574, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvNtNtBc_14pre_tokenizers11punctuation7is_puncEs2_0Bc_: argument 1"}
!1577 = !{i64 -1826598166940148123}
!1578 = !{!1575}
!1579 = !{!1575, !1576}
!1580 = !{!1576}
!1581 = distinct !{!1581, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvNtNtBc_14pre_tokenizers4bert12is_bert_puncEs2_0Bc_"}
!1582 = distinct !{!1582, !1581, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvNtNtBc_14pre_tokenizers4bert12is_bert_puncEs2_0Bc_: argument 0"}
!1583 = distinct !{!1583, !1581, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitNvNtNtBc_14pre_tokenizers4bert12is_bert_puncEs2_0Bc_: argument 1"}
!1584 = !{i64 8388595286072064267}
!1585 = !{!1582}
!1586 = !{!1582, !1583}
!1587 = !{!1583}
!1588 = distinct !{!1588, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitRNtNtNtBc_5utils4onig8SysRegexEs2_0Bc_"}
!1589 = distinct !{!1589, !1588, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitRNtNtNtBc_5utils4onig8SysRegexEs2_0Bc_: argument 0"}
!1590 = distinct !{!1590, !1588, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitRNtNtNtBc_5utils4onig8SysRegexEs2_0Bc_: argument 1"}
!1591 = !{i64 7240713834586281119}
!1592 = !{!1589}
!1593 = !{!1589, !1590}
!1594 = !{!1590}
!1595 = distinct !{!1595, i1 true, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitcEs2_0Bc_"}
!1596 = distinct !{!1596, !1595, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitcEs2_0Bc_: argument 0"}
!1597 = distinct !{!1597, !1595, !"_RNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB8_16NormalizedString5splitcEs2_0Bc_: argument 1"}
!1598 = !{i64 -749880140927015727}
!1599 = !{!1596}
!1600 = !{!1596, !1597}
!1601 = !{!1597}
!1602 = distinct !{!1602, i1 true, !"_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips0_0Bb_"}
!1603 = distinct !{!1603, !1602, !"_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips0_0Bb_: argument 0"}
!1604 = !{i64 -3968007307622879334}
!1605 = !{!1603}
!1606 = distinct !{!1606, i1 true, !"_RNCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3ctcNtB7_3CTCNtNtBb_9tokenizer7Decoder12decode_chain0Bb_"}
!1607 = distinct !{!1607, !1606, !"_RNCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3ctcNtB7_3CTCNtNtBb_9tokenizer7Decoder12decode_chain0Bb_: argument 0"}
!1608 = distinct !{!1608, !1606, !"_RNCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3ctcNtB7_3CTCNtNtBb_9tokenizer7Decoder12decode_chain0Bb_: argument 1"}
!1609 = !{i64 712828394403417751}
!1610 = !{!1607}
!1611 = !{!1608}
!1612 = !{!1607, !1608}
!1613 = distinct !{!1613, i1 true, !"_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedStringINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from"}
!1614 = distinct !{!1614, !1613, !"_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedStringINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from: argument 0"}
!1615 = distinct !{!1615, !1613, !"_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedStringINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from: argument 1"}
!1616 = !{i64 3351236554172079514}
!1617 = !{!1614}
!1618 = !{!1615}
!1619 = !{!1614, !1615}
!1620 = !{i64 1693586942630816546}
!1621 = distinct !{!1621, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!1622 = distinct !{!1622, !1621, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!1623 = !{i64 -5911303944253336615}
!1624 = !{!1622}
!1625 = distinct !{!1625, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!1626 = distinct !{!1626, !1625, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!1627 = distinct !{!1627, !1625, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!1628 = distinct !{!1628, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers"}
!1629 = distinct !{!1629, !1628, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1630 = !{i64 4634658007438946611}
!1631 = !{!1626}
!1632 = !{!1629, !1627}
!1633 = !{i64 -3180041120299369472}
!1634 = !{i64 1451350281565280606}
!1635 = !{i64 2185392519971873364}
!1636 = !{i64 2903116163881982349}
!1637 = !{i64 8330653583029144651}
!1638 = !{i64 4778912617139452728}
!1639 = !{i64 5986509451778605044}
!1640 = !{i64 -4623960405555947172}
!1641 = !{i64 -7305166174619406012}
!1642 = !{i64 -7770700144178900104}
!1643 = !{i8 0, i8 5}
!1644 = distinct !{!1644, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers"}
!1645 = distinct !{!1645, !1644, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1646 = !{i64 -4809473389587615819}
!1647 = !{!1645}
!1648 = distinct !{!1648, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTjjEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers"}
!1649 = distinct !{!1649, !1648, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterTjjEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1650 = !{i64 -9070230123505655938}
!1651 = !{!1649}
!1652 = distinct !{!1652, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers"}
!1653 = distinct !{!1653, !1652, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1654 = !{i64 8523926145272312305}
!1655 = !{!1653}
!1656 = distinct !{!1656, i1 true, !"_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model15UnigramIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBa_"}
!1657 = distinct !{!1657, !1656, !"_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model15UnigramIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBa_: argument 0"}
!1658 = !{i64 -8008367836398303951}
!1659 = !{!1657}
!1660 = !{i64 -8772880826446986901}
!1661 = !{i64 6405136467487316403}
!1662 = !{!"branch_weights", i32 1, i32 4001}
!1663 = !{i64 -6675892315874422655}
!1664 = !{!"branch_weights", i32 4000000, i32 4001}
!1665 = !{i64 9162986645134398903}
!1666 = !{i64 0, i64 4}
!1667 = distinct !{!1667, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1668 = distinct !{!1668, !1667, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!1669 = distinct !{!1669, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1670 = distinct !{!1670, !1669, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!1671 = distinct !{!1671, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1672 = distinct !{!1672, !1671, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1673 = distinct !{!1673, !1669, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!1674 = distinct !{!1674, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers"}
!1675 = distinct !{!1675, !1674, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1676 = distinct !{!1676, !1667, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!1677 = !{i64 -5345033832619196875}
!1678 = !{!1668}
!1679 = !{!1670}
!1680 = !{!1672}
!1681 = !{!1673, !1670}
!1682 = !{!1675, !1673, !1670}
!1683 = !{!1676, !1668}
!1684 = !{!1675, !1676, !1668}
end_hunk_1
