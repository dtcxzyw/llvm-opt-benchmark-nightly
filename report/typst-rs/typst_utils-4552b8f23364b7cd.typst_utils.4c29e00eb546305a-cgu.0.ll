Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils:bb.a
  store i64 0, ptr %i.p, align 8, !noalias !392
  br label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit

bb.l:                                             ; preds = %bb.f
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i: ; preds = %.thread17
  %i.r = icmp samesign ugt i64 %i.d, 1152921504606846975
  br i1 %i.r, label %bb.m, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread, !prof !393

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread: ; preds = %.thread, %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i
  %..i61113 = phi i64 [ %..i19, %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i ], [ %..i4, %.thread ] ; 5 uses
  %i.s = shl nuw nsw i64 %i.d, 3
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.n, label %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i, !prof !4

bb.m:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

bb.n:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i: ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = icmp slt i64 %..i61113, 0
  br i1 %i.w, label %bb.o, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i

bb.o:                                             ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i: ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i
  %i.x = icmp samesign ugt i64 %..i61113, 1152921504606846975
  br i1 %i.x, label %bb.q, label %bb.p, !prof !4

bb.p:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i
  %i.y = shl nuw nsw i64 %..i61113, 3
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.y, i64 16) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.r, label %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i, !prof !4

bb.q:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i1.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i: ; preds = %bb.p
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.ab) #33, !noalias !392 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.s, label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit, !prof !4

bb.s:                                             ; preds = %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i
  %i.ae = tail call fastcc noundef i64 @_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils(i64 noundef %..i61113), !noalias !392
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ae) #32, !noalias !392
  unreachable

_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i, %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i
  %..i7 = phi i64 [ %..i8, %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %..i61113, %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i ]
  %.sink7.i = phi ptr [ %i.p, %_RINvCsieRLDaoupkO_8thin_vec20header_with_capacityjECs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %i.ac, %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit2.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sink7.i, i64 8
  store i64 %..i7, ptr %i.af, align 8, !noalias !392
  store ptr %.sink7.i, ptr %0, align 8, !alias.scope !392
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE10reallocateCs6xpQEr8gLsQ_11typst_utils.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !5
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6xpQEr8gLsQ_11typst_utils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = shl i64 %1, 4                            ; 7 uses
  %i.b = icmp ult i64 %1, 1152921504606846976
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !394

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = shl nuw i64 %.0.val, 4                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #33
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !17, !noundef !5 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.d)
  %..i14 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14)
  %i.f = load i64, ptr %i.a, align 8, !range !19, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !395, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: noreturn nonlazybind uwtable
define void @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [520 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 512 ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(519) %i.e, i8 0, i64 519, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.0.07.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr @94, i64 %.sroa.0.07.i
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !424, !noalias !423, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  store i8 %i.h, ptr %i.i, align 1, !alias.scope !423, !noalias !424
  %i.j = add nuw nsw i64 %.sroa.0.07.i, 1
  %i.k = load i64, ptr %4, align 8, !alias.scope !423, !noalias !424, !noundef !5
  %i.l = add i64 %i.k, 1                          ; 5 uses
  store i64 %i.l, ptr %4, align 8, !alias.scope !423, !noalias !424
  %i.m = icmp samesign ult i64 %.sroa.0.07.i, 37
  %i.n = icmp ult i64 %i.l, 512                   ; 2 uses
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %.lr.ph.i, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.o = icmp ne i64 %2, 0
  %or.cond6.i = and i1 %i.o, %i.n
  br i1 %or.cond6.i, label %.lr.ph.i6, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9

.lr.ph.i6:                                        ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit, %.lr.ph.i6
  %i.p = phi i64 [ %i.v, %.lr.ph.i6 ], [ %i.l, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit ]
  %.sroa.0.07.i7 = phi i64 [ %i.t, %.lr.ph.i6 ], [ 0, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.07.i7
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !426, !noalias !425, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  store i8 %i.r, ptr %i.s, align 1, !alias.scope !425, !noalias !426
  %i.t = add nuw i64 %.sroa.0.07.i7, 1            ; 2 uses
  %i.u = load i64, ptr %4, align 8, !alias.scope !425, !noalias !426, !noundef !5
  %i.v = add i64 %i.u, 1                          ; 4 uses
  store i64 %i.v, ptr %4, align 8, !alias.scope !425, !noalias !426
  %i.w = icmp ult i64 %i.t, %2
  %i.x = icmp ult i64 %i.v, 512
  %or.cond.i8 = and i1 %i.w, %i.x
  br i1 %or.cond.i8, label %.lr.ph.i6, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9: ; preds = %.lr.ph.i6, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit
  %i.y = phi i64 [ %i.l, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit ], [ %i.v, %.lr.ph.i6 ] ; 3 uses
  %i.z = icmp ult i64 %i.y, 512
  br i1 %i.z, label %.lr.ph.i11, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

.lr.ph.i11:                                       ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 34, ptr %i.aa, align 1, !alias.scope !427, !noalias !428
  %i.ab = load i64, ptr %4, align 8, !alias.scope !427, !noalias !428, !noundef !5
  %i.ac = add i64 %i.ab, 1                        ; 4 uses
  store i64 %i.ac, ptr %4, align 8, !alias.scope !427, !noalias !428
  %i.ad = icmp ult i64 %i.ac, 512
  br i1 %i.ad, label %.lr.ph.i11.1, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

.lr.ph.i11.1:                                     ; preds = %.lr.ph.i11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  store i8 46, ptr %i.ae, align 1, !alias.scope !427, !noalias !428
  %i.af = load i64, ptr %4, align 8, !alias.scope !427, !noalias !428, !noundef !5
  %i.ag = add i64 %i.af, 1                        ; 4 uses
  store i64 %i.ag, ptr %4, align 8, !alias.scope !427, !noalias !428
  %i.ah = icmp ult i64 %i.ag, 512
  br i1 %i.ah, label %.lr.ph.i11.2, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

.lr.ph.i11.2:                                     ; preds = %.lr.ph.i11.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  store i8 32, ptr %i.ai, align 1, !alias.scope !427, !noalias !428
  %i.aj = load i64, ptr %4, align 8, !alias.scope !427, !noalias !428, !noundef !5
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.ak, ptr %4, align 8, !alias.scope !427, !noalias !428
  br label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14: ; preds = %.lr.ph.i11, %.lr.ph.i11.1, %.lr.ph.i11.2, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9
  %i.al = phi i64 [ %i.y, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit9 ], [ %i.ac, %.lr.ph.i11 ], [ %i.ag, %.lr.ph.i11.1 ], [ %i.ak, %.lr.ph.i11.2 ] ; 5 uses
  %i.am = icmp ult i64 %i.al, 512                 ; 2 uses
  br i1 %0, label %.split5, label %.split

.split5:                                          ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  br i1 %i.am, label %.lr.ph.i16, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i16:                                       ; preds = %.split5, %.lr.ph.i16
  %i.an = phi i64 [ %i.at, %.lr.ph.i16 ], [ %i.al, %.split5 ]
  %.sroa.0.07.i17 = phi i64 [ %i.ar, %.lr.ph.i16 ], [ 0, %.split5 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @96, i64 %.sroa.0.07.i17
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !430, !noalias !429, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !alias.scope !429, !noalias !430
  %i.ar = add nuw nsw i64 %.sroa.0.07.i17, 1
  %i.as = load i64, ptr %4, align 8, !alias.scope !429, !noalias !430, !noundef !5
  %i.at = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.at, ptr %4, align 8, !alias.scope !429, !noalias !430
  %i.au = icmp samesign ult i64 %.sroa.0.07.i17, 55
  %i.av = icmp ult i64 %i.at, 512
  %or.cond.i18 = and i1 %i.au, %i.av
  br i1 %or.cond.i18, label %.lr.ph.i16, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19

.split:                                           ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  br i1 %i.am, label %.lr.ph.i21, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i21:                                       ; preds = %.split, %.lr.ph.i21
  %i.aw = phi i64 [ %i.bc, %.lr.ph.i21 ], [ %i.al, %.split ]
  %.sroa.0.07.i22 = phi i64 [ %i.ba, %.lr.ph.i21 ], [ 0, %.split ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @95, i64 %.sroa.0.07.i22
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !432, !noalias !431, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !431, !noalias !432
  %i.ba = add nuw nsw i64 %.sroa.0.07.i22, 1
  %i.bb = load i64, ptr %4, align 8, !alias.scope !431, !noalias !432, !noundef !5
  %i.bc = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.bc, ptr %4, align 8, !alias.scope !431, !noalias !432
  %i.bd = icmp samesign ult i64 %.sroa.0.07.i22, 46
  %i.be = icmp ult i64 %i.bc, 512
  %or.cond.i23 = and i1 %i.bd, %i.be
  br i1 %or.cond.i23, label %.lr.ph.i21, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19: ; preds = %.lr.ph.i21, %.lr.ph.i16
  %i.bf = phi i64 [ %i.at, %.lr.ph.i16 ], [ %i.bc, %.lr.ph.i21 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.bg = icmp ult i64 %i.bf, 512
  br i1 %i.bg, label %.lr.ph.i26, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i26:                                       ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19, %.lr.ph.i26
  %i.bh = phi i64 [ %i.bn, %.lr.ph.i26 ], [ %i.bf, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19 ]
  %.sroa.0.07.i27 = phi i64 [ %i.bl, %.lr.ph.i26 ], [ 0, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr @97, i64 %.sroa.0.07.i27
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !434, !noalias !433, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !alias.scope !433, !noalias !434
  %i.bl = add nuw nsw i64 %.sroa.0.07.i27, 1
  %i.bm = load i64, ptr %4, align 8, !alias.scope !433, !noalias !434, !noundef !5
  %i.bn = add i64 %i.bm, 1                        ; 6 uses
  store i64 %i.bn, ptr %4, align 8, !alias.scope !433, !noalias !434
  %i.bo = icmp samesign ult i64 %.sroa.0.07.i27, 29
  %i.bp = icmp ult i64 %i.bn, 512
  %or.cond.i28 = and i1 %i.bo, %i.bp
  br i1 %or.cond.i28, label %.lr.ph.i26, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29: ; preds = %.lr.ph.i26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.bq = icmp ult i64 %i.bn, 512
  br i1 %i.bq, label %.lr.ph.i31, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i31:                                       ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29, %.lr.ph.i31
  %i.br = phi i64 [ %i.bx, %.lr.ph.i31 ], [ %i.bn, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29 ]
  %.sroa.0.07.i32 = phi i64 [ %i.bv, %.lr.ph.i31 ], [ 0, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr @98, i64 %.sroa.0.07.i32
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !436, !noalias !435, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !alias.scope !435, !noalias !436
  %i.bv = add nuw nsw i64 %.sroa.0.07.i32, 1
  %i.bw = load i64, ptr %4, align 8, !alias.scope !435, !noalias !436, !noundef !5
  %i.bx = add i64 %i.bw, 1                        ; 6 uses
  store i64 %i.bx, ptr %4, align 8, !alias.scope !435, !noalias !436
  %i.by = icmp samesign ult i64 %.sroa.0.07.i32, 29
  %i.bz = icmp ult i64 %i.bx, 512
  %or.cond.i33 = and i1 %i.by, %i.bz
  br i1 %or.cond.i33, label %.lr.ph.i31, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34: ; preds = %.lr.ph.i31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.ca = icmp ult i64 %i.bx, 512
  br i1 %i.ca, label %.lr.ph.i36, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

.lr.ph.i36:                                       ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34, %.lr.ph.i36
  %i.cb = phi i64 [ %i.ch, %.lr.ph.i36 ], [ %i.bx, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34 ]
  %.sroa.0.07.i37 = phi i64 [ %i.cf, %.lr.ph.i36 ], [ 0, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr @99, i64 %.sroa.0.07.i37
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !438, !noalias !437, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !alias.scope !437, !noalias !438
  %i.cf = add nuw nsw i64 %.sroa.0.07.i37, 1
  %i.cg = load i64, ptr %4, align 8, !alias.scope !437, !noalias !438, !noundef !5
  %i.ch = add i64 %i.cg, 1                        ; 4 uses
  store i64 %i.ch, ptr %4, align 8, !alias.scope !437, !noalias !438
  %i.ci = icmp samesign ult i64 %.sroa.0.07.i37, 25
  %i.cj = icmp ult i64 %i.ch, 512
  %or.cond.i38 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i38, label %.lr.ph.i36, label %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39

_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39: ; preds = %.lr.ph.i36, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19, %.split5, %.split, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34
  %i.ck = phi i64 [ %i.bx, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit34 ], [ %i.bf, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit19 ], [ %i.bn, %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit29 ], [ %i.al, %.split ], [ %i.al, %.split5 ], [ %i.ch, %.lr.ph.i36 ] ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 513
  br i1 %i.cl, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs6xpQEr8gLsQ_11typst_utils.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36, !noalias !439
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs6xpQEr8gLsQ_11typst_utils.exit: ; preds = %_RNvNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern4push.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.ck)
  %i.cm = load i64, ptr %i.b, align 8, !range !19, !noundef !5
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs6xpQEr8gLsQ_11typst_utils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs6xpQEr8gLsQ_11typst_utils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5
  store ptr %i.cp, ptr %i.c, align 8, !captures !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cr, ptr %i.cs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs6xpQEr8gLsQ_11typst_utils, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @100, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtCs6xpQEr8gLsQ_11typst_utils5round20round_with_precision(double noundef %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store double %0, ptr %i.c, align 8
  %i.d = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %or.cond9 = fcmp ueq double %i.d, +inf
  br i1 %or.cond9, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i16 %1, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp oge double %i.d, f0x4340000000000000
  %i.g = icmp samesign ugt i16 %1, 14
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i16 %1, -308
  br i1 %i.h, label %bb.f, label %.thread10

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %.thread10, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call double @llvm.copysign.f64(double 0.000000e+00, double %0)
  br label %bb.j

.thread10:                                        ; preds = %bb.d, %bb.e
  %i.j = sitofp i16 %1 to double
  %i.k = fneg double %i.j
  %i.l = tail call noundef double @_RNvNtNtCsaQuoagdqERF_4libm4math5exp105exp10(double noundef %i.k) ; 2 uses
  %i.m = fdiv double %0, %i.l
  %i.n = tail call double @llvm.round.f64(double %i.m)
  %i.o = fmul double %i.l, %i.n
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = uitofp nneg i16 %1 to double
  %i.q = tail call noundef double @_RNvNtNtCsaQuoagdqERF_4libm4math5exp105exp10(double noundef %i.p) ; 3 uses
  store double %i.q, ptr %i.b, align 8
  %i.r = fmul double %i.q, %0                     ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp ueq double %i.s, +inf
  br i1 %i.t, label %bb.h, label %bb.i, !prof !4

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.u, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @102, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = tail call double @llvm.round.f64(double %i.r)
  %i.w = fdiv double %i.v, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.c, %.thread10, %bb.i, %bb.f
  %.sroa.0.0 = phi double [ %i.o, %.thread10 ], [ %i.i, %bb.f ], [ %i.w, %bb.i ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs6xpQEr8gLsQ_11typst_utils5round24round_int_with_precision(i64 noundef %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i16 0, %1
  %i.c = sext i16 %i.b to i32
  %i.d = add nsw i32 %i.c, -1                     ; 11 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.thread32, label %.preheader49.preheader.i

.preheader49.preheader.i:                         ; preds = %bb.b
  %i.f = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.preheader49.1.i, label %bb.c

bb.c:                                             ; preds = %.preheader49.preheader.i
  %i.g = icmp eq i32 %i.d, 1
  br i1 %i.g, label %.thread32, label %.preheader49.1.i

.preheader49.1.i:                                 ; preds = %bb.c, %.preheader49.preheader.i
  %.sroa.034.1.i = phi i64 [ 10, %bb.c ], [ 1, %.preheader49.preheader.i ] ; 2 uses
  %i.h = and i32 %i.d, 2
  %.not.1.i = icmp eq i32 %i.h, 0
  br i1 %.not.1.i, label %.preheader49.2.i, label %bb.d

bb.d:                                             ; preds = %.preheader49.1.i
  %i.i = mul nuw nsw i64 %.sroa.034.1.i, 100      ; 2 uses
  %.mask.i = and i32 %i.d, -2
  %i.j = icmp eq i32 %.mask.i, 2
  br i1 %i.j, label %.thread32, label %.preheader49.2.i

.preheader49.2.i:                                 ; preds = %bb.d, %.preheader49.1.i
  %.sroa.034.1.1.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.034.1.i, %.preheader49.1.i ] ; 2 uses
  %i.k = and i32 %i.d, 4
  %.not.2.i = icmp eq i32 %i.k, 0
  br i1 %.not.2.i, label %.preheader49.3.i, label %bb.e

bb.e:                                             ; preds = %.preheader49.2.i
  %i.l = mul nuw nsw i64 %.sroa.034.1.1.i, 10000  ; 2 uses
  %.mask59.i = and i32 %i.d, -4
  %i.m = icmp eq i32 %.mask59.i, 4
  br i1 %i.m, label %.thread32, label %.preheader49.3.i

.preheader49.3.i:                                 ; preds = %bb.e, %.preheader49.2.i
  %.sroa.034.1.2.i = phi i64 [ %i.l, %bb.e ], [ %.sroa.034.1.1.i, %.preheader49.2.i ] ; 2 uses
  %i.n = and i32 %i.d, 8
  %.not.3.i = icmp eq i32 %i.n, 0
  br i1 %.not.3.i, label %.preheader49.4.i, label %bb.f

bb.f:                                             ; preds = %.preheader49.3.i
  %i.o = mul nuw nsw i64 %.sroa.034.1.2.i, 100000000 ; 2 uses
  %.mask60.i = and i32 %i.d, -8
  %i.p = icmp eq i32 %.mask60.i, 8
  br i1 %i.p, label %.thread32, label %.preheader49.4.i

.preheader49.4.i:                                 ; preds = %bb.f, %.preheader49.3.i
  %.sroa.034.1.3.i = phi i64 [ %i.o, %bb.f ], [ %.sroa.034.1.2.i, %.preheader49.3.i ]
  %i.q = and i32 %i.d, 16
  %.not.4.i = icmp eq i32 %i.q, 0
  br i1 %.not.4.i, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.g

bb.g:                                             ; preds = %.preheader49.4.i
  %i.r = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.034.1.3.i, i64 10000000000000000) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  %.mask61.i = and i32 %i.d, -16
  %i.u = icmp ne i32 %.mask61.i, 16
  %or.cond.not = or i1 %i.u, %i.s
  br i1 %or.cond.not, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %.thread32, !prof !8

.thread32:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %.sroa.14.0.i253134 = phi i64 [ 1, %bb.b ], [ %i.t, %bb.g ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ 10, %bb.c ] ; 2 uses
  %i.v = sdiv i64 %0, %.sroa.14.0.i253134         ; 5 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.h

bb.h:                                             ; preds = %.thread32
  %i.x = srem i64 %i.v, 10                        ; 6 uses
end_hunk_0
