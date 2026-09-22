Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.08?download=true
inline.NumInlined: 366
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatE8grow_oneCs4phXRVW1pDQ_9dwarfdump:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !517, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !517
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !517
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !517
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !520
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !520
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !520
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !520, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !520, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !520
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !520, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !520
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !520
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !520
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names25NameAbbreviationAttributeE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !523
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !523
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 2, i64 noundef 4), !noalias !523
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !523, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !523, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !523
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !523, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !523
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !523
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !523
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsG258MDvU3F_3std4sync6poison7condvar7CondvarE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !526
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !526
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 4), !noalias !526
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !526, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !526, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !526
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !526, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !526
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !526
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !526
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtCsfcxKEGBgCs2_7getopts6OptvalEE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !529
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !529
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !529
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !529, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !529, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !529
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !529, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !529
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !529
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !529
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !532
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !532
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !532
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !532, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !532, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !532
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !532, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !532
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !532
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !532
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #26
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #26
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !14

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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #26
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE12compile_unitB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(496) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !553, !noalias !554, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i = load i8, ptr %i.h, align 8, !range !12, !alias.scope !553, !noalias !554, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !555, !noalias !556, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !555, !noalias !556, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i1.i = load i8, ptr %i.m, align 8, !range !12, !alias.scope !555, !noalias !556, !noundef !5
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !551, !noalias !552
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !551, !noalias !552
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 %.val.i1.i, ptr %.sroa.54.0..sroa_idx.i, align 16, !alias.scope !551, !noalias !552
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !553, !noalias !554, !nonnull !5, !noundef !5
  %i.o = load <2 x ptr>, ptr %i.d, align 8, !alias.scope !552, !noalias !551
  store <2 x ptr> %i.o, ptr %i.c, align 16, !alias.scope !551, !noalias !552
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.r = load i8, ptr %i.q, align 4, !range !15, !noundef !5 ; 2 uses
  %i.s = zext nneg i8 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, %i.p               ; 3 uses
  %i.u = icmp ult i64 %i.l, %i.t
  br i1 %i.u, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.w = sub nuw i64 %i.l, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t ; 2 uses
  store ptr %i.x, ptr %i.v, align 16, !alias.scope !557, !noalias !558, !captures !8
  store i64 %i.w, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !557, !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i8 noundef range(i8 4, 9) %i.r), !noalias !559
  %i.y = load i8, ptr %i.a, align 8, !range !6, !noalias !560, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit.thread

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit.thread: ; preds = %bb.b
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.411.0..sroa_idx.i, i64 7, i1 false), !noalias !561
  %.sroa.512.0.copyload.i = load i64, ptr %i.z, align 8, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  store i8 %i.y, ptr %i.b, align 8, !alias.scope !559, !noalias !561
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !559, !noalias !561
  br label %bb.c

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit: ; preds = %bb.b
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.z, align 8, !noalias !560, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  call void @_RNvXs3_Cs4phXRVW1pDQ_9dwarfdumpRNtB5_13RelocationMapNtNtNtCsi68uqYEhoRA_5gimli4read8relocate8Relocate15relocate_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, i64 noundef %i.ac, i64 noundef %i.ad)
  %.pr = load i8, ptr %i.b, align 8
  %.not17 = icmp eq i8 %.pr, -1
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit.thread, %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE15local_type_unitB2A_:bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ah = ptrtoint ptr %i.j to i64
  store i8 17, ptr %0, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE17foreign_type_unitB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(496) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !609, !noalias !610, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !609, !noalias !610, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i1.i = load i8, ptr %i.f, align 8, !range !12, !alias.scope !609, !noalias !610, !noundef !5
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw i64 %i.e, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !611
  %i.l = tail call noundef i64 @_RNvXsX_NtCskKLDkoKarTP_4core5arrayAhj8_NtNtB7_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !611
  store i64 %i.l, ptr %i.a, align 8, !noalias !611
  %i.m = icmp ugt i64 %i.j, 7
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.k to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !611
  store i64 17, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.449.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 1, 9) 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !612
  %.sroa.0.0.copyload.i23.i = load i56, ptr %i.a, align 8, !noalias !613
  %.sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sroa.0.0.copyload.i25.i = load i8, ptr %.sroa_idx24.i, align 1, !noalias !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !611
  %.sroa.10.8.insert.ext.i = zext i8 %.sroa.0.0.copyload.i25.i to i64
  %.sroa.027.1.insert.ext.i = zext i56 %.sroa.0.0.copyload.i23.i to i64
  %.sroa.027.1.insert.shift.i = shl nuw i64 %.sroa.027.1.insert.ext.i, 8
  %i.o = trunc nuw i8 %.val.i1.i to i1
  %.sroa.0.sroa.0.0.insert.insert.i = call i64 @llvm.fshl.i64(i64 %.sroa.10.8.insert.ext.i, i64 %.sroa.027.1.insert.shift.i, i64 56) ; 2 uses
  %i.p = call i64 @llvm.bswap.i64(i64 %.sroa.0.sroa.0.0.insert.insert.i)
  %spec.select.i.i = select i1 %i.o, i64 %i.p, i64 %.sroa.0.sroa.0.0.insert.insert.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i, ptr %i.q, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.c to i64
  store i8 17, ptr %0, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.547.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE18name_string_offsetB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(496) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !634, !noalias !635, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i.i = load i8, ptr %i.h, align 8, !range !12, !alias.scope !634, !noalias !635, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !636, !noalias !637, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !636, !noalias !637, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val.i1.i = load i8, ptr %i.m, align 8, !range !12, !alias.scope !636, !noalias !637, !noundef !5
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !632, !noalias !633
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !632, !noalias !633
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 %.val.i1.i, ptr %.sroa.54.0..sroa_idx.i, align 16, !alias.scope !632, !noalias !633
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !634, !noalias !635, !nonnull !5, !noundef !5
  %i.o = load <2 x ptr>, ptr %i.d, align 8, !alias.scope !633, !noalias !632
  store <2 x ptr> %i.o, ptr %i.c, align 16, !alias.scope !632, !noalias !633
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.r = load i8, ptr %i.q, align 4, !range !15, !noundef !5 ; 2 uses
  %i.s = zext nneg i8 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, %i.p               ; 3 uses
  %i.u = icmp ult i64 %i.l, %i.t
  br i1 %i.u, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.w = sub nuw i64 %i.l, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t ; 2 uses
  store ptr %i.x, ptr %i.v, align 16, !alias.scope !638, !noalias !639, !captures !8
  store i64 %i.w, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !638, !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i8 noundef range(i8 4, 9) %i.r), !noalias !640
  %i.y = load i8, ptr %i.a, align 8, !range !6, !noalias !641, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit.thread

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit.thread: ; preds = %bb.b
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.411.0..sroa_idx.i, i64 7, i1 false), !noalias !642
  %.sroa.512.0.copyload.i = load i64, ptr %i.z, align 8, !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  store i8 %i.y, ptr %i.b, align 8, !alias.scope !640, !noalias !642
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !640, !noalias !642
  br label %bb.c

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit: ; preds = %bb.b
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.z, align 8, !noalias !641, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  call void @_RNvXs3_Cs4phXRVW1pDQ_9dwarfdumpRNtB5_13RelocationMapNtNtNtCsi68uqYEhoRA_5gimli4read8relocate8Relocate15relocate_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, i64 noundef %i.ac, i64 noundef %i.ad)
  %.pr = load i8, ptr %i.b, align 8
  %.not17 = icmp eq i8 %.pr, -1
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit.thread, %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ah = ptrtoint ptr %i.j to i64
  store i8 17, ptr %0, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_9NameIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE3newB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([496 x i8]) align 8 captures(none) dereferenceable(496) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6168 = alloca [16 x i8], align 8         ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 11 uses
  %.sroa.13.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx388, align 8 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8 ; 9 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.29.0.copyload = load i8, ptr %.sroa.29.0..sroa_idx, align 8 ; 9 uses
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 97
  %.sroa.37410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.37410.0.copyload = load ptr, ptr %.sroa.37410.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.69.0.copyload = load i8, ptr %.sroa.69.0..sroa_idx, align 8 ; 10 uses
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.e = load i8, ptr %i.d, align 2, !range !15, !noundef !5 ; 2 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load i32, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, %i.f               ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.l = load i32, ptr %i.k, align 4, !noundef !5 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, %i.f               ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load i32, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.t = load i32, ptr %i.s, align 4, !noundef !5 ; 3 uses
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 4 uses
  %i.w = icmp eq i32 %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 2
  %.sroa.0.0 = select i1 %i.w, i64 0, i64 %i.aa   ; 4 uses
  %i.ab = mul nuw nsw i64 %i.z, %i.f              ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !5
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = icmp ult i64 %.sroa.53.0.copyload, %i.j
  br i1 %i.af, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit.thread, label %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit.thread: ; preds = %bb.a
  %i.ag = ptrtoint ptr %.sroa.37410.0.copyload to i64
  br label %bb.t

_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.13.0.copyload) ]
  %i.ah = sub nuw i64 %.sroa.53.0.copyload, %i.j  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.37410.0.copyload, i64 %i.j ; 3 uses
  %i.aj = ptrtoint ptr %.sroa.13.0.copyload to i64 ; 9 uses
  %i.ak = icmp eq i8 %.sroa.69.0.copyload, 2
  br i1 %i.ak, label %bb.t, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader5splitB2c_.exit
  %i.al = icmp ult i64 %i.ah, %i.n
  br i1 %i.al, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = sub nuw i64 %i.ah, %i.n                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.n ; 3 uses
  %i.ao = icmp ult i64 %i.am, %i.r
  br i1 %i.ao, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = sub nuw i64 %i.am, %i.r                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.r ; 3 uses
  %i.ar = icmp ult i64 %i.ap, %i.v
  br i1 %i.ar, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = sub nuw i64 %i.ap, %i.v                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.v ; 3 uses
  %i.au = icmp ult i64 %i.as, %.sroa.0.0
  br i1 %i.au, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sub nuw i64 %i.as, %.sroa.0.0           ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0 ; 3 uses
  %i.ax = icmp ult i64 %i.av, %i.ab
  br i1 %i.ax, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = sub nuw i64 %i.av, %i.ab                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ab ; 3 uses
  %i.ba = icmp ult i64 %i.ay, %i.ab
  br i1 %i.ba, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = sub nuw i64 %i.ay, %i.ab                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ab ; 3 uses
  %i.bd = icmp ult i64 %i.bb, %i.ae
  br i1 %i.bd, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.0150.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aj, ptr %.sroa.0150.sroa.7.0..sroa_idx, align 8
  %.sroa.0150.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.21.0.copyload, ptr %.sroa.0150.sroa.8.0..sroa_idx, align 8
  %.sroa.0150.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.29.0.copyload, ptr %.sroa.0150.sroa.9.0..sroa_idx, align 8
  %.sroa.0150.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.bc, ptr %.sroa.0150.sroa.11.0..sroa_idx, align 8
  %.sroa.0150.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ae, ptr %.sroa.0150.sroa.12.0..sroa_idx, align 8
  %.sroa.7151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.sroa.69.0.copyload, ptr %.sroa.7151.0..sroa_idx152, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMsh_NtNtCsi68uqYEhoRA_5gimli4read5namesNtB6_17NameAbbreviations5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2P_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b)
  %i.be = load i64, ptr %i.a, align 8, !range !643, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6168)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ae
  %i.bj = sub nuw i64 %i.bb, %i.ae
  %.sroa.4295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4295.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6168, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6168)
  %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 441
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.0..sroa_idx, i64 7, i1 false)
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 465
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77.0..sroa_idx, i64 7, i1 false)
  store i64 %i.be, ptr %0, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.copyload, ptr %.sroa.5173.0..sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.5173.sroa.0.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.5.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.21.0.copyload, ptr %.sroa.5173.sroa.0.sroa.5.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.6.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.29.0.copyload, ptr %.sroa.5173.sroa.0.sroa.6.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.8.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.37410.0.copyload, ptr %.sroa.5173.sroa.0.sroa.8.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.0.sroa.9.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.j, ptr %.sroa.5173.sroa.0.sroa.9.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.5173.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.69.0.copyload, ptr %.sroa.5173.sroa.4.0..sroa.5173.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.0.copyload, ptr %.sroa.6174.0..sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.aj, ptr %.sroa.6174.sroa.0.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.5.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.21.0.copyload, ptr %.sroa.6174.sroa.0.sroa.5.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.6.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.29.0.copyload, ptr %.sroa.6174.sroa.0.sroa.6.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.8.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ai, ptr %.sroa.6174.sroa.0.sroa.8.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.0.sroa.9.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.n, ptr %.sroa.6174.sroa.0.sroa.9.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.6174.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sroa.69.0.copyload, ptr %.sroa.6174.sroa.4.0..sroa.6174.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.0.copyload, ptr %.sroa.7175.0..sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.aj, ptr %.sroa.7175.sroa.0.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.5.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.21.0.copyload, ptr %.sroa.7175.sroa.0.sroa.5.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.6.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %.sroa.29.0.copyload, ptr %.sroa.7175.sroa.0.sroa.6.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.8.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.an, ptr %.sroa.7175.sroa.0.sroa.8.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.0.sroa.9.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.r, ptr %.sroa.7175.sroa.0.sroa.9.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.7175.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %.sroa.69.0.copyload, ptr %.sroa.7175.sroa.4.0..sroa.7175.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sroa.0.0.copyload, ptr %.sroa.8176.0..sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.aj, ptr %.sroa.8176.sroa.0.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.5.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.21.0.copyload, ptr %.sroa.8176.sroa.0.sroa.5.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.6.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %.sroa.29.0.copyload, ptr %.sroa.8176.sroa.0.sroa.6.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.8.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.aq, ptr %.sroa.8176.sroa.0.sroa.8.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.0.sroa.9.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.v, ptr %.sroa.8176.sroa.0.sroa.9.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.8176.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.sroa.69.0.copyload, ptr %.sroa.8176.sroa.4.0..sroa.8176.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.aj, ptr %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sroa.21.0.copyload, ptr %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.29.0.copyload, ptr %.sroa.9.sroa.0.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.at, ptr %.sroa.9.sroa.0.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0.0, ptr %.sroa.9.sroa.0.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %.sroa.69.0.copyload, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.aj, ptr %.sroa.10.sroa.0.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.21.0.copyload, ptr %.sroa.10.sroa.0.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %.sroa.29.0.copyload, ptr %.sroa.10.sroa.0.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.aw, ptr %.sroa.10.sroa.0.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.ab, ptr %.sroa.10.sroa.0.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %.sroa.69.0.copyload, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %.sroa.0.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.aj, ptr %.sroa.11.sroa.0.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %.sroa.21.0.copyload, ptr %.sroa.11.sroa.0.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 %.sroa.29.0.copyload, ptr %.sroa.11.sroa.0.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.az, ptr %.sroa.11.sroa.0.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.0.sroa.9.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.ab, ptr %.sroa.11.sroa.0.sroa.9.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 %.sroa.69.0.copyload, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %.sroa.0.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %.sroa.13.0.copyload, ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.sroa.21.0.copyload, ptr %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 %.sroa.29.0.copyload, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.bi, ptr %.sroa.12.sroa.8.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
end_hunk_1
