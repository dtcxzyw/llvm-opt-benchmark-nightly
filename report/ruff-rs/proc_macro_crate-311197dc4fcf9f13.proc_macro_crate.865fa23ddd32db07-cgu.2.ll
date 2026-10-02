Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/proc_macro_crate-311197dc4fcf9f13.proc_macro_crate.865fa23ddd32db07-cgu.2?download=true
inline.NumInlined: 48
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs1k_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpCsbxgzIzrjA57_16proc_macro_crate:bb.a
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbxgzIzrjA57_16proc_macro_crate(ptr nofree align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_ownedCsbxgzIzrjA57_16proc_macro_crate(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshnxY9fdgZEp_13toml_datetime(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbxgzIzrjA57_16proc_macro_crate(ptr %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvYNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCsbxgzIzrjA57_16proc_macro_crate(ptr %0, i32 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs4_NtCs42bBNTaLAsF_9toml_edit5errorNtB5_9TomlErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %i.a, align 8
  %i.e = call zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr align 8 %1, ptr nonnull @10, i64 9, ptr nonnull @11, i64 7, ptr nonnull %i.b, ptr nonnull align 8 @12, ptr nonnull @13, i64 5, ptr nonnull %i.c, ptr nonnull align 8 @14, ptr nonnull @15, i64 4, ptr nonnull %i.d, ptr nonnull align 8 @16, ptr nonnull @17, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @18)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs2AWtUsOyxgP_3std2os2fd5ownedNtB5_7OwnedFdNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  tail call void @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix23debug_assert_fd_is_openCsbxgzIzrjA57_16proc_macro_crate(i32 %i.a)
  %i.b = load i32, ptr %0, align 4
  %i.c = tail call i32 @close(i32 %i.b) #26       ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutuEp6OutputINtNtBO_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtBO_6marker4SendNtB2D_4SyncEL_ENtNtBM_4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !4
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.i, ptr %i.h, i64 %i.g, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !4
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.i, ptr %i.h, i64 %i.g, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtNtNtB7_11collections5btree4node12InternalNodeNtNtB7_6string6StringB1u_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.b, ptr %i.a, i64 8, i64 640)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtNtNtB7_11collections5btree4node12InternalNodeNtNtB7_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10CacheEntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1R_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.b, ptr %i.a, i64 8, i64 1256)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtNtNtB7_11collections5btree4node12InternalNodeNtNtB7_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1R_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.b, ptr %i.a, i64 8, i64 640)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtNtNtB7_11collections5btree4node8LeafNodeNtNtB7_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10CacheEntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1M_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.b, ptr %i.a, i64 8, i64 1160)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.b, ptr %i.a, i64 8, i64 24)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.e, ptr %i.d, i64 1, i64 %i.b)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull %i.f, ptr %i.e, i64 4, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core2io5errorNtB5_9ErrorKindNtNtB9_3cmp9PartialEq2eqCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsbxgzIzrjA57_16proc_macro_crate(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshnxY9fdgZEp_13toml_datetime(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %.val, i64 %.val1), !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsH_NtCscdodAO9FK5_5alloc6stringNtB5_6StringINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_refCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr nonnull %i.d, i64 %i.c, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsX_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtNtCscdodAO9FK5_5alloc6string6StringINtNtCs4NRVxsYgnAr_4core7convert5AsRefNtB5_5OsStrE6as_refCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtB8_6traits8iterator8Iterator4nextCsbxgzIzrjA57_16proc_macro_crate(ptr sret([56 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr sret([56 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs42bBNTaLAsF_9toml_edit(ptr align 8 %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.a, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXsb_NtCs4NRVxsYgnAr_4core5arrayRARej2_NtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXsn_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTReRNtNtCs42bBNTaLAsF_9toml_edit4item4ItemEEL_ENtB5_21ConstSizeIntoIterator4sizeCsbxgzIzrjA57_16proc_macro_crate() unnamed_addr #4 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCscdodAO9FK5_5alloc6string6StringNtB5_5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECsbxgzIzrjA57_16proc_macro_crate(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
  %i.d = call zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsr_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCsbxgzIzrjA57_16proc_macro_crate(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCsbxgzIzrjA57_16proc_macro_crate(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr %1, i64 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsx_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvYNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXst_NtCs2AWtUsOyxgP_3std4timeNtB5_10SystemTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsbxgzIzrjA57_16proc_macro_crate.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ne i32 %i.e, %i.g
  br label %_RNvXst_NtCs2AWtUsOyxgP_3std4timeNtB5_10SystemTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsbxgzIzrjA57_16proc_macro_crate.exit

_RNvXst_NtCs2AWtUsOyxgP_3std4timeNtB5_10SystemTimeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsbxgzIzrjA57_16proc_macro_crate.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, i64 } @_RNvYNtNtCs42bBNTaLAsF_9toml_edit5error9TomlErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @19, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvYNtNtCs42bBNTaLAsF_9toml_edit5error9TomlErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvYNtNtCs42bBNTaLAsF_9toml_edit5error9TomlErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvYNtNtCs42bBNTaLAsF_9toml_edit5error9TomlErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsbxgzIzrjA57_16proc_macro_crate(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvYNtNtCs42bBNTaLAsF_9toml_edit5error9TomlErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsbxgzIzrjA57_16proc_macro_crate(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VechENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsbxgzIzrjA57_16proc_macro_crate(ptr align 8 %0, ptr align 8 %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNCNCNvCsbxgzIzrjA57_16proc_macro_crate19extract_crate_namess0_0s1_0B5_(ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortTNtNtB4_6string6StringBH_ENCINvMB2_SBG_7sort_byNCINvXs1o_NtNtNtB4_11collections5btree3mapINtB1B_8BTreeMapBH_BH_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB2B_8adapters3map3MapINtNtB3N_7flatten7FlattenIB3J_INtNtB2D_6option8IntoIterRDNtNtCs42bBNTaLAsF_9toml_edit5table9TableLikeEL_ENCNvCsbxgzIzrjA57_16proc_macro_crate30extract_workspace_dependencies0EENCB5T_s_0EE0E0EB5V_(ptr align 8, i64, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortTNtNtB4_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateENCINvMB2_SBG_7sort_byNCINvXs1o_NtNtNtB4_11collections5btree3mapINtB2i_8BTreeMapBH_B12_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB3l_6option8IntoIterBG_EINtNtB4v_10filter_map9FilterMapINtNtB4v_7flatten7FlattenINtNtB4v_3map3MapIB4r_IB5q_IB4r_IB4X_RNtNtCs42bBNTaLAsF_9toml_edit4item4ItemEB6P_ENvMs_B6X_B6V_13as_table_likeEINtB5X_7FlatMapIB5q_B6P_B7D_EIB87_IB5q_IB6k_INtNtB4_5boxed3BoxDNtNtB3h_8iterator8Iteratorp4ItemTReB6U_EEL_ENCNCNvB14_17target_dep_tables00EB7D_EB6F_NvB14_10dep_tablesENCB9T_0EENCNvB14_19extract_crate_namess_0EENCBaY_s0_0EEE0E0EB14_(ptr align 8, i64, ptr) unnamed_addr #0
end_hunk_0
begin_hunk_1_@_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldTReRNtNtCs42bBNTaLAsF_9toml_edit4item4ItemEB12_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtCscdodAO9FK5_5alloc6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEENCNCNvB34_17target_dep_tables00NCINvNtB6_10filter_map19filter_map_try_foldB12_RDNtNtB17_5table9TableLikeEL_uB1L_NvMs_B15_B13_13as_table_likeNCIB2_B54_INtB4o_9FilterMapINtNtB6_5chain5ChainINtNtBa_6option8IntoIterB12_EB6P_EB5C_EuB1L_NvB34_10dep_tablesNCINvNvMsg_NtB6_7flattenINtB80_13FlattenCompatppE13iter_try_fold7flattenB6e_uB1L_NCINvNvXsi_B80_B8d_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB6e_uB1L_QNCIB2_B54_INtNtB2v_5boxed3BoxDB9r_p4ItemBZ_EL_EuB1L_NCNvB34_19extract_crate_namess_0NCIB7S_BaA_uB1L_NCIB9b_BaA_uB1L_NCINvNvB9r_8find_map5checkBZ_B2q_QNCBbi_s0_0E0E0E0E0E0E0E0E0E0B34_
; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowTNtNtCscdodAO9FK5_5alloc6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEENtNtB4_9try_trait3Try6branchB1E_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB4_11ControlFlowTNtNtCscdodAO9FK5_5alloc6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualB1G_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtCs4NRVxsYgnAr_4core3ops12control_flowINtB2_11ControlFlowTNtNtCscdodAO9FK5_5alloc6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEENtNtB4_9try_trait3Try11from_outputB1E_(ptr sret([48 x i8]) align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTReRNtNtCs42bBNTaLAsF_9toml_edit4item4ItemETNtNtCscdodAO9FK5_5alloc6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEQNCNvB3a_19extract_crate_namess0_0E0INtB7_5FnMutTuB1P_EE8call_mutB3a_(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringB1R_NtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsbxgzIzrjA57_16proc_macro_crate(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10CacheEntryNtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2e_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateNtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2e_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1R_ENtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsbxgzIzrjA57_16proc_macro_crate(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNCINvMss_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB8_7NodeRefNtNtB8_6marker5OwnedNtNtBe_6string6StringB1t_NtB1b_14LeafOrInternalE19push_internal_levelNtNtBe_5alloc6GlobalE0CsbxgzIzrjA57_16proc_macro_crate(ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNCINvMss_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB8_7NodeRefNtNtB8_6marker5OwnedNtNtBe_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10CacheEntryNtB1b_14LeafOrInternalE19push_internal_levelNtNtBe_5alloc6GlobalE0B1Q_(ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNCINvMss_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB8_7NodeRefNtNtB8_6marker5OwnedNtNtBe_6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateNtB1b_14LeafOrInternalE19push_internal_levelNtNtBe_5alloc6GlobalE0B1Q_(ptr, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCscdodAO9FK5_5alloc6string6StringBP_EECsbxgzIzrjA57_16proc_macro_crate(ptr align 8, i64, ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCscdodAO9FK5_5alloc6string6StringNtCsbxgzIzrjA57_16proc_macro_crate10FoundCrateEEB1s_(ptr align 8, i64, ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshnxY9fdgZEp_13toml_datetime(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space6lookupCsbxgzIzrjA57_16proc_macro_crate(i32) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64, i64) unnamed_addr #20

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCsbxgzIzrjA57_16proc_macro_crate(ptr, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nounwind nonlazybind uwtable
declare hidden void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsbxgzIzrjA57_16proc_macro_crate(ptr align 8) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr align 4, ptr align 8) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #23

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VechENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsbxgzIzrjA57_16proc_macro_crate(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @_RNvXsn_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpCsbxgzIzrjA57_16proc_macro_crate(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshnxY9fdgZEp_13toml_datetime(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvYNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCsbxgzIzrjA57_16proc_macro_crate(ptr, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs42bBNTaLAsF_9toml_edit(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtB7_3fmt5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs42bBNTaLAsF_9toml_edit(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionINtNtNtB8_3ops5range5RangejEENtB6_5Debug3fmtCsbxgzIzrjA57_16proc_macro_crate(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr align 8, ptr, i64, ptr, i64, ptr, ptr align 8, ptr, i64, ptr, ptr align 8, ptr, i64, ptr, ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix23debug_assert_fd_is_openCsbxgzIzrjA57_16proc_macro_crate(i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @close(i32) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsbxgzIzrjA57_16proc_macro_crate(ptr, ptr, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr sret([56 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs42bBNTaLAsF_9toml_edit(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECsbxgzIzrjA57_16proc_macro_crate(ptr align 8, ptr, ptr) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCsbxgzIzrjA57_16proc_macro_crate(ptr sret([40 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #14

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!"llvm.loop.unroll.disable"}
!4 = !{}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!24 = distinct !{!24, i1 false, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_stringCsbxgzIzrjA57_16proc_macro_crate"}
!25 = distinct !{!25, !24, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_stringCsbxgzIzrjA57_16proc_macro_crate: argument 0"}
!26 = !{!25}
end_hunk_1
