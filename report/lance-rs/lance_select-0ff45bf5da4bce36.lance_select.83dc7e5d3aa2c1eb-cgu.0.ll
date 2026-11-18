Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap14serialize_intoQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select:bb.a
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.go, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !309
  %i.gv = load i64, ptr %i.de, align 8, !alias.scope !310, !noalias !308, !noundef !11
  br label %_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECsbjTsVCnQnhv_12lance_select.exit127

_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECsbjTsVCnQnhv_12lance_select.exit127: ; preds = %_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECsbjTsVCnQnhv_12lance_select.exit124, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsbjTsVCnQnhv_12lance_select.exit.thread.i.i.i.i.i.i126
  %.sink1.i125 = phi i64 [ %i.gv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsbjTsVCnQnhv_12lance_select.exit.thread.i.i.i.i.i.i126 ], [ %i.go, %_RINvYQINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtCsjZ57lhftoIJ_9byteorder2io13WriteBytesExt9write_u16NtBH_12LittleEndianECsbjTsVCnQnhv_12lance_select.exit124 ] ; 3 uses
  %i.gw = icmp sgt i64 %.sink1.i125, -1
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = load ptr, ptr %i.df, align 8, !alias.scope !310, !noalias !308, !nonnull !11, !noundef !11 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sink1.i125
  store i16 %i.gr, ptr %i.gy, align 1, !noalias !310
  %i.gz = add nuw i64 %.sink1.i125, 2             ; 3 uses
  store i64 %i.gz, ptr %i.de, align 8, !alias.scope !310, !noalias !308
  %i.ha = icmp eq ptr %i.gf, %i.fc
  br i1 %i.ha, label %.loopexit, label %.lr.ph31

._crit_edge39:                                    ; preds = %.loopexit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit105.thread
  ret void

bb.w:                                             ; preds = %.lr.ph
  %i.hb = lshr i64 %.sroa.7.023, 3                ; 3 uses
  %i.hc = icmp samesign ult i64 %i.hb, %.sroa.04.0
  br i1 %i.hc, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.y, %.lr.ph
  %i.hd = icmp eq ptr %i.bc, %i.a
  br i1 %i.hd, label %.thread9, label %.lr.ph

bb.y:                                             ; preds = %bb.w
  %i.he = trunc i64 %.sroa.7.023 to i8
  %i.hf = and i8 %i.he, 7
  %i.hg = shl nuw i8 1, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.hb ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !noundef !11
  %i.hj = or i8 %i.hi, %i.hg
  store i8 %i.hj, ptr %i.hh, align 1
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hb, i64 noundef %.sroa.04.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37
          to label %bb.aa unwind label %bb.h

bb.aa:                                            ; preds = %bb.z
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1E_5ErrorNvMNtB1G_12bitmap_storeNtB3S_11BitmapStore8try_fromNtB3S_5ErrorECsbjTsVCnQnhv_12lance_select(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !453 {
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
  store ptr @179, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add nsw i64 %2, -4                       ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !454, !noalias !455 ; 4 uses
  %i.k = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i64 %2, 8
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = and i32 %.sroa.0.0.copyload.i, 65535
  %i.n = icmp eq i32 %i.m, 12347
  br i1 %i.n, label %bb.h, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i188 = load i32, ptr %i.i, align 1, !alias.scope !456, !noalias !457 ; 3 uses
  %i.p = icmp ugt i32 %.sroa.0.0.copyload.i188, 65536
  br i1 %i.p, label %bb.o, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %.sroa.017.0 = lshr i64 %i.u, 3                 ; 12 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !458
  %i.v = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.017.0, i64 noundef range(i64 1, 9) 1) #36, !noalias !458 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.017.0) #37, !noalias !459
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.x = icmp samesign ugt i64 %.sroa.017.0, %i.j
  br i1 %i.x, label %bb.l, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i: ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.017.0 ; 2 uses
  %i.z = sub nuw nsw i64 %i.j, %.sroa.017.0       ; 2 uses
  %i.aa = icmp eq i64 %.sroa.017.0, 1
  br i1 %i.aa, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %.sroa.017.0, i1 false), !alias.scope !461, !noalias !462
  br label %.thread.thread

bb.j:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i
  %i.ab = load i8, ptr %i.i, align 1, !noalias !463, !noundef !11
  store i8 %i.ab, ptr %i.v, align 1, !alias.scope !460
  br label %.thread.thread

bb.k:                                             ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !464
  %i.ac = tail call noundef dereferenceable_or_null(20) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #36, !noalias !464 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.by, label %bb.bz

bb.l:                                             ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.ae, align 8
  store i64 -1, ptr %0, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %.sroa.017.0, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

.thread:                                          ; preds = %bb.g
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i188 to i64
  %i.ag = add nsw i64 %2, -8                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i188, 0
  br i1 %i.ai, label %bb.r, label %.thread.thread

.thread.thread:                                   ; preds = %bb.j, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i, %.thread
  %.sroa.14.0398631 = phi i64 [ undef, %.thread ], [ %.sroa.017.0, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %.sroa.017.0, %bb.j ]
  %.sroa.10.0403621 = phi ptr [ undef, %.thread ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.v, %bb.j ] ; 2 uses
  %.sroa.0294.0410611 = phi i64 [ -1, %.thread ], [ %.sroa.017.0, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %.sroa.017.0, %bb.j ] ; 2 uses
  %.sroa.19.0413609 = phi i64 [ %i.ag, %.thread ], [ %i.z, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.z, %bb.j ]
  %.sroa.0.0414607 = phi ptr [ %i.ah, %.thread ], [ %i.y, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.y, %bb.j ]
  %.sroa.016.0415605 = phi i1 [ true, %.thread ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.t, %bb.j ]
  %.sroa.03.0416603 = phi i64 [ %i.af, %.thread ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.s, %bb.j ] ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.03.0416603, 2    ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !465
  %i.ak = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 9) 1) #36, !noalias !465 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.r

bb.n:                                             ; preds = %.thread.thread
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.aj) #37
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !466
  %i.an = tail call noundef dereferenceable_or_null(30) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 30, i64 noundef range(i64 1, 9) 1) #36, !noalias !466 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.bu, label %bb.bv

.body:                                            ; preds = %.split, %bb.t, %bb.q
  %.sroa.0294.0406 = phi i64 [ %.sroa.0294.0410612, %bb.t ], [ %.sroa.0294.0408, %bb.q ], [ %.sroa.0294.0410612, %.split ] ; 2 uses
  %.sroa.10.0399 = phi ptr [ %.sroa.10.0403622, %bb.t ], [ %.sroa.10.0401, %bb.q ], [ %.sroa.10.0403622, %.split ] ; 2 uses
  %.pn153 = phi { ptr, i32 } [ %.pn151636, %bb.t ], [ %i.ap, %bb.q ], [ %i.au, %.split ] ; 2 uses
  %.0.val.off.i = add nsw i64 %.sroa.0294.0406, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.p, label %common.resume

bb.p:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0399) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0399, i64 noundef %.sroa.0294.0406, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %common.resume

bb.q:                                             ; preds = %bb.n, %bb.bx, %bb.bu
  %.sroa.0294.0408 = phi i64 [ %.sroa.0294.0410611, %bb.n ], [ -1, %bb.bx ], [ -1, %bb.bu ]
  %.sroa.10.0401 = phi ptr [ %.sroa.10.0403621, %bb.n ], [ undef, %bb.bx ], [ undef, %bb.bu ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.m, %.thread
  %i.aq = phi i1 [ false, %bb.m ], [ true, %.thread ] ; 3 uses
  %i.ar = phi i64 [ %i.aj, %bb.m ], [ 0, %.thread ] ; 9 uses
  %.sroa.14.0398632 = phi i64 [ %.sroa.14.0398631, %bb.m ], [ undef, %.thread ] ; 2 uses
  %.sroa.10.0403622 = phi ptr [ %.sroa.10.0403621, %bb.m ], [ undef, %.thread ] ; 8 uses
  %.sroa.0294.0410612 = phi i64 [ %.sroa.0294.0410611, %bb.m ], [ -1, %.thread ] ; 7 uses
  %.sroa.19.0413610 = phi i64 [ %.sroa.19.0413609, %bb.m ], [ %i.ag, %.thread ] ; 2 uses
  %.sroa.0.0414608 = phi ptr [ %.sroa.0.0414607, %bb.m ], [ %i.ah, %.thread ] ; 2 uses
  %.sroa.016.0415606 = phi i1 [ %.sroa.016.0415605, %bb.m ], [ true, %.thread ]
  %.sroa.03.0416604 = phi i64 [ %.sroa.03.0416603, %bb.m ], [ 0, %.thread ] ; 4 uses
  %.sroa.10.0.i196 = phi i64 [ %i.am, %bb.m ], [ 1, %.thread ]
  %i.as = inttoptr i64 %.sroa.10.0.i196 to ptr    ; 8 uses
  %i.at = icmp samesign ugt i64 %i.ar, %.sroa.19.0413610
  br i1 %i.at, label %.thread492, label %bb.u

bb.s:                                             ; preds = %.invoke, %bb.bd, %bb.as, %bb.bk, %bb.ao, %bb.ah, %bb.ax
  %lpad.loopexit.split-lp542 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
  br label %bb.t

bb.t:                                             ; preds = %.thread467.loopexit.split-lp.loopexit, %.split637, %bb.s, %.split.thread, %.split
  %.pn151636 = phi { ptr, i32 } [ %i.au, %.split ], [ %lpad.loopexit.split-lp542, %bb.s ], [ %i.dr, %.split637 ], [ %lpad.loopexit, %.thread467.loopexit.split-lp.loopexit ], [ %i.bq, %.split.thread ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %.body

.split:                                           ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aq, label %.body, label %bb.t

.thread492:                                       ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.u:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0414608, i64 %i.ar ; 4 uses
  %i.ax = sub nuw nsw i64 %.sroa.19.0413610, %i.ar ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %.sroa.0.0414608, i64 range(i64 0, -9223372036854775808) %i.ar, i1 false), !alias.scope !467, !noalias !468
  br i1 %.sroa.016.0415606, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216, %bb.u
  %.sroa.19.1 = phi i64 [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216 ], [ %i.ax, %bb.u ]
  %.sroa.0.1 = phi ptr [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216 ], [ %i.aw, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ay = mul nuw nsw i64 %.sroa.03.0416604, 40   ; 2 uses
  br i1 %i.aq, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %bb.v
  %i.az = icmp eq i64 %.sroa.03.0416604, 0
  tail call void @llvm.assume(i1 %i.az)
  store i64 0, ptr %i.e, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.bb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !469
  %i.bc = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 9) 8) #36, !noalias !469 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.ae, label %.lr.ph

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ar)
          to label %bb.y unwind label %.split

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !11 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.bi = icmp ugt i64 %i.bh, %i.ax
  br i1 %i.bi, label %bb.aa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209: ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bh
  %i.bk = sub nuw nsw i64 %i.ax, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.z, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i210

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i210: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, -9223372036854775808) %i.bh, i1 false), !alias.scope !471, !noalias !472
  br label %bb.ac

bb.z:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209
  %i.bm = load i8, ptr %i.aw, align 1, !noalias !473, !noundef !11
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !470
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.bn, align 8
  store i64 -1, ptr %0, align 8
  %.val172 = load i64, ptr %i.f, align 8          ; 2 uses
  %i.bo = icmp eq i64 %.val172, 0
  br i1 %i.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit215, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val172, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit215

bb.ac:                                            ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i210
  %.sroa.0307.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0307.0.copyload, 0
  br i1 %i.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0307.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.ae:                                            ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #37
          to label %bb.ap unwind label %.split.thread

.split.thread:                                    ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.03.0416604, ptr %i.e, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.bs, align 8
  %.not145 = icmp eq i64 %.sroa.0294.0410612, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %3

._crit_edge:                                      ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217

3:                                                ; preds = %.lr.ph, %bb.bq
  %.sroa.027.0541 = phi i1 [ false, %.lr.ph ], [ true, %bb.bq ]
  %.sroa.6.0540 = phi i16 [ undef, %.lr.ph ], [ %.sroa.0.0.copyload.i218, %bb.bq ]
  %.sroa.8.0539 = phi i64 [ undef, %.lr.ph ], [ %.sroa.8.1, %bb.bq ]
  %.sroa.0119.0538 = phi i64 [ 0, %.lr.ph ], [ %4, %bb.bq ] ; 3 uses
  %.sroa.0.2537 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.3, %bb.bq ] ; 8 uses
  %.sroa.19.2536 = phi i64 [ %.sroa.19.1, %.lr.ph ], [ %.sroa.19.3, %bb.bq ] ; 6 uses
  %.sroa.0304.0535 = phi ptr [ %i.as, %.lr.ph ], [ %i.ca, %bb.bq ] ; 3 uses
  %.sroa.8.0380534 = phi i64 [ %i.ar, %.lr.ph ], [ %8, %bb.bq ] ; 2 uses
  %4 = add nuw nsw i64 %.sroa.0119.0538, 1        ; 2 uses
  %5 = icmp eq i64 %.sroa.8.0380534, 0
  br i1 %5, label %6, label %bb.ag

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217: ; preds = %._crit_edge.thread, %._crit_edge
  %.0.val.off.i222 = add nsw i64 %.sroa.0294.0410612, -1
  %switch.i223 = icmp ult i64 %.0.val.off.i222, -2
  br i1 %switch.i223, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0403622) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0403622, i64 noundef %.sroa.0294.0410612, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224: ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262, %bb.bt, %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217, %bb.b, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsbjTsVCnQnhv_12lance_select.exit, %bb.f
  ret void

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %7, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.ag:                                            ; preds = %3
  %.sroa.0.0.copyload.i218 = load i16, ptr %.sroa.0304.0535, align 1, !alias.scope !474, !noalias !475 ; 3 uses
  %i.bw = icmp ule i16 %.sroa.0.0.copyload.i218, %.sroa.6.0540
  %or.cond = and i1 %.sroa.027.0541, %i.bw
  br i1 %or.cond, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.bx = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 29)
          to label %bb.ai unwind label %bb.s

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECsbjTsVCnQnhv_12lance_select.exit, %bb.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsbjTsVCnQnhv_12lance_select.exit, %bb.az, %bb.av, %bb.bm, %bb.bi, %bb.ai, %6
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.br

bb.ak:                                            ; preds = %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0304.0535, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0304.0535, i64 4
  %8 = add nsw i64 %.sroa.8.0380534, -4
  %.sroa.0.0.copyload.i225 = load i16, ptr %i.bz, align 1, !alias.scope !476, !noalias !477 ; 2 uses
  %i.cb = zext i16 %.sroa.0.0.copyload.i225 to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 4 uses
  br i1 %.not145, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = lshr i64 %.sroa.0119.0538, 3            ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %.sroa.14.0398632
  br i1 %i.ce, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.ak, %bb.an
  %i.cf = icmp ult i16 %.sroa.0.0.copyload.i225, 4096
  br i1 %i.cf, label %bb.at, label %bb.ar

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0403622) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.10.0403622, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !11
  %i.ci = trunc i64 %.sroa.0119.0538 to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = shl nuw i8 1, %i.cj
  %i.cl = and i8 %i.ch, %i.ck
  %.not146 = icmp eq i8 %i.cl, 0
  br i1 %.not146, label %bb.am, label %bb.aq

bb.ao:                                            ; preds = %bb.al
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.sroa.14.0398632, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
          to label %bb.ap unwind label %bb.s

bb.ap:                                            ; preds = %bb.bu, %bb.ao, %bb.ae
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.cm = icmp ult i64 %.sroa.19.2536, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2537) ]
  br i1 %i.cm, label %bb.bi, label %bb.bj

bb.ar:                                            ; preds = %bb.am
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed = call align 8 dereferenceable_or_null(8192) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 8192, i64 8) ; 4 uses
  %i.cn = icmp eq ptr %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.cn, label %bb.as, label %bb.au, !prof !13

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8192) #37
          to label %.noexc235 unwind label %bb.s

.noexc235:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.am
  %i.co = shl nuw nsw i64 %i.cc, 1                ; 7 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !478
  %i.cp = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.co, i64 noundef range(i64 1, 9) 2) #36, !noalias !478 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %bb.ba

bb.au:                                            ; preds = %bb.ar
  %i.cr = icmp ult i64 %.sroa.19.2536, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2537) ]
  br i1 %i.cr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.cs, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, i64 noundef 8192, i64 noundef 8) #36
  br label %bb.aj

bb.aw:                                            ; preds = %bb.au
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.2537, i64 8192
  %i.cu = add nsw i64 %.sroa.19.2536, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.2537, i64 range(i64 0, -9223372036854775808) 8192, i1 false), !alias.scope !479, !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB2_11BitmapStore8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 4097, 65537) %i.cc, ptr noalias noundef nonnull align 8 %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed)
          to label %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCsbjTsVCnQnhv_12lance_select.exit unwind label %.thread467.loopexit.split-lp.loopexit

_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.aw
  %i.cv = load i64, ptr %i.c, align 8, !range !14, !noundef !11
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = load i64, ptr %i.bu, align 8, !noundef !11 ; 2 uses
  br i1 %i.cw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCsbjTsVCnQnhv_12lance_select.exit
  %i.cy = load i64, ptr %i.bt, align 8, !noundef !11
  %i.cz = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef 21, i64 noundef %i.cy, i64 noundef %i.cx)
          to label %bb.az unwind label %bb.s

bb.ay:                                            ; preds = %_RNvYNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB5_11BitmapStore8try_fromINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTyINtNtCs40k4W9msRzi_5alloc5boxed3BoxAyj400_EEE4callCsbjTsVCnQnhv_12lance_select.exit
  %i.da = load ptr, ptr %i.bt, align 8, !nonnull !11, !align !15, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bf

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.db, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

.thread467.loopexit.split-lp.loopexit:            ; preds = %bb.bb, %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
  br label %bb.t

bb.ba:                                            ; preds = %bb.at
  %i.dc = icmp ugt i64 %i.co, %.sroa.19.2536
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsbjTsVCnQnhv_12lance_select.exit, label %bb.bb

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.ba
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.dd, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #36
  br label %bb.aj

bb.bb:                                            ; preds = %bb.ba
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.2537, i64 %i.co
  %i.df = sub nuw nsw i64 %.sroa.19.2536, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.2537, i64 range(i64 0, -9223372036854775808) %i.co, i1 false), !alias.scope !481, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cc, ptr %i.a, align 8, !noalias !483
  store ptr %i.cp, ptr %.sroa.4349.0..sroa_idx, align 8, !noalias !483
  store i64 %i.cc, ptr %.sroa.5350.0..sroa_idx, align 8, !noalias !483
  invoke void @_RNvXs2_NtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB5_10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bc unwind label %.thread467.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = load i64, ptr %i.d, align 8, !range !16, !noundef !11 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.di = load i64, ptr %.sroa.4128.0..sroa_idx, align 8, !noundef !11
  %i.dj = load i8, ptr %.sroa.5129.0..sroa_idx, align 8, !range !17, !noundef !11
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef 21, i64 noundef %i.di, i1 noundef zeroext %i.dk)
          to label %bb.bh unwind label %bb.s

bb.be:                                            ; preds = %bb.bc
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dm = ptrtoint ptr %.sroa.4128.0.copyload to i64
  %i.dn = inttoptr i64 %i.dg to ptr
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ay, %bb.be, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit
  %.sroa.19.3 = phi i64 [ %i.df, %bb.be ], [ %i.cu, %bb.ay ], [ %i.eh, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit ]
  %.sroa.0.3 = phi ptr [ %i.de, %bb.be ], [ %i.ct, %bb.ay ], [ %i.eg, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit ]
  %.sroa.8.1 = phi i64 [ %.sroa.5129.0.copyload, %bb.be ], [ %.sroa.8.0539, %bb.ay ], [ %i.dy, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit ] ; 2 uses
  %.sroa.745.0 = phi i64 [ %i.dm, %bb.be ], [ %i.cx, %bb.ay ], [ %i.ex, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit ]
  %.sroa.4.0 = phi ptr [ %i.dn, %bb.be ], [ %i.da, %bb.ay ], [ %i.ey, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit ]
  %.sroa.043.0 = phi i64 [ 0, %bb.be ], [ 1, %bb.ay ], [ 2, %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.sroa.0.0.copyload.i218, ptr %i.bv, align 8
  store i64 %.sroa.043.0, ptr %i.b, align 8
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.745.0, ptr %.sroa.745.0..sroa_idx, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  %i.do = load i64, ptr %i.bs, align 8, !alias.scope !484, !noundef !11 ; 3 uses
  %i.dp = load i64, ptr %i.e, align 8, !range !12, !alias.scope !484, !noundef !11
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.bg, label %bb.bq

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.bq unwind label %.split637, !noalias !485

.split637:                                        ; preds = %bb.bg
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b) #38
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
  br label %bb.t

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.ds, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.bi:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.dt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.bj:                                            ; preds = %bb.aq
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.2537, i64 2 ; 2 uses
  %i.dv = add nsw i64 %.sroa.19.2536, -2          ; 2 uses
  %.sroa.0.0.copyload.i230 = load i16, ptr %.sroa.0.2537, align 1, !alias.scope !486, !noalias !487 ; 3 uses
  %i.dw = icmp eq i16 %.sroa.0.0.copyload.i230, 0
  br i1 %i.dw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.dx = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 28)
          to label %bb.bm unwind label %bb.s

bb.bl:                                            ; preds = %bb.bj
  %i.dy = zext i16 %.sroa.0.0.copyload.i230 to i64 ; 3 uses
  %i.dz = shl nuw nsw i64 %i.dy, 2                ; 9 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !488
  %i.ea = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.dz, i64 noundef range(i64 1, 9) 2) #36, !noalias !488 ; 9 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.invoke, label %bb.bn

.invoke:                                          ; preds = %bb.bl, %bb.at
  %i.ec = phi i64 [ %i.co, %bb.at ], [ %i.dz, %bb.bl ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.ec) #37
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.ed, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.bn:                                            ; preds = %bb.bl
  %i.ee = icmp ugt i64 %i.dz, %i.dv
  br i1 %i.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECsbjTsVCnQnhv_12lance_select.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.bn
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.ef, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 2) #36
  br label %bb.aj

.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin:              ; preds = %bb.bn
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dz
  %i.eh = sub nuw nsw i64 %i.dv, %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ea, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, -9223372036854775808) %i.dz, i1 false), !alias.scope !489, !noalias !490
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel = load i32, ptr %i.ea, align 2, !noalias !491 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.peel = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel, 16
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.peel to i16
  %i.ej = add i16 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel ; 3 uses
  %i.ek = icmp ult i16 %i.ej, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.peel
  br i1 %i.ek, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit.thread, label %bb.bo, !prof !13

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin
  %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.peel = zext i16 %i.ej to i48
  %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.peel, 32
  %i.el = shl i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.peel, 16
  %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel = zext i32 %i.el to i48
  %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.peel = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel, %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.peel
  %i.em = lshr exact i48 %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.peel, 16
  %i.en = trunc nuw i48 %i.em to i32
  store i32 %i.en, ptr %i.ea, align 2, !noalias !492
  %.not.i.i.i.i.i.i.i.i.i.peel = icmp eq i16 %.sroa.0.0.copyload.i230, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.peel, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bo
  %i.eo = getelementptr i8, ptr %i.ea, i64 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %bb.bp
  %.sroa.6.0382 = phi i16 [ %i.ep, %bb.bp ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.4.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.es, %bb.bp ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, align 2, !noalias !491 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 16
  %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i to i16
  %i.ep = add i16 %.sroa.4.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.eq = icmp uge i16 %i.ep, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %i.er = call i16 @llvm.uadd.sat.i16(i16 %.sroa.6.0382, i16 1)
  %.not.i.i.i.i.i.i.i.i.i.i.i.not = icmp ult i16 %i.er, %.sroa.01.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %or.cond665 = and i1 %i.eq, %.not.i.i.i.i.i.i.i.i.i.i.i.not
  br i1 %or.cond665, label %bb.bp, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit.thread, !prof !493

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.es = getelementptr i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i16 %i.ep to i48
  %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.et = shl i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 16
  %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.et to i48
  %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = lshr exact i48 %.sroa.6.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, 16
  %i.ev = trunc nuw i48 %i.eu to i32
  store i32 %i.ev, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, align 2, !noalias !492
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, %i.ei
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !440

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.peel.begin, %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 2) #36, !noalias !494
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.ew, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.bp, %bb.bo
  %i.ex = ptrtoint ptr %i.ea to i64
  %i.ey = inttoptr i64 %i.dy to ptr
  br label %bb.bf

bb.bq:                                            ; preds = %bb.bg, %bb.bf
  %i.ez = load ptr, ptr %i.br, align 8, !alias.scope !484, !nonnull !11, !noundef !11
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.fb = add i64 %i.do, 1
  store i64 %i.fb, ptr %i.bs, align 8, !alias.scope !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %4, %.sroa.03.0416604
  br i1 %exitcond.not, label %._crit_edge, label %3

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit215: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.br

bb.br:                                            ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit215
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262, label %bb.bs

bb.bs:                                            ; preds = %.thread492, %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262: ; preds = %bb.br, %bb.bs
  %.0.val.off.i264 = add nsw i64 %.sroa.0294.0410612, -1
  %switch.i265 = icmp ult i64 %.0.val.off.i264, -2
  br i1 %switch.i265, label %bb.bt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.bt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0403622) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0403622, i64 noundef %.sroa.0294.0410612, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.bu:                                            ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 30) #37
          to label %bb.ap unwind label %bb.q

bb.bv:                                            ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.an, ptr noundef nonnull align 1 dereferenceable(30) @5, i64 30, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !495
  %i.fc = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #36, !noalias !495 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bw, label %bb.bx, !prof !13

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc267 unwind label %.body.thread

.noexc267:                                        ; preds = %bb.bw
  unreachable

.body.thread:                                     ; preds = %bb.bw
  %i.fe = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !496
  br label %common.resume

bb.bx:                                            ; preds = %bb.bv
  store i64 30, ptr %i.fc, align 8
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.an, ptr %.sroa.5361.0..sroa_idx, align 8
  %.sroa.7362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 30, ptr %.sroa.7362.0..sroa_idx, align 8
  %i.ff = invoke noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @7)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262.thread unwind label %bb.q

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262.thread: ; preds = %bb.bx
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ff, ptr %i.fg, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.by:                                            ; preds = %bb.k
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #37
  unreachable

bb.bz:                                            ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ac, ptr noundef nonnull align 1 dereferenceable(20) @8, i64 20, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !497
  %i.fh = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #36, !noalias !497 ; 5 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ca, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsbjTsVCnQnhv_12lance_select.exit, !prof !13

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc269 unwind label %bb.cb

.noexc269:                                        ; preds = %bb.ca
  unreachable

common.resume:                                    ; preds = %.body, %bb.p, %.body.thread, %bb.cb
  %common.resume.op = phi { ptr, i32 } [ %i.fj, %bb.cb ], [ %i.fe, %.body.thread ], [ %.pn153, %.body ], [ %.pn153, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.cb:                                            ; preds = %bb.ca
  %i.fj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !498
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.bz
  store i64 20, ptr %i.fh, align 8
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.ac, ptr %.sroa.5354.0..sroa_idx, align 8
  %.sroa.7355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 20, ptr %.sroa.7355.0..sroa_idx, align 8
  %i.fk = tail call noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @7)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.fl, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !506 {
bb.a:
  %i.a = alloca [6 x i8], align 2                 ; 7 uses
  %i.b = alloca [6 x i8], align 2                 ; 12 uses
  %i.c = alloca [6 x i8], align 2                 ; 7 uses
  %.val.i = load i32, ptr %1, align 4, !alias.scope !507, !noundef !11 ; 4 uses
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val70.i = load i32, ptr %.sroa.3.0.i.i, align 4, !alias.scope !507, !noundef !11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !range !17, !alias.scope !508, !noundef !11
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
  br i1 %i.i, label %bb.f, label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECsbjTsVCnQnhv_12lance_select.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %.val70.i, -1
  br label %.thread.i

_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECsbjTsVCnQnhv_12lance_select.exit: ; preds = %.thread.i
  %i.k = lshr i32 %.val.i, 16                     ; 3 uses
  %i.l = trunc nuw i32 %i.k to i16                ; 3 uses
  %i.m = trunc i32 %.val.i to i16                 ; 2 uses
  %i.n = lshr i32 %.sroa.053.0.i, 16              ; 3 uses
  %i.o = trunc nuw i32 %i.n to i16                ; 3 uses
  %i.p = trunc i32 %.sroa.053.0.i to i16          ; 2 uses
  %i.q = icmp eq i32 %i.k, %i.n
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECsbjTsVCnQnhv_12lance_select.exit
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
  %i.t = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %i.l, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.peel.not = icmp eq i16 %i.s, %i.o
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

bb.e:                                             ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap4util26convert_range_to_inclusiveINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEECsbjTsVCnQnhv_12lance_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.m, ptr %i.c, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.p, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 2
  %i.u = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %i.l, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.c, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

._crit_edge:                                      ; preds = %.peel.next, %.lr.ph, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.p, ptr %.sroa.411.0..sroa_idx, align 2
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %.sroa.512.0..sroa_idx, align 2
  %i.v = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %i.o, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %.sroa.016.032 = phi i16 [ %i.w, %.peel.next ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.w = add nuw i16 %.sroa.016.032, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  store i16 -1, ptr %.sroa.47.0..sroa_idx, align 2
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 2
  %i.x = call fastcc noundef i64 @_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap29mod_or_build_container_by_keyyNCNCINvB2_12insert_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivemEE00NCB1B_s_0ECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %0, i16 noundef %.sroa.016.032, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i16 %i.w, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !505

bb.f:                                             ; preds = %.thread.i, %bb.c, %bb.b, %._crit_edge, %bb.e
  ret void
}

end_hunk_0
