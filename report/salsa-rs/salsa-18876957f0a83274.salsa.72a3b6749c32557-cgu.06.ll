Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.06?download=true
inline.NumInlined: 248
inline.NumDeleted: 126
begin_hunk_0_@_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8grow_oneBP_:bb.a
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !176, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !176, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !176
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !176
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !179
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 4), !noalias !179
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !179, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !179, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !179, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !179
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !179
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !182
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !182
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !182, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !182, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !182, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !182
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !182
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !185
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 128), !noalias !185
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !185, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !185, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !185, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !185
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !185
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !188
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 88), !noalias !188
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !188, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !188, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !188, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !188
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !188
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !191
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !191
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !191, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !191, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !191, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !191
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !191
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !194
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !194

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #27
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #27
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %5 = extractvalue { i64, i1 } %i.a, 0           ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !194
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !194

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  br i1 %2, label %bb.g, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #27
  br label %bb.h

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn12, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !195, !noalias !198, !noundef !8 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !195, !noalias !198, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.r, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread, !prof !200

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.r, label %bb.b, !prof !61

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !204, !noalias !207, !nonnull !8, !noundef !8
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !201
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.d ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 4, %bb.d ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.r
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26, !noalias !201
  unreachable

bb.f:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i
  %i.s = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not48.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not48.i, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.m, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.t = mul nuw nsw i64 %i.l, 12                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 768614336404564649
  br i1 %or.cond.not.i, label %bb.q, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i, !prof !194

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i: ; preds = %bb.i
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i
  %or.cond67.not.i = icmp ugt i64 %.sink.i.i, 768614336404564650
  br i1 %or.cond67.not.i, label %bb.q, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i, !prof !194

bb.k:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !201
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef 4) #27, !noalias !201 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.p, label %bb.m

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i: ; preds = %bb.j
  %i.w = mul nuw nsw i64 %.sink.i.i, 12
  %i.x = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.w, i64 noundef 4, i64 noundef %i.t) #27 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.m, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i
  %.sroa.032.0.i = phi ptr [ %i.u, %bb.m ], [ %i.x, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i ]
  store i32 1, ptr %0, align 8, !alias.scope !201
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !201
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.032.0.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !201
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !201
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.m:                                             ; preds = %bb.k
  %i.z = mul nuw i64 %i.r, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 4 %.sink11.i.i, i64 %i.z, i1 false)
  br label %bb.l

bb.n:                                             ; preds = %bb.h
  store i32 0, ptr %0, align 8, !alias.scope !201
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = mul nuw i64 %i.r, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.0..sroa_idx.i, ptr nonnull align 4 %.sink11.i.i, i64 %i.aa, i1 false)
  store i64 %i.r, ptr %i.b, align 8, !alias.scope !201
  %1 = mul i64 %.sink.i.i, 12                     ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 768614336404564650
  br i1 %or.cond.not.i.i, label %bb.o, label %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBF_.exit.i, !prof !194

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  store i64 0, ptr %i.a, align 8, !noalias !209
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %2, align 8, !noalias !209
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !209
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBF_.exit.i: ; preds = %bb.n
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %1, i64 noundef 4) #27
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.p:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i, %bb.k
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.t) #26
  unreachable

bb.q:                                             ; preds = %bb.j, %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBF_.exit.i, %bb.g, %bb.l, %bb.h
  ret void

bb.r:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noalias !212, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !212, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread, !prof !200

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  %.sink11.i8 = phi i64 [ %i.e, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink11.i8, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !61

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit
    i64 0, label %bb.d
  ], !prof !215

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E8try_growBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink11.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !61

bb.a:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
  unreachable

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit
  %i.j = icmp ult i64 %1, 4
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit, label %bb.l, !prof !216

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit
  %or.cond67 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48, label %bb.l, !prof !216

bb.g:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #27 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #27 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink11.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink11.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBF_.exit, label %bb.k, !prof !216

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !217
  store i64 0, ptr %i.a, align 8, !noalias !217
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !217
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBF_.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i, i64 noundef %i.s, i64 noundef 8) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48, %bb.g, %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBF_.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBF_.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBF_.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E21reserve_one_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !220, !noalias !223, !noundef !8 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !220, !noalias !223, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread, !prof !200

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !61

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !228, !noalias !231, !nonnull !8, !noundef !8
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !225
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 4, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26, !noalias !225
  unreachable

bb.e:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl nuw nsw i64 %i.l, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i, label %bb.p, !prof !216

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.h
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i
  %or.cond67.i = icmp ult i64 %.sink.i.i, 1152921504606846976
  br i1 %or.cond67.i, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit48.i, label %bb.p, !prof !216

bb.j:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !225
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #27, !noalias !225 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit48.i: ; preds = %bb.i
  %i.v = shl nuw nsw i64 %.sink.i.i, 3
  %i.w = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #27 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !225
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !225
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !225
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !225
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %bb.j
  %i.y = shl nuw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !225
  %i.z = shl nuw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !225
  %or.cond.i.i = icmp ult i64 %.sink.i.i, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i, label %bb.n, !prof !216

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !233
  store i64 0, ptr %i.a, align 8, !noalias !233
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !233
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.m
  %i.aa = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #27
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.o:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit48.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #26
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E21reserve_one_uncheckedBN_(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !236, !noalias !239, !noundef !8 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !236, !noalias !239, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.r, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.thread, !prof !200

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.r, label %bb.b, !prof !61

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !244, !noalias !247, !nonnull !8, !noundef !8
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !241
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.d ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 4, %bb.d ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.r
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26, !noalias !241
  unreachable

bb.f:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_.exit.i
  %i.s = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not48.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not48.i, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.m, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i64 %i.l, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i, label %bb.q, !prof !216

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i: ; preds = %bb.i
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i
  %or.cond69.i = icmp ult i64 %.sink.i.i, 576460752303423488
  br i1 %or.cond69.i, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit50.i, label %bb.q, !prof !216

bb.k:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !241
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef 4) #27, !noalias !241 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.p, label %bb.m

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit50.i: ; preds = %bb.j
  %i.w = shl nuw nsw i64 %.sink.i.i, 4
  %i.x = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.w, i64 noundef 4, i64 noundef %i.t) #27 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.m, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit50.i
  %.sroa.032.0.i = phi ptr [ %i.u, %bb.m ], [ %i.x, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit50.i ]
  store i32 1, ptr %0, align 8, !alias.scope !241
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !241
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.032.0.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !241
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !241
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.m:                                             ; preds = %bb.k
  %i.z = shl nuw i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 4 %.sink11.i.i, i64 %i.z, i1 false)
  br label %bb.l

bb.n:                                             ; preds = %bb.h
  store i32 0, ptr %0, align 8, !alias.scope !241
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = shl nuw i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.0..sroa_idx.i, ptr nonnull align 4 %.sink11.i.i, i64 %i.aa, i1 false)
  store i64 %i.r, ptr %i.b, align 8, !alias.scope !241
  %or.cond.i.i = icmp ult i64 %.sink.i.i, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsi1wr4QBDb3z_8smallvec10deallocateTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBG_5cycle14IterationStampEEBG_.exit.i, label %bb.o, !prof !216

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !249
  store i64 0, ptr %i.a, align 8, !noalias !249
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !249
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10deallocateTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBG_5cycle14IterationStampEEBG_.exit.i: ; preds = %bb.n
  %i.ab = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.ab, i64 noundef 4) #27
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.p:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBI_5cycle14IterationStampEEBI_.exit50.i, %bb.k
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.t) #26
  unreachable

bb.q:                                             ; preds = %bb.j, %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvCsi1wr4QBDb3z_8smallvec10deallocateTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBG_5cycle14IterationStampEEBG_.exit.i, %bb.g, %bb.l, %bb.h
  ret void

bb.r:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.thread, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef { ptr, ptr } @_RNvXNtNtNtCsC8CapfvpQ1_5salsa8function4memo13__memory_usageNtB2_11DummyStructNtNtB8_12salsa_struct15SalsaStructInDb10memo_table(ptr nofree noundef nonnull readnone align 8 captures(none) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #7 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #26
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef { ptr, i64 } @_RNvXNtNtNtCsC8CapfvpQ1_5salsa8function4memo13__memory_usageNtB2_11DummyStructNtNtB8_12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #26
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCsC8CapfvpQ1_5salsa8function4memo13__memory_usageNtB2_11DummyStructNtNtB8_12salsa_struct15SalsaStructInDb4cast(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #7 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = shl nuw i64 %.val, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 128) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = mul nuw i64 %.val, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsC8CapfvpQ1_5salsa.exit, label %bb.b

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!9 = !{i64 0, i64 2}
!10 = !{i64 0, i64 -9223372036854775807}
!11 = !{i8 0, i8 4}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_RNCNCNCNvMs7_NtCsC8CapfvpQ1_5salsa12active_queryNtBb_9Backtrace7capture000Bd_: argument 1"}
!14 = distinct !{!14, !"_RNCNCNCNvMs7_NtCsC8CapfvpQ1_5salsa12active_queryNtBb_9Backtrace7capture000Bd_"}
!15 = distinct !{!15, !16, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_: argument 1"}
!16 = distinct !{!16, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_"}
!17 = !{!18, !19, !20, !22}
!18 = distinct !{!18, !14, !"_RNCNCNCNvMs7_NtCsC8CapfvpQ1_5salsa12active_queryNtBb_9Backtrace7capture000Bd_: argument 0"}
!19 = distinct !{!19, !16, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_: argument 0"}
!20 = distinct !{!20, !21, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1E_8adapters3map8map_foldRBJ_NtBL_13CapturedQueryuNCNCNCNvMs7_BL_NtBL_9Backtrace7capture000NCINvNvNtNtB1C_8iterator8Iterator8for_each4callB3e_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5c_3VecB3e_E14extend_trustedINtB2G_3MapINtNtB2I_3rev3RevB3_EB3z_EE0E0E0EBN_: argument 0"}
!21 = distinct !{!21, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1E_8adapters3map8map_foldRBJ_NtBL_13CapturedQueryuNCNCNCNvMs7_BL_NtBL_9Backtrace7capture000NCINvNvNtNtB1C_8iterator8Iterator8for_each4callB3e_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5c_3VecB3e_E14extend_trustedINtB2G_3MapINtNtB2I_3rev3RevB3_EB3z_EE0E0E0EBN_"}
!22 = distinct !{!22, !23, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtB1o_13CapturedQueryuNCNCNCNvMs7_B1o_NtB1o_9Backtrace7capture000NCINvNvB2c_8for_each4callB3i_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4X_3VecB3i_E14extend_trustedINtB2V_3MapBM_B3E_EE0E0E0EB1q_: argument 0"}
!23 = distinct !{!23, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtB1o_13CapturedQueryuNCNCNCNvMs7_B1o_NtB1o_9Backtrace7capture000NCINvNvB2c_8for_each4callB3i_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4X_3VecB3i_E14extend_trustedINtB2V_3MapBM_B3E_EE0E0E0EB1q_"}
!24 = !{i64 1, i64 0}
!25 = !{!20, !22}
!26 = !{!27, !29, !19, !20, !22}
!27 = distinct !{!27, !28, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1T_3rev3RevINtNtNtB1X_5slice4iter4IterNtBJ_11ActiveQueryEENCNCNCNvMs7_BJ_NtBJ_9Backtrace7capture000EE0BL_: argument 0"}
!28 = distinct !{!28, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1T_3rev3RevINtNtNtB1X_5slice4iter4IterNtBJ_11ActiveQueryEENCNCNCNvMs7_BJ_NtBJ_9Backtrace7capture000EE0BL_"}
!29 = distinct !{!29, !30, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2e_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB3e_3rev3RevINtNtNtBe_5slice4iter4IterNtB1h_11ActiveQueryEENCNCNCNvMs7_B1h_NtB1h_9Backtrace7capture000EE0E0B1j_: argument 0"}
!30 = distinct !{!30, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2e_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB3e_3rev3RevINtNtNtBe_5slice4iter4IterNtB1h_11ActiveQueryEENCNCNCNvMs7_B1h_NtB1h_9Backtrace7capture000EE0E0B1j_"}
!31 = !{!19, !20, !22}
!32 = !{!33, !35, !37, !39}
!33 = distinct !{!33, !34, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1R_3ops5range5RangejENCNvMs_BJ_NtBJ_15LazyMemoEntries10initialize0EE0BN_: argument 0"}
!34 = distinct !{!34, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1R_3ops5range5RangejENCNvMs_BJ_NtBJ_15LazyMemoEntries10initialize0EE0BN_"}
!35 = distinct !{!35, !36, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB28_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMs_B1h_NtB1h_15LazyMemoEntries10initialize0EE0E0B1l_: argument 0"}
!36 = distinct !{!36, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB28_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvMs_B1h_NtB1h_15LazyMemoEntries10initialize0EE0E0B1l_"}
!37 = distinct !{!37, !38, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_BX_NtBX_15LazyMemoEntries10initialize0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1G_EE0E0E0B11_: argument 0"}
!38 = distinct !{!38, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_BX_NtBX_15LazyMemoEntries10initialize0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3u_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1G_EE0E0E0B11_"}
!39 = distinct !{!39, !40, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_B27_NtB27_15LazyMemoEntries10initialize0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4c_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Q_EE0E0E0EB2b_: argument 0"}
!40 = distinct !{!40, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_B27_NtB27_15LazyMemoEntries10initialize0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4c_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Q_EE0E0E0EB2b_"}
!41 = !{!39}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB3p_10new_shardss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5F_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB4d_EE0E0E0B3r_: argument 0"}
!44 = distinct !{!44, !"_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB3p_10new_shardss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5F_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB4d_EE0E0E0B3r_"}
!45 = distinct !{!45, !46, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB4z_10new_shardss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6l_3VecB25_E14extend_trustedINtB1B_3MapB3_B5n_EE0E0E0EB4B_: argument 0"}
!46 = distinct !{!46, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB4z_10new_shardss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6l_3VecB25_E14extend_trustedINtB1B_3MapB3_B5n_EE0E0E0EB4B_"}
!47 = !{!48, !50, !43, !45}
!48 = distinct !{!48, !49, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4o_3ops5range5RangejENCNvB3b_10new_shardss_0EE0B3d_: argument 0"}
!49 = distinct !{!49, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4o_3ops5range5RangejENCNvB3b_10new_shardss_0EE0B3d_"}
!50 = distinct !{!50, !51, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4F_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvB3J_10new_shardss_0EE0E0B3L_: argument 0"}
!51 = distinct !{!51, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4F_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNvB3J_10new_shardss_0EE0E0B3L_"}
!52 = !{!45}
!53 = !{!54, !56}
!54 = distinct !{!54, !55, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_: argument 1"}
!55 = distinct !{!55, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_"}
!56 = distinct !{!56, !57, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_: argument 0"}
!57 = distinct !{!57, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_"}
!58 = !{!59}
!59 = distinct !{!59, !55, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_: argument 0"}
!60 = !{!56}
!61 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!62 = !{!"branch_weights", i32 1074011, i32 2146409637, i32 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_: argument 1"}
!65 = distinct !{!65, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_"}
!66 = !{!67}
!67 = distinct !{!67, !65, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_: argument 0"}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_: argument 1"}
!73 = distinct !{!73, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_"}
!74 = distinct !{!74, !75, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_: argument 0"}
!75 = distinct !{!75, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_"}
!76 = !{!77}
!77 = distinct !{!77, !73, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_: argument 0"}
!78 = !{!74}
!79 = distinct !{!79, !70, !69}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtB2_12IntoIterator9into_iterCsC8CapfvpQ1_5salsa: argument 0"}
!82 = distinct !{!82, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtB2_12IntoIterator9into_iterCsC8CapfvpQ1_5salsa"}
!83 = distinct !{!83, !82, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtB2_12IntoIterator9into_iterCsC8CapfvpQ1_5salsa: argument 1"}
!84 = !{!85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!85 = distinct !{!85, !86, !"_RINvYNtNtCs2AWtUsOyxgP_3std4path10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsC8CapfvpQ1_5salsa: argument 0"}
!86 = distinct !{!86, !"_RINvYNtNtCs2AWtUsOyxgP_3std4path10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsC8CapfvpQ1_5salsa"}
!87 = distinct !{!87, !86, !"_RINvYNtNtCs2AWtUsOyxgP_3std4path10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsC8CapfvpQ1_5salsa: argument 1"}
!88 = distinct !{!88, !89, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsC8CapfvpQ1_5salsa: argument 0"}
!89 = distinct !{!89, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsC8CapfvpQ1_5salsa"}
!90 = distinct !{!90, !89, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsC8CapfvpQ1_5salsa: argument 1"}
!91 = distinct !{!91, !92, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa: argument 0"}
!92 = distinct !{!92, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa"}
!93 = distinct !{!93, !92, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa: argument 1"}
!94 = distinct !{!94, !95, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsC8CapfvpQ1_5salsa: argument 0"}
!95 = distinct !{!95, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsC8CapfvpQ1_5salsa"}
!96 = distinct !{!96, !95, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEB10_NCINvNvNtB2_8Iterator5eq_by7compareNtB1t_9ComponentB2I_NCINvYB10_B2g_2eqB10_E0E0uECsC8CapfvpQ1_5salsa: argument 1"}
!97 = distinct !{!97, !98, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsC8CapfvpQ1_5salsa: argument 0"}
!98 = distinct !{!98, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsC8CapfvpQ1_5salsa"}
!99 = distinct !{!99, !98, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator7iter_eqINtNtNtB6_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEBU_NCINvNvNtB2_8Iterator5eq_by7compareNtB1n_9ComponentB2B_NCINvYBU_B29_2eqBU_E0E0ECsC8CapfvpQ1_5salsa: argument 1"}
!100 = distinct !{!100, !101, !"_RINvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsC8CapfvpQ1_5salsa: argument 0"}
!101 = distinct !{!101, !"_RINvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsC8CapfvpQ1_5salsa"}
!102 = distinct !{!102, !101, !"_RINvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsC8CapfvpQ1_5salsa: argument 1"}
!103 = !{!87, !90, !93, !96, !99, !102}
!104 = !{i8 -1, i8 10}
!105 = !{!106, !108, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!106 = distinct !{!106, !107, !"_RNCINvNvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compare7compareINtNtNtBa_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtB1F_9ComponentuNCINvNvNtB6_8Iterator5eq_by7compareB2h_B2h_NCINvYB1c_B2F_2eqB1c_E0E0E0CsC8CapfvpQ1_5salsa: argument 0"}
!107 = distinct !{!107, !"_RNCINvNvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compare7compareINtNtNtBa_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtB1F_9ComponentuNCINvNvNtB6_8Iterator5eq_by7compareB2h_B2h_NCINvYB1c_B2F_2eqB1c_E0E0E0CsC8CapfvpQ1_5salsa"}
!108 = distinct !{!108, !109, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCs2AWtUsOyxgP_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsC8CapfvpQ1_5salsa: argument 0"}
!109 = distinct !{!109, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCs2AWtUsOyxgP_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsC8CapfvpQ1_5salsa"}
!110 = !{!106, !108}
!111 = !{!112, !114}
!112 = distinct !{!112, !113, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!113 = distinct !{!113, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!114 = distinct !{!114, !113, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!115 = !{!116, !118, !119, !121, !122, !124, !125, !127, !106, !108}
!116 = distinct !{!116, !117, !"_RNvXs1G_NtCs2AWtUsOyxgP_3std4pathNtB6_6PrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!117 = distinct !{!117, !"_RNvXs1G_NtCs2AWtUsOyxgP_3std4pathNtB6_6PrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!118 = distinct !{!118, !117, !"_RNvXs1G_NtCs2AWtUsOyxgP_3std4pathNtB6_6PrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!119 = distinct !{!119, !120, !"_RNvXs1Y_NtCs2AWtUsOyxgP_3std4pathNtB6_9ComponentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!120 = distinct !{!120, !"_RNvXs1Y_NtCs2AWtUsOyxgP_3std4pathNtB6_9ComponentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!121 = distinct !{!121, !120, !"_RNvXs1Y_NtCs2AWtUsOyxgP_3std4pathNtB6_9ComponentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!122 = distinct !{!122, !123, !"_RNCINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBc_6traits8iterator8Iterator2eqB5_E0CsC8CapfvpQ1_5salsa: argument 0"}
!123 = distinct !{!123, !"_RNCINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBc_6traits8iterator8Iterator2eqB5_E0CsC8CapfvpQ1_5salsa"}
!124 = distinct !{!124, !123, !"_RNCINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBc_6traits8iterator8Iterator2eqB5_E0CsC8CapfvpQ1_5salsa: argument 1"}
!125 = distinct !{!125, !126, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa: argument 0"}
!126 = distinct !{!126, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa"}
!127 = distinct !{!127, !126, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa: argument 1"}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!130 = distinct !{!130, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!131 = distinct !{!131, !130, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!132 = !{!133, !135}
!133 = distinct !{!133, !134, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!134 = distinct !{!134, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!135 = distinct !{!135, !134, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!138 = distinct !{!138, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!139 = distinct !{!139, !138, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!142 = distinct !{!142, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!143 = distinct !{!143, !142, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!146 = distinct !{!146, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!147 = distinct !{!147, !146, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!148 = !{!149, !151}
!149 = distinct !{!149, !150, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!150 = distinct !{!150, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!151 = distinct !{!151, !150, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!152 = !{!119, !121, !122, !124, !125, !127, !106, !108}
!153 = !{!94, !96, !97, !99, !100, !102}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsC8CapfvpQ1_5salsa: argument 0"}
!156 = distinct !{!156, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsC8CapfvpQ1_5salsa"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsC8CapfvpQ1_5salsa: argument 0"}
!159 = distinct !{!159, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsC8CapfvpQ1_5salsa"}
!160 = !{!158, !155}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsC8CapfvpQ1_5salsa: argument 0"}
!163 = distinct !{!163, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsC8CapfvpQ1_5salsa"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!166 = distinct !{!166, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!169 = distinct !{!169, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!172 = distinct !{!172, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!175 = distinct !{!175, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!178 = distinct !{!178, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!181 = distinct !{!181, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!184 = distinct !{!184, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!187 = distinct !{!187, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!190 = distinct !{!190, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa: argument 0"}
!193 = distinct !{!193, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsC8CapfvpQ1_5salsa"}
!194 = !{!"branch_weights", i32 2002, i32 2000}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_: argument 1"}
!197 = distinct !{!197, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_: argument 0"}
!200 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E8try_growBM_: argument 0"}
!203 = distinct !{!203, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E8try_growBM_"}
!204 = !{!205, !202}
!205 = distinct !{!205, !206, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_: argument 1"}
!206 = distinct !{!206, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_: argument 0"}
!209 = !{!210, !202}
!210 = distinct !{!210, !211, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa: argument 0"}
!211 = distinct !{!211, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_: argument 0"}
!214 = distinct !{!214, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_"}
!215 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!216 = !{!"branch_weights", i32 2000, i32 2002}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa: argument 0"}
!219 = distinct !{!219, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa: argument 1"}
!222 = distinct !{!222, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa"}
!223 = !{!224}
!224 = distinct !{!224, !222, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa: argument 0"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E8try_growCsC8CapfvpQ1_5salsa: argument 0"}
!227 = distinct !{!227, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E8try_growCsC8CapfvpQ1_5salsa"}
!228 = !{!229, !226}
!229 = distinct !{!229, !230, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa: argument 1"}
!230 = distinct !{!230, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E10triple_mutCsC8CapfvpQ1_5salsa: argument 0"}
!233 = !{!234, !226}
!234 = distinct !{!234, !235, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa: argument 0"}
!235 = distinct !{!235, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_: argument 1"}
!238 = distinct !{!238, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_: argument 0"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E8try_growBN_: argument 0"}
!243 = distinct !{!243, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E8try_growBN_"}
!244 = !{!245, !242}
!245 = distinct !{!245, !246, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_: argument 1"}
!246 = distinct !{!246, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E10triple_mutBN_: argument 0"}
!249 = !{!250, !242}
!250 = distinct !{!250, !251, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa: argument 0"}
!251 = distinct !{!251, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsi1wr4QBDb3z_8smallvec18CollectionAllocErrE6unwrapCsC8CapfvpQ1_5salsa"}
!252 = !{i64 8}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_RNvXsu_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBM_: argument 0"}
!255 = distinct !{!255, !"_RNvXsu_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBM_"}
!256 = !{!254, !257}
!257 = distinct !{!257, !255, !"_RNvXsu_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBM_: argument 1"}
!258 = !{!259, !254}
!259 = distinct !{!259, !260, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_: argument 1"}
!260 = distinct !{!260, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_"}
!261 = !{!262, !257}
!262 = distinct !{!262, !260, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_: argument 0"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_RNvXsu_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsC8CapfvpQ1_5salsa: argument 0"}
!265 = distinct !{!265, !"_RNvXsu_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsC8CapfvpQ1_5salsa"}
!266 = !{!264, !267}
!267 = distinct !{!267, !265, !"_RNvXsu_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsC8CapfvpQ1_5salsa: argument 1"}
!268 = !{!269, !264}
!269 = distinct !{!269, !270, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa: argument 1"}
!270 = distinct !{!270, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa"}
!271 = !{!272, !267}
!272 = distinct !{!272, !270, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa: argument 0"}
!273 = !{i64 -1, i64 -9223372036854775808}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_: argument 1"}
!276 = distinct !{!276, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_: argument 0"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa: argument 1"}
!281 = distinct !{!281, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa: argument 0"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_: argument 1"}
!286 = distinct !{!286, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_: argument 0"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_: argument 0"}
!291 = distinct !{!291, !"_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEEB1b_: argument 0"}
!294 = distinct !{!294, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEEB1b_"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEEB1b_: argument 0"}
!297 = distinct !{!297, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEEB1b_"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECsC8CapfvpQ1_5salsa: argument 0"}
!300 = distinct !{!300, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECsC8CapfvpQ1_5salsa"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1c_5cycle14IterationStampEEEB1c_: argument 0"}
!303 = distinct !{!303, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1c_5cycle14IterationStampEEEB1c_"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa: argument 0"}
!306 = distinct !{!306, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa"}
end_hunk_1
