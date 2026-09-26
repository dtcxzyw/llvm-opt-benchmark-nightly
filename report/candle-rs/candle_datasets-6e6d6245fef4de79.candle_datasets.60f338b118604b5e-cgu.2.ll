Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_datasets-6e6d6245fef4de79.candle_datasets.60f338b118604b5e-cgu.2?download=true
inline.NumInlined: 332
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs0_NtNtCsVG4f6i5f9f_4rand3seq5sliceSjNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets:bb.a
  store i32 %i.y, ptr %i.f, align 8, !alias.scope !955
  %i.as = icmp samesign ugt i64 %2, %.sroa.0.0.i
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.04.017 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.0.i ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.at, align 8
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.av, ptr %i.at, align 8
  store i64 %.sroa.06.0.copyload, ptr %i.au, align 8
  %exitcond22.not = icmp eq i64 %i.x, %2
  br i1 %exitcond22.not, label %._crit_edge, label %.lr.ph18

bb.l:                                             ; preds = %_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs2_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCs8k3UfHgJ3Xe_15candle_datasets(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %0, 0
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !958
  %i.b = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !958 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = ptrtoint ptr %i.b to i64
  br label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8k3UfHgJ3Xe_15candle_datasets.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %0) #25
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.d, %bb.b
  %.sroa.9.0 = phi i64 [ %i.d, %bb.d ], [ 1, %bb.b ]
  %i.e = inttoptr i64 %.sroa.9.0 to ptr
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %0, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !13
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.k = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !13
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit() unnamed_addr #5 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !959

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !970, !noalias !971, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !970, !noalias !971, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !970, !noalias !971, !noundef !4 ; 2 uses
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %.val1.i) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.d ; 2 uses
  %i.f = sub nuw nsw i64 %.val1.i, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.d, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs8k3UfHgJ3Xe_15candle_datasets.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %bb.a
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs8k3UfHgJ3Xe_15candle_datasets.exit.i

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs8k3UfHgJ3Xe_15candle_datasets.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.e, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !973, !noalias !974
  br label %bb.c

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs8k3UfHgJ3Xe_15candle_datasets.exit.i
  %i.i = load i8, ptr %i.e, align 1, !noalias !975, !noundef !4
  store i8 %i.i, ptr %1, align 1, !alias.scope !972, !noalias !976
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs8k3UfHgJ3Xe_15candle_datasets.exit.i
  %i.j = add i64 %i.c, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i64 [ %i.j, %bb.c ], [ %.val1.i, %bb.a ]
  %.sroa.0.0.i6 = phi ptr [ null, %bb.c ], [ @13, %bb.a ]
  store i64 %storemerge, ptr %i.b, align 8
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12column_index19ColumnIndexMetaDataEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCshigRrDowciq_6float86F8E4M3ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !10, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !noalias !980, !nonnull !4
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28, !inline_history !979
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsf3Ta7LF998c_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !987, !noalias !988, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %.split10, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit

.split:                                           ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.e, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9, label %bb.c

.split10:                                         ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9, label %bb.c

_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9, label %bb.c

bb.c:                                             ; preds = %.split10, %.split, %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit
  %i.h = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !4, !nonnull !4
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2) #28
  br i1 %i.m, label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !alias.scope !989, !noalias !990, !noundef !4 ; 2 uses
  %i.p = and i32 %i.o, 33554432
  %.not.i6 = icmp eq i32 %i.p, 0
  br i1 %.not.i6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %i.o, 67108864
  %.not1.i8 = icmp eq i32 %i.q, 0
  br i1 %.not1.i8, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9

bb.h:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9

_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit9: ; preds = %bb.h, %bb.g, %bb.f, %.split10, %.split, %bb.c, %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ true, %_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt.exit ], [ true, %.split10 ], [ true, %.split ], [ %i.r, %bb.f ], [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapeTjENtB5_16ShapeWithOneHole10into_shapeCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsE_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapeTjjENtB5_16ShapeWithOneHole10into_shapeCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsF_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjjEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i64 noundef %2)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapeTjjjjENtB5_16ShapeWithOneHole10into_shapeCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsH_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromTjjjjEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_16ShapeWithOneHole10into_shapeCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromjE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYTjjjjENtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.23 = alloca [48 x i8], align 8           ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 8 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %i.l = alloca [80 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1004
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !1005
  %i.n = load i64, ptr %i.d, align 8, !range !1006, !noalias !1004, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1004 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.17.16.copyload = load ptr, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !1007
  %.sroa.22.16..sroa.544.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.22.16.copyload = load i64, ptr %.sroa.22.16..sroa.544.0..sroa_idx.i.sroa_idx, align 8, !noalias !1007
  %.sroa.23.16..sroa.544.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.16..sroa.544.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1004
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1004
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !1005
  %i.r = load i64, ptr %i.c, align 8, !range !1006, !noalias !1004, !noundef !4 ; 2 uses
  %.not75.i = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !1004 ; 2 uses
  br i1 %.not75.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.17.16.copyload31 = load ptr, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !1007
  %.sroa.22.16..sroa.553.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.22.16.copyload35 = load i64, ptr %.sroa.22.16..sroa.553.0..sroa_idx.i.sroa_idx, align 8, !noalias !1007
  %.sroa.23.16..sroa.553.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.16..sroa.553.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1004
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1004
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !1005
  %i.v = load i64, ptr %i.b, align 8, !range !1006, !noalias !1004, !noundef !4 ; 2 uses
  %.not76.i = icmp eq i64 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !1004 ; 2 uses
  br i1 %.not76.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.17.16.copyload32 = load ptr, ptr %.sroa.562.0..sroa_idx.i, align 8, !noalias !1007
  %.sroa.22.16..sroa.562.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.22.16.copyload36 = load i64, ptr %.sroa.22.16..sroa.562.0..sroa_idx.i.sroa_idx, align 8, !noalias !1007
  %.sroa.23.16..sroa.562.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.16..sroa.562.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1004
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1004
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !1005
  %i.z = load i64, ptr %i.a, align 8, !range !1006, !noalias !1004, !noundef !4 ; 2 uses
  %.not77.i = icmp eq i64 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1004 ; 7 uses
  br i1 %.not77.i, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.17.16.copyload33 = load ptr, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !1007
  %.sroa.22.16..sroa.571.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.22.16.copyload37 = load i64, ptr %.sroa.22.16..sroa.571.0..sroa_idx.i.sroa_idx, align 8, !noalias !1007
  %.sroa.23.16..sroa.571.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.16..sroa.571.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1004
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %.sroa.22.0.ph = phi i64 [ %.sroa.22.16.copyload, %bb.b ], [ %.sroa.22.16.copyload35, %bb.d ], [ %.sroa.22.16.copyload36, %bb.f ], [ %.sroa.22.16.copyload37, %bb.h ]
  %.sroa.17.0.ph = phi ptr [ %.sroa.17.16.copyload, %bb.b ], [ %.sroa.17.16.copyload31, %bb.d ], [ %.sroa.17.16.copyload32, %bb.f ], [ %.sroa.17.16.copyload33, %bb.h ]
  %.sroa.10.0.ph = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.d ], [ %i.x, %bb.f ], [ %i.ab, %bb.h ]
  %.sroa.0.0.ph = phi i64 [ %i.n, %bb.b ], [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %i.z, %bb.h ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.ph, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.17.0.ph, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.22.0.ph, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23, i64 48, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.j:                                             ; preds = %bb.x, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.bb, %bb.x ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #22
          to label %common.resume unwind label %bb.aa

bb.k:                                             ; preds = %bb.y, %bb.p, %bb.o, %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.i, %bb.u, %bb.v, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1004
  %i.ae = tail call fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit() #28 ; 6 uses
  store i64 %i.p, ptr %i.ae, align 8, !noalias !1005
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.af, align 8, !noalias !1005
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store i64 %i.x, ptr %i.ag, align 8, !noalias !1005
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.ab, ptr %i.ah, align 8, !noalias !1005
  store i64 4, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 4, ptr %.sroa.552.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 5 uses
  %i.ak = icmp ult i64 %i.aj, 1152921504606846976
  %5 = load i64, ptr %i.ae, align 8, !noundef !4  ; 5 uses
  tail call void @llvm.assume(i1 %i.ak)
  %.not24 = icmp ult i64 %5, %i.aj
  br i1 %.not24, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %6 = load i64, ptr %i.af, align 8, !noundef !4  ; 5 uses
  %i.al = icmp eq i64 %5, %6
  br i1 %i.al, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1: ; preds = %bb.m
  %.not24.1 = icmp ult i64 %6, %i.aj
  br i1 %.not24.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1
  %7 = load i64, ptr %i.ag, align 8, !noundef !4  ; 5 uses
  %i.am = icmp eq i64 %5, %7
  %i.an = icmp eq i64 %6, %7
  %or.cond = or i1 %i.am, %i.an
  br i1 %or.cond, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2: ; preds = %bb.n
  %.not24.2 = icmp ult i64 %7, %i.aj
  br i1 %.not24.2, label %.preheader.preheader.3, label %bb.o

.preheader.preheader.3:                           ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2
  %i.ao = icmp eq i64 %5, %i.ab
  %i.ap = icmp eq i64 %6, %i.ab
  %or.cond96 = or i1 %i.ao, %i.ap
  %i.aq = icmp eq i64 %7, %i.ab
  %or.cond97 = or i1 %or.cond96, %i.aq
  br i1 %or.cond97, label %.loopexit, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3: ; preds = %.preheader.preheader.3
  %.not24.3 = icmp ult i64 %i.ab, %i.aj
  br i1 %.not24.3, label %bb.l, label %bb.o

.loopexit:                                        ; preds = %bb.m, %bb.n, %.preheader.preheader.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.w unwind label %bb.k

bb.o:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %.lcssa83 = phi i64 [ %5, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit ], [ %6, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.1 ], [ %7, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.2 ], [ %i.ab, %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.as = trunc i64 %.lcssa83 to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %3, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %4, ptr %i.av, align 8
  store i64 -9223372036854775805, ptr %i.g, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %bb.q unwind label %bb.k

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r

bb.r:                                             ; preds = %bb.z, %bb.q
  %.sink = phi ptr [ %i.l, %bb.z ], [ %i.h, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sink, i64 80, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.m, align 8, !range !8, !alias.scope !1008, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i, 0
  br i1 %i.ax, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1009, !nonnull !4, !noundef !4
  %i.ay = shl nuw i64 %.val2.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1010
  br label %common.resume

bb.u:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.m, align 8, !range !8, !alias.scope !1008, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %.val.i, 0
  br i1 %i.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1009, !nonnull !4, !noundef !4
  %i.ba = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1011
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit

common.resume:                                    ; preds = %bb.j, %bb.s, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %i.aw, %bb.t ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #22
          to label %bb.j unwind label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %3, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %4, ptr %i.bf, align 8
  store i64 -9223372036854775804, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.k)
          to label %bb.z unwind label %bb.k

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.r

bb.aa:                                            ; preds = %bb.x, %bb.j
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape17stride_contiguous(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRjNtB6_5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXNtNtCsd5Y3rNriENo_7parquet4file6readerNtNtCs5Xr050g3D4S_3std2fs4FileNtB2_6Length3len(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsd5Y3rNriENo_7parquet4file6readerNtNtCs5Xr050g3D4S_3std2fs4FileNtB4_11ChunkReader8get_read(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_4read4Read10read_exactCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsd5Y3rNriENo_7parquet4file8metadata11footer_tailNtB2_10FooterTail7try_new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsd5Y3rNriENo_7parquet4file6readerNtNtCs5Xr050g3D4S_3std2fs4FileNtB4_11ChunkReader9get_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsd5Y3rNriENo_7parquet4file8metadata6readerNtB4_21ParquetMetaDataReader22decode_footer_metadata(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsd5Y3rNriENo_7parquet6errorsNtB5_12ParquetErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBY_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsd5Y3rNriENo_7parquet4file8metadata6readerNtB4_21ParquetMetaDataReader6finish(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(216)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsd5Y3rNriENo_7parquet4file8metadata12push_decoderNtB2_26ParquetMetaDataPushDecoder21try_new_with_metadata(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsd5Y3rNriENo_7parquet4file8metadata12push_decoderNtB2_26ParquetMetaDataPushDecoder21with_metadata_options(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsd5Y3rNriENo_7parquet4file8metadata6reader16needs_index_data(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsd5Y3rNriENo_7parquet4file8metadata12push_decoderNtB2_26ParquetMetaDataPushDecoder10push_range(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(96), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsd5Y3rNriENo_7parquet4file8metadata6reader16parse_index_data(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12column_index19ColumnIndexMetaDataEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEENtNtBK_4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
