Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap14serialize_intoQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table:bb.a
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.go, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !581
  %i.gv = load i64, ptr %i.de, align 8, !alias.scope !582, !noalias !580, !noundef !97
  br label %_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECs9KQ7US1M400_11lance_table.exit127

_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECs9KQ7US1M400_11lance_table.exit127: ; preds = %_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECs9KQ7US1M400_11lance_table.exit124, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i126
  %.sink1.i125 = phi i64 [ %i.gv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i126 ], [ %i.go, %_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECs9KQ7US1M400_11lance_table.exit124 ] ; 3 uses
  %i.gw = icmp sgt i64 %.sink1.i125, -1
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = load ptr, ptr %i.df, align 8, !alias.scope !582, !noalias !580, !nonnull !97, !noundef !97 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sink1.i125
  store i16 %i.gr, ptr %i.gy, align 1, !noalias !582
  %i.gz = add nuw i64 %.sink1.i125, 2             ; 3 uses
  store i64 %i.gz, ptr %i.de, align 8, !alias.scope !582, !noalias !580
  %i.ha = icmp eq ptr %i.gf, %i.fc
  br i1 %i.ha, label %.loopexit, label %.lr.ph31

._crit_edge39:                                    ; preds = %.loopexit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit105.thread
  ret void

bb.v:                                             ; preds = %.lr.ph
  %i.hb = lshr i64 %.sroa.7.023, 3                ; 3 uses
  %i.hc = icmp samesign ult i64 %i.hb, %.sroa.04.0
  br i1 %i.hc, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.x, %.lr.ph
  %i.hd = icmp eq ptr %i.bc, %i.a
  br i1 %i.hd, label %.thread9, label %.lr.ph

bb.x:                                             ; preds = %bb.v
  %i.he = trunc i64 %.sroa.7.023 to i8
  %i.hf = and i8 %i.he, 7
  %i.hg = shl nuw i8 1, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.hb ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !noundef !97
  %i.hj = or i8 %i.hi, %i.hg
  store i8 %i.hj, ptr %i.hh, align 1
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hb, i64 noundef %.sroa.04.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #80
          to label %bb.z unwind label %bb.g

bb.z:                                             ; preds = %bb.y
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1E_5ErrorNvMNtB1G_12bitmap_storeNtB3S_11BitmapStore8try_fromNtB3S_5ErrorECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !725 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 18 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp samesign ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add nsw i64 %2, -4                       ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !726, !noalias !727 ; 4 uses
  %i.k = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i64 %2, 8
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = and i32 %.sroa.0.0.copyload.i, 65535
  %i.n = icmp eq i32 %i.m, 12347
  br i1 %i.n, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i188 = load i32, ptr %i.i, align 1, !alias.scope !728, !noalias !729 ; 3 uses
  %i.p = icmp ugt i32 %.sroa.0.0.copyload.i188, 65536
  br i1 %i.p, label %bb.m, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %.sroa.017.0 = lshr i64 %i.u, 3                 ; 12 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !730
  %i.v = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 2305843009213693953) %.sroa.017.0, i64 noundef range(i64 1, 9) 1) #76, !noalias !730 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.h
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 2305843009213693953) %.sroa.017.0) #80, !noalias !731
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.x = icmp samesign ugt i64 %.sroa.017.0, %i.j
  br i1 %i.x, label %bb.k, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.017.0 ; 2 uses
  %i.z = sub nuw nsw i64 %i.j, %.sroa.017.0       ; 2 uses
  %i.aa = icmp eq i64 %.sroa.017.0, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %.sroa.017.0, i1 false), !alias.scope !733, !noalias !734
  br label %.thread.thread

bb.i:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i
  %i.ab = load i8, ptr %i.i, align 1, !noalias !735, !noundef !97
  store i8 %i.ab, ptr %i.v, align 1, !alias.scope !732
  br label %.thread.thread

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !736
  %i.ac = tail call noundef dereferenceable_or_null(20) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !736 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.bw, label %bb.bx

bb.k:                                             ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.ae, align 8
  store i64 -1, ptr %0, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %.sroa.017.0, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

.thread:                                          ; preds = %bb.g
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i188 to i64
  %i.ag = add nsw i64 %2, -8                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i188, 0
  br i1 %i.ai, label %bb.p, label %.thread.thread

.thread.thread:                                   ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i, %.thread
  %.sroa.14.0399632 = phi i64 [ undef, %.thread ], [ %.sroa.017.0, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %.sroa.017.0, %bb.i ]
  %.sroa.10.0404622 = phi ptr [ undef, %.thread ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %i.v, %bb.i ] ; 2 uses
  %.sroa.0295.0411612 = phi i64 [ -1, %.thread ], [ %.sroa.017.0, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %.sroa.017.0, %bb.i ] ; 2 uses
  %.sroa.19.0414610 = phi i64 [ %i.ag, %.thread ], [ %i.z, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %i.z, %bb.i ]
  %.sroa.0.0415608 = phi ptr [ %i.ah, %.thread ], [ %i.y, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %i.y, %bb.i ]
  %.sroa.016.0416606 = phi i1 [ true, %.thread ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %i.t, %bb.i ]
  %.sroa.03.0417604 = phi i64 [ %i.af, %.thread ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i ], [ %i.s, %bb.i ] ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.03.0417604, 2    ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !737
  %i.ak = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 2305843009213693953) %i.aj, i64 noundef range(i64 1, 9) 1) #76, !noalias !737 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i197, label %bb.l

bb.l:                                             ; preds = %.thread.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.p

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i197: ; preds = %.thread.thread
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 2305843009213693953) %i.aj) #80
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i197
  unreachable

bb.m:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !738
  %i.an = tail call noundef dereferenceable_or_null(30) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !738 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.bs, label %bb.bt

.body:                                            ; preds = %.split, %bb.r, %bb.o
  %.sroa.0295.0407 = phi i64 [ %.sroa.0295.0411613, %bb.r ], [ %.sroa.0295.0409, %bb.o ], [ %.sroa.0295.0411613, %.split ] ; 2 uses
  %.sroa.10.0400 = phi ptr [ %.sroa.10.0404623, %bb.r ], [ %.sroa.10.0402, %bb.o ], [ %.sroa.10.0404623, %.split ] ; 2 uses
  %.pn153 = phi { ptr, i32 } [ %.pn151637, %bb.r ], [ %i.ap, %bb.o ], [ %i.au, %.split ] ; 2 uses
  %.0.val.off.i = add nsw i64 %.sroa.0295.0407, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.n, label %common.resume

bb.n:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0400) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0400, i64 noundef %.sroa.0295.0407, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %common.resume

bb.o:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i197, %bb.bv, %bb.bs
  %.sroa.0295.0409 = phi i64 [ %.sroa.0295.0411612, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i197 ], [ -1, %bb.bv ], [ -1, %bb.bs ]
  %.sroa.10.0402 = phi ptr [ %.sroa.10.0404622, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i197 ], [ undef, %bb.bv ], [ undef, %bb.bs ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l, %.thread
  %i.aq = phi i1 [ true, %.thread ], [ false, %bb.l ] ; 3 uses
  %i.ar = phi i64 [ 0, %.thread ], [ %i.aj, %bb.l ] ; 8 uses
  %.sroa.14.0399633 = phi i64 [ undef, %.thread ], [ %.sroa.14.0399632, %bb.l ] ; 2 uses
  %.sroa.10.0404623 = phi ptr [ undef, %.thread ], [ %.sroa.10.0404622, %bb.l ] ; 8 uses
  %.sroa.0295.0411613 = phi i64 [ -1, %.thread ], [ %.sroa.0295.0411612, %bb.l ] ; 7 uses
  %.sroa.19.0414611 = phi i64 [ %i.ag, %.thread ], [ %.sroa.19.0414610, %bb.l ] ; 2 uses
  %.sroa.0.0415609 = phi ptr [ %i.ah, %.thread ], [ %.sroa.0.0415608, %bb.l ] ; 2 uses
  %.sroa.016.0416607 = phi i1 [ true, %.thread ], [ %.sroa.016.0416606, %bb.l ]
  %.sroa.03.0417605 = phi i64 [ 0, %.thread ], [ %.sroa.03.0417604, %bb.l ] ; 4 uses
  %.sroa.9.0.ph.i196 = phi i64 [ 1, %.thread ], [ %i.am, %bb.l ]
  %i.as = inttoptr i64 %.sroa.9.0.ph.i196 to ptr  ; 8 uses
  %i.at = icmp samesign ugt i64 %i.ar, %.sroa.19.0414611
  br i1 %i.at, label %.thread493, label %bb.s

bb.q:                                             ; preds = %.invoke, %bb.bb, %bb.aq, %bb.bi, %bb.am, %bb.af, %bb.av
  %lpad.loopexit.split-lp543 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.r

bb.r:                                             ; preds = %.thread468.loopexit.split-lp.loopexit, %.split638, %bb.q, %.split.thread, %.split
  %.pn151637 = phi { ptr, i32 } [ %i.au, %.split ], [ %lpad.loopexit.split-lp543, %bb.q ], [ %i.dr, %.split638 ], [ %lpad.loopexit, %.thread468.loopexit.split-lp.loopexit ], [ %i.bq, %.split.thread ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %.body

.split:                                           ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aq, label %.body, label %bb.r

.thread493:                                       ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bq

bb.s:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0415609, i64 %i.ar ; 4 uses
  %i.ax = sub nuw nsw i64 %.sroa.19.0414611, %i.ar ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %.sroa.0.0415609, i64 range(i64 0, -9223372036854775808) %i.ar, i1 false), !alias.scope !739, !noalias !740
  br i1 %.sroa.016.0416607, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit217, %bb.s
  %.sroa.19.1 = phi i64 [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit217 ], [ %i.ax, %bb.s ]
  %.sroa.0.1 = phi ptr [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit217 ], [ %i.aw, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ay = mul nuw nsw i64 %.sroa.03.0417605, 40   ; 2 uses
  br i1 %i.aq, label %._crit_edge.thread, label %bb.u

._crit_edge.thread:                               ; preds = %bb.t
  %i.az = icmp eq i64 %.sroa.03.0417605, 0
  tail call void @llvm.assume(i1 %i.az)
  store i64 0, ptr %i.e, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.bb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit218

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !741
  %i.bc = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !741 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.ac, label %.lr.ph

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, i8 noundef 0, i64 noundef %i.ar)
          to label %bb.w unwind label %.split

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !97, !noundef !97 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !97 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.bi = icmp ugt i64 %i.bh, %i.ax
  br i1 %i.bi, label %bb.y, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i210

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i210: ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bh
  %i.bk = sub nuw nsw i64 %i.ax, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i211

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i211: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i210
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, -9223372036854775808) %i.bh, i1 false), !alias.scope !743, !noalias !744
  br label %bb.aa

bb.x:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i210
  %i.bm = load i8, ptr %i.aw, align 1, !noalias !745, !noundef !97
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !742
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.bn, align 8
  store i64 -1, ptr %0, align 8
  %.val166 = load i64, ptr %i.f, align 8          ; 2 uses
  %i.bo = icmp eq i64 %.val166, 0
  br i1 %i.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit216, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val166, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit216

bb.aa:                                            ; preds = %bb.x, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i211
  %.sroa.0308.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0308.0.copyload, 0
  br i1 %i.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit217, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0308.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit217

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit217: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.ac:                                            ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #80
          to label %bb.an unwind label %.split.thread

.split.thread:                                    ; preds = %bb.ac
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %bb.u
  store i64 %.sroa.03.0417605, ptr %i.e, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.bs, align 8
  %.not145 = icmp eq i64 %.sroa.0295.0411613, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit218

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit218: ; preds = %._crit_edge.thread, %._crit_edge
  %.0.val.off.i223 = add nsw i64 %.sroa.0295.0411613, -1
  %switch.i224 = icmp ult i64 %.0.val.off.i223, -2
  br i1 %switch.i224, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit218
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0404623) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0404623, i64 noundef %.sroa.0295.0411613, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225: ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263, %bb.br, %bb.ad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit218, %bb.b, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit, %bb.f
  ret void

bb.ae:                                            ; preds = %bb.bo, %.lr.ph
  %.sroa.027.0542 = phi i1 [ false, %.lr.ph ], [ true, %bb.bo ]
  %.sroa.6.0541 = phi i16 [ undef, %.lr.ph ], [ %.sroa.0.0.copyload.i219, %bb.bo ]
  %.sroa.8.0540 = phi i64 [ undef, %.lr.ph ], [ %.sroa.8.1, %bb.bo ]
  %.sroa.0119.0539 = phi i64 [ 0, %.lr.ph ], [ %3, %bb.bo ] ; 3 uses
  %.sroa.0.2538 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.3, %bb.bo ] ; 8 uses
  %.sroa.19.2537 = phi i64 [ %.sroa.19.1, %.lr.ph ], [ %.sroa.19.3, %bb.bo ] ; 6 uses
  %.sroa.0305.0536 = phi ptr [ %i.as, %.lr.ph ], [ %i.ca, %bb.bo ] ; 3 uses
  %3 = add nuw nsw i64 %.sroa.0119.0539, 1        ; 2 uses
  %.sroa.0.0.copyload.i219 = load i16, ptr %.sroa.0305.0536, align 1, !alias.scope !746, !noalias !747 ; 3 uses
  %i.bw = icmp ule i16 %.sroa.0.0.copyload.i219, %.sroa.6.0541
  %or.cond = and i1 %.sroa.027.0542, %i.bw
  br i1 %or.cond, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bx = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 29)
          to label %bb.ag unwind label %bb.q

bb.ag:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit, %bb.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit, %bb.ax, %bb.at, %bb.bk, %bb.bg, %bb.ag
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bp

bb.ai:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0305.0536, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0305.0536, i64 4
  %.sroa.0.0.copyload.i226 = load i16, ptr %i.bz, align 1, !alias.scope !748, !noalias !749 ; 2 uses
  %i.cb = zext i16 %.sroa.0.0.copyload.i226 to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 4 uses
  br i1 %.not145, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = lshr i64 %.sroa.0119.0539, 3            ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %.sroa.14.0399633
  br i1 %i.ce, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai, %bb.al
  %i.cf = icmp ult i16 %.sroa.0.0.copyload.i226, 4096
  br i1 %i.cf, label %bb.ar, label %bb.ap

bb.al:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0404623) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.10.0404623, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !97
  %i.ci = trunc i64 %.sroa.0119.0539 to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = shl nuw i8 1, %i.cj
  %i.cl = and i8 %i.ch, %i.ck
  %.not146 = icmp eq i8 %i.cl, 0
  br i1 %.not146, label %bb.ak, label %bb.ao

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.sroa.14.0399633, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #80
          to label %bb.an unwind label %bb.q

bb.an:                                            ; preds = %bb.bs, %bb.am, %bb.ac
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.cm = icmp ult i64 %.sroa.19.2537, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2538) ]
  br i1 %i.cm, label %bb.bg, label %bb.bh

bb.ap:                                            ; preds = %bb.ak
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76
  %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed = call align 8 dereferenceable_or_null(8192) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 8192, i64 8) ; 4 uses
  %i.cn = icmp eq ptr %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.cn, label %bb.aq, label %bb.as, !prof !104

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8192) #80
          to label %.noexc236 unwind label %bb.q

.noexc236:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ak
  %i.co = shl nuw nsw i64 %i.cc, 1                ; 7 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !750
  %i.cp = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.co, i64 noundef range(i64 1, 9) 2) #76, !noalias !750 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %bb.ay

bb.as:                                            ; preds = %bb.ap
  %i.cr = icmp ult i64 %.sroa.19.2537, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2538) ]
  br i1 %i.cr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.cs, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, i64 noundef 8192, i64 noundef 8) #76
  br label %bb.ah

bb.au:                                            ; preds = %bb.as
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.2538, i64 8192
  %i.cu = add nsw i64 %.sroa.19.2537, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.2538, i64 range(i64 0, -9223372036854775808) 8192, i1 false), !alias.scope !751, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB2_11BitmapStore8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 4097, 65537) %i.cc, ptr noalias noundef nonnull align 8 %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed)
          to label %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit unwind label %.thread468.loopexit.split-lp.loopexit

_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.au
  %i.cv = load i64, ptr %i.c, align 8, !range !105, !noundef !97
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = load i64, ptr %i.bu, align 8, !noundef !97 ; 2 uses
  br i1 %i.cw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit
  %i.cy = load i64, ptr %i.bt, align 8, !noundef !97
  %i.cz = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef 21, i64 noundef %i.cy, i64 noundef %i.cx)
          to label %bb.ax unwind label %bb.q

bb.aw:                                            ; preds = %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit
  %i.da = load ptr, ptr %i.bt, align 8, !nonnull !97, !align !102, !noundef !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.db, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

.thread468.loopexit.split-lp.loopexit:            ; preds = %bb.az, %bb.au
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.r

bb.ay:                                            ; preds = %bb.ar
  %i.dc = icmp ugt i64 %i.co, %.sroa.19.2537
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit, label %bb.az

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ay
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.dd, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #76
  br label %bb.ah

bb.az:                                            ; preds = %bb.ay
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.2538, i64 %i.co
  %i.df = sub nuw nsw i64 %.sroa.19.2537, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.2538, i64 range(i64 0, -9223372036854775808) %i.co, i1 false), !alias.scope !753, !noalias !754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cc, ptr %i.a, align 8, !noalias !755
  store ptr %i.cp, ptr %.sroa.4350.0..sroa_idx, align 8, !noalias !755
  store i64 %i.cc, ptr %.sroa.5351.0..sroa_idx, align 8, !noalias !755
  invoke void @_RNvXs2_NtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB5_10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ba unwind label %.thread468.loopexit.split-lp.loopexit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = load i64, ptr %i.d, align 8, !range !99, !noundef !97 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.di = load i64, ptr %.sroa.4128.0..sroa_idx, align 8, !noundef !97
  %i.dj = load i8, ptr %.sroa.5129.0..sroa_idx, align 8, !range !106, !noundef !97
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef 21, i64 noundef %i.di, i1 noundef zeroext %i.dk)
          to label %bb.bf unwind label %bb.q

bb.bc:                                            ; preds = %bb.ba
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dm = ptrtoint ptr %.sroa.4128.0.copyload to i64
  %i.dn = inttoptr i64 %i.dg to ptr
  br label %bb.bd

bb.bd:                                            ; preds = %bb.aw, %bb.bc, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit
  %.sroa.19.3 = phi i64 [ %i.df, %bb.bc ], [ %i.cu, %bb.aw ], [ %i.eh, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.0.3 = phi ptr [ %i.de, %bb.bc ], [ %i.ct, %bb.aw ], [ %i.eg, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.8.1 = phi i64 [ %.sroa.5129.0.copyload, %bb.bc ], [ %.sroa.8.0540, %bb.aw ], [ %i.dy, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.745.0 = phi i64 [ %i.dm, %bb.bc ], [ %i.cx, %bb.aw ], [ %i.ex, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.4.0 = phi ptr [ %i.dn, %bb.bc ], [ %i.da, %bb.aw ], [ %i.ey, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.043.0 = phi i64 [ 0, %bb.bc ], [ 1, %bb.aw ], [ 2, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.sroa.0.0.copyload.i219, ptr %i.bv, align 8
  store i64 %.sroa.043.0, ptr %i.b, align 8
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.745.0, ptr %.sroa.745.0..sroa_idx, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  %i.do = load i64, ptr %i.bs, align 8, !alias.scope !756, !noundef !97 ; 3 uses
  %i.dp = load i64, ptr %i.e, align 8, !range !101, !alias.scope !756, !noundef !97
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.be, label %bb.bo

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.bo unwind label %.split638, !noalias !757

.split638:                                        ; preds = %bb.be
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b) #81
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %bb.r

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.ds, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.bg:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.dt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.bh:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.2538, i64 2 ; 2 uses
  %i.dv = add nsw i64 %.sroa.19.2537, -2          ; 2 uses
  %.sroa.0.0.copyload.i231 = load i16, ptr %.sroa.0.2538, align 1, !alias.scope !758, !noalias !759 ; 3 uses
  %i.dw = icmp eq i16 %.sroa.0.0.copyload.i231, 0
  br i1 %i.dw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dx = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 28)
          to label %bb.bk unwind label %bb.q

bb.bj:                                            ; preds = %bb.bh
  %i.dy = zext i16 %.sroa.0.0.copyload.i231 to i64 ; 3 uses
  %i.dz = shl nuw nsw i64 %i.dy, 2                ; 9 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !760
  %i.ea = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.dz, i64 noundef range(i64 1, 9) 2) #76, !noalias !760 ; 9 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.invoke, label %bb.bl

.invoke:                                          ; preds = %bb.bj, %bb.ar
  %i.ec = phi i64 [ %i.co, %bb.ar ], [ %i.dz, %bb.bj ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.ec) #80
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.ed, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

bb.bl:                                            ; preds = %bb.bj
  %i.ee = icmp ugt i64 %i.dz, %i.dv
  br i1 %i.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.bl
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @151, ptr %i.ef, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 2) #76
  br label %bb.ah

.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin:              ; preds = %bb.bl
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dz
  %i.eh = sub nuw nsw i64 %i.dv, %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ea, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, -9223372036854775808) %i.dz, i1 false), !alias.scope !761, !noalias !762
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel = load i32, ptr %i.ea, align 2, !noalias !763 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.peel = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel, 16
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.peel to i16
  %i.ej = add i16 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel ; 3 uses
  %i.ek = icmp ult i16 %i.ej, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel
  br i1 %i.ek, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit.thread, label %bb.bm, !prof !100

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin
  %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.peel = zext i16 %i.ej to i48
  %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.peel, 32
  %i.el = shl i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel, 16
  %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel = zext i32 %i.el to i48
  %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.peel = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel, %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel
  %i.em = lshr exact i48 %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.peel, 16
  %i.en = trunc nuw i48 %i.em to i32
  store i32 %i.en, ptr %i.ea, align 2, !noalias !764
  %.not.i.i.i.i.i.i.i.i.i.peel = icmp eq i16 %.sroa.0.0.copyload.i231, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.peel, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bm
  %i.eo = getelementptr i8, ptr %i.ea, i64 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %bb.bn
  %.sroa.6.0383 = phi i16 [ %i.ep, %bb.bn ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.4.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.es, %bb.bn ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, align 2, !noalias !763 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 16
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i to i16
  %i.ep = add i16 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.eq = icmp uge i16 %i.ep, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %i.er = call i16 @llvm.uadd.sat.i16(i16 %.sroa.6.0383, i16 1)
  %.not.i.i.i.i.i.i.i.i.i.i.i.not = icmp ult i16 %i.er, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %or.cond666 = and i1 %i.eq, %.not.i.i.i.i.i.i.i.i.i.i.i.not
  br i1 %or.cond666, label %bb.bn, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit.thread, !prof !107

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.es = getelementptr i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i16 %i.ep to i48
  %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.et = shl i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 16
  %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.et to i48
  %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = lshr exact i48 %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, 16
  %i.ev = trunc nuw i48 %i.eu to i32
  store i32 %i.ev, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, align 2, !noalias !764
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, %i.ei
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !712

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin, %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !765
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.ew, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ah

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.bn, %bb.bm
  %i.ex = ptrtoint ptr %i.ea to i64
  %i.ey = inttoptr i64 %i.dy to ptr
  br label %bb.bd

bb.bo:                                            ; preds = %bb.be, %bb.bd
  %i.ez = load ptr, ptr %i.br, align 8, !alias.scope !756, !nonnull !97, !noundef !97
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.fb = add i64 %i.do, 1
  store i64 %i.fb, ptr %i.bs, align 8, !alias.scope !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %3, %.sroa.03.0417605
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit216: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit216
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263, label %bb.bq

bb.bq:                                            ; preds = %.thread493, %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263: ; preds = %bb.bp, %bb.bq
  %.0.val.off.i265 = add nsw i64 %.sroa.0295.0411613, -1
  %switch.i266 = icmp ult i64 %.0.val.off.i265, -2
  br i1 %switch.i266, label %bb.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0404623) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0404623, i64 noundef %.sroa.0295.0411613, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

bb.bs:                                            ; preds = %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 30) #80
          to label %bb.an unwind label %bb.o

bb.bt:                                            ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.an, ptr noundef nonnull align 1 dereferenceable(30) @24, i64 30, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !766
  %i.fc = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !766 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bu, label %bb.bv, !prof !104

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc268 unwind label %.body.thread

.noexc268:                                        ; preds = %bb.bu
  unreachable

.body.thread:                                     ; preds = %bb.bu
  %i.fe = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !767
  br label %common.resume

bb.bv:                                            ; preds = %bb.bt
  store i64 30, ptr %i.fc, align 8
  %.sroa.5362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.an, ptr %.sroa.5362.0..sroa_idx, align 8
  %.sroa.7363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 30, ptr %.sroa.7363.0..sroa_idx, align 8
  %i.ff = invoke noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @26)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263.thread unwind label %bb.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit263.thread: ; preds = %bb.bv
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ff, ptr %i.fg, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225

bb.bw:                                            ; preds = %bb.j
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #80
  unreachable

bb.bx:                                            ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ac, ptr noundef nonnull align 1 dereferenceable(20) @27, i64 20, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !768
  %i.fh = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !768 ; 5 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.by, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit, !prof !104

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc270 unwind label %bb.bz

.noexc270:                                        ; preds = %bb.by
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %.body.thread, %bb.bz
  %common.resume.op = phi { ptr, i32 } [ %i.fj, %bb.bz ], [ %i.fe, %.body.thread ], [ %.pn153, %.body ], [ %.pn153, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.bz:                                            ; preds = %bb.by
  %i.fj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !769
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.bx
  store i64 20, ptr %i.fh, align 8
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.ac, ptr %.sroa.5355.0..sroa_idx, align 8
  %.sroa.7356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 20, ptr %.sroa.7356.0..sroa_idx, align 8
  %i.fk = tail call noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @26)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.fl, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit225
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !777 {
bb.a:
  %i.a = alloca [6 x i8], align 2                 ; 7 uses
  %i.b = alloca [6 x i8], align 2                 ; 12 uses
  %i.c = alloca [6 x i8], align 2                 ; 7 uses
  %.val.i = load i32, ptr %1, align 4, !alias.scope !778, !noundef !97 ; 4 uses
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val70.i = load i32, ptr %.sroa.3.0.i.i, align 4, !alias.scope !778, !noundef !97 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !range !106, !alias.scope !779, !noundef !97
  %i.f = icmp eq i8 %i.e, 0
  %i.g = icmp ugt i32 %.val.i, %.val70.i          ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.f, label %.thread.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %.val70.i, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.f, label %bb.d

.thread.i:                                        ; preds = %bb.d, %bb.b
  %.sroa.053.0.i = phi i32 [ %i.j, %bb.d ], [ %.val70.i, %bb.b ] ; 3 uses
  %i.i = icmp ugt i32 %.val.i, %.sroa.053.0.i
  br i1 %i.i, label %bb.f, label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %.val70.i, -1
  br label %.thread.i

_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECs9KQ7US1M400_11lance_table.exit: ; preds = %.thread.i
  %i.k = lshr i32 %.val.i, 16                     ; 3 uses
  %i.l = trunc nuw i32 %i.k to i16                ; 3 uses
  %i.m = trunc i32 %.val.i to i16                 ; 2 uses
  %i.n = lshr i32 %.sroa.053.0.i, 16              ; 3 uses
  %i.o = trunc nuw i32 %i.n to i16                ; 3 uses
  %i.p = trunc i32 %.sroa.053.0.i to i16          ; 2 uses
  %i.q = icmp eq i32 %i.k, %i.n
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECs9KQ7US1M400_11lance_table.exit
  %i.r = icmp samesign ult i32 %i.k, %i.n
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.s = add nuw i16 %i.l, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.m, ptr %i.b, align 2
  store i16 -1, ptr %.sroa.47.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 2
  %i.t = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %i.l, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.peel.not = icmp eq i16 %i.s, %i.o
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

bb.e:                                             ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.m, ptr %i.c, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.p, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 2
  %i.u = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %i.l, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.c, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

._crit_edge:                                      ; preds = %.peel.next, %.lr.ph, %.preheader
  %.sroa.0.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.t, %.lr.ph ], [ %i.z, %.peel.next ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.p, ptr %.sroa.411.0..sroa_idx, align 2
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %.sroa.512.0..sroa_idx, align 2
  %i.v = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %i.o, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = add i64 %i.v, %.sroa.0.0.lcssa
  br label %bb.f

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %.sroa.0.033 = phi i64 [ %i.z, %.peel.next ], [ %i.t, %.lr.ph ]
  %.sroa.016.032 = phi i16 [ %i.x, %.peel.next ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.x = add nuw i16 %.sroa.016.032, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  store i16 -1, ptr %.sroa.47.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 2
  %i.y = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %.sroa.016.032, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = add i64 %i.y, %.sroa.0.033               ; 2 uses
  %exitcond.not = icmp eq i16 %i.x, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !776

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB4_7builder11Transaction32build_manifest_with_read_version:bb.a
  %.lcssa.i.i = phi i16 [ %.sroa.92087.02893, %.lr.ph2897.split ], [ %.cast.i.i, %.lr.ph.i.i1590 ] ; 3 uses
  %i.auh = add i16 %.lcssa.i.i, -1
  %i.aui = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.auj = zext nneg i16 %i.aui to i64
  %i.auk = and i16 %i.auh, %.lcssa.i.i
  %i.aul = sub nsw i64 0, %i.auj
  %i.aum = getelementptr inbounds [32 x i8], ptr %.sroa.02084.1, i64 %i.aul
  %i.aun = add i64 %.sroa.112089.02892, -1        ; 2 uses
  %i.auo = getelementptr inbounds i8, ptr %i.aum, i64 -32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  store ptr %i.auo, ptr %i.db, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !47624)
  call void @llvm.experimental.noalias.scope.decl(metadata !47626)
  %i.aup = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECs9KQ7US1M400_11lance_table(i64 %.val.i1593, i64 %.val5.i1594, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.auo), !noalias !47624 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47627)
  %i.auq = lshr i64 %i.aup, 57
  %i.aur = trunc nuw nsw i64 %i.auq to i8
  %i.aus = insertelement <16 x i8> poison, i8 %i.aur, i64 0
  %i.aut = shufflevector <16 x i8> %i.aus, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i1595 = load i64, ptr %i.auo, align 8, !alias.scope !47628
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mp, %.loopexit2692
  %.sroa.9.0.i.i.i1596 = phi i64 [ 0, %.loopexit2692 ], [ %i.avk, %bb.mp ]
  %.pn.i.i.i1597 = phi i64 [ %i.aup, %.loopexit2692 ], [ %i.avl, %bb.mp ]
  %.sroa.01.0.i.i.i1598 = and i64 %.pn.i.i.i1597, %i.atl ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sroa.01.0.i.i.i1598
  %.sroa.0.0.copyload.i26.i.i1599 = load <16 x i8>, ptr %i.auu, align 1, !noalias !47629 ; 2 uses
  %i.auv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i1599, %i.aut
  %i.auw = bitcast <16 x i1> %i.auv to i16        ; 2 uses
  %.not.i.not32.i.i1600 = icmp eq i16 %i.auw, 0
  br i1 %.not.i.not32.i.i1600, label %._crit_edge.i.i1605, label %.lr.ph.i.i1601

.lr.ph.i.i1601:                                   ; preds = %bb.mn, %bb.mo
  %.sroa.06.0.i33.i.i1602 = phi i16 [ %i.avj, %bb.mo ], [ %i.auw, %bb.mn ] ; 3 uses
  %i.aux = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i1602, i1 true)
  %i.auy = zext nneg i16 %i.aux to i64
  %i.auz = add i64 %.sroa.01.0.i.i.i1598, %i.auy
  %i.ava = and i64 %i.auz, %i.atl
  %i.avb = sub nsw i64 0, %i.ava
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.atm, i64 %i.avb
  %i.avd = getelementptr inbounds i8, ptr %i.avc, i64 -8
  %.val2.i.i.i1603 = load i64, ptr %i.avd, align 8, !noalias !47630, !noundef !97
  %i.ave = icmp eq i64 %.val.i.i.i.i1595, %.val2.i.i.i1603
  br i1 %i.ave, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyyECs9KQ7US1M400_11lance_table.exit, label %bb.mo, !prof !109

._crit_edge.i.i1605:                              ; preds = %bb.mo, %bb.mn
  %i.avf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i1599, splat (i8 -1)
  %i.avg = bitcast <16 x i1> %i.avf to i16
  %i.avh = icmp eq i16 %i.avg, 0
  br i1 %i.avh, label %bb.mp, label %.loopexit2691, !prof !100

bb.mo:                                            ; preds = %.lr.ph.i.i1601
  %i.avi = add i16 %.sroa.06.0.i33.i.i1602, -1
  %i.avj = and i16 %i.avi, %.sroa.06.0.i33.i.i1602 ; 2 uses
  %.not.i.not.i.i1604 = icmp eq i16 %i.avj, 0
  br i1 %.not.i.not.i.i1604, label %._crit_edge.i.i1605, label %.lr.ph.i.i1601

bb.mp:                                            ; preds = %._crit_edge.i.i1605
  %i.avk = add i64 %.sroa.9.0.i.i.i1596, 16       ; 2 uses
  %i.avl = add i64 %.sroa.01.0.i.i.i1598, %i.avk
  br label %bb.mn

bb.mq:                                            ; preds = %.lr.ph2899, %bb.nk
  %.sroa.0450.02898 = phi ptr [ %i.aqh, %.lr.ph2899 ], [ %i.avm, %bb.nk ] ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.0450.02898, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  invoke fastcc void @_RNvXsv_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8FragmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.0450.02898)
          to label %bb.mr unwind label %.loopexit.split-lp2687.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge2900:                                  ; preds = %bb.nk, %.preheader2685
  %.val1225 = load ptr, ptr %i.dc, align 8
  %i.avn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.val1226 = load i64, ptr %i.avn, align 8, !noundef !97
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetyEECs9KQ7US1M400_11lance_table(ptr %.val1225, i64 %.val1226)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileEEEB2b_(ptr noalias noundef align 8 dereferenceable(48) %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRyEECs9KQ7US1M400_11lance_table.exit

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.experimental.noalias.scope.decl(metadata !47631)
  call void @llvm.experimental.noalias.scope.decl(metadata !47632)
  %i.avo = load i64, ptr %i.asy, align 8, !alias.scope !47631, !noundef !97
  %i.avp = icmp eq i64 %i.avo, 0
  br i1 %i.avp, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit.thread, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %.val.i1607 = load i64, ptr %.sroa.4864.0..sroa_idx, align 8, !alias.scope !47631, !noundef !97
  %.val5.i1608 = load i64, ptr %.sroa.5865.0..sroa_idx, align 8, !alias.scope !47631, !noundef !97
  %i.avq = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECs9KQ7US1M400_11lance_table(i64 %.val.i1607, i64 %.val5.i1608, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aty), !noalias !47631 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47633)
  call void @llvm.experimental.noalias.scope.decl(metadata !47634)
  call void @llvm.experimental.noalias.scope.decl(metadata !47635)
  %i.avr = lshr i64 %i.avq, 57
  %i.avs = trunc nuw nsw i64 %i.avr to i8
  %i.avt = load i64, ptr %i.asx, align 8, !alias.scope !47636, !noundef !97 ; 2 uses
  %i.avu = load ptr, ptr %i.dd, align 8, !alias.scope !47636, !nonnull !97, !noundef !97 ; 2 uses
  %i.avv = insertelement <16 x i8> poison, i8 %i.avs, i64 0
  %i.avw = shufflevector <16 x i8> %i.avv, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i1609 = load i64, ptr %i.aty, align 8, !alias.scope !47637
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mv, %bb.ms
  %.sroa.9.0.i.i.i1610 = phi i64 [ 0, %bb.ms ], [ %i.awn, %bb.mv ]
  %.pn.i.i.i1611 = phi i64 [ %i.avq, %bb.ms ], [ %i.awo, %bb.mv ]
  %.sroa.01.0.i.i.i1612 = and i64 %.pn.i.i.i1611, %i.avt ; 3 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avu, i64 %.sroa.01.0.i.i.i1612
  %.sroa.0.0.copyload.i26.i.i1613 = load <16 x i8>, ptr %i.avx, align 1, !noalias !47638 ; 2 uses
  %i.avy = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i1613, %i.avw
  %i.avz = bitcast <16 x i1> %i.avy to i16        ; 2 uses
  %.not.i.not32.i.i1614 = icmp eq i16 %i.avz, 0
  br i1 %.not.i.not32.i.i1614, label %._crit_edge.i.i1619, label %.lr.ph.i.i1615

.lr.ph.i.i1615:                                   ; preds = %bb.mt, %bb.mu
  %.sroa.06.0.i33.i.i1616 = phi i16 [ %i.awm, %bb.mu ], [ %i.avz, %bb.mt ] ; 3 uses
  %i.awa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i1616, i1 true)
  %i.awb = zext nneg i16 %i.awa to i64
  %i.awc = add i64 %.sroa.01.0.i.i.i1612, %i.awb
  %i.awd = and i64 %i.awc, %i.avt
  %i.awe = sub nsw i64 0, %i.awd
  %i.awf = getelementptr inbounds [32 x i8], ptr %i.avu, i64 %i.awe ; 3 uses
  %i.awg = getelementptr inbounds i8, ptr %i.awf, i64 -32
  %.val2.i.i.i1617 = load i64, ptr %i.awg, align 8, !noalias !47639, !noundef !97
  %i.awh = icmp eq i64 %.val.i.i.i.i1609, %.val2.i.i.i1617
  br i1 %i.awh, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit, label %bb.mu, !prof !109

._crit_edge.i.i1619:                              ; preds = %bb.mu, %bb.mt
  %i.awi = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i1613, splat (i8 -1)
  %i.awj = bitcast <16 x i1> %i.awi to i16
  %i.awk = icmp eq i16 %i.awj, 0
  br i1 %i.awk, label %bb.mv, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit.thread, !prof !100

bb.mu:                                            ; preds = %.lr.ph.i.i1615
  %i.awl = add i16 %.sroa.06.0.i33.i.i1616, -1
  %i.awm = and i16 %i.awl, %.sroa.06.0.i33.i.i1616 ; 2 uses
  %.not.i.not.i.i1618 = icmp eq i16 %i.awm, 0
  br i1 %.not.i.not.i.i1618, label %._crit_edge.i.i1619, label %.lr.ph.i.i1615

bb.mv:                                            ; preds = %._crit_edge.i.i1619
  %i.awn = add i64 %.sroa.9.0.i.i.i1610, 16       ; 2 uses
  %i.awo = add i64 %.sroa.01.0.i.i.i1612, %i.awn
  br label %bb.mt

bb.mw:                                            ; preds = %bb.mx
  %i.awp = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit: ; preds = %.lr.ph.i.i1615
  %i.awq = getelementptr inbounds i8, ptr %i.awf, i64 -16
  %i.awr = load ptr, ptr %i.awq, align 8, !nonnull !97, !noundef !97
  %i.aws = getelementptr inbounds i8, ptr %i.awf, i64 -8
  %i.awt = load i64, ptr %i.aws, align 8, !noundef !97 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47640)
  %i.awu = load i64, ptr %i.aua, align 8, !alias.scope !47641, !noundef !97 ; 4 uses
  %i.awv = load i64, ptr %i.atz, align 8, !range !101, !alias.scope !47641, !noundef !97
  %i.aww = sub i64 %i.awv, %i.awu
  %i.awx = icmp ugt i64 %i.awt, %i.aww
  br i1 %i.awx, label %bb.mx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i, !prof !100

bb.mx:                                            ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.atz, i64 noundef %i.awu, i64 noundef %i.awt, i64 noundef 8, i64 noundef 112)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i.thread unwind label %bb.mw

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i.thread: ; preds = %bb.mx
  %.pre.i1627 = load i64, ptr %i.aua, align 8, !alias.scope !47640
  %i.awy = load ptr, ptr %i.aub, align 8, !alias.scope !47640, !nonnull !97, !noundef !97
  br label %.preheader.i1626.preheader

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i: ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit
  %i.awz = load ptr, ptr %i.aub, align 8, !alias.scope !47640, !nonnull !97, !noundef !97
  %i.axa = icmp eq i64 %i.awt, 0
  br i1 %i.axa, label %.loopexit2684, label %.preheader.i1626.preheader

.preheader.i1626.preheader:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i.thread, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i
  %i.axb = phi ptr [ %i.awy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i.thread ], [ %i.awz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i ]
  %i.axc = phi i64 [ %.pre.i1627, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i.thread ], [ %i.awu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i ]
  br label %.preheader.i1626

bb.my:                                            ; preds = %.preheader.i1626
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

.preheader.i1626:                                 ; preds = %.preheader.i1626.preheader, %.loopexit.i.i.i.i
  %.val15.i.i.i.i = phi i64 [ %i.axw, %.loopexit.i.i.i.i ], [ %i.axc, %.preheader.i1626.preheader ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.axx, %.loopexit.i.i.i.i ], [ 0, %.preheader.i1626.preheader ] ; 2 uses
  %i.axe = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %.sroa.01.0.i.i.i.i
  %.val16.i.i.i.i = load ptr, ptr %i.axe, align 8, !noalias !47642, !nonnull !97, !align !102, !noundef !97 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47643
  invoke fastcc void @_RNvXsc_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8DataFileNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.f, ptr noundef nonnull align 8 %.val16.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.my, !noalias !47642

.noexc.i.i.i.i:                                   ; preds = %.preheader.i1626
  %i.axf = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i, i64 80
  %i.axg = load i64, ptr %i.axf, align 8, !range !99, !noalias !47643, !noundef !97
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.axg, -1
  %i.axh = getelementptr i8, ptr %.val16.i.i.i.i, i64 88
  %i.axi = load ptr, ptr %i.axh, align 8, !noalias !47643, !nonnull !97, !noundef !97 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.nd, label %bb.mz

bb.mz:                                            ; preds = %.noexc.i.i.i.i
  %i.axj = getelementptr i8, ptr %.val16.i.i.i.i, i64 96
  %.val9.i.i.i.i.i.i.i = load i64, ptr %i.axj, align 8, !noalias !47643, !noundef !97 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47644)
  %i.axk = icmp eq i64 %.val9.i.i.i.i.i.i.i, 0
  br i1 %i.axk, label %.loopexit.i.i.i.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.axl = shl nuw nsw i64 %.val9.i.i.i.i.i.i.i, 3 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !47645
  %i.axm = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.axl, i64 noundef range(i64 1, 9) 8) #76, !noalias !47645 ; 3 uses
  %i.axn = icmp eq ptr %i.axm, null
  br i1 %i.axn, label %bb.nb, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.nb:                                            ; preds = %bb.na
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.axl) #80
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.nf, !noalias !47643

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.nb
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.na, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i
  %.sroa.013.023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.axp, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i ], [ %i.axi, %bb.na ] ; 2 uses
  %.sroa.7.022.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axo, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.na ] ; 2 uses
  %.sroa.10.021.i.i.i.i.i.i.i.i.i = phi i64 [ %10, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i ], [ %.val9.i.i.i.i.i.i.i, %bb.na ]
  %.val12.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !47644, !noalias !47646, !nonnull !97, !noundef !97 ; 2 uses
  %8 = atomicrmw add ptr %.val12.i.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !47647
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %bb.nc, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i

bb.nc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.axo = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i.i.i.i.i, 1
  %i.axp = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i.i.i.i.i.i.i, i64 8
  %10 = add nsw i64 %.sroa.10.021.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.axm, i64 %.sroa.7.022.i.i.i.i.i.i.i.i.i
  store ptr %.val12.i.i.i.i.i.i.i.i.i, ptr %i.axq, align 8, !noalias !47647
  %i.axr = icmp eq i64 %10, 0
  br i1 %i.axr, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.nd:                                            ; preds = %.noexc.i.i.i.i
  %i.axs = atomicrmw add ptr %i.axi, i64 1 monotonic, align 8, !noalias !47643
  %i.axt = icmp slt i64 %i.axs, 0
  br i1 %i.axt, label %bb.ne, label %.loopexit.i.i.i.i

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.trap()
  unreachable

bb.nf:                                            ; preds = %bb.nb
  %i.axu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.f) #81, !noalias !47643
  br label %bb.ng

.loopexit.i.i.i.i:                                ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i, %bb.nd, %bb.mz
  %.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.nd ], [ 0, %bb.mz ], [ %.val9.i.i.i.i.i.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ %i.axi, %bb.nd ], [ inttoptr (i64 8 to ptr), %bb.mz ], [ %i.axm, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ -1, %bb.nd ], [ 0, %bb.mz ], [ %.val9.i.i.i.i.i.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !47648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !47643
  %i.axv = getelementptr inbounds nuw [112 x i8], ptr %i.axb, i64 %.val15.i.i.i.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.axv, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.i.i.i.i.i, i64 80, i1 false), !noalias !47649
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.axv, i64 80
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !47649
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.axv, i64 88
  store ptr %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !47649
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.axv, i64 96
  store i64 %.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !47649
  %.sroa.75.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.axv, i64 104
  store i64 %.sroa.02.0.i1471, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i, align 8, !noalias !47649
  %i.axw = add i64 %.val15.i.i.i.i, 1             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i)
  %i.axx = add nuw i64 %.sroa.01.0.i.i.i.i, 1     ; 2 uses
  %i.axy = icmp eq i64 %i.axx, %i.awt
  br i1 %i.axy, label %.loopexit2684, label %.preheader.i1626

bb.ng:                                            ; preds = %bb.nf, %bb.my
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.axd, %bb.my ], [ %i.axu, %bb.nf ]
  store i64 %.val15.i.i.i.i, ptr %i.aua, align 8, !alias.scope !47640, !noalias !47650
  br label %bb.nl

.loopexit2684:                                    ; preds = %.loopexit.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i
  %storemerge.i.i.i = phi i64 [ %i.awu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE7reserveBK_.exit.i ], [ %i.axw, %.loopexit.i.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.aua, align 8, !alias.scope !47640, !noalias !47650
  br label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit.thread

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit.thread: ; preds = %._crit_edge.i.i1619, %bb.mr, %.loopexit2684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.cw, ptr noundef nonnull align 8 dereferenceable(240) %i.cx, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !47651)
  %i.axz = load i64, ptr %i.rb, align 8, !alias.scope !47651, !noundef !97 ; 3 uses
  %i.aya = load i64, ptr %i.hb, align 8, !range !101, !alias.scope !47651, !noundef !97
  %i.ayb = icmp eq i64 %i.axz, %i.aya
  br i1 %i.ayb, label %bb.nh, label %bb.nk

bb.nh:                                            ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit.thread
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %bb.nk unwind label %bb.ni, !noalias !47652

bb.ni:                                            ; preds = %bb.nh
  %i.ayc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEBH_(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.cw) #81
          to label %.body1629 unwind label %bb.nj, !noalias !47651

bb.nj:                                            ; preds = %bb.ni
  %i.ayd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !47651
  unreachable

bb.nk:                                            ; preds = %bb.nh, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getyEB1t_.exit.thread
  %i.aye = load ptr, ptr %i.ra, align 8, !alias.scope !47651, !nonnull !97, !noundef !97
  %i.ayf = getelementptr inbounds nuw [240 x i8], ptr %i.aye, i64 %i.axz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ayf, ptr noundef nonnull align 8 dereferenceable(240) %i.cx, i64 240, i1 false)
  %i.ayg = add i64 %i.axz, 1
  store i64 %i.ayg, ptr %i.rb, align 8, !alias.scope !47651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.ayh = icmp eq ptr %i.avm, %i.aqk
  br i1 %i.ayh, label %._crit_edge2900, label %bb.mq

bb.nl:                                            ; preds = %bb.ng, %bb.mw
  %eh.lpad-body1630.ph = phi { ptr, i32 } [ %i.awp, %bb.mw ], [ %eh.lpad-body.i.i.i.i, %bb.ng ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEBH_(ptr noalias noundef align 8 dereferenceable(240) %i.cx) #81
          to label %.body1629 unwind label %bb.ab

.loopexit2691:                                    ; preds = %._crit_edge.i.i1605, %.loopexit2692.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store ptr %i.db, ptr %i.cy, align 8
  %.sroa.4876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.4876.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cz, ptr noundef nonnull @950, ptr noundef nonnull %i.cy)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit1635 unwind label %.loopexit.split-lp2687.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapyuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyyECs9KQ7US1M400_11lance_table.exit: ; preds = %.lr.ph.i.i1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.ayi = icmp eq i64 %i.aun, 0
  br i1 %i.ayi, label %.preheader2685, label %.lr.ph2897.split

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit1635: ; preds = %.loopexit2691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.da, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @951)
          to label %bb.nm unwind label %.loopexit.split-lp2687.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nm:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit1635
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ayj, ptr noundef nonnull align 8 dereferenceable(56) %i.da, i64 56, i1 false)
  store i64 -1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetyEECs9KQ7US1M400_11lance_table(ptr %i.atm, i64 %i.atl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileEEEB2b_(ptr noalias noundef align 8 dereferenceable(48) %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB1B_.exit

bb.nn:                                            ; preds = %bb.da
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %.sroa.4791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4791.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6288.0..sroa_idx, i64 7, i1 false)
  %.sroa.6793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6793.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7293.0..sroa_idx, i64 40, i1 false)
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0286.0.copyload, ptr %i.ayk, align 8
  %.sroa.5792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6290.0.copyload, ptr %.sroa.5792.0..sroa_idx, align 16
  store i64 -1, ptr %0, align 16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB1B_.exit

bb.no:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6290.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  %i.ayl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.val1247 = load ptr, ptr %i.ayl, align 8, !nonnull !97, !noundef !97
  %i.aym = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.val1248 = load i64, ptr %i.aym, align 8, !noundef !97
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.es, ptr nonnull %.val1247, i64 %.val1248)
          to label %bb.np unwind label %.loopexit.split-lp2638.loopexit.split-lp

bb.np:                                            ; preds = %bb.no
  %.not1005 = icmp eq i64 %i.tg, 0
  br i1 %.not1005, label %._crit_edge3191, label %bb.nq

._crit_edge3191:                                  ; preds = %bb.np
  %.phi.trans.insert3192 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.pre3193 = load ptr, ptr %.phi.trans.insert3192, align 8
  %.phi.trans.insert3194 = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.pre3195 = load i64, ptr %.phi.trans.insert3194, align 8
  br label %bb.nr

bb.nq:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  %i.ayn = getelementptr inbounds nuw i8, ptr %.sroa.6290.0.copyload, i64 8
  %i.ayo = load ptr, ptr %i.ayn, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %.sroa.6290.0.copyload, i64 16
  %i.ayq = load i64, ptr %i.ayp, align 8, !noundef !97
  %i.ayr = getelementptr inbounds nuw [240 x i8], ptr %i.ayo, i64 %i.ayq
  invoke fastcc void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTyB16_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtB2d_5slice4iter4IterB17_ENCNvMNtNtB1d_11transaction14manifest_buildNtNtB4r_7builder11Transaction32build_manifest_with_read_versionso_0EEB1d_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.er, ptr noundef nonnull %i.ayo, ptr noundef %i.ayr)
          to label %bb.ns unwind label %.thread2464

bb.nr:                                            ; preds = %._crit_edge3191, %._crit_edge2887
  %i.ays = phi i64 [ %.pre3195, %._crit_edge3191 ], [ %i.azd, %._crit_edge2887 ] ; 2 uses
  %i.ayt = phi ptr [ %.pre3193, %._crit_edge3191 ], [ %i.azb, %._crit_edge2887 ] ; 3 uses
  %i.ayu = load i64, ptr %i.es, align 8, !range !101, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ayv = icmp ult i64 %i.ays, 38430716820228233
  call void @llvm.assume(i1 %i.ayv)
  %i.ayw = getelementptr inbounds nuw [240 x i8], ptr %i.ayt, i64 %i.ays
  store ptr %i.ayt, ptr %i.aj, align 8
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ayu, ptr %i.ayx, align 8
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ayt, ptr %i.ayy, align 8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ayw, ptr %i.ayz, align 8
  invoke fastcc void @_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias noundef align 8 dereferenceable(24) %i.hb, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aj)
          to label %bb.pb unwind label %.loopexit.split-lp.loopexit.split-lp

.thread2464:                                      ; preds = %bb.nq
  %lpad.thr_comm2462 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2456

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.thread2375, %bb.hk, %.loopexit2643, %bb.nr, %bb.pb, %bb.pc
  %lpad.loopexit.split-lp3947 = landingpad { ptr, i32 }
          cleanup
  br label %.body1140

bb.ns:                                            ; preds = %bb.nq
  %i.aza = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !nonnull !97, !noundef !97 ; 3 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.azd = load i64, ptr %i.azc, align 8, !noundef !97 ; 3 uses
  %.idx2950 = mul nuw nsw i64 %i.azd, 240
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azb, i64 %.idx2950
  %i.azf = icmp eq i64 %i.azd, 0
  %.val1267.pre = load ptr, ptr %i.er, align 8    ; 5 uses
  br i1 %i.azf, label %.._crit_edge2887_crit_edge, label %.lr.ph2886

.._crit_edge2887_crit_edge:                       ; preds = %bb.ns
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val1268.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge2887

.lr.ph2886:                                       ; preds = %bb.ns
  %i.azg = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.azh = load i64, ptr %i.azg, align 8, !alias.scope !47653, !noundef !97
  %i.azi = icmp eq i64 %i.azh, 0
  %i.azj = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %.val.i1636 = load i64, ptr %i.azj, align 8
  %i.azk = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %.val5.i1637 = load i64, ptr %i.azk, align 8
  %i.azl = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.azm = load i64, ptr %i.azl, align 8          ; 5 uses
  %.sroa.6307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VechEEE5clearCs9KQ7US1M400_11lance_table:bb.a
  %.val1.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !54899, !noalias !54894, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !54900
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.d, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECs9KQ7US1M400_11lance_table.exit.i
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -24
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !54897, !noalias !54894 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECs9KQ7US1M400_11lance_table.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.val1.i.i = load ptr, ptr %i.y, align 8, !alias.scope !54897, !noalias !54894, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !54901
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i
  %i.z = icmp eq i64 %i.s, 0
  br i1 %i.z, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.f:                                             ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECs9KQ7US1M400_11lance_table.exit5
  ret void

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECs9KQ7US1M400_11lance_table.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECs9KQ7US1M400_11lance_table.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !97 ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECs9KQ7US1M400_11lance_table.exit5, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECs9KQ7US1M400_11lance_table.exit
  %i.ad = add i64 %i.ab, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.ad, i1 false)
  %i.ae = icmp ult i64 %i.ab, 8
  %i.af = add i64 %i.ab, 1
  %i.ag = lshr i64 %i.af, 3
  %i.ah = mul nuw i64 %i.ag, 7
  %spec.select.i.i.i4 = select i1 %i.ae, i64 %i.ab, i64 %i.ah
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECs9KQ7US1M400_11lance_table.exit5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1T_3vec3VechEEENCNvMs6_B1w_B1t_5clear0EECs9KQ7US1M400_11lance_table.exit5: ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECs9KQ7US1M400_11lance_table.exit, %bb.g
  %i.ai = phi i64 [ %spec.select.i.i.i4, %bb.g ], [ 0, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1e_3vec3VechEEECs9KQ7US1M400_11lance_table.exit ]
  store i64 0, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6sharedINtB5_5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputINtNtB1f_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtB1L_4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !54937 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.e = cmpxchg ptr %1, i64 1, i64 0 monotonic monotonic, align 8, !noalias !54938
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.b, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload10 = load ptr, ptr %i.f, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload12 = load ptr, ptr %.sroa.6.0..sroa_idx11, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx13, i64 32, i1 false)
  %i.g = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !54938
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #76, !noalias !54938
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.k = icmp eq ptr %.sroa.0.0.copyload10, null
  br i1 %i.k, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread, label %bb.e

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit
  %.sroa.6.017 = phi ptr [ %.sroa.6.0.copyload12, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit ], [ %1, %bb.a ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.017) ]
  store ptr %.sroa.6.017, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.6.017, i64 24
  %i.m = load i64, ptr %i.l, align 8, !range !116, !noundef !97 ; 2 uses
  %.not4 = icmp eq i64 %i.m, -2
  br i1 %.not4, label %bb.ac, label %bb.o, !prof !100

bb.e:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload10, ptr %i.d, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.6.0.copyload12, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  %i.n = load i64, ptr %i.c, align 8, !range !116, !noundef !97
  %.not = icmp eq i64 %i.n, -2
  br i1 %.not, label %bb.f, label %bb.l, !prof !100

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1115) #80
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.ac, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !54939)
  call void @llvm.experimental.noalias.scope.decl(metadata !54940)
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !54941, !nonnull !97, !noundef !97
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !54941
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtB28_4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB4_6marker4SendEL_EEEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(40) %i.c) #81
          to label %bb.h unwind label %bb.k

bb.k:                                             ; preds = %bb.ae, %bb.i, %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = atomicrmw add ptr %.sroa.0.0.copyload10, i64 -1 release, align 8, !noalias !54942
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit7

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit7

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit7: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBC_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit: ; preds = %.body, %bb.ae, %bb.h, %bb.i
  %.pn5 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.r, %bb.i ], [ %eh.lpad-body, %bb.ae ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn5

bb.o:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54944)
  %i.v = icmp eq i64 %i.m, -1
  br i1 %i.v, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.017, i64 32
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !54944, !nonnull !97, !noundef !97 ; 2 uses
  %i.x = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !54945
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.q, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val.i, ptr %i.z, align 8, !alias.scope !54943
  store i64 -1, ptr %0, align 8, !alias.scope !54943
  br label %_RNvXs3_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB7_5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54947
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.6.017, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !54948, !nonnull !97, !noundef !97 ; 4 uses
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !54947
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ab, ptr %i.a, align 8, !noalias !54947
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.6.017, i64 32
  %.val.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !54948, !nonnull !97, !noundef !97
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.6.017, i64 40
  %.val2.i.i = load i64, ptr %i.af, align 8, !alias.scope !54948, !noundef !97 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54949)
  %i.ag = shl nuw nsw i64 %.val2.i.i, 4           ; 2 uses
  %i.ah = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ah, label %_RNvXs8_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !54950
  %i.ai = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 8) #76, !noalias !54950 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ag) #80
          to label %.noexc.i.i unwind label %bb.z, !noalias !54947

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.x
  %.sroa.014.024.i.i.i.i = phi ptr [ %i.ao, %bb.x ], [ %.val.i.i, %bb.t ] ; 3 uses
  %.sroa.7.023.i.i.i.i = phi i64 [ %i.an, %bb.x ], [ 0, %bb.t ] ; 2 uses
  %.sroa.10.022.i.i.i.i = phi i64 [ %2, %bb.x ], [ %.val2.i.i, %bb.t ]
  %.val12.i.i.i.i = load ptr, ptr %.sroa.014.024.i.i.i.i, align 8, !alias.scope !54949, !noalias !54951, !nonnull !97, !noundef !97 ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.014.024.i.i.i.i, i64 8
  %.val13.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !54949, !noalias !54951 ; 2 uses
  %i.al = atomicrmw add ptr %.val12.i.i.i.i, i64 1 monotonic, align 8, !noalias !54952
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.an = add nuw nsw i64 %.sroa.7.023.i.i.i.i, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i.i.i.i, i64 16
  %2 = add nsw i64 %.sroa.10.022.i.i.i.i, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i) ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.7.023.i.i.i.i ; 2 uses
  store ptr %.val12.i.i.i.i, ptr %i.ap, align 8, !noalias !54952
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.val13.i.i.i.i, ptr %i.aq, align 8, !noalias !54952
  %i.ar = icmp eq i64 %2, 0
  br i1 %i.ar, label %_RNvXs8_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, label %bb.v

bb.y:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !54953
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.aa, label %.body

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.ab, !noalias !54947

bb.ab:                                            ; preds = %bb.aa
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !54947
  unreachable

_RNvXs8_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.x, %bb.s
  %.sroa.5.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.s ], [ %i.ai, %bb.x ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.6.017, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !54948, !noundef !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54947
  store i64 %.val2.i.i, ptr %0, align 8, !alias.scope !54943
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54943
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val2.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !54943
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !54943
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ax, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !54943
  br label %_RNvXs3_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB7_5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit

bb.ac:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1116) #80
          to label %bb.g unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.aa, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.ad ], [ %i.as, %bb.aa ], [ %i.as, %bb.z ] ; 2 uses
  %i.az = atomicrmw add ptr %.sroa.6.017, i64 -1 release, align 8, !noalias !54954
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit

bb.ae:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE9drop_slowCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit unwind label %bb.k

_RNvXs3_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB7_5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs8_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i
  %i.bb = atomicrmw add ptr %.sroa.6.017, i64 -1 release, align 8, !noalias !54955
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBC_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit9

bb.af:                                            ; preds = %_RNvXs3_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB7_5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBx_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB1N_6marker4SendEL_EEEE9drop_slowCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBC_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit9

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchIBC_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit9: ; preds = %_RNvXs3_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtB7_5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs7_NtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6sharedINtB5_5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputbNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCs9KQ7US1M400_11lance_table(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !54976 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = cmpxchg ptr %0, i64 1, i64 0 monotonic monotonic, align 8, !noalias !54977
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.c, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.b, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload7 = load ptr, ptr %i.d, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload9 = load ptr, ptr %.sroa.6.0..sroa_idx8, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload11 = load i64, ptr %.sroa.8.0..sroa_idx10, align 8 ; 3 uses
  %i.e = icmp eq ptr %0, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !54977
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #76, !noalias !54977
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.i = icmp eq ptr %.sroa.0.0.copyload7, null
  br i1 %i.i, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread, label %bb.e

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit
  %.sroa.6.020 = phi ptr [ %.sroa.6.0.copyload9, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit ], [ %0, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.020) ]
  store ptr %.sroa.6.020, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.020, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noundef !97
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.r, label %bb.o, !prof !109

bb.e:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0.copyload7, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.copyload9, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.8.0.copyload11, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.4.0.copyload.cast = inttoptr i64 %.sroa.8.0.copyload11 to ptr
  %i.m = icmp eq ptr %.sroa.6.0.copyload9, null
  br i1 %i.m, label %bb.l, label %bb.f, !prof !109

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1115) #80
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.o, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54979)
  %i.n = load ptr, ptr %i.b, align 8, !alias.scope !54980, !nonnull !97, !noundef !97
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !54980
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEECs9KQ7US1M400_11lance_table(ptr nonnull %.sroa.6.0.copyload9, ptr %.sroa.4.0.copyload.cast) #81
          to label %bb.h unwind label %bb.k

bb.k:                                             ; preds = %bb.q, %bb.i, %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.s = atomicrmw add ptr %.sroa.0.0.copyload7, i64 -1 release, align 8, !noalias !54981
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit4

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit4: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = trunc i64 %.sroa.8.0.copyload11 to i1
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit6, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit4
  %.sroa.0.0 = phi i1 [ %i.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit6 ], [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit4 ]
  ret i1 %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.p, %bb.q, %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.v, %bb.q ], [ %i.v, %bb.p ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1116) #80
          to label %bb.g unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54983)
  %i.w = load ptr, ptr %i.a, align 8, !alias.scope !54984, !nonnull !97, !noundef !97
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !54984
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs9KQ7US1M400_11lance_table.exit unwind label %bb.k

bb.r:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCs9KQ7US1M400_11lance_table.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.6.020, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !range !106, !alias.scope !54985, !noundef !97
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = atomicrmw add ptr %.sroa.6.020, i64 -1 release, align 8, !noalias !54986
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit6

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECs9KQ7US1M400_11lance_table.exit6: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6sharedINtB5_5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputuNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCs9KQ7US1M400_11lance_table(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !55005 {
bb.a:
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde12read_row_ids:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !144, !noalias !64902, !noundef !97
  %i.at = icmp eq i64 %i.as, -1
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sink6.i.i.i.sroa.gep.i.i.le.i.i, align 8, !noalias !64902 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.i.i.i.i.i.i, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sink6.i.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sink6.i.i.i.sroa.gep.i.i.le.i.i, %bb.s ], [ %.sink6.i.i.i.sroa.gep.i.i.le.i.i, %bb.r ], [ %.sink6.i.i.i.sroa.gep10.i.i.le.i.i, %bb.t ], [ %.sink6.i.i.i.sroa.gep10.i.i.le.i.i, %bb.q ]
  %.val.i.i.i2.sink.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i, %bb.s ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.val.i.i.i2.i.i.i.i.i.i.i, %bb.t ], [ %.val.i.i.i.i.i.i.i.i.i.i, %bb.q ]
  %.val5.i.i.i4.i.i.i.i.i.i.i = load ptr, ptr %.sink6.i.i.i.sroa.phi.i.i.i.i, align 8, !noalias !64902, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i4.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i2.sink.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !64904
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.al, -3
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !64902 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond5.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %i.aw
  br i1 %or.cond5.i.i.i.i.i.i, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !64902 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !144, !noalias !64902, !noundef !97
  %i.bb = icmp eq i64 %i.ba, -1
  %.val.i.i.i2.i.i.i.i.i.i.i = load i64, ptr %.sink6.i.i.i.sroa.gep.i.i.le.i.i, align 8, !noalias !64902 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i2.i.i.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond3.i.i.i.i.i.i, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.n
  %i.bd = load i64, ptr %i.k, align 8, !range !101, !alias.scope !64905, !noalias !64892, !noundef !97
  %i.be = icmp eq i64 %.sroa.9.0.copyload26, %i.bd
  br i1 %i.be, label %bb.v, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %._RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i_crit_edge.i unwind label %.body.i.i.i.i, !noalias !64906

._RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i_crit_edge.i: ; preds = %bb.v
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !64905, !noalias !64892
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i: ; preds = %._RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i_crit_edge.i, %bb.u
  %i.bf = phi ptr [ %.pre.i, %._RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i_crit_edge.i ], [ %.sroa.7.0.copyload24, %bb.u ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %.sroa.9.0.copyload26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !64903
  %i.bh = add i64 %.sroa.9.0.copyload26, 1        ; 2 uses
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !64905, !noalias !64892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64901
  br label %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.i.i

bb.w:                                             ; preds = %bb.j
  %i.bi = invoke fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECs9KQ7US1M400_11lance_table(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !64897

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i, %bb.q, %bb.p, %bb.o, %.noexc8.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.ag, %bb.t ], [ %i.ag, %bb.s ], [ %i.ag, %bb.r ], [ %i.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayEBH_.exit.sink.split.i.i.i.i.i.i.i ], [ %i.ag, %bb.q ], [ %i.ag, %bb.p ], [ %i.ag, %bb.o ], [ %i.aj, %.noexc8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64901
  store ptr %.sroa.0.0.i.ph.i.i.i, ptr %i.d, align 8, !noalias !64907
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @391, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 8)
          to label %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.thread.i.i unwind label %bb.y, !noalias !64908

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !64907, !nonnull !97, !noundef !97
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECs9KQ7US1M400_11lance_table(ptr nonnull %.val.i.i.i.i) #81, !noalias !64908
  br label %.body.i

_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.thread.i.i: ; preds = %bb.x
  %i.bk = load ptr, ptr %i.d, align 8, !noalias !64907, !nonnull !97, !align !102, !noundef !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !64901
  br label %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit.thread

_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.i.i: ; preds = %bb.w, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i
  %i.bl = phi ptr [ %i.bf, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i ], [ %.sroa.7.0.copyload24, %bb.w ]
  %i.bm = phi i64 [ %i.bh, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i ], [ %.sroa.9.0.copyload26, %bb.w ]
  %.sroa.0.1.i.i.i = phi ptr [ null, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentQRShEB13_.exit.i.i.i ], [ %i.bi, %bb.w ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.1.i.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit.thread

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.c, %bb.m, %bb.i, %bb.g, %bb.f
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit.thread: ; preds = %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.i.i, %.loopexit14.i.i, %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.thread.i.i
  %.sroa.0.0.i.ph.i = phi ptr [ %.sroa.11.0.ph.i.i, %.loopexit14.i.i ], [ %i.bk, %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.thread.i.i ], [ %.sroa.0.1.i.i.i, %_RINvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEBb_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !64892
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.k), !noalias !64897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !64892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.z

common.resume:                                    ; preds = %bb.aa, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bo, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %.body.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.ak, %.body.i.i.i.i ], [ %lpad.loopexit.split-lp183, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #81, !noalias !64897
  br label %common.resume

_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !64892
  %.sroa.0.0.copyload22 = load i64, ptr %i.k, align 8, !noalias !64909 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !64892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bn = icmp eq i64 %.sroa.0.0.copyload22, -1
  br i1 %i.bn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit.thread, %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit
  %.sroa.7.042 = phi ptr [ %.sroa.0.0.i.ph.i, %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit.thread ], [ %.sroa.7.0.copyload24, %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.042) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.042, ptr %i.c, align 8, !noalias !64910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64910
  store ptr %i.c, ptr %i.a, align 8, !noalias !64910
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !64910
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @809, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i unwind label %bb.aa, !noalias !64911

bb.aa:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i, %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !noalias !64910, !nonnull !97, !noundef !97
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECs9KQ7US1M400_11lance_table(ptr nonnull %.val8.i) #81, !noalias !64911
  br label %common.resume

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64910
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error18corrupt_file_namedNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde12read_row_ids0B7_.exit unwind label %bb.aa

_RNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde12read_row_ids0B7_.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !noalias !64910, !nonnull !97, !noundef !97
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECs9KQ7US1M400_11lance_table(ptr nonnull %.val7.i), !noalias !64911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.05.0.copyload = load i8, ptr %i.m, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.67.0..sroa_idx, i64 7, i1 false)
  %.sroa.67.sroa.5.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.67.sroa.5.0.copyload = load i64, ptr %.sroa.67.sroa.5.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  %.sroa.67.sroa.7.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.67.sroa.7.0.copyload = load ptr, ptr %.sroa.67.sroa.7.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  %.sroa.67.sroa.8.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.67.sroa.8.0.copyload = load i64, ptr %.sroa.67.sroa.8.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.810.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i8 %.sroa.05.0.copyload, ptr %0, align 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.67.sroa.5.0.copyload, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.67.sroa.7.0.copyload, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.67.sroa.8.0.copyload, ptr %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %_RINvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message6decodeRShEB9_.exit
  store i64 %.sroa.0.0.copyload22, ptr %i.n, align 8
  %.sroa.6.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.7.0.copyload24, ptr %.sroa.6.sroa.7.7..sroa_idx, align 8
  %.sroa.6.sroa.8.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.9.0.copyload26, ptr %.sroa.6.sroa.8.7..sroa_idx, align 8
  call void @_RNvXNtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtB4_13RowIdSequenceINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtB6_6format2pb13RowIdSequenceE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde12read_row_ids0B7_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde13write_row_ids(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !64923 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !97, !noundef !97
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.g, align 8, !noundef !97 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64924
  %i.h = mul nuw nsw i64 %.val1, 56               ; 2 uses
  %i.i = icmp eq i64 %.val1, 0
  br i1 %i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !64924
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !64924
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !64925
  %i.l = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 8) #76, !noalias !64925 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.lr.ph.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #80, !noalias !64924
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  store i64 %.val1, ptr %i.c, align 8, !noalias !64924
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !64924
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.q, %bb.d ], [ %.val, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.7.022.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %2, %bb.d ], [ %.val1, %.lr.ph.preheader.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64924
  invoke fastcc void @_RNvXs8_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64SegmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.012.023.i.i)
          to label %bb.d unwind label %bb.e, !noalias !64926

bb.d:                                             ; preds = %.lr.ph.i.i.a
  %i.p = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 56
  %2 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !64924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64924
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i.i.a

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.lr.ph.i.i.a
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.o, align 8, !noalias !64924
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81, !noalias !64924
  br label %common.resume

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %3 = phi ptr [ %i.k, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i ], [ %i.o, %bb.d ]
  store i64 %.val1, ptr %3, align 8, !noalias !64924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64924
  call void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtNtB9_6format2pb13RowIdSequenceINtNtCscI6d9CVNmLh_4core7convert4FromNtB7_13RowIdSequenceE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val2 = load ptr, ptr %i.t, align 8, !nonnull !97, !noundef !97 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val3 = load i64, ptr %i.u, align 8, !noundef !97 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64927
  %i.v = icmp eq i64 %.val3, 0                    ; 2 uses
  br i1 %i.v, label %_RNvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit, %.preheader.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ag, %.preheader.i.i.i ], [ 0, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.af, %.preheader.i.i.i ], [ 0, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ]
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.i.i
  %i.x = tail call fastcc noundef range(i64 0, -9223372036854775732) i64 @_RNvXs3A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_10U64SegmentNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.w), !noalias !64927 ; 2 uses
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.x, %.sroa.02.0.i.i.i.i.i
  %i.af = add i64 %i.ae, %i.ad                    ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i, 1 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %.val3
  br i1 %i.ah, label %_RNvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i, label %.preheader.i.i.i

_RNvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i: ; preds = %.preheader.i.i.i, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit ], [ %i.af, %.preheader.i.i.i ]
  %i.ai = add i64 %.sroa.0.0.i.i.i.i.i, %.val3    ; 5 uses
  %.not.i.i = icmp slt i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.i, label %bb.f, !prof !98

bb.f:                                             ; preds = %_RNvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !64928
  %i.ak = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !64928 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = ptrtoint ptr %i.ak to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i

bb.i:                                             ; preds = %bb.g, %_RNvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.g ], [ 0, %_RNvXs3s_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13RowIdSequenceNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ai) #80
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.h, %bb.f
  %.sroa.10.0.i = phi i64 [ %i.am, %bb.h ], [ 1, %bb.f ]
  %i.an = inttoptr i64 %.sroa.10.0.i to ptr
  store i64 %i.ai, ptr %i.a, align 8, !noalias !64927
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !noalias !64927
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ap, align 8, !noalias !64927
  %.idx.i.i = mul nuw nsw i64 %.val3, 56
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i, %.noexc.i
  %.sroa.0.01.i.i = phi ptr [ %i.ar, %.noexc.i ], [ %.val2, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb10U64SegmentINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.01.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %.lr.ph.i.i4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 56 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aq
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i4

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !noalias !64927 ; 2 uses
  %i.au = icmp eq i64 %.val.i, 0
  br i1 %i.au, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i = load ptr, ptr %i.ao, align 8, !noalias !64927, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !64927
  br label %.body

bb.l:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.at, %bb.k ], [ %i.at, %bb.j ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  br label %common.resume

.loopexit:                                        ; preds = %.noexc.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64927
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb13RowIdSequenceEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !64934 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { ptr, ptr } @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB2_15EncodedU64Array4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 9 uses
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 12 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !97, !nonnull !97 ; 2 uses
  %i.h = invoke { i64, i64 } %i.g(ptr noundef %i.c)
          to label %bb.b unwind label %bb.o       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c), "nonnull"(ptr %i.d) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.13.0 = phi i64 [ 0, %bb.c ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.k, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  %i.l = invoke { i64, i64 } %i.g(ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.j, !inline_history !64929 ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.noexc
  %i.o = extractvalue { i64, i64 } %i.l, 1        ; 3 uses
  %.not.i.i.i.not.i.i = icmp ult i64 %.sroa.10.0, %i.o
  %i.p = add i64 %.sroa.13.0, 1
  br i1 %.not.i.i.i.not.i.i, label %bb.d, label %_RINvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBH_8iterator8Iterator8try_folduNCINvNvXs0_NtNtBJ_8adapters4scanINtB2K_4ScanpppEB20_8try_fold4scanyyTyyEuINtNtNtBL_3ops12control_flow11ControlFlowTjyyEENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0NCINvNvXs_NtB2M_9enumerateINtB5T_9EnumeratepEB20_8try_fold9enumerateB3F_uB3K_NCINvNvB20_8find_map5checkTjB3F_EB4p_NCB4x_s_0E0E0E0IB3L_B3K_EEB4D_.exit

bb.f:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.q = load ptr, ptr %i.d, align 8, !invariant.load !97, !noalias !64935 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.q(ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.i, !noalias !64935

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !101, !invariant.load !97, !noalias !64935 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_4scan4ScanINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0EEEB3m_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_4scan4ScanINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0EEEB3m_.exit.sink.split

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !101, !invariant.load !97, !noalias !64935 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.i, %bb.m
  %.sink = phi i64 [ %i.aj, %bb.m ], [ %i.w, %bb.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.u, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !123, !invariant.load !97, !noalias !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) %i.z) #76, !noalias !97
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.o, %bb.m, %bb.j, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.ah, %bb.m ], [ %i.ac, %bb.j ], [ %i.an, %bb.o ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_4scan4ScanINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0EEEB3m_.exit.sink.split: ; preds = %bb.h, %bb.l
  %.sink53 = phi i64 [ %i.af, %bb.l ], [ %i.s, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !123, !invariant.load !97, !noalias !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.sink53, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #76, !noalias !97
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_4scan4ScanINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0EEEB3m_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_4scan4ScanINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0EEEB3m_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_4scan4ScanINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde25first_non_increasing_pair0EEEB3m_.exit.sink.split, %bb.h, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCs9KQ7US1M400_11lance_table6format5indexNtB5_13IndexMetadataINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtB7_2pb13IndexMetadataE8try_from:bb.a
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.322.sroa.0 = alloca [7 x i8], align 1    ; 3 uses
  %.sroa.423.sroa.3 = alloca [24 x i8], align 1   ; 2 uses
  %i.m = alloca [176 x i8], align 8               ; 28 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noundef !97 ; 6 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.r, 0                      ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.o, align 8
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !97, !noundef !97 ; 3 uses
  %i.w = icmp samesign ult i64 %i.r, 4
  br i1 %i.w, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 4 uses
  %i.y = add nsw i64 %i.r, -4                     ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.v, align 1, !alias.scope !67046, !noalias !67047 ; 4 uses
  %i.z = icmp eq i32 %.sroa.0.0.copyload.i.i, 12346
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp samesign ult i64 %i.r, 8
  br i1 %i.aa, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.ac = icmp eq i32 %i.ab, 12347
  br i1 %i.ac, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i197.i = load i32, ptr %i.x, align 1, !alias.scope !67048, !noalias !67049 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i197.i, 65536
  br i1 %i.ad, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %i.af = add nuw nsw i32 %i.ae, 1
  %i.ag = zext nneg i32 %i.af to i64              ; 3 uses
  %i.ah = icmp ugt i32 %.sroa.0.0.copyload.i.i, 196607 ; 2 uses
  %i.ai = add nuw nsw i64 %i.ag, 7
  %.sroa.017.0.i = lshr i64 %i.ai, 3              ; 10 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67050
  %i.aj = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 2305843009213693953) %.sroa.017.0.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !67050 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.invoke490, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67052)
  %i.al = icmp samesign ugt i64 %.sroa.017.0.i, %i.y
  br i1 %i.al, label %bb.k, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.017.0.i ; 2 uses
  %i.an = sub nuw nsw i64 %i.y, %.sroa.017.0.i    ; 2 uses
  %i.ao = icmp eq i64 %.sroa.017.0.i, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, -9223372036854775808) %.sroa.017.0.i, i1 false), !alias.scope !67053, !noalias !67054
  br label %.thread620.i

bb.i:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.ap = load i8, ptr %i.x, align 1, !noalias !67055, !noundef !97
  store i8 %i.ap, ptr %i.aj, align 1, !alias.scope !67056, !noalias !67057
  br label %.thread620.i

bb.j:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67058
  %i.aq = tail call noundef dereferenceable_or_null(20) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67058 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke490, label %bb.bn

bb.k:                                             ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %.sroa.017.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.as = add nsw i64 %i.r, -8                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.au = zext nneg i32 %.sroa.0.0.copyload.i197.i to i64
  %i.av = icmp eq i32 %.sroa.0.0.copyload.i197.i, 0
  br i1 %i.av, label %.thread322, label %.thread620.i

.thread620.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i, %bb.i, %bb.l
  %.sroa.14.0386650.i = phi i64 [ undef, %bb.l ], [ 1, %bb.i ], [ %.sroa.017.0.i, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.sroa.10.0391640.i = phi ptr [ undef, %bb.l ], [ %i.aj, %bb.i ], [ %i.aj, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 4 uses
  %.sroa.0285.0398630.i = phi i64 [ -1, %bb.l ], [ 1, %bb.i ], [ %.sroa.017.0.i, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 4 uses
  %.sroa.016.0401628.i = phi i1 [ true, %bb.l ], [ %i.ah, %bb.i ], [ %i.ah, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %.sroa.03.0402626.i = phi i64 [ %i.au, %bb.l ], [ %i.ag, %bb.i ], [ %i.ag, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 3 uses
  %i.aw = phi i64 [ %i.as, %bb.l ], [ %i.an, %bb.i ], [ %i.an, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.ax = phi ptr [ %i.at, %bb.l ], [ %i.am, %bb.i ], [ %i.am, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.ay = shl nuw nsw i64 %.sroa.03.0402626.i, 2  ; 9 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67059
  %i.az = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 2305843009213693953) %i.ay, i64 noundef range(i64 1, 9) 1) #76, !noalias !67059 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i205.i, label %bb.p

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i205.i: ; preds = %.thread620.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 2305843009213693953) %i.ay) #80
          to label %.noexc.i unwind label %bb.o, !noalias !67057

.noexc.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i205.i
  unreachable

bb.m:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67060
  %i.bb = tail call noundef dereferenceable_or_null(30) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67060 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.bj, label %bb.bk

.body.i:                                          ; preds = %.split.i, %bb.r, %bb.o
  %.sroa.0285.0394.i = phi i64 [ %.sroa.0285.0398631.i318, %bb.r ], [ %.sroa.0285.0396.i, %bb.o ], [ %.sroa.0285.0398631.i315331, %.split.i ] ; 2 uses
  %.sroa.10.0387.i = phi ptr [ %.sroa.10.0391641.i313, %bb.r ], [ %.sroa.10.0389.i, %bb.o ], [ %.sroa.10.0391641.i308334, %.split.i ] ; 2 uses
  %.pn153.i = phi { ptr, i32 } [ %.pn151655.i, %bb.r ], [ %i.bd, %bb.o ], [ %i.bh, %.split.i ] ; 2 uses
  %.0.val.off.i.i = add nsw i64 %.sroa.0285.0394.i, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.n, label %.body169

bb.n:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0387.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0387.i, i64 noundef %.sroa.0285.0394.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %.body169

bb.o:                                             ; preds = %bb.bm, %bb.bj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i205.i
  %.sroa.0285.0396.i = phi i64 [ %.sroa.0285.0398630.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i205.i ], [ -1, %bb.bm ], [ -1, %bb.bj ]
  %.sroa.10.0389.i = phi ptr [ %.sroa.10.0391640.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.i205.i ], [ undef, %bb.bm ], [ undef, %bb.bj ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %.thread620.i
  %i.be = icmp samesign ugt i64 %i.ay, %i.aw
  br i1 %i.be, label %.thread477.i, label %bb.s

bb.q:                                             ; preds = %.invoke, %.invoke.i, %bb.ax, %bb.ar, %bb.am, %bb.ai
  %lpad.loopexit.split-lp543.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81, !noalias !67057
  br label %bb.r

bb.r:                                             ; preds = %.split656.i, %.thread453.loopexit.split-lp.loopexit.i, %.split.thread.i, %.split.i, %bb.q
  %i.bf = phi i64 [ %i.bv, %.split.i ], [ %i.bo, %bb.q ], [ %i.bo, %.split656.i ], [ %i.bo, %.thread453.loopexit.split-lp.loopexit.i ], [ %i.bo, %.split.thread.i ]
  %i.bg = phi ptr [ %i.bw, %.split.i ], [ %i.bn, %bb.q ], [ %i.bn, %.split656.i ], [ %i.bn, %.thread453.loopexit.split-lp.loopexit.i ], [ %i.bn, %.split.thread.i ] ; 2 uses
  %.sroa.0285.0398631.i318 = phi i64 [ %.sroa.0285.0398631.i315331, %.split.i ], [ %.sroa.0285.0398631.i315330345, %bb.q ], [ %.sroa.0285.0398631.i315330345, %.split656.i ], [ %.sroa.0285.0398631.i315330345, %.thread453.loopexit.split-lp.loopexit.i ], [ %.sroa.0285.0398631.i315330345, %.split.thread.i ]
  %.sroa.10.0391641.i313 = phi ptr [ %.sroa.10.0391641.i308334, %.split.i ], [ %.sroa.10.0391641.i308333343, %bb.q ], [ %.sroa.10.0391641.i308333343, %.split656.i ], [ %.sroa.10.0391641.i308333343, %.thread453.loopexit.split-lp.loopexit.i ], [ %.sroa.10.0391641.i308333343, %.split.thread.i ]
  %.pn151655.i = phi { ptr, i32 } [ %i.bh, %.split.i ], [ %lpad.loopexit.split-lp543.i, %bb.q ], [ %i.eg, %.split656.i ], [ %lpad.loopexit.i, %.thread453.loopexit.split-lp.loopexit.i ], [ %i.ci, %.split.thread.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %.body.i

.split.i:                                         ; preds = %.thread322
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bu, label %.body.i, label %bb.r

bb.s:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay ; 2 uses
  %i.bj = sub nuw nsw i64 %i.aw, %i.ay            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.ax, i64 range(i64 0, -9223372036854775808) %i.ay, i1 false), !alias.scope !67061, !noalias !67062
  br i1 %.sroa.016.0401628.i, label %.thread322, label %.thread337

.thread337:                                       ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !67057
  br label %bb.u

bb.t:                                             ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !67057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !67057
  br i1 %i.bu, label %._crit_edge.thread.i, label %bb.u

._crit_edge.thread.i:                             ; preds = %bb.t
  %i.bk = icmp eq i64 %.sroa.03.0402627.i321329, 0
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !67057
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit226.i

bb.u:                                             ; preds = %.thread337, %bb.t
  %i.bl = phi i64 [ %i.bj, %.thread337 ], [ %i.cd, %bb.t ]
  %i.bm = phi ptr [ %i.bi, %.thread337 ], [ %i.cc, %bb.t ]
  %i.bn = phi ptr [ %i.az, %.thread337 ], [ %i.bw, %bb.t ] ; 8 uses
  %.sroa.03.0402627.i321328347 = phi i64 [ %.sroa.03.0402626.i, %.thread337 ], [ %.sroa.03.0402627.i321329, %bb.t ] ; 3 uses
  %.sroa.0285.0398631.i315330345 = phi i64 [ %.sroa.0285.0398630.i, %.thread337 ], [ %.sroa.0285.0398631.i315331, %bb.t ] ; 7 uses
  %.sroa.10.0391641.i308333343 = phi ptr [ %.sroa.10.0391640.i, %.thread337 ], [ %.sroa.10.0391641.i308334, %bb.t ] ; 8 uses
  %.sroa.14.0386651.i307335342 = phi i64 [ %.sroa.14.0386650.i, %.thread337 ], [ %.sroa.14.0386651.i307336, %bb.t ] ; 2 uses
  %i.bo = phi i64 [ %i.ay, %.thread337 ], [ %i.bv, %bb.t ] ; 6 uses
  %i.bp = mul nuw nsw i64 %.sroa.03.0402627.i321328347, 40 ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67063
  %i.bq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !67063 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ab, label %.lr.ph.i

.thread322:                                       ; preds = %bb.l, %bb.s
  %i.bs = phi i64 [ %i.bj, %bb.s ], [ %i.as, %bb.l ] ; 2 uses
  %i.bt = phi ptr [ %i.bi, %bb.s ], [ %i.at, %bb.l ] ; 3 uses
  %i.bu = phi i1 [ false, %bb.s ], [ true, %bb.l ] ; 3 uses
  %i.bv = phi i64 [ %i.ay, %bb.s ], [ 0, %bb.l ]  ; 4 uses
  %.sroa.14.0386651.i307336 = phi i64 [ %.sroa.14.0386650.i, %bb.s ], [ undef, %bb.l ]
  %.sroa.10.0391641.i308334 = phi ptr [ %.sroa.10.0391640.i, %bb.s ], [ undef, %bb.l ] ; 6 uses
  %.sroa.0285.0398631.i315331 = phi i64 [ %.sroa.0285.0398630.i, %bb.s ], [ -1, %bb.l ] ; 6 uses
  %.sroa.03.0402627.i321329 = phi i64 [ %.sroa.03.0402626.i, %bb.s ], [ 0, %bb.l ] ; 2 uses
  %i.bw = phi ptr [ %i.az, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !67057
  invoke fastcc void @_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, i8 noundef 0, i64 noundef %i.bv)
          to label %bb.v unwind label %.split.i, !noalias !67057

bb.v:                                             ; preds = %.thread322
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !67057, !nonnull !97, !noundef !97 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !67057, !noundef !97 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67065)
  %i.cb = icmp ugt i64 %i.ca, %i.bs
  br i1 %i.cb, label %bb.x, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i218.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i218.i: ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ca
  %i.cd = sub nuw nsw i64 %i.bs, %i.ca
  %i.ce = icmp eq i64 %i.ca, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i219.i

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i219.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i218.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %i.bt, i64 range(i64 0, -9223372036854775808) %i.ca, i1 false), !alias.scope !67066, !noalias !67067
  br label %bb.z

bb.w:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i218.i
  %i.cf = load i8, ptr %i.bt, align 1, !noalias !67068, !noundef !97
  store i8 %i.cf, ptr %i.by, align 1, !alias.scope !67069, !noalias !67057
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.val166.i = load i64, ptr %i.f, align 8, !noalias !67057 ; 2 uses
  %i.cg = icmp eq i64 %.val166.i, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %.val166.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i

bb.z:                                             ; preds = %bb.w, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs9KQ7US1M400_11lance_table.exit.i.i219.i
  %.sroa.0298.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !67057 ; 2 uses
  %i.ch = icmp eq i64 %.sroa.0298.0.copyload.i, 0
  br i1 %i.ch, label %bb.t, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %.sroa.0298.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %bb.t

bb.ab:                                            ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bp) #80
          to label %bb.aj unwind label %.split.thread.i, !noalias !67057

.split.thread.i:                                  ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.u
  store i64 %.sroa.03.0402627.i321328347, ptr %i.e, align 8, !noalias !67057
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.cj, align 8, !noalias !67057
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.ck, align 8, !noalias !67057
  %.not145.i = icmp eq i64 %.sroa.0285.0398631.i315330345, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4340.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.745.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.ad

._crit_edge.i:                                    ; preds = %bb.bh
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !noalias !67070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !67057
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit226.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit226.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.0285.0398631.i315330346 = phi i64 [ %.sroa.0285.0398631.i315331, %._crit_edge.thread.i ], [ %.sroa.0285.0398631.i315330345, %._crit_edge.i ] ; 2 uses
  %.sroa.10.0391641.i308333344 = phi ptr [ %.sroa.10.0391641.i308334, %._crit_edge.thread.i ], [ %.sroa.10.0391641.i308333343, %._crit_edge.i ] ; 2 uses
  %.sroa.42.0 = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.fn, %._crit_edge.i ]
  %.sroa.23.4 = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.thread.i ], [ %i.fl, %._crit_edge.i ] ; 2 uses
  %.sroa.0.4 = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.0.0.copyload, %._crit_edge.i ] ; 2 uses
  %.0.val.off.i230.i = add nsw i64 %.sroa.0285.0398631.i315330346, -1
  %switch.i231.i = icmp ult i64 %.0.val.off.i230.i, -2
  br i1 %switch.i231.i, label %bb.ac, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit226.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0391641.i308333344) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0391641.i308333344, i64 noundef %.sroa.0285.0398631.i315330346, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit

bb.ad:                                            ; preds = %bb.bh, %.lr.ph.i
  %2 = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.eb, %bb.bh ] ; 6 uses
  %3 = phi i64 [ %i.bl, %.lr.ph.i ], [ %i.ec, %bb.bh ] ; 6 uses
  %.sroa.027.0542.i = phi i1 [ false, %.lr.ph.i ], [ true, %bb.bh ]
  %.sroa.6.0541.i = phi i16 [ undef, %.lr.ph.i ], [ %.sroa.0.0.copyload.i227.i, %bb.bh ]
  %.sroa.8.0540.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.8.1.i, %bb.bh ]
  %.sroa.0119.0539.i = phi i64 [ 0, %.lr.ph.i ], [ %4, %bb.bh ] ; 3 uses
  %.sroa.0295.0538.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.cq, %bb.bh ] ; 3 uses
  %4 = add nuw nsw i64 %.sroa.0119.0539.i, 1      ; 2 uses
  %.sroa.0.0.copyload.i227.i = load i16, ptr %.sroa.0295.0538.i, align 1, !alias.scope !67071, !noalias !67072 ; 3 uses
  %i.co = icmp ule i16 %.sroa.0.0.copyload.i227.i, %.sroa.6.0541.i
  %or.cond.i = and i1 %.sroa.027.0542.i, %i.co
  br i1 %or.cond.i, label %.invoke, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0295.0538.i, i64 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0295.0538.i, i64 4
  %.sroa.0.0.copyload.i233.i = load i16, ptr %i.cp, align 1, !alias.scope !67073, !noalias !67074 ; 2 uses
  %i.cr = zext i16 %.sroa.0.0.copyload.i233.i to i64
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 4 uses
  br i1 %.not145.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = lshr i64 %.sroa.0119.0539.i, 3          ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %.sroa.14.0386651.i307335342
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %i.cv = icmp ult i16 %.sroa.0.0.copyload.i233.i, 4096
  br i1 %i.cv, label %bb.an, label %bb.al

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0391641.i308333343) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.10.0391641.i308333343, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !67057, !noundef !97
  %i.cy = trunc i64 %.sroa.0119.0539.i to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = shl nuw i8 1, %i.cz
  %i.db = and i8 %i.cx, %i.da
  %.not146.i = icmp eq i8 %i.db, 0
  br i1 %.not146.i, label %bb.ag, label %bb.ak

bb.ai:                                            ; preds = %bb.af
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ct, i64 noundef %.sroa.14.0386651.i307335342, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #80
          to label %bb.aj unwind label %bb.q, !noalias !67057

bb.aj:                                            ; preds = %bb.bj, %bb.ai, %bb.ab
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.dc = icmp ult i64 %3, 2
  br i1 %i.dc, label %.loopexit, label %bb.bc

bb.al:                                            ; preds = %bb.ag
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67057
  %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i = call align 8 dereferenceable_or_null(8192) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 8192, i64 8), !noalias !67057 ; 4 uses
  %i.dd = icmp eq ptr %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.dd, label %bb.am, label %bb.ao, !prof !104

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8192) #80
          to label %.noexc242.i unwind label %bb.q, !noalias !67057

.noexc242.i:                                      ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ag
  %i.de = shl nuw nsw i64 %i.cs, 1                ; 7 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67075
  %i.df = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.de, i64 noundef range(i64 1, 9) 2) #76, !noalias !67075 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.invoke.i, label %bb.au

bb.ao:                                            ; preds = %bb.al
  %i.dh = icmp ult i64 %3, 8192
  br i1 %i.dh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i, i64 noundef 8192, i64 noundef 8) #76, !noalias !67057
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8192
  %i.dj = add nsw i64 %3, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i, ptr noundef nonnull readonly align 1 dereferenceable(8192) %2, i64 range(i64 0, -9223372036854775808) 8192, i1 false), !alias.scope !67076, !noalias !67077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67057
  invoke void @_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB2_11BitmapStore8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 4097, 65537) %i.cs, ptr noalias noundef nonnull align 8 %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed.i)
          to label %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit.i unwind label %.thread453.loopexit.split-lp.loopexit.i, !noalias !67057

_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.aq
  %i.dk = load i64, ptr %i.c, align 8, !range !105, !noalias !67057, !noundef !97
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = load i64, ptr %i.cm, align 8, !noalias !67057, !noundef !97 ; 2 uses
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit.i
  %i.dn = load i64, ptr %i.cl, align 8, !noalias !67057, !noundef !97
  %i.do = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef 21, i64 noundef %i.dn, i64 noundef %i.dm)
          to label %bb.at unwind label %bb.q, !noalias !67057

bb.as:                                            ; preds = %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCs9KQ7US1M400_11lance_table.exit.i
  %i.dp = load ptr, ptr %i.cl, align 8, !noalias !67057, !nonnull !97, !align !102, !noundef !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67057
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67057
  br label %.loopexit

.thread453.loopexit.split-lp.loopexit.i:          ; preds = %bb.av, %bb.aq
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81, !noalias !67057
  br label %bb.r

bb.au:                                            ; preds = %bb.an
  %i.dq = icmp ugt i64 %i.de, %3
  br i1 %i.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit.i, label %bb.av

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.au
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !67057
  br label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.de
  %i.ds = sub nuw nsw i64 %3, %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.df, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 range(i64 0, -9223372036854775808) %i.de, i1 false), !alias.scope !67078, !noalias !67079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !67057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67057
  store i64 %i.cs, ptr %i.a, align 8, !noalias !67080
  store ptr %i.df, ptr %.sroa.4340.0..sroa_idx.i, align 8, !noalias !67080
  store i64 %i.cs, ptr %.sroa.5341.0..sroa_idx.i, align 8, !noalias !67080
  invoke void @_RNvXs2_NtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB5_10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aw unwind label %.thread453.loopexit.split-lp.loopexit.i, !noalias !67057

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67057
  %i.dt = load i64, ptr %i.d, align 8, !range !99, !noalias !67057, !noundef !97 ; 2 uses
  %i.du = icmp eq i64 %i.dt, -1
  br i1 %i.du, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dv = load i64, ptr %.sroa.4128.0..sroa_idx.i, align 8, !noalias !67057, !noundef !97
  %i.dw = load i8, ptr %.sroa.5129.0..sroa_idx.i, align 8, !range !106, !noalias !67057, !noundef !97
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef 21, i64 noundef %i.dv, i1 noundef zeroext %i.dx)
          to label %bb.bb unwind label %bb.q, !noalias !67057

bb.ay:                                            ; preds = %bb.aw
  %.sroa.4128.0.copyload.i = load ptr, ptr %.sroa.4128.0..sroa_idx.i, align 8, !noalias !67057
  %.sroa.5129.0.copyload.i = load i64, ptr %.sroa.5129.0..sroa_idx.i, align 8, !noalias !67057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67057
  %i.dz = ptrtoint ptr %.sroa.4128.0.copyload.i to i64
  %i.ea = inttoptr i64 %i.dt to ptr
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i, %bb.ay, %bb.as
  %i.eb = phi ptr [ %i.et, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i ], [ %i.dr, %bb.ay ], [ %i.di, %bb.as ]
  %i.ec = phi i64 [ %i.eu, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ds, %bb.ay ], [ %i.dj, %bb.as ]
  %.sroa.8.1.i = phi i64 [ %i.en, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i ], [ %.sroa.5129.0.copyload.i, %bb.ay ], [ %.sroa.8.0540.i, %bb.as ] ; 2 uses
  %.sroa.745.0.i = phi i64 [ %i.fj, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i ], [ %i.dz, %bb.ay ], [ %i.dm, %bb.as ]
  %.sroa.4.0.i = phi ptr [ %i.fk, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ea, %bb.ay ], [ %i.dp, %bb.as ]
  %.sroa.043.0.i = phi i64 [ 2, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i ], [ 0, %bb.ay ], [ 1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67057
  store i16 %.sroa.0.0.copyload.i227.i, ptr %i.cn, align 8, !noalias !67057
  store i64 %.sroa.043.0.i, ptr %i.b, align 8, !noalias !67057
  store ptr %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !67057
  store i64 %.sroa.745.0.i, ptr %.sroa.745.0..sroa_idx.i, align 8, !noalias !67057
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !67057
  %i.ed = load i64, ptr %i.ck, align 8, !alias.scope !67081, !noalias !67057, !noundef !97 ; 3 uses
  %i.ee = load i64, ptr %i.e, align 8, !range !101, !alias.scope !67081, !noalias !67057, !noundef !97
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.bh unwind label %.split656.i, !noalias !67082

.split656.i:                                      ; preds = %bb.ba
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b) #81, !noalias !67057
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81, !noalias !67057
  br label %bb.r

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67057
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ak
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ei = add nsw i64 %3, -2                      ; 2 uses
  %.sroa.0.0.copyload.i238.i = load i16, ptr %2, align 1, !alias.scope !67083, !noalias !67084 ; 3 uses
  %i.ej = icmp eq i16 %.sroa.0.0.copyload.i238.i, 0
  br i1 %i.ej, label %.invoke, label %bb.bd

.invoke:                                          ; preds = %bb.bc, %bb.ad
  %i.ek = phi ptr [ @21, %bb.ad ], [ @23, %bb.bc ]
  %i.el = phi i64 [ 29, %bb.ad ], [ 28, %bb.bc ]
  %i.em = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.el)
          to label %.loopexit unwind label %bb.q, !noalias !67057

bb.bd:                                            ; preds = %bb.bc
  %i.en = zext i16 %.sroa.0.0.copyload.i238.i to i64 ; 3 uses
  %i.eo = shl nuw nsw i64 %i.en, 2                ; 9 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67085
  %i.ep = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.eo, i64 noundef range(i64 1, 9) 2) #76, !noalias !67085 ; 9 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.invoke.i, label %bb.be

.invoke.i:                                        ; preds = %bb.bd, %bb.an
  %i.er = phi i64 [ %i.de, %bb.an ], [ %i.eo, %bb.bd ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.er) #80
          to label %.cont.i unwind label %bb.q, !noalias !67057

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.es = icmp ugt i64 %i.eo, %i.ei
  br i1 %i.es, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.be
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !67057
  br label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin.i:            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eo
  %i.eu = sub nuw nsw i64 %i.ei, %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ep, ptr nonnull readonly align 1 %i.eh, i64 range(i64 0, -9223372036854775808) %i.eo, i1 false), !alias.scope !67086, !noalias !67087
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel.i = load i32, ptr %i.ep, align 2, !noalias !67088 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.peel.i = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel.i, 16
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.peel.i to i16
  %i.ew = add i16 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel.i, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel.i ; 3 uses
  %i.ex = icmp ult i16 %i.ew, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel.i
  br i1 %i.ex, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.bf, !prof !100

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin.i
  %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.peel.i = zext i16 %i.ew to i48
  %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.peel.i, 32
  %i.ey = shl i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel.i, 16
  %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel.i = zext i32 %i.ey to i48
  %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.peel.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel.i, %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel.i
  %i.ez = lshr exact i48 %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.peel.i, 16
  %i.fa = trunc nuw i48 %i.ez to i32
  store i32 %i.fa, ptr %i.ep, align 2, !noalias !67089
  %.not.i.i.i.i.i.i.i.i.i.peel.i = icmp eq i16 %.sroa.0.0.copyload.i238.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.peel.i, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.bf
  %i.fb = getelementptr i8, ptr %i.ep, i64 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %bb.bg
  %.sroa.6.0372.i = phi i16 [ %i.fc, %bb.bg ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.4.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %bb.bg ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !67088 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 16
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i to i16
  %i.fc = add i16 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.fd = icmp uge i16 %i.fc, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fe = call i16 @llvm.uadd.sat.i16(i16 %.sroa.6.0372.i, i16 1)
  %.not.i.i.i.i.i.i.i.i.i.i.i.not.i = icmp ult i16 %i.fe, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i
  %or.cond720.i = and i1 %.not.i.i.i.i.i.i.i.i.i.i.i.not.i, %i.fd
  br i1 %or.cond720.i, label %bb.bg, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.thread.i, !prof !107

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ff = getelementptr i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i = zext i16 %i.fc to i48
  %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.fg = shl i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 16
  %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.fg to i48
  %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = lshr exact i48 %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i, 16
  %i.fi = trunc nuw i48 %i.fh to i32
  store i32 %i.fi, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !67089
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.ev
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !66970

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !67090
  br label %.loopexit

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.bg, %bb.bf
  %i.fj = ptrtoint ptr %i.ep to i64
  %i.fk = inttoptr i64 %i.en to ptr
  br label %bb.az

bb.bh:                                            ; preds = %bb.ba, %bb.az
  %i.fl = load ptr, ptr %i.cj, align 8, !alias.scope !67081, !noalias !67057, !nonnull !97, !noundef !97 ; 2 uses
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fm, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !67057
  %i.fn = add i64 %i.ed, 1                        ; 2 uses
  store i64 %i.fn, ptr %i.ck, align 8, !alias.scope !67081, !noalias !67057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67057
  %exitcond.not.i = icmp eq i64 %4, %.sroa.03.0402627.i321328347
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ad

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !67057
  br i1 %i.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit269.i, label %.thread477.i

.loopexit:                                        ; preds = %bb.ak, %.invoke, %bb.ap, %bb.at, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit.i, %bb.bb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.thread.i
  %.sroa.22.0 = phi ptr [ inttoptr (i64 90194313219 to ptr), %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3J_5ErrorNvMNtB3L_12bitmap_storeNtB5m_11BitmapStore8try_fromNtB5m_5ErrorEs0_0ENtNtB3L_14interval_store8IntervalINtNtB6_6result6ResultNtB4p_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B70_IB6Y_IB4L_B6q_EB7B_EINtNtNtB4_6traits7collect12FromIteratorIB6Y_B6q_B7B_EE9from_iterBQ_E0B8m_ECs9KQ7US1M400_11lance_table.exit.thread.i ], [ @151, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit.i ], [ %i.dy, %bb.bb ], [ @151, %bb.ap ], [ %i.do, %bb.at ], [ @151, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECs9KQ7US1M400_11lance_table.exit.i ], [ %i.em, %.invoke ], [ @151, %bb.ak ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e), !noalias !67057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !67057
  br label %.thread477.i

.thread477.i:                                     ; preds = %.loopexit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i, %bb.p
  %i.fo = phi ptr [ %i.bn, %.loopexit ], [ %i.az, %bb.p ], [ %i.bw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ] ; 2 uses
  %.sroa.0285.0398631.i316.a = phi i64 [ %.sroa.0285.0398631.i315330345, %.loopexit ], [ %.sroa.0285.0398630.i, %bb.p ], [ %.sroa.0285.0398631.i315331, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ]
  %.sroa.10.0391641.i309.a = phi ptr [ %.sroa.10.0391641.i308333343, %.loopexit ], [ %.sroa.10.0391640.i, %bb.p ], [ %.sroa.10.0391641.i308334, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ]
  %i.fp = phi i64 [ %i.bo, %.loopexit ], [ %i.ay, %bb.p ], [ %i.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ]
  %.sroa.23.2 = phi ptr [ %.sroa.22.0, %.loopexit ], [ @151, %bb.p ], [ @151, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fo) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fo, i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit269.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit269.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i, %.thread477.i
  %.sroa.0285.0398631.i317 = phi i64 [ %.sroa.0285.0398631.i316.a, %.thread477.i ], [ %.sroa.0285.0398631.i315331, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ] ; 2 uses
  %.sroa.10.0391641.i310 = phi ptr [ %.sroa.10.0391641.i309.a, %.thread477.i ], [ %.sroa.10.0391641.i308334, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ] ; 2 uses
  %.sroa.23.3 = phi ptr [ %.sroa.23.2, %.thread477.i ], [ @151, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit224.i ] ; 2 uses
  %.0.val.off.i271.i = add nsw i64 %.sroa.0285.0398631.i317, -1
  %switch.i272.i = icmp ult i64 %.0.val.off.i271.i, -2
  br i1 %switch.i272.i, label %bb.bi, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread

bb.bi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit269.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0391641.i310) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0391641.i310, i64 noundef %.sroa.0285.0398631.i317, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67057
  br label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread

bb.bj:                                            ; preds = %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 30) #80
          to label %bb.aj unwind label %bb.o, !noalias !67057

bb.bk:                                            ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bb, ptr noundef nonnull align 1 dereferenceable(30) @24, i64 30, i1 false), !noalias !67057
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67091
  %i.fq = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !67091 ; 5 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.bl, label %bb.bm, !prof !104

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc274.i unwind label %.body.thread.i, !noalias !67057

.noexc274.i:                                      ; preds = %bb.bl
  unreachable

.body.thread.i:                                   ; preds = %bb.bl
  %i.fs = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67092
  br label %.body169

bb.bm:                                            ; preds = %bb.bk
  store i64 30, ptr %i.fq, align 8, !noalias !67057
  %.sroa.5352.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.bb, ptr %.sroa.5352.0..sroa_idx.i, align 8, !noalias !67057
  %.sroa.7353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 30, ptr %.sroa.7353.0..sroa_idx.i, align 8, !noalias !67057
  %i.ft = invoke noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @26)
          to label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread unwind label %bb.o, !noalias !67057

.invoke490:                                       ; preds = %bb.j, %bb.h
  %i.fu = phi i64 [ %.sroa.017.0.i, %bb.h ], [ 20, %bb.j ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.fu) #80
          to label %.cont unwind label %bb.bs

.cont:                                            ; preds = %.invoke490
  unreachable

bb.bn:                                            ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.aq, ptr noundef nonnull align 1 dereferenceable(20) @27, i64 20, i1 false), !noalias !67057
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67093
  %i.fv = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !67093 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.bo, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit.i, !prof !104

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc276.i unwind label %bb.bp, !noalias !67057

.noexc276.i:                                      ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bo
  %i.fx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67094
  br label %.body169

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.bn
  store i64 20, ptr %i.fv, align 8, !noalias !67057
  %.sroa.5345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.aq, ptr %.sroa.5345.0..sroa_idx.i, align 8, !noalias !67057
  %.sroa.7346.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i64 20, ptr %.sroa.7346.0..sroa_idx.i, align 8, !noalias !67057
  %i.fy = invoke noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @26)
          to label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bt, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !97 ; 4 uses
  %i.gc = icmp ult i64 %i.gb, 288230376151711744
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp eq i64 %i.gb, 0                    ; 2 uses
  br i1 %i.gd, label %bb.bu, label %._crit_edge.i.i.i.i

.body169:                                         ; preds = %.thread359, %bb.cx, %bb.dm, %.thread354, %bb.bs, %bb.bp, %.body.thread.i, %bb.n, %.body.i
  %.sroa.052.0 = phi i8 [ %.sroa.052.2, %.thread359 ], [ 1, %bb.bs ], [ 1, %.body.i ], [ 1, %bb.n ], [ 1, %.body.thread.i ], [ 1, %bb.bp ], [ %.sroa.052.2, %.thread354 ], [ %.sroa.052.2, %bb.dm ], [ %.sroa.052.2, %bb.cx ]
  %cond = phi i1 [ true, %.thread359 ], [ false, %bb.bs ], [ false, %.body.i ], [ false, %bb.n ], [ false, %.body.thread.i ], [ false, %bb.bp ], [ false, %.thread354 ], [ false, %bb.dm ], [ true, %bb.cx ]
  %.sroa.068.0 = phi i1 [ false, %.thread359 ], [ true, %bb.bs ], [ true, %.body.i ], [ true, %bb.n ], [ true, %.body.thread.i ], [ true, %bb.bp ], [ true, %.thread354 ], [ true, %bb.dm ], [ false, %bb.cx ] ; 2 uses
  %.pn122 = phi { ptr, i32 } [ %.pn, %.thread359 ], [ %i.gh, %bb.bs ], [ %.pn153.i, %.body.i ], [ %.pn153.i, %bb.n ], [ %i.fs, %.body.thread.i ], [ %i.fx, %bb.bp ], [ %.pn118364.ph, %.thread354 ], [ %.pn118364.ph, %bb.dm ], [ %i.jf, %bb.cx ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val166 = load i64, ptr %i.ge, align 8, !range !99, !noundef !97 ; 2 uses
  %i.gf = icmp sgt i64 %.val166, 0
  br i1 %i.gf, label %bb.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit

bb.br:                                            ; preds = %.body169
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val167 = load ptr, ptr %i.gg, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val167, i64 noundef %.val166, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit

bb.bs:                                            ; preds = %.invoke490, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit.i, %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body169

_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit226.i
  %i.gi = icmp eq i64 %.sroa.0.4, -1
  br i1 %i.gi, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread, label %bb.bt

_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit.thread: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit.i, %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit269.i, %bb.bi, %bb.e, %bb.c, %bb.bm, %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit
  %.sroa.23.5353 = phi ptr [ %.sroa.23.4, %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit ], [ %i.fy, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs9KQ7US1M400_11lance_table.exit.i ], [ @151, %bb.k ], [ %.sroa.23.3, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit269.i ], [ %.sroa.23.3, %bb.bi ], [ @151, %bb.e ], [ @151, %bb.c ], [ %i.ft, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noundef nonnull %.sroa.23.5353, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1399)
          to label %bb.dn unwind label %bb.bs

bb.bt:                                            ; preds = %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implQRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1F_5ErrorNvMNtB1H_12bitmap_storeNtB3T_11BitmapStore8try_fromNtB3T_5ErrorECs9KQ7US1M400_11lance_table.exit
  store i64 %.sroa.0.4, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.23.4, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.42.0, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.bq

bb.bu:                                            ; preds = %bb.bq
  store i64 -1, ptr %i.n, align 8
  br label %bb.bv

._crit_edge.i.i.i.i:                              ; preds = %bb.bq
  %i.gj = load i64, ptr %i.fz, align 8, !range !101, !noundef !97 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !nonnull !97, !noundef !97
  store i64 %i.gj, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.gl, ptr %.sroa.4.0..sroa_idx238, align 8
  %.sroa.5.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.gb, ptr %.sroa.5.0..sroa_idx239, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i.i.i.i, %bb.bu
  %i.gm = phi i64 [ -1, %bb.bu ], [ %i.gj, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.052.2 = phi i8 [ 1, %bb.bu ], [ 0, %._crit_edge.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !range !99, !noundef !97 ; 5 uses
  %.not = icmp eq i64 %i.go, -1
  br i1 %.not, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtCs9KQ7US1M400_11lance_table6formatNtCs8d5NHFTTVL0_4uuid4UuidINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtNtB2_2pb4UuidE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gn)
          to label %bb.cg unwind label %.thread372

bb.bx:                                            ; preds = %bb.bv
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67095
  %i.gp = call noundef dereferenceable_or_null(43) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 43, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67095 ; 4 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 43) #80
          to label %.noexc172 unwind label %.thread372

.noexc172:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.gp, ptr noundef nonnull align 1 dereferenceable(43) @842, i64 43, i1 false), !noalias !67096
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67097
  %i.gr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !67097 ; 5 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ca, label %bb.cb, !prof !104

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i.i unwind label %.thread369, !noalias !67098

.noexc.i.i:                                       ; preds = %bb.ca
  unreachable

.thread369:                                       ; preds = %bb.ca
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef 43, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !67099
  br label %.thread354

.thread372:                                       ; preds = %bb.bw, %bb.by
  %lpad.thr_comm = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.i, i64 %i.j
  %i.u = icmp eq i64 %i.j, 0
  br i1 %i.u, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.03.092 = phi ptr [ %i.i, %.lr.ph ], [ %i.x, %bb.s ] ; 14 uses
  %.sroa.7.091 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.s ] ; 3 uses
  %.sroa.10.090 = phi i64 [ %i.j, %.lr.ph ], [ %i.v, %bb.s ]
  %i.v = add nsw i64 %.sroa.10.090, -1            ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.092, %i.t
  br i1 %i.w, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 192
  %i.y = add nuw nsw i64 %.sroa.7.091, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !77172
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 40
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %.noexc unwind label %.loopexit, !inline_history !77160

.noexc:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 176
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !alias.scope !77171, !noalias !77173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77172
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 64
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.i unwind label %bb.h, !noalias !77174, !inline_history !77160

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.j, %bb.k, %bb.h
  %.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.h ], [ %.pn.i, %bb.k ], [ %.pn.i, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77175), !noalias !77173
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !77175, !noalias !77172 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i, 0
  br i1 %i.ad, label %bb.u, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !77175, !noalias !77172, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77176, !inline_history !77160
  br label %bb.u

bb.h:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i

bb.i:                                             ; preds = %.noexc
  %.sroa.063.0.copyload = load i64, ptr %i.b, align 8, !noalias !77172 ; 3 uses
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !77172 ; 3 uses
  %.sroa.667.0.copyload = load i64, ptr %.sroa.667.0..sroa_idx, align 8, !noalias !77172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !77172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77172
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 128
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag)
          to label %bb.m unwind label %bb.l, !noalias !77174, !inline_history !77160

bb.j:                                             ; preds = %bb.n, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.ai, %bb.l ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.063.0.copyload, 0
  br i1 %i.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.565.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.565.0.copyload, i64 noundef %.sroa.063.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77177, !inline_history !77160
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !77172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77172
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 185
  %i.ak = load i8, ptr %i.aj, align 1, !range !124, !alias.scope !77171, !noalias !77173, !noundef !97
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 184
  %i.am = load i8, ptr %i.al, align 8, !range !106, !alias.scope !77171, !noalias !77173, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !77172
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 88
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %bb.o unwind label %bb.n, !noalias !77174, !inline_history !77160

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.d), !noalias !77174, !inline_history !77160
  br label %bb.j

bb.o:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %.sroa.03.092, align 8, !range !105, !alias.scope !77171, !noalias !77173, !noundef !97
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 24
  %i.at = load <2 x i64>, ptr %i.as, align 8, !alias.scope !77171, !noalias !77173 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !alias.scope !77171, !noalias !77173, !noundef !97 ; 3 uses
  %.not.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i1, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !77171, !noalias !77173, !nonnull !97, !align !102, !noundef !97
  %i.ax = atomicrmw add ptr %i.au, i64 1 monotonic, align 8, !noalias !77174
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.trap(), !noalias !77173
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.5.sroa.4.0.i = phi ptr [ undef, %bb.o ], [ undef, %bb.p ], [ %i.aw, %bb.q ]
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %bb.o ], [ null, %bb.p ], [ %i.au, %bb.q ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.az = phi <2 x i64> [ undef, %bb.o ], [ %i.at, %bb.p ], [ %i.at, %bb.q ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.092, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.850)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.850, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !77173
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1557)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1557, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !77173
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1052)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1052, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !77173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !77172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !77172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !77172
  %i.bb = getelementptr inbounds nuw [192 x i8], ptr %i.p, i64 %.sroa.7.091 ; 14 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %.sroa.951.sroa.4.0..sroa.951.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %.sroa.951.sroa.5.0..sroa.951.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %i.bc = load <4 x i32>, ptr %i.ba, align 8, !alias.scope !77171, !noalias !77173
  store i64 %.sroa.0.0.i, ptr %i.bb, align 8, !noalias !77173
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.446.0..sroa_idx, align 8, !noalias !77173
  store ptr %.sroa.5.sroa.4.0.i, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !77173
  store <2 x i64> %i.az, ptr %.sroa.648.0..sroa_idx, align 8, !noalias !77173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.850.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.850, i64 24, i1 false), !noalias !77173
  store i64 %.sroa.063.0.copyload, ptr %.sroa.951.0..sroa_idx, align 8, !noalias !77173
  store ptr %.sroa.565.0.copyload, ptr %.sroa.951.sroa.4.0..sroa.951.0..sroa_idx.sroa_idx, align 8, !noalias !77173
  store i64 %.sroa.667.0.copyload, ptr %.sroa.951.sroa.5.0..sroa.951.0..sroa_idx.sroa_idx, align 8, !noalias !77173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1052.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1052, i64 24, i1 false), !noalias !77173
  store <4 x i32> %i.bc, ptr %.sroa.1153.0..sroa_idx, align 8, !noalias !77173
  %.sroa.1557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1557, i64 48, i1 false), !noalias !77173
  %.sroa.1658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 176
  store <2 x i32> %i.ab, ptr %.sroa.1658.0..sroa_idx, align 8, !noalias !77173
  %.sroa.1860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  store i8 %i.am, ptr %.sroa.1860.0..sroa_idx, align 8, !noalias !77173
  %.sroa.1961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 185
  store i8 %i.ak, ptr %.sroa.1961.0..sroa_idx, align 1, !noalias !77173
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.850)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1052)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1557)
  %i.bd = icmp eq i64 %i.v, 0
  br i1 %i.bd, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit, label %bb.e

bb.t:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !77173, !inline_history !77167
  unreachable

bb.u:                                             ; preds = %.loopexit, %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table.exit.i ], [ %.pn.pn.i, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.091, ptr %i.s, align 8, !noalias !77173
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #81
          to label %bb.v unwind label %bb.t, !noalias !77173, !inline_history !77167

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.s, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit
  %i.bf = phi ptr [ %i.o, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread ], [ %i.s, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.s ]
  store i64 %i.j, ptr %i.bf, align 8, !noalias !77169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !77178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !77169
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77184 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77185)
  %i.a = mul nuw i64 %.16.val, 24                 ; 3 uses
  %i.b = icmp eq i64 %.16.val, 0
  br i1 %i.b, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77186
  %i.c = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 9) 8) #76, !noalias !77186 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 8 %.8.val, i64 %i.a, i1 false), !noalias !77185
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #80, !noalias !77187
  unreachable

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %.lr.ph.preheader.i, %bb.a
  %.sroa.10.0.i31.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %.lr.ph.preheader.i ]
  store i64 %.16.val, ptr %0, align 8, !alias.scope !77185
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i31.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !77185
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !77185
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77193 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77194
  %i.c = mul nuw nsw i64 %.16.val, 176            ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !77194
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !77194
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77195
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #76, !noalias !77195 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #80, !noalias !77194
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !77194
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !77194
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.l, %bb.d ], [ %.8.val, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.022.i = phi i64 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %1, %bb.d ], [ %.16.val, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77194
  invoke fastcc void @_RNvXs8_NtNtCs9KQ7US1M400_11lance_table6format5indexNtB5_13IndexMetadataNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.e, !noalias !77196

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 176
  %1 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.m = getelementptr inbounds nuw [176 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.m, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !noalias !77196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77194
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !77194
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #81, !noalias !77196
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i
  %2 = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i ], [ %i.j, %bb.d ]
  store i64 %.16.val, ptr %2, align 8, !noalias !77194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !77197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77194
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index9IndexFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77206 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77208
  %i.c = shl nuw nsw i64 %.16.val, 5              ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !77208
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !77208
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format5index9IndexFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77209
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #76, !noalias !77209 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #80, !noalias !77208
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !77208
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !77208
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.m, %bb.e ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77211)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.f, !noalias !77212

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 32
  %1 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !77213, !noundef !97
  store i64 %i.o, ptr %i.k, align 8, !alias.scope !77210, !noalias !77208
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !77212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77208
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format5index9IndexFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.d

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !77208
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index9IndexFileEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81, !noalias !77212
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format5index9IndexFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i
  %2 = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i ], [ %i.j, %bb.e ]
  store i64 %.16.val, ptr %2, align 8, !noalias !77208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !77207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77208
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77227 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.028.i = alloca [80 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77228
  %i.c = mul nuw nsw i64 %.16.val, 112            ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !77228
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !77228
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77229
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #76, !noalias !77229 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #80, !noalias !77228
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !77228
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !77228
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.d

.loopexit38.i:                                    ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %.sroa.013.049.i = phi ptr [ %i.k, %.loopexit.i ], [ %.8.val, %.lr.ph.preheader.i ] ; 6 uses
  %.sroa.7.048.i = phi i64 [ %i.l, %.loopexit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.047.i = phi i64 [ %1, %.loopexit.i ], [ %.16.val, %.lr.ph.preheader.i ]
  %1 = add nsw i64 %.sroa.10.047.i, -1            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 112
  %i.l = add nuw nsw i64 %.sroa.7.048.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77230
  invoke fastcc void @_RNvXsc_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8DataFileNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noundef nonnull align 8 %.sroa.013.049.i)
          to label %.noexc.i unwind label %.loopexit38.i, !noalias !77228

.noexc.i:                                         ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 80
  %i.n = load i64, ptr %i.m, align 8, !range !99, !noalias !77230, !noundef !97
  %.not.i.i = icmp eq i64 %i.n, -1
  %i.o = getelementptr i8, ptr %.sroa.013.049.i, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !noalias !77230, !nonnull !97, !noundef !97 ; 3 uses
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.q = getelementptr i8, ptr %.sroa.013.049.i, i64 96
  %.val9.i.i = load i64, ptr %i.q, align 8, !noalias !77230, !noundef !97 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77231)
  %i.r = icmp eq i64 %.val9.i.i, 0
  br i1 %i.r, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw nsw i64 %.val9.i.i, 3            ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77232
  %i.t = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #76, !noalias !77232 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.s) #80
          to label %.noexc.i.i unwind label %bb.k, !noalias !77230

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.sroa.013.023.i.i.i.i = phi ptr [ %i.w, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.v, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %4, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.val9.i.i, %bb.f ]
  %.val12.i.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i.i, align 8, !alias.scope !77231, !noalias !77233, !nonnull !97, !noundef !97 ; 2 uses
  %2 = atomicrmw add ptr %.val12.i.i.i.i, i64 1 monotonic, align 8, !noalias !77234
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %bb.h, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i.i, i64 8
  %4 = add nsw i64 %.sroa.10.021.i.i.i.i, -1      ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.7.022.i.i.i.i
  store ptr %.val12.i.i.i.i, ptr %i.x, align 8, !noalias !77234
  %i.y = icmp eq i64 %4, 0
  br i1 %i.y, label %.loopexit.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %.noexc.i
  %i.z = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !77230
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a) #81, !noalias !77230
  br label %bb.l

.loopexit.i:                                      ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i, %bb.i, %bb.e
  %.sroa.6.0.i.i = phi i64 [ undef, %bb.i ], [ 0, %bb.e ], [ %.val9.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.t, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %.sroa.0.0.i12.i = phi i64 [ -1, %bb.i ], [ 0, %bb.e ], [ %.val9.i.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !77230, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.i, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !77228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77230
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.g, i64 %.sroa.7.048.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.i, i64 80, i1 false), !noalias !77228
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store i64 %.sroa.0.0.i12.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !77228
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store ptr %.sroa.5.0.i.i, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !77228
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store i64 %.sroa.6.0.i.i, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !77228
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i64 %i.ad, ptr %.sroa.732.0..sroa_idx.i, align 8, !noalias !77228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i)
  %i.af = icmp eq i64 %1, 0
  br i1 %i.af, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.d

bb.l:                                             ; preds = %bb.k, %.loopexit38.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %lpad.loopexit.i, %.loopexit38.i ]
  store i64 %.sroa.7.048.i, ptr %i.j, align 8, !noalias !77228
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81, !noalias !77228
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %.loopexit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i
  %5 = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i ], [ %i.j, %.loopexit.i ]
  store i64 %.16.val, ptr %5, align 8, !noalias !77228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77228
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77240 {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77241
  %i.c = mul nuw nsw i64 %.16.val, 240            ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !77241
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !77241
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !77242
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #76, !noalias !77242 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #80, !noalias !77241
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !77241
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !77241
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.l, %bb.d ], [ %.8.val, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.7.022.i = phi i64 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %1, %bb.d ], [ %.16.val, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77241
  invoke fastcc void @_RNvXsv_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8FragmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !77243

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 240
  %1 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.m, ptr noundef nonnull align 8 dereferenceable(240) %i.a, i64 240, i1 false), !noalias !77243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77241
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !77243
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !77241
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81
          to label %bb.g unwind label %bb.e, !noalias !77243

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i
  %2 = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i ], [ %i.j, %bb.d ]
  store i64 %.16.val, ptr %2, align 8, !noalias !77241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !77244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77241
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtNtB9_6format11transaction11TransactionINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtB7_7builder11TransactionE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([424 x i8]) align 8 captures(none) dereferenceable(424) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1) unnamed_addr #0 !guid !77245 {
bb.a:
  tail call void @_RNvXs5_NtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtNtB9_6format2pb11TransactionINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtB7_7builder11TransactionE4from(ptr noalias noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsa_NtNtCs9KQ7US1M400_11lance_table11transaction9operationNtB5_16DataOverlayGroupNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77248 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77249)
  %i.a = load i64, ptr %0, align 8, !range !101, !alias.scope !77249, !noundef !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !77249, !nonnull !97, !noundef !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !77249, !noundef !97 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtB5_10DeepSizeOf21deep_size_of_childrenB1j_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.j, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.i, %.preheader.i ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.04.0.i.i
  %i.h = tail call noundef i64 @_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7overlayNtB5_15DataOverlayFileNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noundef nonnull readonly align 8 %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !77249
  %i.i = add i64 %i.h, %.sroa.02.0.i.i            ; 2 uses
  %i.j = add nuw i64 %.sroa.04.0.i.i, 1           ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtB5_10DeepSizeOf21deep_size_of_childrenB1j_.exit, label %.preheader.i

_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtB5_10DeepSizeOf21deep_size_of_childrenB1j_.exit: ; preds = %.preheader.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.preheader.i ]
  %i.l = mul i64 %i.a, 112
  %i.m = add i64 %.sroa.0.0.i.i, %i.l
  ret i64 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCs9KQ7US1M400_11lance_table12system_index7mem_walNtB5_13ShardManifestINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtB9_6format2pb13ShardManifestE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !77299 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.5.sroa.7 = alloca [16 x i8], align 1     ; 5 uses
  %.sroa.5.sroa.8 = alloca [39 x i8], align 1     ; 4 uses
  %.sroa.56.sroa.7 = alloca [16 x i8], align 1    ; 7 uses
  %.sroa.56.sroa.8 = alloca [39 x i8], align 1    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.8)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !99, !noundef !97 ; 9 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtCs9KQ7US1M400_11lance_table6formatNtCs8d5NHFTTVL0_4uuid4UuidINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtNtB2_2pb4UuidE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.l unwind label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1972, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1973)
          to label %.thread100 unwind label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.thread

bb.d:                                             ; preds = %.body.i, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bx, %bb.u ] ; 2 uses
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %.split, label %.thread105

.thread:                                          ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not151 = icmp eq i64 %i.j, 0
  br i1 %.not151, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.thread, label %.split.thread

.split.thread:                                    ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val75146 = load ptr, ptr %i.n, align 8, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val75146, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.thread

.split:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val75 = load ptr, ptr %i.o, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val75, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %.thread105

.thread100:                                       ; preds = %bb.c
  %.sroa.56.sroa.0.0.copyload = load i8, ptr %i.e, align 8
  %.sroa.56.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.56.sroa.7, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.56.sroa.7.0..sroa_idx, i64 16, i1 false)
  %.sroa.56.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.56.sroa.8, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.56.sroa.8.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.56.sroa.7, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.8, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.56.sroa.8, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.sroa.8)
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.463.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5.sroa.7, i64 16, i1 false)
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.564.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.8, i64 39, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.56.sroa.0.0.copyload, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i

bb.e:                                             ; preds = %bb.l
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.567.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.8, i64 39, i1 false)
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.466.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5.sroa.7, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.047.0.copyload, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77300)
  %.not120 = icmp eq i64 %i.j, 0
  br i1 %.not120, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val2.i = load ptr, ptr %i.r, align 8, !alias.scope !77300, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77300
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i: ; preds = %.thread100, %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77301)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77302, !nonnull !97, !noundef !97 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.t, align 8, !alias.scope !77302, !noundef !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77303)
  %i.u = icmp eq i64 %.val1.i.i, 0
  br i1 %i.u, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_.exit.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.w = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77305)
  %.val.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !77306, !noalias !77302 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !77306, !noalias !77302, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77307
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !77308, !noalias !77302 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val1.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !77308, !noalias !77302, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !77309
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_.exit.i.i.i.i: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %i.ac = icmp eq i64 %i.w, %.val1.i.i
  br i1 %i.ac, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_.exit.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidEEB13_.exit.i
  %.val2.i.i = load i64, ptr %1, align 8, !range !101, !alias.scope !77302, !noundef !97 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEEB1e_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.ae = mul nuw i64 %.val2.i.i, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !77302
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEEB1e_.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEEB1e_.exit.i: ; preds = %bb.i, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77310)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i3.i = load ptr, ptr %i.ag, align 8, !alias.scope !77311, !nonnull !97, !noundef !97 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i4.i = load i64, ptr %i.ah, align 8, !alias.scope !77311, !noundef !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77312)
  %i.ai = icmp eq i64 %.val1.i4.i, 0
end_hunk_5
begin_hunk_6_@_RNvXsf_NtNtCs9KQ7US1M400_11lance_table11transaction9operationNtB5_9OperationNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children:bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i, -1
  %..i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %.val13.i.i.i.i.i.i.i.i.i
  %i.ahp = add i64 %.val.i.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i
  %i.ahq = add i64 %i.ahp, %..i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahr = getelementptr inbounds nuw [48 x i8], ptr %i.ahi, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 48
  %.val.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ahs, align 8, !range !101, !noalias !78613, !noundef !97
  %i.aht = getelementptr i8, ptr %i.ahr, i64 72
  %.val13.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.aht, align 8, !range !99, !noalias !78613, !noundef !97 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.1, -1
  %..i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 0, i64 %.val13.i.i.i.i.i.i.i.i.i.1
  %i.ahu = add i64 %.val.i.i.i.i.i.i.i.i.i.1, %i.ahq
  %i.ahv = add i64 %i.ahu, %..i.i.i.i.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.ahw = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter466.next.1 = add nuw i64 %niter466, 2     ; 2 uses
  %niter466.ncmp.1 = icmp eq i64 %niter466.next.1, %unroll_iter465
  br i1 %niter466.ncmp.1, label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.ahw, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.ahv, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod464 = trunc i64 %i.ahk to i1
  tail call void @llvm.assume(i1 %lcmp.mod464)
  %i.ahx = getelementptr inbounds nuw [48 x i8], ptr %i.ahi, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ahx, align 8, !range !101, !noalias !78613, !noundef !97
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 24
  %.val13.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ahy, align 8, !range !99, !noalias !78613, !noundef !97 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.epil = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.epil, -1
  %..i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.epil, i64 0, i64 %.val13.i.i.i.i.i.i.i.i.i.epil
  %i.ahz = add i64 %.val.i.i.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.i.i.i.epil.init
  %i.aia = add i64 %i.ahz, %..i.i.i.i.i.i.i.i.i.i.i.i.epil
  br label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i

_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa, %._crit_edge.i.i.i173
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i173 ], [ %i.ahv, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterlNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB21_8adapters3map8map_foldTRlRBO_EjjNCNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplBO_ENtB3N_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtB1Z_5accumjNtB6d_3Sum3sumINtB31_3MapINtB4r_4IterlBO_EB3F_EE0E0E0BU_.exit.i.i.i.loopexit.unr-lcssa ], [ %i.aia, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.aib = mul i64 %i.ahg, 48
  %i.aic = add i64 %i.aib, %.sroa.02.0.ph.i.i.i170
  %i.aid = add i64 %i.aic, %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %i.aie = add i64 %.sroa.0.0.ph.i.i.i171, -1
  br label %.outer.i.i.i167

.lr.ph.split.i.i.i178:                            ; preds = %.lr.ph.i.i.i177, %.lr.ph.split.i.i.i178
  %i.aif = phi ptr [ %i.aij, %.lr.ph.split.i.i.i178 ], [ %.lcssa2732.i.i.i168, %.lr.ph.i.i.i177 ] ; 2 uses
  %i.aig = phi ptr [ %i.aii, %.lr.ph.split.i.i.i178 ], [ %.lcssa2630.i.i.i169, %.lr.ph.i.i.i177 ]
  %.val18.i.i.i = load <16 x i8>, ptr %i.aif, align 16, !noalias !78612
  %i.aih = icmp sgt <16 x i8> %.val18.i.i.i, splat (i8 -1)
  %i.aii = getelementptr inbounds i8, ptr %i.aig, i64 -640 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 16 ; 2 uses
  %.cast.i.i.i179 = bitcast <16 x i1> %i.aih to i16 ; 2 uses
  %.not.i.i.i180 = icmp eq i16 %.cast.i.i.i179, 0
  br i1 %.not.i.i.i180, label %.lr.ph.split.i.i.i178, label %._crit_edge.i.i.i173

_RNvXsd_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map9UpdateMapENtB5_10DeepSizeOf21deep_size_of_childrenB1I_.exit: ; preds = %.lr.ph.i.i.i177
  %i.aik = add i64 %i.ags, %i.agq
  %i.ail = mul i64 %i.aik, 37
  %i.aim = add i64 %.sroa.08.0, %.sroa.07.0
  %i.ain = add i64 %i.aim, %.sroa.09.0
  %i.aio = add i64 %i.ain, %i.ail
  %i.aip = add i64 %i.aio, %.sroa.02.0.ph.i.i.i170
  br label %bb.aw
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtNtCs9KQ7US1M400_11lance_table12system_index7mem_walNtNtNtB9_6format2pb18MemWalIndexDetailsINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_18MemWalIndexDetailsE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !78702 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.n = load i64, ptr %i.m, align 8, !noundef !97
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = load i32, ptr %i.o, align 8, !noundef !97
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load i64, ptr %i.q, align 8, !range !99, !noundef !97
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val = load ptr, ptr %i.s, align 8, !nonnull !97, !noundef !97
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val5 = load i64, ptr %i.t, align 8, !noundef !97 ; 6 uses
  %i.u = icmp eq i64 %.val5, 0
  br i1 %i.u, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78703
  %i.v = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val5, i64 noundef range(i64 1, 9) 1) #76, !noalias !78703 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val5) #80, !noalias !78704
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val5, i1 false), !noalias !78705
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a, %bb.e, %bb.b
  %.sroa.7.0 = phi i64 [ 0, %bb.b ], [ %.val5, %bb.e ], [ undef, %bb.a ]
  %.sroa.6.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.v, %bb.e ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %.val5, %bb.e ], [ -1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !97, !noundef !97
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !97 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !78706
  %.idx = shl nuw nsw i64 %i.aa, 5                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ShardingSpecE7reserveBK_.exit.i.i.thread.i, label %bb.f

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ShardingSpecE7reserveBK_.exit.i.i.thread.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit
  store i64 0, ptr %i.g, align 8, !noalias !78706
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !noalias !78706
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.loopexit46

bb.f:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78707
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #76, !noalias !78707 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %.preheader.i.i.preheader.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #80
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %bb.f
  store i64 %i.aa, ptr %i.g, align 8, !noalias !78706
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !78706
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78709)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.preheader.i
  %.val15.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.h ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.val15.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !78710
  invoke void @_RNvXsd_NtNtCs9KQ7US1M400_11lance_table12system_index7mem_walNtNtNtB9_6format2pb12ShardingSpecINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_12ShardingSpecE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.h unwind label %.body.i, !noalias !78711

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.val15.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !78712
  %i.ak = add nuw i64 %.val15.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78710
  %i.al = icmp eq i64 %i.ak, %i.aa
  br i1 %i.al, label %.loopexit46, label %.preheader.i.i.i

.body.i:                                          ; preds = %.preheader.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i, ptr %i.ah, align 8, !alias.scope !78713, !noalias !78714
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ShardingSpecEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #81, !noalias !78706
  br label %.body

.body:                                            ; preds = %.body12, %bb.j, %.body.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body12 ], [ %i.an, %bb.j ], [ %i.am, %.body.i ]
  %.0.val.off.i = add i64 %.sroa.0.0, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit

bb.i:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9KQ7US1M400_11lance_table.exit

bb.j:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit46:                                      ; preds = %bb.h, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ShardingSpecE7reserveBK_.exit.i.i.thread.i
  %i.ao = phi ptr [ %i.ad, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ShardingSpecE7reserveBK_.exit.i.i.thread.i ], [ %i.ah, %bb.h ]
  store i64 %i.aa, ptr %i.ao, align 8, !alias.scope !78713, !noalias !78714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8 = load ptr, ptr %i.ap, align 8, !nonnull !97, !noundef !97
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9 = load i64, ptr %i.aq, align 8, !noundef !97 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78715
  %i.ar = mul nuw nsw i64 %.val9, 24              ; 2 uses
  %i.as = icmp eq i64 %.val9, 0
  br i1 %i.as, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i10, label %bb.k

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i10: ; preds = %.loopexit46
  store i64 0, ptr %i.e, align 8, !noalias !78715
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !noalias !78715
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.loopexit45

bb.k:                                             ; preds = %.loopexit46
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78716
  %i.av = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, 9) 8) #76, !noalias !78716 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.preheader.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ar) #80
          to label %.noexc11 unwind label %bb.o

.noexc11:                                         ; preds = %bb.l
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  store i64 %.val9, ptr %i.e, align 8, !noalias !78715
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !noalias !78715
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.ba, %bb.m ], [ %.val8, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.7.022.i.i = phi i64 [ %i.az, %bb.m ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %2, %bb.m ], [ %.val9, %.lr.ph.preheader.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !78715
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i)
          to label %bb.m unwind label %bb.n, !noalias !78717

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.az = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 24
  %2 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !78717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78715
  %i.bc = icmp eq i64 %2, 0
  br i1 %i.bc, label %.loopexit45, label %.lr.ph.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.ay, align 8, !noalias !78715
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81, !noalias !78717
  br label %.body12

.body12:                                          ; preds = %.body21, %bb.o, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body21 ], [ %i.bd, %bb.o ], [ %lpad.loopexit.i.i, %bb.n ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ShardingSpecEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #81
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.loopexit45:                                      ; preds = %bb.m, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i10
  %3 = phi ptr [ %i.au, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i10 ], [ %i.ay, %bb.m ]
  store i64 %.val9, ptr %3, align 8, !noalias !78715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !78718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !97, !noundef !97
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !97 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !78719
  %i.bi = shl i64 %i.bh, 5                        ; 4 uses
  %.not.i.i.i14 = icmp ugt i64 %i.bi, 9223372036854775800
  br i1 %.not.i.i.i14, label %bb.r, label %bb.p, !prof !98

bb.p:                                             ; preds = %.loopexit45
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableE7reserveBK_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78720
  %i.bk = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, 9) 8) #76, !noalias !78720 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableE7reserveBK_.exit.i.i.i

bb.r:                                             ; preds = %bb.q, %.loopexit45
  %.sroa.4.0.ph.i.i19 = phi i64 [ 8, %bb.q ], [ 0, %.loopexit45 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i19, i64 %i.bi) #80
          to label %.noexc20 unwind label %bb.u

.noexc20:                                         ; preds = %bb.r
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableE7reserveBK_.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.p ], [ %i.bk, %bb.q ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.p ], [ %i.bh, %bb.q ] ; 2 uses
  %i.bm = icmp samesign ule i64 %i.bh, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.bm)
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !78719
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.10.0.i.i, ptr %i.bn, align 8, !noalias !78719
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78722)
  %i.bp = icmp eq i64 %i.bh, 0
  br i1 %i.bp, label %.loopexit44, label %.preheader.i.i.i15

.preheader.i.i.i15:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableE7reserveBK_.exit.i.i.i, %bb.t
  %.val15.i.i.i.i.i.i16 = phi i64 [ %i.bw, %bb.t ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableE7reserveBK_.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78725)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78726
  %i.bq = tail call noundef dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !78726 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i.i.i15
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 16) #80
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i18, !noalias !78727

.noexc.i.i.i.i.i.i:                               ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.preheader.i.i.i15
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.val15.i.i.i.i.i.i16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bs, i64 16, i1 false), !noalias !78728
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !78729, !noalias !78727, !noundef !97
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i, i64 %.val15.i.i.i.i.i.i16 ; 4 uses
  store i64 16, ptr %i.bv, align 8, !noalias !78730
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bq, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !78730
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 16, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !78730
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.bu, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !78730
  %i.bw = add nuw i64 %.val15.i.i.i.i.i.i16, 1    ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.bh
  br i1 %i.bx, label %.loopexit44, label %.preheader.i.i.i15

.body.i18:                                        ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i16, ptr %i.bo, align 8, !alias.scope !78731, !noalias !78732
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81, !noalias !78719
  br label %.body21

.body21:                                          ; preds = %.body31, %bb.u, %.body.i18
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body31 ], [ %i.bz, %bb.u ], [ %i.by, %.body.i18 ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.k) #81
  br label %.body12

bb.u:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.loopexit44:                                      ; preds = %bb.t, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableE7reserveBK_.exit.i.i.i
  store i64 %i.bh, ptr %i.bo, align 8, !alias.scope !78731, !noalias !78732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !78719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !97, !noundef !97
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !97 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78733
  %.idx42 = mul nuw nsw i64 %i.cd, 48             ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb20IndexCatchupProgressE7reserveBK_.exit.i.i.thread.i, label %bb.v

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb20IndexCatchupProgressE7reserveBK_.exit.i.i.thread.i: ; preds = %.loopexit44
  store i64 0, ptr %i.b, align 8, !noalias !78733
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8, !noalias !78733
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.v:                                             ; preds = %.loopexit44
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !78734
  %i.ch = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx42, i64 noundef range(i64 1, 9) 8) #76, !noalias !78734 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.w, label %.preheader.i.i.preheader.i24

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx42) #80
          to label %.noexc30 unwind label %bb.y

.noexc30:                                         ; preds = %bb.w
  unreachable

.preheader.i.i.preheader.i24:                     ; preds = %bb.v
  store i64 %i.cd, ptr %i.b, align 8, !noalias !78733
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !noalias !78733
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78736)
  br label %.preheader.i.i.i25

.preheader.i.i.i25:                               ; preds = %bb.x, %.preheader.i.i.preheader.i24
  %.val15.i.i.i.i.i.i26 = phi i64 [ %i.cn, %bb.x ], [ 0, %.preheader.i.i.preheader.i24 ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %.val15.i.i.i.i.i.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78737
  invoke void @_RNvXs5_NtNtCs9KQ7US1M400_11lance_table12system_index7mem_walNtNtNtB9_6format2pb20IndexCatchupProgressINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_20IndexCatchupProgressE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cl)
          to label %bb.x unwind label %.body.i27, !noalias !78738

bb.x:                                             ; preds = %.preheader.i.i.i25
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %.val15.i.i.i.i.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !78739
  %i.cn = add nuw i64 %.val15.i.i.i.i.i.i26, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78737
  %i.co = icmp eq i64 %i.cn, %i.cd
  br i1 %i.co, label %.loopexit, label %.preheader.i.i.i25

.body.i27:                                        ; preds = %.preheader.i.i.i25
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i26, ptr %i.ck, align 8, !alias.scope !78740, !noalias !78741
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb20IndexCatchupProgressEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81, !noalias !78733
  br label %.body31

.body31:                                          ; preds = %bb.z, %bb.y, %.body.i27
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.z ], [ %i.cq, %bb.y ], [ %i.cp, %.body.i27 ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #81
  br label %.body21

bb.y:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.loopexit:                                        ; preds = %bb.x, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb20IndexCatchupProgressE7reserveBK_.exit.i.i.thread.i
  %i.cr = phi ptr [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb20IndexCatchupProgressE7reserveBK_.exit.i.i.thread.i ], [ %i.ck, %bb.x ]
  store i64 %i.cd, ptr %i.cr, align 8, !alias.scope !78740, !noalias !78741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb20IndexCatchupProgressEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #81
  br label %.body31

bb.aa:                                            ; preds = %.loopexit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.n, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.p, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.0.0, ptr %i.cx, align 8
  %.sroa.6.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx34, align 8
  %.sroa.7.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx36, align 8
end_hunk_6
begin_hunk_7_@_RNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len:bb.a
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb10DictionaryE6map_orjNCNvXsu_BL_NtBL_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.m, %_RNCNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Cs9KQ7US1M400_11lance_table.exit.i
  %.sroa.02.0.i = phi i64 [ %i.cm, %_RNCNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Cs9KQ7US1M400_11lance_table.exit.i ], [ 0, %bb.m ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = load i64, ptr %i.cn, align 8, !noundef !97 ; 4 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb10DictionaryE6map_orjNCNvXsu_BL_NtBL_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECs9KQ7US1M400_11lance_table.exit
  %i.cq = icmp sgt i64 %i.co, -1
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = or i64 %i.co, 1
  %i.cs = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = xor i64 %i.cs, 63
  %i.cu = mul nuw nsw i64 %i.ct, 9
  %i.cv = add nuw nsw i64 %i.cu, 73
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = add nuw i64 %i.co, 1
  %i.cy = add nuw i64 %i.cx, %i.cw
  br label %bb.s

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb10DictionaryE6map_orjNCNvXsu_BL_NtBL_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECs9KQ7US1M400_11lance_table.exit, %bb.r
  %.sroa.08.0 = phi i64 [ %i.cy, %bb.r ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb10DictionaryE6map_orjNCNvXsu_BL_NtBL_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECs9KQ7US1M400_11lance_table.exit ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val26 = load ptr, ptr %i.cz, align 8, !alias.scope !233, !nonnull !97, !noundef !97 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val27 = load i64, ptr %i.da, align 8, !alias.scope !234, !noundef !97 ; 2 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.val26, align 16, !noalias !79627
  %i.db = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.dc = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.dd = bitcast <16 x i1> %i.db to i16
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i, %bb.s
  %i.de = phi i16 [ %i.dj, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.dd, %bb.s ] ; 2 uses
  %.lcssa2631.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  %.lcssa2529.i.i.i.i = phi ptr [ %.lcssa2528.i.i.i.i, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.val26, %bb.s ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i = phi i64 [ %i.eq, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.er, %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.val27, %bb.s ] ; 2 uses
  %.not22.i.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.outer.i.i.i.i
  %i.df = icmp eq i64 %.sroa.0.0.ph.i.i.i.i, 0
  br i1 %i.df, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map11encoded_lenNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1x_EECs9KQ7US1M400_11lance_table.exit, label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.i, %.outer.i.i.i.i
  %.lcssa2630.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i, %.outer.i.i.i.i ], [ %i.ew, %.lr.ph.split.i.i.i.i ]
  %.lcssa2528.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i, %.outer.i.i.i.i ], [ %i.ev, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.de, %.outer.i.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 3 uses
  %i.dg = add i16 %.lcssa.i.i.i.i, -1
  %i.dh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = and i16 %i.dg, %.lcssa.i.i.i.i
  %i.dk = sub nsw i64 0, %i.di
  %i.dl = getelementptr inbounds [48 x i8], ptr %.lcssa2528.i.i.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -32
  %.val3.i.i.i.i.i = load i64, ptr %i.dm, align 8, !noalias !79628, !noundef !97 ; 4 uses
  %i.dn = getelementptr i8, ptr %i.dl, i64 -8
  %.val5.i.i.i.i.i = load i64, ptr %i.dn, align 8, !noalias !79628 ; 4 uses
  %i.do = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.do, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit20.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit17.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit17.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.dp = icmp sgt i64 %.val3.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = or i64 %.val3.i.i.i.i.i, 1
  %i.dr = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = xor i64 %i.dr, 63
  %i.dt = mul nuw nsw i64 %i.ds, 9
  %i.du = add nuw nsw i64 %i.dt, 73
  %i.dv = lshr i64 %i.du, 6
  %i.dw = add nuw i64 %.val3.i.i.i.i.i, 1
  %i.dx = add nuw i64 %i.dw, %i.dv
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit20.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit20.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit17.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.dx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit17.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ]
  %i.dy = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.dy, label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec10partial_eqINtB4_3VechENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec10partial_eqINtB4_3VechENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit20.i.i.i.i.i.i.i
  %i.dz = or i64 %.val5.i.i.i.i.i, 1
  %i.ea = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = xor i64 %i.ea, 63
  %i.ec = mul nuw nsw i64 %i.eb, 9
  %i.ed = add nuw nsw i64 %i.ec, 73
  %i.ee = lshr i64 %i.ed, 6
  %i.ef = icmp sgt i64 %.val5.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw i64 %.val5.i.i.i.i.i, 1
  %i.eh = add nuw i64 %i.eg, %i.ee
  br label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i

_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBR_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldTRBN_RB1p_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBN_B1p_NvNtB3C_6string11encoded_lenINvNtB3C_5bytes11encoded_lenB1p_EE0NCINvXsK_NtB1M_5accumjNtB5X_3Sum3sumINtB2O_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBN_B1p_EB3v_EE0E0E0Cs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit20.i.i.i.i.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec10partial_eqINtB4_3VechENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %i.eh, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec10partial_eqINtB4_3VechENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit20.i.i.i.i.i.i.i ]
  %i.ei = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.ej = or i64 %i.ei, 1
  %i.ek = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ej, i1 true)
  %i.el = xor i64 %i.ek, 63
  %i.em = mul nuw nsw i64 %i.el, 9
  %i.en = add nuw nsw i64 %i.em, 73
  %i.eo = lshr i64 %i.en, 6
  %i.ep = add i64 %i.ei, %.sroa.02.0.ph.i.i.i.i
  %i.eq = add i64 %i.ep, %i.eo
  %i.er = add i64 %.sroa.0.0.ph.i.i.i.i, -1
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.es = phi ptr [ %i.ew, %.lr.ph.split.i.i.i.i ], [ %.lcssa2631.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.et = phi ptr [ %i.ev, %.lr.ph.split.i.i.i.i ], [ %.lcssa2529.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val18.i.i.i.i = load <16 x i8>, ptr %i.es, align 16, !noalias !79628
  %i.eu = icmp sgt <16 x i8> %.val18.i.i.i.i, splat (i8 -1)
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -768 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.eu to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map11encoded_lenNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1x_EECs9KQ7US1M400_11lance_table.exit: ; preds = %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.ey = load i8, ptr %i.ex, align 1, !range !106, !noundef !97
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.fa = load i32, ptr %i.ez, align 4, !noundef !97 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map11encoded_lenNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1x_EECs9KQ7US1M400_11lance_table.exit
  %i.fc = or i32 %i.fa, 1
  %i.fd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fc, i1 true)
  %i.fe = xor i32 %i.fd, 31
  %i.ff = mul nuw nsw i32 %i.fe, 9
  %i.fg = add nuw nsw i32 %i.ff, 73
  %i.fh = lshr i32 %i.fg, 6
  %narrow.i = add nuw nsw i32 %i.fh, 1
  %i.fi = zext nneg i32 %narrow.i to i64
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map11encoded_lenNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1x_EECs9KQ7US1M400_11lance_table.exit, %bb.t
  %.sroa.010.0 = phi i64 [ %i.fi, %bb.t ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map11encoded_lenNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1x_EECs9KQ7US1M400_11lance_table.exit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.fk = load i8, ptr %i.fj, align 2, !range !106, !noundef !97
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fm = load i32, ptr %i.fl, align 8, !noundef !97 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fo = or i32 %i.fm, 1
  %i.fp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = mul nuw nsw i32 %i.fq, 9
  %i.fs = add nuw nsw i32 %i.fr, 73
  %i.ft = lshr i32 %i.fs, 6
  %narrow.i28 = add nuw nsw i32 %i.ft, 1
  %i.fu = zext nneg i32 %narrow.i28 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.012.0 = phi i64 [ %i.fu, %bb.v ], [ 0, %bb.u ]
  %i.fv = shl nuw nsw i8 %i.fk, 1
  %spec.select30 = zext nneg i8 %i.fv to i64
  %i.fw = shl nuw nsw i8 %i.ey, 1
  %spec.select29 = zext nneg i8 %i.fw to i64
  %i.fx = shl nuw nsw i8 %i.bg, 1
  %spec.select = zext nneg i8 %i.fx to i64
  %i.fy = add nuw i64 %.sroa.01.0, %.sroa.0.0
  %i.fz = add nuw i64 %i.fy, %.sroa.02.0
  %i.ga = add nuw i64 %i.fz, %.sroa.03.0
  %i.gb = add i64 %i.ga, %.sroa.04.0
  %i.gc = add i64 %i.gb, %spec.select
  %i.gd = add i64 %i.gc, %.sroa.06.0
  %i.ge = add i64 %i.gd, %.sroa.02.0.i
  %i.gf = add i64 %i.ge, %.sroa.08.0
  %i.gg = add i64 %i.gf, %.val27
  %i.gh = add i64 %i.gg, %.sroa.02.0.ph.i.i.i.i
  %i.gi = add i64 %i.gh, %spec.select29
  %i.gj = add i64 %i.gi, %.sroa.010.0
  %i.gk = add i64 %i.gj, %spec.select30
  %i.gl = add i64 %i.gk, %.sroa.012.0
  ret i64 %i.gl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8FragmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !79644 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.l = load i64, ptr %i.k, align 8, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load ptr, ptr %i.m, align 8, !nonnull !97, !noundef !97
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val9 = load i64, ptr %i.n, align 8, !noundef !97 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79645
  %i.o = mul nuw nsw i64 %.val9, 80               ; 2 uses
  %i.p = icmp eq i64 %.val9, 0
  br i1 %i.p, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !79645
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !79645
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !79646
  %i.s = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 8) #76, !noalias !79646 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %.lr.ph.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.o) #80, !noalias !79645
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  store i64 %.val9, ptr %i.b, align 8, !noalias !79645
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %i.u, align 8, !noalias !79645
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.x, %bb.d ], [ %.val, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.7.022.i.i = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %2, %bb.d ], [ %.val9, %.lr.ph.preheader.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79645
  invoke fastcc void @_RNvXsc_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB5_8DataFileNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noundef nonnull align 8 %.sroa.012.023.i.i)
          to label %bb.d unwind label %bb.e, !noalias !79645

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 80
  %2 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !79645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79645
  %i.z = icmp eq i64 %2, 0
  br i1 %i.z, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i.i

common.resume:                                    ; preds = %bb.f, %bb.o, %bb.e
  %.sink = phi ptr [ %i.b, %bb.e ], [ %i.j, %bb.o ], [ %i.j, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.e ], [ %.pn.pn, %bb.o ], [ %i.ac, %bb.f ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %.sink) #81
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.v, align 8, !noalias !79645
  br label %common.resume

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i
  %3 = phi ptr [ %i.r, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit.thread.i.i ], [ %i.v, %bb.d ]
  store i64 %.val9, ptr %3, align 8, !noalias !79645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val10 = load ptr, ptr %i.aa, align 8, !nonnull !97, !noundef !97
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val11 = load i64, ptr %i.ab, align 8, !noundef !97
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr nonnull %.val10, i64 %.val11)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.g:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBL_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !116, !noundef !97 ; 2 uses
  %.not = icmp eq i64 %i.af, -2
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79648)
  %.not.i = icmp eq i64 %i.af, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !79648
  store <2 x i64> %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79647
  br label %_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !79648, !nonnull !97, !noundef !97 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !79649
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.aj, ptr %i.am, align 8, !alias.scope !79647
  store i64 -1, ptr %i.e, align 8, !alias.scope !79647
  br label %_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.g
  store i64 -2, ptr %i.g, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.m
  %i.an = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !116, !noundef !97 ; 2 uses
  %.not4 = icmp eq i64 %i.ap, -2
  br i1 %.not4, label %bb.v, label %bb.q

bb.o:                                             ; preds = %bb.x, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.aq, %bb.p ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #81
  br label %common.resume

bb.p:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.k, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79651)
  %.not.i12 = icmp eq i64 %i.ap, -1
  br i1 %.not.i12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ao)
          to label %.noexc15 unwind label %bb.y

.noexc15:                                         ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !79651
  store <2 x i64> %i.as, ptr %.sroa.4.0..sroa_idx.i13, align 8, !alias.scope !79650
  br label %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !79651, !nonnull !97, !noundef !97 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !79651, !noundef !97
  %i.ax = atomicrmw add ptr %i.au, i64 1 monotonic, align 8, !noalias !79652
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.au, ptr %i.az, align 8, !alias.scope !79650
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.aw, ptr %i.ba, align 8, !alias.scope !79650
  store i64 -1, ptr %i.d, align 8, !alias.scope !79650
  br label %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.n
  store i64 -2, ptr %i.f, align 8
  br label %bb.w

bb.w:                                             ; preds = %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !116, !noundef !97 ; 2 uses
  %.not5 = icmp eq i64 %i.bc, -2
  br i1 %.not5, label %bb.ae, label %bb.z

bb.x:                                             ; preds = %bb.af, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.af ], [ %i.bd, %bb.y ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format7row_ids9RowIdMetaEEB13_(ptr noalias noundef align 8 dereferenceable(40) %i.g) #81
          to label %bb.o unwind label %bb.ag

bb.y:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.t, %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79654)
  %.not.i16 = icmp eq i64 %i.bc, -1
  br i1 %.not.i16, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bb)
          to label %.noexc19 unwind label %bb.af

.noexc19:                                         ; preds = %bb.aa
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !alias.scope !79654
  store <2 x i64> %i.bf, ptr %.sroa.4.0..sroa_idx.i17, align 8, !alias.scope !79653
  %.sroa.0.0.copyload1.pre = load i64, ptr %i.c, align 8
  br label %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit20

bb.ab:                                            ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !79654, !nonnull !97, !noundef !97 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !79654, !noundef !97
  %i.bk = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !noalias !79655
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bh, ptr %i.bm, align 8, !alias.scope !79653
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bj, ptr %i.bn, align 8, !alias.scope !79653
  br label %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit20

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.w, %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit20
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit20 ], [ -2, %bb.w ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.l, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_7
