inline.NumInlined: 410
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSize13binary_searchCsdrxF8xh5sUs_16ruff_source_file:bb.a
  br i1 %i.c, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECsdrxF8xh5sUs_16ruff_source_file.exit, label %bb.b

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.i, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.d = lshr i64 %.sroa.01.017.i, 1              ; 2 uses
  %i.e = add i64 %i.d, %.sroa.05.016.i            ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.val.i13.i = load i32, ptr %i.f, align 4
  %i.g = icmp ugt i32 %.val.i13.i, %.val1.i.pre.i
  %i.h = select i1 %i.g, i64 %.sroa.05.016.i, i64 %i.e, !unpredictable !3 ; 2 uses
  %i.i = sub i64 %.sroa.01.017.i, %i.d            ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = icmp ult i32 %.val.i.i, %.val1.i.pre.i
  %i.l = zext i1 %i.k to i64
  %i.m = add i64 %.sroa.05.0.lcssa.i, %i.l
  br label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECsdrxF8xh5sUs_16ruff_source_file.exit

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECsdrxF8xh5sUs_16ruff_source_file.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %._crit_edge.i ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSc12chunks_exactCsdrxF8xh5sUs_16ruff_source_file(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr align 4 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @24, ptr nonnull inttoptr (i64 55 to ptr), ptr align 8 %4) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = urem i64 %2, %3                          ; 2 uses
  %i.c = sub i64 %2, %i.b                         ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  store ptr %1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSc18split_at_uncheckedCsdrxF8xh5sUs_16ruff_source_file(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 4 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionjE7is_someCsdrxF8xh5sUs_16ruff_source_file(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE5is_okCsdrxF8xh5sUs_16ruff_source_file(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  %i.b = and i8 %i.a, 1
  %i.c = icmp eq i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE13with_capacityCsdrxF8xh5sUs_16ruff_source_file(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjd0ZH04R2Z3_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %1, i1 zeroext false, i64 4, i64 4)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdrxF8xh5sUs_16ruff_source_file.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #37
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdrxF8xh5sUs_16ruff_source_file.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_count(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8
  ret i64 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 1, 0) i64 @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index(ptr nofree readonly align 8 captures(none) %0, i32 %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  switch i64 %i.e, label %.lr.ph.i.i [
    i64 0, label %bb.d
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i.i
  %.val.i.i.i = load i32, ptr %i.f, align 4       ; 2 uses
  %i.g = icmp eq i32 %.val.i.i.i, %1
  br i1 %i.g, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.017.i.i, 1            ; 2 uses
  %i.i = add i64 %i.h, %.sroa.05.016.i.i          ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %.val.i13.i.i = load i32, ptr %i.j, align 4
  %i.k = icmp ugt i32 %.val.i13.i.i, %1
  %i.l = select i1 %i.k, i64 %.sroa.05.016.i.i, i64 %i.i, !unpredictable !3 ; 2 uses
  %i.m = sub i64 %.sroa.01.017.i.i, %i.h          ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = icmp ult i32 %.val.i.i.i, %1
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %.sroa.05.0.lcssa.i.i, -1
  %i.r = add i64 %i.q, %i.p
  %i.s = tail call range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.r, i64 1)
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.t = tail call range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.lcssa.i.i, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.t, %bb.c ], [ -1, %bb.a ], [ %i.s, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_range(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8              ; 6 uses
  %i.h = add i64 %1, -1                           ; 4 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.h, %i.g
  br i1 %i.j, label %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.h, i64 %i.g, ptr nonnull align 8 @29) #37
  unreachable

_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %1, i64 -2) ; 4 uses
  %i.n = icmp eq i64 %i.m, %i.g
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit
  %i.o = icmp ult i64 %i.m, %i.g
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit
  %i.p = icmp ugt i64 %3, 4294967295
  %i.q = shl nuw i64 %3, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i3 = select i1 %i.p, i64 513, i64 %i.q ; 2 uses
  %i.r = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i.i3 to i1
  br i1 %i.r, label %_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i.i7, label %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit.i4

_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i.i7: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @26, i64 43, ptr nonnull %i.b, ptr nonnull align 8 @25, ptr nonnull align 8 @78) #37
  unreachable

_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit.i4: ; preds = %bb.e
  %.sroa.4.0.extract.shift.i.i.i.i5 = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i.i3, 32
  %.sroa.4.0.extract.trunc.i.i.i.i6 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i.i5 to i32
  %i.s = tail call i32 @_RNvMs_NtCs6jfqC49kXHE_14ruff_text_size4sizeNtB4_8TextSize3new(i32 %.sroa.4.0.extract.trunc.i.i.i.i6)
  br label %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m
  %i.u = load i32, ptr %i.t, align 4
  br label %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.m, i64 %i.g, ptr nonnull align 8 @29) #37
  unreachable

_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8: ; preds = %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit.i4, %bb.f
  %.sroa.0.0.i2 = phi i32 [ %i.s, %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit.i4 ], [ %i.u, %bb.f ] ; 2 uses
  %.not.i = icmp ugt i32 %i.l, %.sroa.0.0.i2
  br i1 %.not.i, label %bb.h, label %_RNvMs_NtCs6jfqC49kXHE_14ruff_text_size5rangeNtB4_9TextRange3newCsdrxF8xh5sUs_16ruff_source_file.exit

bb.h:                                             ; preds = %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @52, i64 38, ptr nonnull align 8 @28) #37
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.v = icmp ugt i64 %3, 4294967295
  %i.w = shl nuw i64 %3, 32
  %.sroa.0.0.insert.insert.i.i.i.i = select i1 %i.v, i64 513, i64 %i.w ; 2 uses
  %i.x = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i1
  br i1 %i.x, label %_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i, label %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit

_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @26, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @25, ptr nonnull align 8 @78) #37
  unreachable

_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit: ; preds = %bb.i
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32
  %i.y = tail call i32 @_RNvMs_NtCs6jfqC49kXHE_14ruff_text_size4sizeNtB4_8TextSize3new(i32 %.sroa.4.0.extract.trunc.i.i.i) ; 2 uses
  br label %_RNvMs_NtCs6jfqC49kXHE_14ruff_text_size5rangeNtB4_9TextRange3newCsdrxF8xh5sUs_16ruff_source_file.exit

_RNvMs_NtCs6jfqC49kXHE_14ruff_text_size5rangeNtB4_9TextRange3newCsdrxF8xh5sUs_16ruff_source_file.exit: ; preds = %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8, %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit
  %.pn12 = phi i32 [ %i.y, %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit ], [ %i.l, %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8 ]
  %.pn10 = phi i32 [ %i.y, %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit ], [ %.sroa.0.0.i2, %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit8 ]
  %.pn9 = insertvalue { i32, i32 } poison, i32 %.pn12, 0
  %.pn = insertvalue { i32, i32 } %.pn9, i32 %.pn10, 1
  ret { i32, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_start(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = add i64 %1, -1                           ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %3, 4294967295
  %i.k = shl nuw i64 %3, 32
  %.sroa.0.0.insert.insert.i.i.i.i = select i1 %i.j, i64 513, i64 %i.k ; 2 uses
  %i.l = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i1
  br i1 %i.l, label %_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i, label %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit

_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @26, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @25, ptr nonnull align 8 @78) #37
  unreachable

_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit: ; preds = %bb.c
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32
  %i.m = tail call i32 @_RNvMs_NtCs6jfqC49kXHE_14ruff_text_size4sizeNtB4_8TextSize3new(i32 %.sroa.4.0.extract.trunc.i.i.i)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.b, i64 %i.g, ptr nonnull align 8 @29) #37
  unreachable

bb.f:                                             ; preds = %bb.d, %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit
  %.sroa.0.0 = phi i32 [ %i.m, %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit ], [ %i.o, %bb.d ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex11line_column(ptr nofree readonly align 8 captures(none) %0, i32 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = tail call { i64, i64 } @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex15source_location(ptr align 8 %0, i32 %1, ptr %2, i64 %3, i8 2) ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 4 uses
  %i.e = icmp eq i64 %i.c, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 12565487, ptr %i.a, align 4
  %i.f = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdB6qrhj7hiN_9addr2line(ptr %2, i64 %3, ptr nonnull %i.a, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1)
  %.not.not.i = icmp ugt i64 %i.d, 1
  %..i = select i1 %.not.not.i, i64 %i.g, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i64 [ %..i, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.a ]
  %i.h = insertvalue { i64, i64 } %i.b, i64 %.sroa.0.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex11line_starts(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex15source_location(ptr nofree readonly align 8 captures(none) %0, i32 %1, ptr %2, i64 %3, i8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  switch i64 %i.f, label %.lr.ph.i.i.i [
    i64 0, label %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i.i
  %.val.i.i.i.i = load i32, ptr %i.g, align 4     ; 2 uses
  %i.h = icmp eq i32 %.val.i.i.i.i, %1
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.01.017.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.05.016.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.017.i.i.i, 1          ; 2 uses
  %i.j = add i64 %i.i, %.sroa.05.016.i.i.i        ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  %.val.i13.i.i.i = load i32, ptr %i.k, align 4
  %i.l = icmp ugt i32 %.val.i13.i.i.i, %1
  %i.m = select i1 %i.l, i64 %.sroa.05.016.i.i.i, i64 %i.j, !unpredictable !3 ; 2 uses
  %i.n = sub i64 %.sroa.01.017.i.i.i, %i.i        ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.p = icmp ult i32 %.val.i.i.i.i, %1
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.s = add i64 %i.r, %i.q
  %i.t = tail call range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.s, i64 1)
  br label %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = tail call range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.lcssa.i.i.i, i64 1)
  br label %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit

_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.u, %bb.c ], [ -1, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i, -1                 ; 4 uses
  %i.w = icmp eq i64 %i.v, %i.f
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit
  %i.x = icmp ult i64 %i.v, %i.f
  br i1 %i.x, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMNtCsdrxF8xh5sUs_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit
  %i.y = icmp ugt i64 %3, 4294967295
  %i.z = shl nuw i64 %3, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i = select i1 %i.y, i64 513, i64 %i.z ; 2 uses
  %i.aa = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.aa, label %_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i.i, label %_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit.i

_RNvXs4_NtCs4NRVxsYgnAr_4core7convertjINtB5_7TryIntoNtNtCs6jfqC49kXHE_14ruff_text_size4size8TextSizeE8try_intoCsdrxF8xh5sUs_16ruff_source_file.exit.thread.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @26, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @25, ptr nonnull align 8 @78) #37
  unreachable

_RNvXs_NtCs6jfqC49kXHE_14ruff_text_size6traitsReNtB4_7TextLen8text_lenCsdrxF8xh5sUs_16ruff_source_file.exit.i: ; preds = %bb.e
end_hunk_0
