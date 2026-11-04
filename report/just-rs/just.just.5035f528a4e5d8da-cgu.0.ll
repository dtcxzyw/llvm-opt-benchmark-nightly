Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCs6SXwsBSuFuw_4just:bb.a
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 25) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !29
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #26
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.k = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #26
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
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

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !3366
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3366 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3366 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3366 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !3366
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3367, !nonnull !13, !noundef !13 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3336

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 280
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3367, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3367, !nonnull !13, !noundef !13 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !3368, !noundef !13 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 280, i64 376
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #26, !noalias !3369
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !3368, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 280, i64 376
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #26, !noalias !3369
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  %i.ah = load i64, ptr %1, align 8, !range !28, !alias.scope !3372, !noundef !13
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3372, !noundef !13 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !3373
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !3373
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3372, !noundef !13 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !3372, !nonnull !13, !noundef !13 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 280
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !3374, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !3348

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 280
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 280
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 280
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 280
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 280
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 280
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 280
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !3374, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 280
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !3374, !nonnull !13, !noundef !13 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3375)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 274
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !3376, !noundef !13
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !3377, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 288
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !3378, !nonnull !13, !noundef !13 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3363

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 280
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 280
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 280
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 280
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 280
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 280
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !3378, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 280
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !3378, !nonnull !13, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 280
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 272
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !3377 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 280, i64 376
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #26, !noalias !3379
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 274
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !3376, !noundef !13
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 280, i64 376
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #26, !noalias !3379
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %.noexc.i.i unwind label %bb.l, !noalias !3380

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !3381
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !3373
  store i64 0, ptr %i.al, align 8, !alias.scope !3373
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3373
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !3417
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3417 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3417 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3417 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !3417
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3418, !nonnull !13, !noundef !13 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3387

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3418, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3418, !nonnull !13, !noundef !13 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !3419, !noundef !13 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i2.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 368, i64 464
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #26, !noalias !3420
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !3419, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 368, i64 464
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #26, !noalias !3420
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.aj = load i64, ptr %1, align 8, !range !28, !alias.scope !3423, !noundef !13
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3423, !noundef !13 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !3424
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !3424
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !3423, !noundef !13 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !3423, !nonnull !13, !noundef !13 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 368
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !3425, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !3399

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 368
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 368
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 368
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 368
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 368
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 368
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 368
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !3425, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 368
  %i.bc = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !3425, !nonnull !13, !noundef !13 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.am, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3426)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 362
  %i.bf = load i16, ptr %i.be, align 2, !noalias !3427, !noundef !13
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !3428, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 376
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !3429, !nonnull !13, !noundef !13 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3414

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 368
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 368
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 368
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 368
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 368
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 368
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !3429, !nonnull !13, !noundef !13
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 368
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !3429, !nonnull !13, !noundef !13 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 368
  br i1 %i.bz, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 360
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !3428 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 368, i64 464
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #26, !noalias !3430
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 362
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !3427, !noundef !13
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 368, i64 464
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #26, !noalias !3430
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %.noexc.i.i unwind label %bb.l, !noalias !3431

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !3432
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !3424
  store i64 0, ptr %i.an, align 8, !alias.scope !3424
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3424
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !3468
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3468 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3468 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3468 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !3468
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3469, !nonnull !13, !noundef !13 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3438

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3469, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3469, !nonnull !13, !noundef !13 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !3470, !noundef !13 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 56, i64 152
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #26, !noalias !3471
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !3470, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 56, i64 152
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #26, !noalias !3471
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %i.ah = load i64, ptr %1, align 8, !range !28, !alias.scope !3474, !noundef !13
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3474, !noundef !13 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !3475
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !3475
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3474, !noundef !13 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !3474, !nonnull !13, !noundef !13 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 56
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !3476, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !3450

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 56
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 56
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 56
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 56
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 56
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 56
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 56
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !3476, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 56
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !3476, !nonnull !13, !noundef !13 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3477)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 54
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !3478, !noundef !13
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !3479, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 64
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !3480, !nonnull !13, !noundef !13 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 56 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3465

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 56
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 56
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 56
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 56
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 56
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 56
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !3480, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 56
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !3480, !nonnull !13, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 56
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 52
  %i.ca = load i16, ptr %i.bz, align 4, !noalias !3479 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 152
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #26, !noalias !3481
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 54
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !3478, !noundef !13
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 56, i64 152
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #26, !noalias !3481
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %.noexc.i.i unwind label %bb.l, !noalias !3482

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !3483
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !3475
  store i64 0, ptr %i.al, align 8, !alias.scope !3475
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3475
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !3519
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3519 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3519 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3519 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !3519
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 15680
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3520, !nonnull !13, !noundef !13 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3489

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 15680
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 15680
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 15680
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 15680
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 15680
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 15680
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 15680
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3520, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 15680
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3520, !nonnull !13, !noundef !13 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !3521, !noundef !13 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1W_4name4NameNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 15680, i64 15776
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #26, !noalias !3522
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !3521, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1W_4name4NameNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1W_4name4NameNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 15680, i64 15776
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #26, !noalias !3522
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1W_4name4NameNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  %i.ah = load i64, ptr %1, align 8, !range !28, !alias.scope !3525, !noundef !13
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3525, !noundef !13 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !3526
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !3526
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3525, !noundef !13 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !3525, !nonnull !13, !noundef !13 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 15680
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !3527, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !3501

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 15680
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 15680
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 15680
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 15680
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 15680
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 15680
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 15680
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !3527, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 15680
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !3527, !nonnull !13, !noundef !13 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 15674
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !3529, !noundef !13
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !3530, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 15688
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !3531, !nonnull !13, !noundef !13 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 15680 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3516

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 15680
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 15680
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 15680
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 15680
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 15680
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 15680
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !3531, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 15680
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !3531, !nonnull !13, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 15680
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 15672
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !3530 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 15680, i64 15776
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #26, !noalias !3532
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 15674
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !3529, !noundef !13
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 15680, i64 15776
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #26, !noalias !3532
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %.noexc.i.i unwind label %bb.l, !noalias !3533

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !3534
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !3526
  store i64 0, ptr %i.al, align 8, !alias.scope !3526
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3526
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1O_4name4NameE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB1T_E10dying_nextCs6SXwsBSuFuw_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !3570
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3570 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3570 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !3570 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !3570
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 896
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3571, !nonnull !13, !noundef !13 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3540

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 896
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 896
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 896
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 896
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 896
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 896
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3571, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 896
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3571, !nonnull !13, !noundef !13 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !3572, !noundef !13 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2E_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #26, !noalias !3573
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !3572, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2E_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2E_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #26, !noalias !3573
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2E_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3575)
  %i.ah = load i64, ptr %1, align 8, !range !28, !alias.scope !3576, !noundef !13
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3576, !noundef !13 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !3577
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !3577
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3576, !noundef !13 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !3576, !nonnull !13, !noundef !13 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 896
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !3578, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !3552

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 896
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 896
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 896
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 896
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 896
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 896
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 896
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !3578, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 896
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !3578, !nonnull !13, !noundef !13 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3579)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 890
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !3580, !noundef !13
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !3581, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontCs6SXwsBSuFuw_4just.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 904
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !3582, !nonnull !13, !noundef !13 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3567

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !3582, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !3582, !nonnull !13, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 896
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 888
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !3581 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #26, !noalias !3583
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 890
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !3580, !noundef !13
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #26, !noalias !3583
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %.noexc.i.i unwind label %bb.l, !noalias !3584

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !3585
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !3577
  store i64 0, ptr %i.al, align 8, !alias.scope !3577
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3577
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBc_6string6StringEB2w_E16deallocating_endNtNtBc_5alloc6GlobalECs6SXwsBSuFuw_4just.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCsgYJ0xFPoqCG_13clap_complete3env6shellsNtB2_4BashNtB4_12EnvCompleter2is(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  %i.c = icmp ne i32 %i.b, 1752392034
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXNtNtCsgYJ0xFPoqCG_13clap_complete3env6shellsNtB2_4BashNtB4_12EnvCompleter4name(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @19, i64 4 }
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB8_3fmt5Write9write_strCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !align !18, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3602, !noundef !13 ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !range !12, !alias.scope !3602, !noundef !13
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i, !prof !11

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1), !noalias !3603
  %i.g = load i64, ptr %i.b, align 8, !alias.scope !3604, !noundef !13 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.b

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.a
  %i.i = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  %i.j = phi i64 [ %i.g, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i ], [ %i.c, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3604, !nonnull !13, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !3604
  br label %_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCs6SXwsBSuFuw_4just.exit

_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCs6SXwsBSuFuw_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %i.c, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i ]
  %i.o = add nuw i64 %i.n, %2
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !3604
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsgYJ0xFPoqCG_13clap_complete3env6shellsNtB5_6ElvishNtB7_12EnvCompleter2is(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 6
end_hunk_0
