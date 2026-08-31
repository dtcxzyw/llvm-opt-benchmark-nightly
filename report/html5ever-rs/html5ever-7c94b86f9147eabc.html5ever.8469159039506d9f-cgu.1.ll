Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.1?download=true
inline.NumInlined: 66
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbmOI1VUejFP_9html5ever:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !37 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !34

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !43
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !43
  %i.i = load i64, ptr %i.a, align 8, !range !35, !noalias !43, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbmOI1VUejFP_9html5ever.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !36, !noalias !43, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbmOI1VUejFP_9html5ever.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !43, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !43
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !43
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #22
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbmOI1VUejFP_9html5ever.exit.i, %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbmOI1VUejFP_9html5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !44
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
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
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbmOI1VUejFP_9html5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !44
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !44

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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
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
define { i1, i8 } @_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks(ptr noundef nonnull align 8 %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = load i64, ptr %0, align 8, !range !35, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr)
  br i1 %i.i, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr)
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.h, -2
  %i.l = trunc i64 %i.h to i1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !noalias !45, !noundef !5
  %i.o = zext i32 %i.n to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %2 = inttoptr i64 %i.k to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit: ; preds = %bb.a, %bb.b, %bb.f, %bb.g
  %.sroa.3.0.i = phi i64 [ undef, %bb.a ], [ %i.t, %bb.g ], [ %i.h, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.u, %bb.g ], [ %i.p, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !range !35, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88

bb.h:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = icmp eq ptr %i.z, inttoptr (i64 15 to ptr)
  br i1 %i.ab, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ult ptr %i.z, inttoptr (i64 9 to ptr)
  br i1 %i.ac, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = and i64 %i.aa, -2
  %i.ae = trunc i64 %i.aa to i1
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !noalias !48, !noundef !5
  %i.ah = zext i32 %i.ag to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i.i.i87 = phi i64 [ %i.ah, %bb.k ], [ 0, %bb.j ]
  %3 = inttoptr i64 %i.ad to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !noundef !5
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.i.i.i87
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88: ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit, %bb.h, %bb.l, %bb.m
  %.sroa.3.0.i85 = phi i64 [ undef, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit ], [ %i.am, %bb.m ], [ %i.aa, %bb.l ], [ 0, %bb.h ] ; 3 uses
  %.sroa.0.0.i86 = phi ptr [ null, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit ], [ %i.an, %bb.m ], [ %i.ai, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.h ] ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !range !35, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92

bb.n:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.au = icmp eq ptr %i.as, inttoptr (i64 15 to ptr)
  br i1 %i.au, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = icmp ult ptr %i.as, inttoptr (i64 9 to ptr)
  br i1 %i.av, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = and i64 %i.at, -2
  %i.ax = trunc i64 %i.at to i1
  br i1 %i.ax, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !noalias !51, !noundef !5
  %i.ba = zext i32 %i.az to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.0.i.i.i91 = phi i64 [ %i.ba, %bb.q ], [ 0, %bb.p ]
  %4 = inttoptr i64 %i.aw to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !noundef !5
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.01.0.i.i.i91
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92: ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88, %bb.n, %bb.r, %bb.s
  %.sroa.3.0.i89 = phi i64 [ undef, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88 ], [ %i.bf, %bb.s ], [ %i.at, %bb.r ], [ 0, %bb.n ] ; 6 uses
  %.sroa.0.0.i90 = phi ptr [ null, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88 ], [ %i.bg, %bb.s ], [ %i.bb, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.n ] ; 10 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null          ; 2 uses
  br i1 %.not, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92
  %.not55 = icmp eq ptr %.sroa.0.0.i86, null
  %.not56 = icmp eq ptr %.sroa.0.0.i90, null      ; 2 uses
  %i.bh = icmp eq i64 %.sroa.3.0.i, 4             ; 4 uses
  br i1 %.not55, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.v:                                             ; preds = %bb.t
  br i1 %.not56, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.bh, label %bb.ae, label %.thread118

bb.x:                                             ; preds = %bb.v
  br i1 %i.bh, label %bb.y, label %.thread118

bb.y:                                             ; preds = %bb.x
  %i.bi = load i32, ptr %.sroa.0.0.i, align 1
  %i.bj = icmp ne i32 %i.bi, 1819112552
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br label %.thread118

.thread:                                          ; preds = %bb.ak, %bb.aw, %bb.av, %bb.aq, %bb.au, %bb.at, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.as, %bb.ah, %bb.ag, %bb.an, %bb.ar
  %.sroa.033.0.ph = phi i1 [ %i.et, %bb.at ], [ false, %bb.aj ], [ %i.cz, %bb.al ], [ false, %bb.ai ], [ false, %bb.am ], [ false, %bb.as ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.ar ], [ %i.ew, %bb.aw ], [ %i.cq, %bb.ak ], [ %i.eu, %bb.au ], [ false, %bb.ao ], [ %i.ev, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.aa

.thread118:                                       ; preds = %bb.af, %bb.y, %bb.x, %bb.ae, %bb.w
  %.sroa.033.0.ph117 = phi i1 [ false, %bb.w ], [ %i.cc, %bb.af ], [ %i.bl, %bb.y ], [ false, %bb.x ], [ false, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.z:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i = icmp eq ptr %.sroa.0.0.i86, null
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %.sroa.033.0115 = phi i1 [ %.sroa.033.0.ph, %.thread ], [ false, %bb.z ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i86, i64 %.sroa.3.0.i85
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull readonly %.sroa.0.0.i86, ptr noundef nonnull readonly %i.bm)
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit

bb.ab:                                            ; preds = %.thread118, %bb.z
  %.sroa.033.0121 = phi i1 [ %.sroa.033.0.ph117, %.thread118 ], [ false, %bb.z ]
  store i64 -1, ptr %i.c, align 8, !alias.scope !54, !noalias !57
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit: ; preds = %bb.aa, %bb.ab
  %.sroa.033.0114 = phi i1 [ %.sroa.033.0115, %bb.aa ], [ %.sroa.033.0121, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i93 = icmp eq ptr %.sroa.0.0.i90, null
  br i1 %.not.i93, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i90, i64 %.sroa.3.0.i89
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull readonly %.sroa.0.0.i90, ptr noundef nonnull readonly %i.bn)
          to label %._RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94_crit_edge unwind label %bb.ax

._RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94_crit_edge: ; preds = %bb.ac
  %.pre = load i64, ptr %i.b, align 8, !range !4
  %i.bo = icmp ne i64 %.pre, -1
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94

bb.ad:                                            ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit
  store i64 -1, ptr %i.b, align 8, !alias.scope !59, !noalias !62
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94

bb.ae:                                            ; preds = %bb.w
  %i.bp = load i32, ptr %.sroa.0.0.i, align 1
  %i.bq = icmp ne i32 %i.bp, 1819112552
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = icmp eq i64 %.sroa.3.0.i89, 19
  %or.cond = and i1 %i.bt, %i.bs
  br i1 %or.cond, label %bb.af, label %.thread118

bb.af:                                            ; preds = %bb.ae
  %i.bu = load i128, ptr %.sroa.0.0.i90, align 1
  %i.bv = xor i128 %i.bu, 145464208053239100491945377269296357985
  %i.bw = getelementptr i8, ptr %.sroa.0.0.i90, i64 3
  %i.bx = load i128, ptr %i.bw, align 1
  %i.by = xor i128 %i.bx, 154696380606546177070729388462326838389
  %i.bz = or i128 %i.bv, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br label %.thread118

bb.ag:                                            ; preds = %bb.u
  br i1 %i.bh, label %bb.am, label %.thread

bb.ah:                                            ; preds = %bb.u
  br i1 %i.bh, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cd = load i32, ptr %.sroa.0.0.i, align 1
  %i.ce = icmp ne i32 %i.cd, 1819112552
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  switch i64 %.sroa.3.0.i85, label %.thread [
    i64 24, label %bb.ak
    i64 25, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ch = load i128, ptr %.sroa.0.0.i86, align 1
  %i.ci = xor i128 %i.ch, 101422843974581321042014108279922175789
  %i.cj = getelementptr i8, ptr %.sroa.0.0.i86, i64 16
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = zext i64 %i.ck to i128
  %i.cm = xor i128 %i.cl, 5639965988069717024
  %i.cn = or i128 %i.ci, %i.cm
  %i.co = icmp ne i128 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  %i.cr = load i128, ptr %.sroa.0.0.i86, align 1
  %i.cs = xor i128 %i.cr, 101422843974581321042014108279922175789
  %i.ct = getelementptr i8, ptr %.sroa.0.0.i86, i64 9
  %i.cu = load i128, ptr %i.ct, align 1
  %i.cv = xor i128 %i.cu, 104039009166660363102802981902262223956
  %i.cw = or i128 %i.cs, %i.cv
  %i.cx = icmp ne i128 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br label %.thread

bb.am:                                            ; preds = %bb.ag
  %i.da = load i32, ptr %.sroa.0.0.i, align 1
  %i.db = icmp ne i32 %i.da, 1819112552
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  switch i64 %.sroa.3.0.i85, label %.thread [
    i64 24, label %bb.ao
    i64 25, label %bb.ap
    i64 32, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.de = load i128, ptr %.sroa.0.0.i86, align 1
  %i.df = xor i128 %i.de, 101422843974581321042014108279922175789
  %i.dg = getelementptr i8, ptr %.sroa.0.0.i86, i64 16
  %i.dh = load i64, ptr %i.dg, align 1
  %i.di = zext i64 %i.dh to i128
  %i.dj = xor i128 %i.di, 5639965988069717024
  %i.dk = or i128 %i.df, %i.dj
  %i.dl = icmp ne i128 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  %i.do = icmp eq i64 %.sroa.3.0.i89, 42
  %or.cond78 = and i1 %i.do, %i.dn
  br i1 %or.cond78, label %bb.aw, label %.thread

bb.ap:                                            ; preds = %bb.an
  %i.dp = load i128, ptr %.sroa.0.0.i86, align 1
  %i.dq = xor i128 %i.dp, 101422843974581321042014108279922175789
  %i.dr = getelementptr i8, ptr %.sroa.0.0.i86, i64 9
  %i.ds = load i128, ptr %i.dr, align 1
  %i.dt = xor i128 %i.ds, 104039009166660363102802981902262223956
  %i.du = or i128 %i.dq, %i.dt
  %i.dv = icmp ne i128 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.dy = icmp eq i64 %.sroa.3.0.i89, 37
  br i1 %i.dy, label %bb.av, label %.thread

bb.ar:                                            ; preds = %bb.an
  %i.dz = load i128, ptr %.sroa.0.0.i86, align 1
  %i.ea = xor i128 %i.dz, 102788175927111337116501942944194834221
  %i.eb = getelementptr i8, ptr %.sroa.0.0.i86, i64 16
  %i.ec = load i128, ptr %i.eb, align 1
  %i.ed = xor i128 %i.ec, 104039009187457793747008828064738123852
  %i.ee = or i128 %i.ea, %i.ed
end_hunk_0
begin_hunk_1_@_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever:bb.a
bb.u:                                             ; preds = %bb.r
  %i.bc = lshr i64 %i.b, 4
  %i.bd = and i64 %i.bc, 15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.bf = lshr i64 %i.b, 32                       ; 3 uses
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !126, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !126, !nonnull !5, !align !122, !noundef !5
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !126, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !126, !noundef !5
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #25, !noalias !126
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i: ; preds = %bb.w, %bb.u, %bb.t
  %.sroa.4.0.i.i6.i.i.i.i = phi i64 [ %i.bb, %bb.t ], [ %i.bd, %bb.u ], [ %i.bm, %bb.w ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i = phi ptr [ %i.az, %bb.t ], [ %i.be, %bb.u ], [ %i.bk, %bb.w ]
  %i.bn = trunc i64 %i.d to i8
  %i.bo = and i8 %i.bn, 3
  switch i8 %i.bo, label %bb.y [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  unreachable

bb.z:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.bp = inttoptr i64 %i.d to ptr                ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !132, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !132, !noundef !5
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

bb.aa:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.bt = lshr i64 %i.d, 4
  %i.bu = and i64 %i.bt, 15
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 17
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

bb.ab:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.bw = lshr i64 %i.d, 32                       ; 3 uses
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !132, !noundef !5 ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !132, !nonnull !5, !align !122, !noundef !5
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bw ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !132, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !132, !noundef !5
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #25, !noalias !132
  unreachable

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.z
  %.sroa.4.0.i6.i8.i.i.i.i = phi i64 [ %i.bs, %bb.z ], [ %i.bu, %bb.aa ], [ %i.cd, %bb.ac ] ; 2 uses
  %.sroa.0.0.i7.i9.i.i.i.i = phi ptr [ %i.bq, %bb.z ], [ %i.bv, %bb.aa ], [ %i.cb, %bb.ac ]
  %spec.store.select.i10.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i6.i.i.i.i, i64 %.sroa.4.0.i6.i8.i.i.i.i)
  %i.ce = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i7.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i9.i.i.i.i, i64 %spec.store.select.i10.i.i.i.i) ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp eq i32 %i.ce, 0
  %i.ch = sub i64 %.sroa.4.0.i.i6.i.i.i.i, %.sroa.4.0.i6.i8.i.i.i.i
  %spec.select.i11.i.i.i.i = select i1 %i.cg, i64 %i.ch, i64 %i.cf ; 2 uses
  %i.ci = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i11.i.i.i.i, i64 0)
  %i.cj = icmp eq i64 %spec.select.i11.i.i.i.i, 0
  br i1 %i.cj, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.cm = load i64, ptr %i.ck, align 8, !range !106, !alias.scope !140, !noalias !141, !noundef !5 ; 5 uses
  %i.cn = load i64, ptr %i.cl, align 8, !range !106, !alias.scope !141, !noalias !140, !noundef !5 ; 5 uses
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i
  %i.cp = trunc i64 %i.cm to i8
  %i.cq = and i8 %i.cp, 3
  switch i8 %i.cq, label %bb.af [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cr = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !142, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !142, !noundef !5
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.cv = lshr i64 %i.cm, 4
  %i.cw = and i64 %i.cv, 15
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.cy = lshr i64 %i.cm, 32                      ; 3 uses
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !142, !noundef !5 ; 2 uses
  %i.da = icmp ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !142, !nonnull !5, !align !122, !noundef !5
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cy ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !142, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noalias !142, !noundef !5
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #25, !noalias !142
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ah, %bb.ag
  %.sroa.4.0.i.i13.i.i.i.i = phi i64 [ %i.cu, %bb.ag ], [ %i.cw, %bb.ah ], [ %i.df, %bb.aj ] ; 2 uses
  %.sroa.0.0.i.i14.i.i.i.i = phi ptr [ %i.cs, %bb.ag ], [ %i.cx, %bb.ah ], [ %i.dd, %bb.aj ]
  %i.dg = trunc i64 %i.cn to i8
  %i.dh = and i8 %i.dg, 3
  switch i8 %i.dh, label %bb.al [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
  ]

bb.al:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  unreachable

bb.am:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.di = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !145, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !145, !noundef !5
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit8.i.i.i.i.i

bb.an:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.dm = lshr i64 %i.cn, 4
  %i.dn = and i64 %i.dm, 15
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit8.i.i.i.i.i

bb.ao:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.dp = lshr i64 %i.cn, 32                      ; 3 uses
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !145, !noundef !5 ; 2 uses
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !145, !nonnull !5, !align !122, !noundef !5
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !145, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !145, !noundef !5
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit8.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dp, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #25, !noalias !145
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit8.i.i.i.i.i: ; preds = %bb.ap, %bb.an, %bb.am
  %.sroa.4.0.i6.i15.i.i.i.i = phi i64 [ %i.dl, %bb.am ], [ %i.dn, %bb.an ], [ %i.dw, %bb.ap ] ; 2 uses
  %.sroa.0.0.i7.i16.i.i.i.i = phi ptr [ %i.dj, %bb.am ], [ %i.do, %bb.an ], [ %i.du, %bb.ap ]
  %spec.store.select.i17.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i13.i.i.i.i, i64 %.sroa.4.0.i6.i15.i.i.i.i)
  %i.dx = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i14.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i16.i.i.i.i, i64 %spec.store.select.i17.i.i.i.i) ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp eq i32 %i.dx, 0
  %i.ea = sub i64 %.sroa.4.0.i.i13.i.i.i.i, %.sroa.4.0.i6.i15.i.i.i.i
  %spec.select.i18.i.i.i.i = select i1 %i.dz, i64 %i.ea, i64 %i.dy
  %i.eb = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i18.i.i.i.i, i64 0)
  br label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit8.i.i.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.eb, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit8.i.i.i.i.i ], [ %i.at, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i ], [ %i.ci, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i ] ; 2 uses
  %i.ec = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.ec, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit

_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i: ; preds = %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load ptr, ptr %i.ed, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.eh = icmp eq ptr %i.ef, inttoptr (i64 15 to ptr)
  br i1 %i.eh, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i
  %i.ei = icmp ult ptr %i.ef, inttoptr (i64 9 to ptr)
  br i1 %i.ei, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ej = and i64 %i.eg, -2
  %i.ek = trunc i64 %i.eg to i1
  br i1 %i.ek, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.em = load i32, ptr %i.el, align 4, !noalias !148, !noundef !5
  %i.en = zext i32 %i.em to i64
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at, %bb.as
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.en, %bb.at ], [ 0, %bb.as ]
  %2 = inttoptr i64 %i.ej to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !noundef !5
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.01.0.i.i.i.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i: ; preds = %bb.av, %bb.au, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.es, %bb.av ], [ %i.eg, %bb.au ], [ 0, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.et, %bb.av ], [ %i.eo, %bb.au ], [ inttoptr (i64 1 to ptr), %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i ]
  %i.eu = load ptr, ptr %i.ee, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ev = ptrtoint ptr %i.eu to i64               ; 3 uses
  %i.ew = icmp eq ptr %i.eu, inttoptr (i64 15 to ptr)
  br i1 %i.ew, label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  %i.ex = icmp ult ptr %i.eu, inttoptr (i64 9 to ptr)
  br i1 %i.ex, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ey = and i64 %i.ev, -2
  %i.ez = trunc i64 %i.ev to i1
  br i1 %i.ez, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !noalias !151, !noundef !5
  %i.fc = zext i32 %i.fb to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.01.0.i.i1.i.i.i.i = phi i64 [ %i.fc, %bb.ay ], [ 0, %bb.ax ]
  %3 = inttoptr i64 %i.ey to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !noundef !5
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.01.0.i.i1.i.i.i.i
  br label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i

_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i: ; preds = %bb.ba, %bb.az, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  %.sroa.4.0.i2.i.i.i.i = phi i64 [ %i.fh, %bb.ba ], [ %i.ev, %bb.az ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i3.i.i.i.i = phi ptr [ %i.fi, %bb.ba ], [ %i.fd, %bb.az ], [ inttoptr (i64 1 to ptr), %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i ]
  %spec.store.select.i.i2.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i2.i.i.i.i)
  %i.fj = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %.sroa.0.0.i3.i.i.i.i, i64 %spec.store.select.i.i2.i.i.i), !alias.scope !154 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp eq i32 %i.fj, 0
  %i.fm = sub nsw i64 %.sroa.4.0.i.i.i.i.i, %.sroa.4.0.i2.i.i.i.i
  %spec.select.i.i3.i.i.i = select i1 %i.fl, i64 %i.fm, i64 %i.fk
  %i.fn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i3.i.i.i, i64 0)
  br label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit

_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.b, %bb.c, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.fn, %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i ], [ -1, %bb.c ], [ 1, %bb.b ]
  %i.fo = icmp slt i8 %.sroa.0.0.i.i.i, 0
  ret i1 %i.fo
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbmOI1VUejFP_9html5ever(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #15

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { inlinehint }
attributes #22 = { noreturn }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!8, !10, !12}
!8 = distinct !{!8, !9, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!9 = distinct !{!9, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!10 = distinct !{!10, !11, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbmOI1VUejFP_9html5ever: argument 0"}
!11 = distinct !{!11, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsbmOI1VUejFP_9html5ever"}
!12 = distinct !{!12, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsbmOI1VUejFP_9html5ever: argument 0"}
!13 = distinct !{!13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsbmOI1VUejFP_9html5ever"}
!14 = !{!10, !12}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!17 = distinct !{!17, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!20 = distinct !{!20, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtBd_3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!23 = distinct !{!23, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtBd_3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!24 = distinct !{!24, !25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever: argument 0"}
!25 = distinct !{!25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtBd_3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!28 = distinct !{!28, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtBd_3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!29 = distinct !{!29, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever: argument 0"}
!30 = distinct !{!30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbmOI1VUejFP_9html5ever: argument 0"}
!33 = distinct !{!33, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbmOI1VUejFP_9html5ever"}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{i64 0, i64 2}
!36 = !{i64 0, i64 -9223372036854775807}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbmOI1VUejFP_9html5ever: argument 0"}
!39 = distinct !{!39, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbmOI1VUejFP_9html5ever"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbmOI1VUejFP_9html5ever: argument 0"}
!42 = distinct !{!42, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbmOI1VUejFP_9html5ever"}
!43 = !{!41, !38}
!44 = !{!"branch_weights", i32 2002, i32 2000}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!47 = distinct !{!47, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!50 = distinct !{!50, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!53 = distinct !{!53, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower: argument 0"}
!56 = distinct !{!56, !"_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower: argument 0"}
!61 = distinct !{!61, !"_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower: argument 1"}
!64 = !{i8 0, i8 2}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever: argument 0"}
!67 = distinct !{!67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever"}
!68 = !{!69, !71, !73, !66}
!69 = distinct !{!69, !70, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!70 = distinct !{!70, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
end_hunk_1
