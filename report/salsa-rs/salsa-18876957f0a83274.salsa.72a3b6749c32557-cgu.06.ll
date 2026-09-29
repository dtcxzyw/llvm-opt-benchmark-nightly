Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.06?download=true
inline.NumInlined: 248
inline.NumDeleted: 126
begin_hunk_0_@_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEE8grow_oneBQ_:bb.a
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !198
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !9
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #27
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #27
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !9
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !9

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
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  br i1 %2, label %bb.g, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #27
  br label %bb.h

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
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
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !209, !noalias !210, !noundef !5 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !209, !noalias !210, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.r, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread, !prof !10

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.r, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E6tripleBM_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !212, !noalias !213, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !211
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.d ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 4, %bb.d ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.r
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_E10triple_mutBM_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26, !noalias !211
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
  %or.cond.i = icmp ult i64 %.sroa.02.0, 768614336404564650
  br i1 %or.cond.i, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i, label %bb.q, !prof !11

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i: ; preds = %bb.i
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i
  %or.cond67.i = icmp ult i64 %.sink.i.i, 768614336404564651
  br i1 %or.cond67.i, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i, label %bb.q, !prof !11

bb.k:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !211
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef 4) #27, !noalias !211 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.p, label %bb.m

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i: ; preds = %bb.j
  %i.w = mul nuw nsw i64 %.sink.i.i, 12
  %i.x = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.w, i64 noundef 4, i64 noundef %i.t) #27 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.m, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i
  %.sroa.032.0.i = phi ptr [ %i.u, %bb.m ], [ %i.x, %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBH_.exit50.i ]
  store i32 1, ptr %0, align 8, !alias.scope !211
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !211
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.032.0.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !211
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !211
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.m:                                             ; preds = %bb.k
  %i.z = mul nuw i64 %i.r, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 4 %.sink11.i.i, i64 %i.z, i1 false)
  br label %bb.l

bb.n:                                             ; preds = %bb.h
  store i32 0, ptr %0, align 8, !alias.scope !211
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = mul nuw i64 %i.r, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.0..sroa_idx.i, ptr nonnull align 4 %.sink11.i.i, i64 %i.aa, i1 false)
  store i64 %i.r, ptr %i.b, align 8, !alias.scope !211
  %i.ab = mul i64 %.sink.i.i, 12                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %.sink.i.i, 768614336404564651
  br i1 %or.cond.i.i, label %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBF_.exit.i, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  store i64 0, ptr %i.a, align 8, !noalias !214
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !214
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !214
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEBF_.exit.i: ; preds = %bb.n
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.ab, i64 noundef 4) #27
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
  %i.b = load i64, ptr %i.a, align 8, !noalias !217, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !217, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread, !prof !10

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit
  %.sink11.i8 = phi i64 [ %i.e, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink11.i8, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit
    i64 0, label %bb.d
  ], !prof !218

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
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.sink11.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !8

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
  br i1 %or.cond, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit, label %bb.l, !prof !11

_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit
  %or.cond67 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67, label %_RINvCsi1wr4QBDb3z_8smallvec12layout_arrayNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBH_.exit48, label %bb.l, !prof !11

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
  br i1 %or.cond.i, label %_RINvCsi1wr4QBDb3z_8smallvec10deallocateNtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionEBF_.exit, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  store i64 0, ptr %i.a, align 8, !noalias !221
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !221
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
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !232, !noalias !233, !noundef !5 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !232, !noalias !233, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread, !prof !10

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit.thread: ; preds = %bb.a, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E6tripleCsC8CapfvpQ1_5salsa.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !8
end_hunk_0
