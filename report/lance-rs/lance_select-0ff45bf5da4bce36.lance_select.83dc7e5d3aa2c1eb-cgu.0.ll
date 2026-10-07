Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB5_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB5_5store11array_store10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_fromNtB1E_5ErrorNvMNtB1G_12bitmap_storeNtB3S_11BitmapStore8try_fromNtB3S_5ErrorECsbjTsVCnQnhv_12lance_select:bb.a
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 21 uses
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
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !447, !noalias !448 ; 4 uses
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
  %.sroa.0.0.copyload.i188 = load i32, ptr %i.i, align 1, !alias.scope !449, !noalias !450 ; 3 uses
  %i.p = icmp ugt i32 %.sroa.0.0.copyload.i188, 65536
  br i1 %i.p, label %bb.o, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %.sroa.017.0 = lshr i64 %i.u, 3                 ; 12 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !451
  %i.v = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.017.0, i64 noundef range(i64 1, 9) 1) #36, !noalias !451 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.017.0) #37, !noalias !452
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.x = icmp samesign ugt i64 %.sroa.017.0, %i.j
  br i1 %i.x, label %bb.l, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i: ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.017.0 ; 2 uses
  %i.z = sub nuw nsw i64 %i.j, %.sroa.017.0       ; 2 uses
  %i.aa = icmp eq i64 %.sroa.017.0, 1
  br i1 %i.aa, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %.sroa.017.0, i1 false), !alias.scope !454, !noalias !455
  br label %.thread.thread

bb.j:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i
  %i.ab = load i8, ptr %i.i, align 1, !noalias !456, !noundef !4
  store i8 %i.ab, ptr %i.v, align 1, !alias.scope !453, !noalias !457
  br label %.thread.thread

bb.k:                                             ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !458
  %i.ac = tail call noundef dereferenceable_or_null(20) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #36, !noalias !458 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.ca, label %bb.cb

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
  %.sroa.14.0398637.a = phi i64 [ undef, %.thread ], [ %.sroa.017.0, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %.sroa.017.0, %bb.j ]
  %.sroa.10.0403628.a = phi ptr [ undef, %.thread ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.v, %bb.j ] ; 2 uses
  %.sroa.0294.0410619.a = phi i64 [ -1, %.thread ], [ %.sroa.017.0, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %.sroa.017.0, %bb.j ] ; 2 uses
  %.sroa.19.0413617.a = phi i64 [ %i.ag, %.thread ], [ %i.z, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.z, %bb.j ]
  %.sroa.0.0414615.a = phi ptr [ %i.ah, %.thread ], [ %i.y, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.y, %bb.j ]
  %.sroa.016.0415613.a = phi i1 [ true, %.thread ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.t, %bb.j ]
  %.sroa.03.0416611.a = phi i64 [ %i.af, %.thread ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i ], [ %i.s, %bb.j ] ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.03.0416611.a, 2  ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !459
  %i.ak = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 9) 1) #36, !noalias !459 ; 2 uses
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
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !460
  %i.an = tail call noundef dereferenceable_or_null(30) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 30, i64 noundef range(i64 1, 9) 1) #36, !noalias !460 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.bw, label %bb.bx

.body:                                            ; preds = %.split, %bb.t, %bb.q
  %.sroa.0294.0406 = phi i64 [ %.sroa.0294.0410620, %bb.t ], [ %.sroa.0294.0408, %bb.q ], [ %.sroa.0294.0410620, %.split ] ; 2 uses
  %.sroa.10.0399 = phi ptr [ %.sroa.10.0403629, %bb.t ], [ %.sroa.10.0401, %bb.q ], [ %.sroa.10.0403629, %.split ] ; 2 uses
  %.pn153 = phi { ptr, i32 } [ %.pn151642, %bb.t ], [ %i.ap, %bb.q ], [ %i.au, %.split ] ; 2 uses
  %.0.val.off.i = add nsw i64 %.sroa.0294.0406, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.p, label %common.resume

bb.p:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0399) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0399, i64 noundef %.sroa.0294.0406, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %common.resume

bb.q:                                             ; preds = %bb.n, %bb.bz, %bb.bw
  %.sroa.0294.0408 = phi i64 [ %.sroa.0294.0410619.a, %bb.n ], [ -1, %bb.bz ], [ -1, %bb.bw ]
  %.sroa.10.0401 = phi ptr [ %.sroa.10.0403628.a, %bb.n ], [ undef, %bb.bz ], [ undef, %bb.bw ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.m, %.thread
  %i.aq = phi i1 [ false, %bb.m ], [ true, %.thread ] ; 3 uses
  %i.ar = phi i64 [ %i.aj, %bb.m ], [ 0, %.thread ] ; 9 uses
  %.sroa.14.0398638 = phi i64 [ %.sroa.14.0398637.a, %bb.m ], [ undef, %.thread ] ; 2 uses
  %.sroa.10.0403629 = phi ptr [ %.sroa.10.0403628.a, %bb.m ], [ undef, %.thread ] ; 8 uses
  %.sroa.0294.0410620 = phi i64 [ %.sroa.0294.0410619.a, %bb.m ], [ -1, %.thread ] ; 7 uses
  %.sroa.19.0413618 = phi i64 [ %.sroa.19.0413617.a, %bb.m ], [ %i.ag, %.thread ] ; 2 uses
  %.sroa.0.0414616 = phi ptr [ %.sroa.0.0414615.a, %bb.m ], [ %i.ah, %.thread ] ; 2 uses
  %.sroa.016.0415614 = phi i1 [ %.sroa.016.0415613.a, %bb.m ], [ true, %.thread ]
  %.sroa.03.0416612 = phi i64 [ %.sroa.03.0416611.a, %bb.m ], [ 0, %.thread ] ; 4 uses
  %.sroa.10.0.i196 = phi i64 [ %i.am, %bb.m ], [ 1, %.thread ]
  %i.as = inttoptr i64 %.sroa.10.0.i196 to ptr    ; 8 uses
  %i.at = icmp samesign ugt i64 %i.ar, %.sroa.19.0413618
  br i1 %i.at, label %.thread492, label %bb.u

bb.s:                                             ; preds = %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
  br label %bb.t

bb.t:                                             ; preds = %.thread467.loopexit.split-lp, %.thread467.loopexit, %bb.s, %.thread455.loopexit, %.split648, %.split643, %.split.thread, %.split
  %.pn151642 = phi { ptr, i32 } [ %i.au, %.split ], [ %lpad.loopexit.split-lp, %bb.s ], [ %i.bx, %.split643 ], [ %lpad.loopexit.split-lp514, %.thread467.loopexit.split-lp ], [ %lpad.loopexit513, %.thread467.loopexit ], [ %lpad.loopexit, %.thread455.loopexit ], [ %i.dv, %.split648 ], [ %i.bp, %.split.thread ]
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
  br label %bb.bu

bb.u:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0414616, i64 %i.ar ; 4 uses
  %i.ax = sub nuw nsw i64 %.sroa.19.0413618, %i.ar ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %.sroa.0.0414616, i64 range(i64 0, -9223372036854775808) %i.ar, i1 false), !alias.scope !461, !noalias !462
  br i1 %.sroa.016.0415614, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216, %bb.u
  %.sroa.19.1 = phi i64 [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216 ], [ %i.ax, %bb.u ]
  %.sroa.0.1 = phi ptr [ %i.bi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216 ], [ %i.aw, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ay = mul nuw nsw i64 %.sroa.03.0416612, 40   ; 2 uses
  br i1 %i.aq, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %bb.v
  %3 = icmp eq i64 %.sroa.03.0416612, 0
  tail call void @llvm.assume(i1 %3)
  store i64 0, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !463
  %i.bb = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 9) 8) #36, !noalias !463 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.ae, label %.lr.ph

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ar)
          to label %bb.y unwind label %.split

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.bh = icmp ugt i64 %i.bg, %i.ax
  br i1 %i.bh, label %bb.aa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209: ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bj = sub nuw nsw i64 %i.ax, %i.bg
  %i.bk = icmp eq i64 %i.bg, 1
  br i1 %i.bk, label %bb.z, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i210

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i210: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, -9223372036854775808) %i.bg, i1 false), !alias.scope !465, !noalias !466
  br label %bb.ac

bb.z:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsbjTsVCnQnhv_12lance_select.exit.i209
  %i.bl = load i8, ptr %i.aw, align 1, !noalias !467, !noundef !4
  store i8 %i.bl, ptr %i.be, align 1, !alias.scope !464, !noalias !468
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.bm, align 8
  store i64 -1, ptr %0, align 8
  %.val172 = load i64, ptr %i.f, align 8          ; 2 uses
  %i.bn = icmp eq i64 %.val172, 0
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit215, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %.val172, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit215

bb.ac:                                            ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsbjTsVCnQnhv_12lance_select.exit.i210
  %.sroa.0307.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bo = icmp eq i64 %.sroa.0307.0.copyload, 0
  br i1 %i.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %.sroa.0307.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit216: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.ae:                                            ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #37
          to label %bb.ar unwind label %.split.thread

.split.thread:                                    ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.03.0416612, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.br, align 8
  %.not145 = icmp eq i64 %.sroa.0294.0410620, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.af

._crit_edge:                                      ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217

bb.af:                                            ; preds = %.lr.ph, %bb.bs
  %.sroa.027.0547 = phi i1 [ false, %.lr.ph ], [ true, %bb.bs ]
  %.sroa.6.0546 = phi i16 [ undef, %.lr.ph ], [ %.sroa.0.0.copyload.i218, %bb.bs ]
  %.sroa.8.0545 = phi i64 [ undef, %.lr.ph ], [ %.sroa.8.1, %bb.bs ]
  %.sroa.0119.0544 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.bs ] ; 3 uses
  %.sroa.0.2543 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.3, %bb.bs ] ; 8 uses
  %.sroa.19.2542 = phi i64 [ %.sroa.19.1, %.lr.ph ], [ %.sroa.19.3, %bb.bs ] ; 6 uses
  %.sroa.0304.0541 = phi ptr [ %i.as, %.lr.ph ], [ %i.cd, %bb.bs ] ; 3 uses
  %.sroa.8.0380540 = phi i64 [ %i.ar, %.lr.ph ], [ %i.ce, %bb.bs ] ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.0119.0544, 1     ; 2 uses
  %i.bw = icmp eq i64 %.sroa.8.0380540, 0
  br i1 %i.bw, label %bb.ah, label %bb.ai

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217: ; preds = %._crit_edge.thread, %._crit_edge
  %.0.val.off.i222 = add nsw i64 %.sroa.0294.0410620, -1
  %switch.i223 = icmp ult i64 %.0.val.off.i222, -2
  br i1 %switch.i223, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0403629) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0403629, i64 noundef %.sroa.0294.0410620, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsbjTsVCnQnhv_12lance_select.exit224: ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit262, %bb.bv, %bb.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit217, %bb.b, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsbjTsVCnQnhv_12lance_select.exit, %bb.f
  ret void

.split643:                                        ; preds = %.invoke, %bb.au, %bb.bm, %bb.aq, %bb.aj
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
  br label %bb.t

bb.ah:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @179, ptr %i.by, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %.sroa.0.0.copyload.i218 = load i16, ptr %.sroa.0304.0541, align 1, !alias.scope !469, !noalias !470 ; 3 uses
  %i.bz = icmp ule i16 %.sroa.0.0.copyload.i218, %.sroa.6.0546
  %or.cond = and i1 %.sroa.027.0547, %i.bz
  br i1 %or.cond, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ca = invoke noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 29)
          to label %bb.ak unwind label %.split643

bb.ak:                                            ; preds = %bb.aj
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterAtj2_ENCINvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB28_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB28_5store11array_store10ArrayStoreINtNtB6_7convert7TryFromINtB1b_3VectEE8try_fromNtB3I_5ErrorNvMNtB3K_12bitmap_storeNtB5l_11BitmapStore8try_fromNtB5l_5ErrorEs0_0ENtNtB3K_14interval_store8IntervalINtNtB6_6result6ResultNtB4o_10InfallibleNtNtNtB6_2io5error9ErrorKindENCINvXso_B6Z_IB6X_IB4K_B6p_EB7A_EINtNtNtB4_6traits7collect12FromIteratorIB6X_B6p_B7A_EE9from_iterBQ_E0B8l_ECsbjTsVCnQnhv_12lance_select.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecAtj2_EECsbjTsVCnQnhv_12lance_select.exit, %bb.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsbjTsVCnQnhv_12lance_select.exit, %bb.bb, %bb.ax, %bb.bo, %bb.bk, %bb.ak, %bb.ah
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bt

bb.am:                                            ; preds = %bb.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0304.0541, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0304.0541, i64 4
  %i.ce = add nsw i64 %.sroa.8.0380540, -4
  %.sroa.0.0.copyload.i225 = load i16, ptr %i.cc, align 1, !alias.scope !471, !noalias !472 ; 2 uses
  %i.cf = zext i16 %.sroa.0.0.copyload.i225 to i64
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 4 uses
  br i1 %.not145, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ch = lshr i64 %.sroa.0119.0544, 3            ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %.sroa.14.0398638
  br i1 %i.ci, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am, %bb.ap
  %i.cj = icmp ult i16 %.sroa.0.0.copyload.i225, 4096
  br i1 %i.cj, label %bb.av, label %bb.at

bb.ap:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0403629) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.10.0403629, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !4
  %i.cm = trunc i64 %.sroa.0119.0544 to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = shl nuw i8 1, %i.cn
  %i.cp = and i8 %i.cl, %i.co
  %.not146 = icmp eq i8 %i.cp, 0
  br i1 %.not146, label %bb.ao, label %bb.as

bb.aq:                                            ; preds = %bb.an
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %.sroa.14.0398638, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
          to label %bb.ar unwind label %.split643

bb.ar:                                            ; preds = %bb.bw, %bb.aq, %bb.ae
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.cq = icmp ult i64 %.sroa.19.2542, 2
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap6insert:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.c, ptr %i.aa, align 8
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  %i.ab = icmp ult i64 %i.h, 230584300921369396
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %0, align 8, !range !5, !alias.scope !2656, !noalias !2657, !noundef !4
  %i.ad = icmp eq i64 %i.h, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %._crit_edge unwind label %bb.f, !noalias !2657

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.e, align 8, !alias.scope !2656, !noalias !2657
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %.sroa.4.0.i.i.ph ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.h
  br i1 %i.ag, label %bb.g, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsbjTsVCnQnhv_12lance_select.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.a) #38
  resume { ptr, i32 } %i.ah

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.aj = sub nuw nsw i64 %i.h, %.sroa.4.0.i.i.ph
  %i.ak = mul nuw nsw i64 %i.aj, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.af, i64 %i.ak, i1 false), !noalias !2657
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsbjTsVCnQnhv_12lance_select.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.e, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !2658
  %i.al = add nuw nsw i64 %i.h, 1
  store i64 %i.al, ptr %i.g, align 8, !alias.scope !2656, !noalias !2657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pn.pre = load ptr, ptr %i.e, align 8
  br label %.thread

.thread:                                          ; preds = %._crit_edge.i.i, %._crit_edge.i.i.thread, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsbjTsVCnQnhv_12lance_select.exit
  %.pn = phi ptr [ %.pn.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsbjTsVCnQnhv_12lance_select.exit ], [ %i.f, %._crit_edge.i.i.thread ], [ %i.f, %._crit_edge.i.i ]
  %.sroa.4.0.i.i18 = phi i64 [ %.sroa.4.0.i.i.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsbjTsVCnQnhv_12lance_select.exit ], [ 0, %._crit_edge.i.i.thread ], [ %i.t, %._crit_edge.i.i ]
  %.sroa.04.0 = getelementptr inbounds nuw [40 x i8], ptr %.pn, i64 %.sroa.4.0.i.i18 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.am = load i64, ptr %.sroa.04.0, align 8, !range !3, !alias.scope !2659, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8 ; 5 uses
  switch i64 %i.am, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.thread
  unreachable

bb.h:                                             ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2661, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2661, !noundef !4 ; 10 uses
  switch i64 %i.ar, label %.lr.ph.i.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %i.az, %.lr.ph.i.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.sroa.05.0.lcssa.i.i.i
  %.val14.i.i.i = load i16, ptr %i.as, align 2, !alias.scope !2662, !noalias !2663, !noundef !4 ; 2 uses
  %i.at = icmp eq i16 %.val14.i.i.i, %i.d
  br i1 %i.at, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread23, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.01.019.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.05.018.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.au = lshr i64 %.sroa.01.019.i.i.i, 1         ; 2 uses
  %i.av = add nuw nsw i64 %i.au, %.sroa.05.018.i.i.i ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.ar
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.av
  %.val16.i.i.i = load i16, ptr %i.ax, align 2, !alias.scope !2662, !noalias !2663, !noundef !4
  %i.ay = icmp ugt i16 %.val16.i.i.i, %i.d
  %i.az = select i1 %i.ay, i64 %.sroa.05.018.i.i.i, i64 %i.av, !unpredictable !4 ; 2 uses
  %i.ba = sub nuw nsw i64 %.sroa.01.019.i.i.i, %i.au ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = icmp ult i16 %.val14.i.i.i, %i.d
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ule i64 %i.be, %i.ar
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ult i64 %i.ar, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bg)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.i, %bb.h
  %.sroa.4.0.i.ph8.i.i = phi i64 [ %i.be, %bb.i ], [ %i.ar, %bb.h ] ; 3 uses
  %i.bh = load i64, ptr %i.an, align 8, !range !5, !alias.scope !2664, !noundef !4
  %i.bi = icmp eq i64 %i.ar, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread.i.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
  %.pre.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !2664
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i.i
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.ap, %.thread.i.i ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.sroa.4.0.i.ph8.i.i ; 3 uses
  %i.bl = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i, %i.ar
  br i1 %i.bl, label %bb.l, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = sub nuw nsw i64 %i.ar, %.sroa.4.0.i.ph8.i.i
  %i.bo = shl nuw nsw i64 %i.bn, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bm, ptr nonnull align 2 %i.bk, i64 %i.bo, i1 false)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i: ; preds = %bb.l, %bb.k
  store i16 %i.d, ptr %i.bk, align 2
  %i.bp = add nuw nsw i64 %i.ar, 1
  store i64 %i.bp, ptr %i.aq, align 8, !alias.scope !2664
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread

bb.m:                                             ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !2666, !nonnull !4, !noundef !4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !2666, !noundef !4 ; 15 uses
  switch i64 %i.bt, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread.i1.i
    i64 1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCsbjTsVCnQnhv_12lance_select.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.m ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.bu = lshr i64 %.sroa.01.020.i.i.i.i, 1       ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %.val16.i.i.i.i = load i16, ptr %i.by, align 2, !alias.scope !2667, !noalias !2668, !noundef !4
  %.not.i.i.i.i = icmp ult i16 %.val16.i.i.i.i, %i.d
  %i.bz = select i1 %.not.i.i.i.i, i64 %i.bv, i64 %.sroa.05.019.i.i.i.i, !unpredictable !4 ; 2 uses
  %i.ca = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.bu ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCsbjTsVCnQnhv_12lance_select.exit.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCsbjTsVCnQnhv_12lance_select.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.m
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.05.0.lcssa.i.i.i.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 2
  %.val14.i.i.i.i = load i16, ptr %i.cd, align 2, !alias.scope !2667, !noalias !2668, !noundef !4
  %i.ce = icmp ult i16 %.val14.i.i.i.i, %i.d
  %i.cf = zext i1 %i.ce to i64
  %i.cg = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cf ; 8 uses
  %i.ch = icmp ule i64 %i.cg, %i.bt
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr [4 x i8], ptr %i.br, i64 %i.cg ; 7 uses
  %i.cj = sub nuw nsw i64 %i.bt, %i.cg            ; 2 uses
  %.not.i.i = icmp eq i64 %i.bt, %i.cg
  br i1 %.not.i.i, label %.thread21.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCsbjTsVCnQnhv_12lance_select.exit.i.i
  %i.ck = load i16, ptr %i.ci, align 2, !noalias !2666, !noundef !4 ; 3 uses
  %.not7.i.i = icmp ugt i16 %i.ck, %i.d
  br i1 %.not7.i.i, label %bb.p, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread23

bb.o:                                             ; preds = %bb.p
  %.not8.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not8.i.i, label %.thread.i1.i, label %.thread21.i.i

bb.p:                                             ; preds = %bb.n
  %i.cl = add nuw i16 %i.d, 1
  %i.cm = icmp eq i16 %i.ck, %i.cl
  br i1 %i.cm, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.cn = add i16 %i.ck, -1
  store i16 %i.cn, ptr %i.ci, align 2, !noalias !2666
  %.not9.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not9.i.i, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread, label %bb.v

.thread21.i.i:                                    ; preds = %bb.o, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCsbjTsVCnQnhv_12lance_select.exit.i.i
  %2 = phi i64 [ %i.cj, %bb.o ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8Interval12split_at_mutCsbjTsVCnQnhv_12lance_select.exit.i.i ]
  %i.co = getelementptr i8, ptr %i.ci, i64 -2     ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !noalias !2666, !noundef !4
  %i.cq = add i16 %i.cp, 1
  %i.cr = icmp eq i16 %i.cq, %i.d
  br i1 %i.cr, label %bb.u, label %.thread.i1.i

.thread.i1.i:                                     ; preds = %.thread21.i.i, %bb.o, %bb.m
  %.sroa.4.0.i.i1720.i.i = phi i64 [ %i.cg, %.thread21.i.i ], [ 0, %bb.o ], [ %i.bt, %bb.m ] ; 2 uses
  %i.cs = phi i64 [ %2, %.thread21.i.i ], [ %i.cj, %bb.o ], [ %i.bt, %bb.m ]
  %i.ct = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load i64, ptr %i.an, align 8, !range !5, !alias.scope !2669, !noundef !4
  %i.cv = icmp eq i64 %i.bt, %i.cu
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread.i1.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
  %.pre.i2.i = load ptr, ptr %i.bq, align 8, !alias.scope !2669
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.i1.i
  %i.cw = phi ptr [ %.pre.i2.i, %bb.r ], [ %i.br, %.thread.i1.i ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.4.0.i.i1720.i.i ; 4 uses
  %i.cy = icmp samesign ult i64 %.sroa.4.0.i.i1720.i.i, %i.bt
  br i1 %i.cy, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = shl nuw nsw i64 %i.cs, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cz, ptr nonnull align 2 %i.cx, i64 %i.da, i1 false)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i: ; preds = %bb.t, %bb.s
  store i16 %i.d, ptr %i.cx, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i16 %i.d, ptr %i.db, align 2
  %i.dc = add nuw nsw i64 %i.bt, 1
  store i64 %i.dc, ptr %i.bs, align 8, !alias.scope !2669
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread

bb.u:                                             ; preds = %.thread21.i.i
  store i16 %i.d, ptr %i.co, align 2, !noalias !2666
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread

bb.v:                                             ; preds = %bb.q
  %i.dd = getelementptr i8, ptr %i.ci, i64 -2     ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !noalias !2666, !noundef !4
  %i.df = add i16 %i.d, -1
  %i.dg = icmp eq i16 %i.de, %i.df
  br i1 %i.dg, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCsbjTsVCnQnhv_12lance_select.exit.i.i, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCsbjTsVCnQnhv_12lance_select.exit.i.i: ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !noalias !2666, !noundef !4
  store i16 %i.di, ptr %i.dd, align 2, !noalias !2666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %i.dj = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.dl = xor i64 %i.cg, -1
  %i.dm = add nsw i64 %i.bt, %i.dl
  %i.dn = shl nuw nsw i64 %i.dm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ci, ptr nonnull align 2 %i.dk, i64 %i.dn, i1 false), !noalias !2672
  %i.do = add nsw i64 %i.bt, -1
  store i64 %i.do, ptr %i.bs, align 8, !alias.scope !2672
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit: ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  %.mask = and i32 %1, 65535
  %i.dp = zext nneg i32 %.mask to i64             ; 2 uses
  %i.dq = and i64 %i.dp, 63                       ; 2 uses
  %i.dr = lshr i64 %i.dp, 6
  %i.ds = load ptr, ptr %i.an, align 8, !alias.scope !2674, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !noalias !2674, !noundef !4 ; 2 uses
  %i.dv = shl nuw i64 1, %i.dq
  %i.dw = or i64 %i.du, %i.dv                     ; 2 uses
  %i.dx = xor i64 %i.dw, %i.du
  %i.dy = lshr i64 %i.dx, %i.dq                   ; 2 uses
  store i64 %i.dw, ptr %i.dt, align 8, !noalias !2674
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !2674, !noundef !4
  %i.eb = add i64 %i.dy, %i.ea
  store i64 %i.eb, ptr %i.dz, align 8, !alias.scope !2674
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread23, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE6removeCsbjTsVCnQnhv_12lance_select.exit.i.i, %bb.v, %bb.q, %bb.u, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store14interval_store8IntervalE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i, %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit
  %i.ec = tail call noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.04.0) ; 0 uses
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread23

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread23: ; preds = %bb.n, %._crit_edge.i.i.i, %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit, %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread
  %.sroa.0.0.in.i20 = phi i1 [ false, %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit ], [ true, %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert.exit.thread ], [ false, %._crit_edge.i.i.i ], [ false, %bb.n ]
  ret i1 %.sroa.0.0.in.i20
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap6remove(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = trunc nuw i32 %i.a to i16                ; 4 uses
  %i.c = trunc i32 %1 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 7 uses
  switch i64 %i.g, label %.lr.ph.i.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9Container20binary_search_by_keytNCNvMNtBz_8inherentNtBz_13RoaringBitmap6remove0ECsbjTsVCnQnhv_12lance_select.exit.thread
    i64 1, label %._crit_edge.i.i.thread
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %.val14.i.i = load i16, ptr %i.i, align 8, !alias.scope !2690, !noalias !2691, !noundef !4 ; 2 uses
  %i.j = icmp eq i16 %.val14.i.i, %i.b
  br i1 %i.j, label %bb.c, label %bb.b

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 32
  %.val14.i.i12 = load i16, ptr %i.k, align 8, !alias.scope !2690, !noalias !2691, !noundef !4 ; 2 uses
  %i.l = icmp eq i16 %.val14.i.i12, %i.b
  br i1 %i.l, label %.thread, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = lshr i64 %.sroa.01.019.i.i, 1            ; 2 uses
  %i.n = add nuw nsw i64 %i.m, %.sroa.05.018.i.i  ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.g
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %.val16.i.i = load i16, ptr %i.q, align 8, !alias.scope !2690, !noalias !2691, !noundef !4
  %i.r = icmp ugt i16 %.val16.i.i, %i.b
  %i.s = select i1 %i.r, i64 %.sroa.05.018.i.i, i64 %i.n, !unpredictable !4 ; 4 uses
  %i.t = sub nuw nsw i64 %.sroa.01.019.i.i, %i.m  ; 2 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.val14.i.i15 = phi i16 [ %.val14.i.i12, %._crit_edge.i.i.thread ], [ %.val14.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.lcssa.i.i13 = phi i64 [ 0, %._crit_edge.i.i.thread ], [ %i.s, %._crit_edge.i.i ]
  %i.v = icmp ult i16 %.val14.i.i15, %i.b
  %i.w = zext i1 %i.v to i64
  %i.x = add nuw nsw i64 %.sroa.05.0.lcssa.i.i13, %i.w
  %i.y = icmp ule i64 %i.x, %i.g
  tail call void @llvm.assume(i1 %i.y)
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9Container20binary_search_by_keytNCNvMNtBz_8inherentNtBz_13RoaringBitmap6remove0ECsbjTsVCnQnhv_12lance_select.exit.thread

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = xor i64 %i.s, -1
  br label %.thread

.thread:                                          ; preds = %bb.c, %._crit_edge.i.i.thread
  %.sroa.05.0.lcssa.i.i1417 = phi i64 [ %i.z, %bb.c ], [ -1, %._crit_edge.i.i.thread ]
  %i.aa = phi ptr [ %i.h, %bb.c ], [ %i.e, %._crit_edge.i.i.thread ] ; 9 uses
  %i.ab = tail call noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container6remove(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aa, i16 noundef %i.c)
  br i1 %i.ab, label %bb.d, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9Container20binary_search_by_keytNCNvMNtBz_8inherentNtBz_13RoaringBitmap6remove0ECsbjTsVCnQnhv_12lance_select.exit.thread

bb.d:                                             ; preds = %.thread
  %i.ac = load i64, ptr %i.aa, align 8, !range !3, !noundef !4 ; 2 uses
  switch i64 %i.ac, label %default.unreachable10 [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable10:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 4611686018427387904
  tail call void @llvm.assume(i1 %i.af)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ak)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.03.0.in.in = phi i64 [ %i.ae, %bb.e ], [ %i.ah, %bb.f ], [ %i.aj, %bb.g ]
  %.sroa.03.0.in = icmp eq i64 %.sroa.03.0.in.in, 0
  br i1 %.sroa.03.0.in, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE6removeCsbjTsVCnQnhv_12lance_select.exit, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9Container20binary_search_by_keytNCNvMNtBz_8inherentNtBz_13RoaringBitmap6remove0ECsbjTsVCnQnhv_12lance_select.exit.thread

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE6removeCsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %i.al = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.al)
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.6.i.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !2694 ; 5 uses
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.i.sroa.4.0.copyload = load ptr, ptr %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx, align 8, !noalias !2694 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.an = add nsw i64 %i.g, %.sroa.05.0.lcssa.i.i1417
  %i.ao = mul nuw nsw i64 %i.an, 40
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMap9row_addrs:.preheader
  %i.bs = icmp eq i64 %i.l, 0
  br i1 %i.bs, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph: ; preds = %bb.n, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i
  %.promoted24.i.i.i177 = phi i64 [ %i.bv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ], [ %i.l, %bb.n ]
  %.promoted2129.i.i.i176 = phi ptr [ %.sroa.07.0.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ], [ %.sroa.07.0.i.i.i, %bb.n ]
  %.sroa.912.0.i175 = phi i64 [ %.sroa.78.0.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ], [ %.sroa.78.0.i.i.i, %bb.n ]
  %.sroa.9.0.copyload174 = phi i64 [ %i.dq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ], [ 1, %bb.n ] ; 6 uses
  %.sroa.6.0.copyload173 = phi ptr [ %i.do, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ], [ %i.bq, %bb.n ] ; 2 uses
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i

bb.o:                                             ; preds = %.loopexit.i.i.i
  %i.bt = icmp eq i64 %i.bv, 0
  br i1 %i.bt, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i: ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph, %bb.o
  %i.bu = phi i64 [ %.promoted24.i.i.i177, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph ], [ %i.bv, %bb.o ]
  %.sroa.013.0.lcssa.i.i22.i.i.i168 = phi ptr [ %.promoted2129.i.i.i176, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph ], [ %.sroa.07.0.i.i.i.i.i.i, %bb.o ] ; 3 uses
  %.sroa.912.1.i167 = phi i64 [ %.sroa.912.0.i175, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph ], [ %.sroa.78.0.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %i.bv = add i64 %i.bu, -1                       ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i22.i.i.i168, i64 318
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !3293, !noundef !4
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp ult i64 %.sroa.912.1.i167, %i.by
  br i1 %i.bz, label %.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i, %bb.p
  %.sroa.0.022.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.p ], [ %.sroa.013.0.lcssa.i.i22.i.i.i168, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.p ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i, align 8, !noalias !3294, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cb = add i64 %.sroa.5.021.i.i.i.i.i.i.i, 1   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i, i64 316
  %i.cd = load i16, ptr %i.cc, align 4, !noalias !3294 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 318
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !3293, !noundef !4
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %bb.r, label %.lr.ph.i.i.i.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #37
          to label %.noexc.i.i.i.i.i unwind label %bb.t, !noalias !3295

.noexc.i.i.i.i.i:                                 ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ch = zext i16 %i.cd to i64                   ; 4 uses
  %i.ci = icmp eq i64 %i.cb, 0
  br i1 %i.ci, label %.thread, label %bb.s

.thread:                                          ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i, %bb.r
  %.sroa.06.0.ph.i.i.i.i.i.i82 = phi ptr [ %i.ca, %bb.r ], [ %.sroa.013.0.lcssa.i.i22.i.i.i168, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i.i.i.i80 = phi i64 [ %i.ch, %bb.r ], [ %.sroa.912.1.i167, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i ] ; 2 uses
  %i.cj = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i80, 1
  br label %.loopexit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ck = icmp ult i16 %i.cd, 11
  tail call void @llvm.assume(i1 %i.ck), !noalias !3296
  %i.cl = getelementptr i8, ptr %i.ca, i64 328
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.ch ; 2 uses
  %xtraiter222 = and i64 %i.cb, 7                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.prol.loopexit219, label %.prol.preheader218

.prol.preheader218:                               ; preds = %bb.s, %.prol.preheader218
  %.sroa.017.0.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.cn, %.prol.preheader218 ], [ %i.cm, %bb.s ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader218 ], [ %i.cb, %bb.s ]
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.prol.preheader218 ], [ 0, %bb.s ]
  %.sroa.019.0.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.prol, align 8, !noalias !3297, !nonnull !4, !noundef !4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.prol.loopexit219, label %.prol.preheader218, !llvm.loop !3262

.prol.loopexit219:                                ; preds = %.prol.preheader218, %bb.s
  %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.s ], [ %.sroa.017.0.i.i.i.i.i.i.i.prol, %.prol.preheader218 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.cm, %bb.s ], [ %i.cn, %.prol.preheader218 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.unr = phi i64 [ %i.cb, %bb.s ], [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader218 ]
  %i.co = icmp ult i64 %.sroa.5.021.i.i.i.i.i.i.i, 7
  br i1 %i.co, label %.loopexit.i.i.i, label %.new220

.new220:                                          ; preds = %.prol.loopexit219, %.new220
  %.sroa.017.0.in.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.new220 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit219 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.7, %.new220 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit219 ]
  %.sroa.017.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cp, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.cq, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cr, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cs, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ct, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cu, align 8, !noalias !3297, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cv, align 8, !noalias !3297, !nonnull !4, !noundef !4 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.7, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.cw, label %.loopexit.i.i.i, label %.new220

bb.t:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !3296
  unreachable

.loopexit.i.i.i:                                  ; preds = %.prol.loopexit219, %.new220, %.thread
  %.sroa.06.0.ph.i.i.i.i.i.i81 = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i82, %.thread ], [ %i.ca, %.new220 ], [ %i.ca, %.prol.loopexit219 ] ; 2 uses
  %.sroa.10.0.ph.i.i.i.i.i.i79 = phi i64 [ %.sroa.10.0.ph.i.i.i.i.i.i80, %.thread ], [ %i.ch, %.new220 ], [ %i.ch, %.prol.loopexit219 ] ; 3 uses
  %.sroa.78.0.i.i.i.i.i.i = phi i64 [ %i.cj, %.thread ], [ 0, %.new220 ], [ 0, %.prol.loopexit219 ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i82, %.thread ], [ %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit219 ], [ %.sroa.017.0.i.i.i.i.i.i.i.7, %.new220 ] ; 2 uses
  %i.cz = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i79, 11
  tail call void @llvm.assume(i1 %i.cz), !noalias !3296
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i81, i64 8
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.sroa.10.0.ph.i.i.i.i.i.i79 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !9, !alias.scope !3298, !noalias !3299, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dc, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.u

.body.i:                                          ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.a), !noalias !3300
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2z_14RowAddrTreeMap9row_addrs00EEEB2B_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38, !noalias !3280
  br label %bb.w

bb.u:                                             ; preds = %.loopexit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i81, i64 272
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.sroa.10.0.ph.i.i.i.i.i.i79
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !3298, !noalias !3299, !nonnull !4, !noundef !4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !3298, !noalias !3299, !noundef !4
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dh, i64 %i.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3300
  store i64 -1, ptr %i.a, align 8, !noalias !3300
  store i64 -1, ptr %.sroa.74.0..sroa_idx.i.i.i, align 8, !noalias !3300
  store ptr %i.dh, ptr %.sroa.85.0..sroa_idx.i.i.i, align 8, !noalias !3300
  store ptr %i.dk, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3300
  store ptr %i.df, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3300
  %i.dl = icmp samesign ult i64 %.sroa.9.0.copyload174, 67818912035696881
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = load i64, ptr %i.c, align 8, !range !5, !alias.scope !3301, !noalias !3302, !noundef !4
  %i.dn = icmp eq i64 %.sroa.9.0.copyload174, %i.dm
  br i1 %i.dn, label %bb.v, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i_crit_edge.i, %bb.u
  %i.do = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i_crit_edge.i ], [ %.sroa.6.0.copyload173, %bb.u ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [136 x i8], ptr %i.do, i64 %.sroa.9.0.copyload174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dp, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !3300
  %i.dq = add nuw nsw i64 %.sroa.9.0.copyload174, 1 ; 3 uses
  store i64 %i.dq, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3301, !noalias !3302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3300
  %i.dr = icmp eq i64 %i.bv, 0
  br i1 %i.dr, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10init_frontB1O_.exit.i.i.i.i.lr.ph

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.9.0.copyload174, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 136)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i_crit_edge.i unwind label %.body.i, !noalias !3302

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i_crit_edge.i: ; preds = %bb.v
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3301, !noalias !3302
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i

bb.w:                                             ; preds = %.body.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.dd, %.body.i ], [ %i.bi, %bb.k ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i, %bb.o, %bb.n
  %.sroa.6.0.copyload.lcssa = phi ptr [ %.sroa.6.0.copyload173, %bb.o ], [ %i.bq, %bb.n ], [ %i.do, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ] ; 3 uses
  %.sroa.9.0.copyload.lcssa = phi i64 [ %.sroa.9.0.copyload174, %bb.o ], [ 1, %bb.n ], [ %i.dq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2l_14RowAddrTreeMap9row_addrs00EE7reserveB2n_.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !3303 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3280
  %i.ds = icmp samesign ult i64 %.sroa.9.0.copyload.lcssa, 67818912035696881
  tail call void @llvm.assume(i1 %i.ds)
  %.not56 = icmp eq i64 %.sroa.9.0.copyload.lcssa, %i.h
  br i1 %.not56, label %bb.x, label %.lr.ph.i.i.i.preheader

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit.thread: ; preds = %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3280
  %.not5686 = icmp eq i64 %i.h, 0
  br i1 %.not5686, label %bb.x, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i.thread

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i.thread: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit.thread
  store i64 -3, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2z_14RowAddrTreeMap9row_addrs00EEEB2B_.exit

bb.x:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit.thread, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit
  %.sroa.0.091 = phi i64 [ 0, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit.thread ], [ %.sroa.0.0.copyload, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit ]
  %.sroa.6.089 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit.thread ], [ %.sroa.6.0.copyload.lcssa, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit ] ; 3 uses
  %.sroa.9.087 = phi i64 [ 0, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit.thread ], [ %i.h, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit ]
  %i.dt = getelementptr inbounds nuw [136 x i8], ptr %.sroa.6.089, i64 %.sroa.9.087
  store i64 -2, ptr %0, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -2, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.sroa.6.089, ptr %.sroa.747.0..sroa_idx, align 8
  %.sroa.747.sroa.4.0..sroa.747.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.6.089, ptr %.sroa.747.sroa.4.0..sroa.747.0..sroa_idx.sroa_idx, align 8
  %.sroa.747.sroa.5.0..sroa.747.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0.091, ptr %.sroa.747.sroa.5.0..sroa.747.0..sroa_idx.sroa_idx, align 8
  %.sroa.747.sroa.6.0..sroa.747.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.dt, ptr %.sroa.747.sroa.6.0..sroa.747.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2z_14RowAddrTreeMap9row_addrs00EEEB2B_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2I_14RowAddrTreeMap9row_addrs00EEINtB2_18SpecFromIterNestedB11_INtNtB16_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4ItermNtB2I_16RowAddrSelectionENCB2C_0EE9from_iterB2K_.exit
  store i64 -3, ptr %0, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [136 x i8], ptr %.sroa.6.0.copyload.lcssa, i64 %.sroa.0.07.i.i.i
  %i.dv = add nuw nsw i64 %.sroa.0.07.i.i.i, 1    ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.du), !noalias !3304
  %i.dw = icmp eq i64 %i.dv, %.sroa.9.0.copyload.lcssa
  br i1 %i.dw, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dx = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.dx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2z_14RowAddrTreeMap9row_addrs00EEEB2B_.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i
  %i.dy = mul nuw i64 %.sroa.0.0.copyload, 136
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.lcssa, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !3304
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2z_14RowAddrTreeMap9row_addrs00EEEB2B_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2z_14RowAddrTreeMap9row_addrs00EEEB2B_.exit: ; preds = %bb.y, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2m_14RowAddrTreeMap9row_addrs00EENtNtNtBO_3ops4drop4Drop4dropB2o_.exit.i.thread, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs6_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_25IndexExprResultWireFormat6schema(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 1, !range !10, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsbjTsVCnQnhv_12lance_select6result22TWO_MASK_RESULT_SCHEMA, i64 8) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECsbjTsVCnQnhv_12lance_select.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNtCsbjTsVCnQnhv_12lance_select6result22TWO_MASK_RESULT_SCHEMA, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCsbjTsVCnQnhv_12lance_select6result22TWO_MASK_RESULT_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECsbjTsVCnQnhv_12lance_select.exit

bb.d:                                             ; preds = %bb.a
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsbjTsVCnQnhv_12lance_select6result27THREE_VARIANT_RESULT_SCHEMA, i64 8) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECsbjTsVCnQnhv_12lance_select.exit, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCsbjTsVCnQnhv_12lance_select6result27THREE_VARIANT_RESULT_SCHEMA, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCsbjTsVCnQnhv_12lance_select6result27THREE_VARIANT_RESULT_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECsbjTsVCnQnhv_12lance_select.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEE5force0ECsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ @_RNvNtCsbjTsVCnQnhv_12lance_select6result22TWO_MASK_RESULT_SCHEMA, %bb.c ], [ @_RNvNtCsbjTsVCnQnhv_12lance_select6result22TWO_MASK_RESULT_SCHEMA, %bb.b ], [ @_RNvNtCsbjTsVCnQnhv_12lance_select6result27THREE_VARIANT_RESULT_SCHEMA, %bb.d ], [ @_RNvNtCsbjTsVCnQnhv_12lance_select6result27THREE_VARIANT_RESULT_SCHEMA, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult11deserialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [72 x i8], align 8                ; 19 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %bb.b, label %.split143

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 576460752303423488
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 3
  br i1 %i.af, label %bb.f, label %.split

.split143:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %i.aa, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.465.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @121, ptr noundef nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.0218.0.copyload = load i64, ptr %i.y, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx220, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx223, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3335
  %i.ag = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #36, !noalias !3335 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsbjTsVCnQnhv_12lance_select.exit, !prof !6

bb.c:                                             ; preds = %.split143
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0218.0.copyload, 0
  br i1 %i.aj, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0218.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !3336
  br label %common.resume

common.resume:                                    ; preds = %bb.o, %bb.n, %bb.s, %bb.t, %bb.h, %bb.i, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ], [ %i.ar, %bb.i ], [ %i.bb, %bb.n ], [ %i.bb, %bb.o ], [ %.pn, %bb.s ], [ %.pn, %bb.t ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsbjTsVCnQnhv_12lance_select.exit: ; preds = %.split143
  store i64 %.sroa.0218.0.copyload, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx221, align 8
  %.sroa.6.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx224, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ak, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @7, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @122, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.j

.split:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.ad, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.471.0..sroa_idx, align 8
end_hunk_2
