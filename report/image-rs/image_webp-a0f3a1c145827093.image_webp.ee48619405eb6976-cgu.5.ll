Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.5?download=true
inline.NumInlined: 202
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecAhj10_EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBW_E0EE9from_iterB2M_:bb.a
  %i.bf = add nuw nsw i64 %i.be, 4                ; 2 uses
  %.not.2.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bf, %.sroa.8.0.copyload.i
  br i1 %.not.2.i.i.i.i.i.i.i.i, label %.invoke, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.be
  %.sroa.04.0.copyload.2.i.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 1, !noalias !104
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.j
  %storemerge.2.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ %.sroa.04.0.copyload.2.i.i.i.i.i.i.i.i, %bb.l ]
  store i32 %storemerge.2.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !103
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.t, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit15.i.i.i.i.i.i, !noalias !105

.noexc10.i.i.i.i.i.i:                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %exitcond20.2.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 3
  br i1 %exitcond20.2.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj10_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc10.i.i.i.i.i.i
  %i.bh = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !104, !noundef !4
  %i.bi = mul i8 %i.bh, 3
  %i.bj = and i8 %i.bi, 7
  %i.bk = lshr i8 %i.w, %i.bj
  %i.bl = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !104, !noundef !4
  %i.bm = and i8 %i.bk, %i.bl                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.bn = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !104, !noundef !4
  %i.bo = icmp ult i8 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bp = zext i8 %i.bm to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 3 uses
  %i.br = add nuw nsw i64 %i.bq, 4                ; 2 uses
  %.not.3.i.i.i.i.i.i.i.i = icmp ugt i64 %i.br, %.sroa.8.0.copyload.i
  br i1 %.not.3.i.i.i.i.i.i.i.i, label %.invoke, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.bq
  %.sroa.04.0.copyload.3.i.i.i.i.i.i.i.i = load i32, ptr %i.bs, align 1, !noalias !104
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.m
  %storemerge.3.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.m ], [ %.sroa.04.0.copyload.3.i.i.i.i.i.i.i.i, %bb.o ]
  store i32 %storemerge.3.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !103
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.u, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit15.i.i.i.i.i.i, !noalias !105

.noexc11.i.i.i.i.i.i:                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %exitcond20.3.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 4
  br i1 %exitcond20.3.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj10_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc11.i.i.i.i.i.i
  %i.bt = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !104, !noundef !4
  %i.bu = shl i8 %i.bt, 2
  %i.bv = and i8 %i.bu, 4
  %i.bw = lshr i8 %i.w, %i.bv
  %i.bx = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !104, !noundef !4
  %i.by = and i8 %i.bw, %i.bx                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.bz = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !104, !noundef !4
  %i.ca = icmp ult i8 %i.by, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.f

bb.q:                                             ; preds = %bb.p
  %i.cb = zext i8 %i.by to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 3 uses
  %i.cd = add nuw nsw i64 %i.cc, 4                ; 2 uses
  %.not.4.i.i.i.i.i.i.i.i = icmp ugt i64 %i.cd, %.sroa.8.0.copyload.i
  br i1 %.not.4.i.i.i.i.i.i.i.i, label %.invoke, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.cc
  %.sroa.04.0.copyload.4.i.i.i.i.i.i.i.i = load i32, ptr %i.ce, align 1, !noalias !104
  br label %bb.f

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj10_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !107
  %i.cg = add nuw nsw i64 %.val4.i.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not.i.i.i.i.i.i = icmp eq i16 %i.v, %.val2.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecAhj10_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1N_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KB15_E0EE9from_iterB32_.exit, label %bb.c

.loopexit15.i.i.i.i.i.i:                          ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.1.i.i.i.i.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.invoke
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit15.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit15.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  store i64 %.val4.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !108, !noalias !105
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj10_EECsksn9slvsHfS_10image_webp.exit.i unwind label %bb.s, !noalias !95

bb.s:                                             ; preds = %.body.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !95
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj10_EECsksn9slvsHfS_10image_webp.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecAhj10_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1N_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KB15_E0EE9from_iterB32_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj10_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj10_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj10_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i.i ], [ %i.cg, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj10_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh2_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i ]
  store i64 %.val6.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !108, !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !95
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecAhj20_EINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBW_E0EE9from_iterB2M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 34 uses
  %i.b = alloca [32 x i8], align 1                ; 12 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !139
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load i16, ptr %i.f, align 8, !alias.scope !140, !noalias !141, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.val2.i = load i16, ptr %i.g, align 2, !alias.scope !142, !noalias !143, !noundef !4 ; 3 uses
  %narrow.i.i.i = tail call i16 @llvm.usub.sat.i16(i16 %.val2.i, i16 %.val.i)
  %.sink1.i.i.i = zext i16 %narrow.i.i.i to i64   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !139
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sink1.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 32), !noalias !139
  %i.h = load i64, ptr %i.d, align 8, !range !10, !noalias !139, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !11, !noalias !139, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj20_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !139
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #15, !noalias !139
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj20_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !139, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp uge i64 %i.k, %.sink1.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !139
  store i64 %i.k, ptr %i.e, align 8, !noalias !139
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !139
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !138, !noalias !144
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !138, !noalias !144 ; 8 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !138, !noalias !144 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !138, !noalias !144 ; 10 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !138, !noalias !144 ; 9 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !138, !noalias !144 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.r = icmp ult i16 %.val.i, %.val2.i
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecAhj20_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1N_3ops5range5RangetENCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KB15_E0EE9from_iterB32_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj20_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ec, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.034.i.i.i.i.i.i = phi i16 [ %.val.i, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.z = add i16 %.sroa.0.034.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !147
  %i.aa = trunc i16 %.sroa.0.034.i.i.i.i.i.i to i8 ; 9 uses
  %i.ab = load i64, ptr %.sroa.04.0.copyload.i, align 8, !noalias !148, !noundef !4 ; 9 uses
  %.not16.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not16.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i), "nonnull"(ptr %.sroa.55.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.ac = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.ad = and i8 %i.ac, %i.aa                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.ae = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.af = icmp ult i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ag = zext i8 %i.ad to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 4                ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ai, %.sroa.8.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.invoke, label %bb.e, !prof !6

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %bb.e ]
  store i32 %storemerge.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !147
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit19.i.i.i.i.i.i, !noalias !149

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  %exitcond20.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 1
  br i1 %exitcond20.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.ah
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 1, !noalias !148
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.ad, %bb.ab
  %storemerge.8.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.ab ], [ %.sroa.04.0.copyload.8.i.i.i.i.i.i.i.i, %bb.ad ]
  store i32 %storemerge.8.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !147
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.h, %bb.k, %bb.n, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.f
  %i.ak = phi i64 [ 32, %bb.f ], [ %i.dy, %bb.ac ], [ %i.dq, %bb.z ], [ %i.de, %bb.w ], [ %i.cs, %bb.t ], [ %i.cg, %bb.q ], [ %i.bu, %bb.n ], [ %i.bi, %bb.k ], [ %i.aw, %bb.h ], [ %i.ah, %bb.d ]
  %i.al = phi i64 [ 36, %bb.f ], [ %i.dz, %bb.ac ], [ %i.dr, %bb.z ], [ %i.df, %bb.w ], [ %i.ct, %bb.t ], [ %i.ch, %bb.q ], [ %i.bv, %bb.n ], [ %i.bj, %bb.k ], [ %i.ax, %bb.h ], [ %i.ai, %bb.d ]
  %i.am = phi i64 [ 32, %bb.f ], [ %.sroa.8.0.copyload.i, %bb.ac ], [ %.sroa.8.0.copyload.i, %bb.z ], [ %.sroa.8.0.copyload.i, %bb.w ], [ %.sroa.8.0.copyload.i, %bb.t ], [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sroa.8.0.copyload.i, %bb.n ], [ %.sroa.8.0.copyload.i, %bb.k ], [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.8.0.copyload.i, %bb.d ]
  %i.an = phi ptr [ @2, %bb.f ], [ @3, %bb.ac ], [ @3, %bb.z ], [ @3, %bb.w ], [ @3, %bb.t ], [ @3, %bb.q ], [ @3, %bb.n ], [ @3, %bb.k ], [ @3, %bb.h ], [ @3, %bb.d ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an) #17
          to label %.cont unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !149

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ao = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.aa, %i.ap
  %i.ar = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.as = and i8 %i.aq, %i.ar                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.at = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.au = icmp ult i8 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.1.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext i8 %i.as to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 3 uses
  %i.ax = add nuw nsw i64 %i.aw, 4                ; 2 uses
  %.not.1.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ax, %.sroa.8.0.copyload.i
  br i1 %.not.1.i.i.i.i.i.i.i.i, label %.invoke, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.aw
  %.sroa.04.0.copyload.1.i.i.i.i.i.i.i.i = load i32, ptr %i.ay, align 1, !noalias !148
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.1.i.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.1.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.g
  %storemerge.1.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.sroa.04.0.copyload.1.i.i.i.i.i.i.i.i, %bb.i ]
  store i32 %storemerge.1.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !147
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.s, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit19.i.i.i.i.i.i, !noalias !149

.noexc9.i.i.i.i.i.i:                              ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  %exitcond20.1.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 2
  br i1 %exitcond20.1.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc9.i.i.i.i.i.i
  %i.az = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.ba = shl i8 %i.az, 1
  %i.bb = and i8 %i.ba, 6
  %i.bc = lshr i8 %i.aa, %i.bb
  %i.bd = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.be = and i8 %i.bc, %i.bd                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.bf = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.bg = icmp ult i8 %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bh = zext i8 %i.be to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 3 uses
  %i.bj = add nuw nsw i64 %i.bi, 4                ; 2 uses
  %.not.2.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bj, %.sroa.8.0.copyload.i
  br i1 %.not.2.i.i.i.i.i.i.i.i, label %.invoke, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.bi
  %.sroa.04.0.copyload.2.i.i.i.i.i.i.i.i = load i32, ptr %i.bk, align 1, !noalias !148
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.j
  %storemerge.2.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ %.sroa.04.0.copyload.2.i.i.i.i.i.i.i.i, %bb.l ]
  store i32 %storemerge.2.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !147
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.t, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit19.i.i.i.i.i.i, !noalias !149

.noexc10.i.i.i.i.i.i:                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  %exitcond20.2.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 3
  br i1 %exitcond20.2.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc10.i.i.i.i.i.i
  %i.bl = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.bm = mul i8 %i.bl, 3
  %i.bn = and i8 %i.bm, 7
  %i.bo = lshr i8 %i.aa, %i.bn
  %i.bp = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.bq = and i8 %i.bo, %i.bp                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.br = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.bs = icmp ult i8 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bt = zext i8 %i.bq to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 3 uses
  %i.bv = add nuw nsw i64 %i.bu, 4                ; 2 uses
  %.not.3.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %.sroa.8.0.copyload.i
  br i1 %.not.3.i.i.i.i.i.i.i.i, label %.invoke, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.bu
  %.sroa.04.0.copyload.3.i.i.i.i.i.i.i.i = load i32, ptr %i.bw, align 1, !noalias !148
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.m
  %storemerge.3.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.m ], [ %.sroa.04.0.copyload.3.i.i.i.i.i.i.i.i, %bb.o ]
  store i32 %storemerge.3.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !147
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.u, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit19.i.i.i.i.i.i, !noalias !149

.noexc11.i.i.i.i.i.i:                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  %exitcond20.3.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 4
  br i1 %exitcond20.3.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc11.i.i.i.i.i.i
  %i.bx = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.by = shl i8 %i.bx, 2
  %i.bz = and i8 %i.by, 4
  %i.ca = lshr i8 %i.aa, %i.bz
  %i.cb = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.cc = and i8 %i.ca, %i.cb                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.cd = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.ce = icmp ult i8 %i.cc, %i.cd
  br i1 %i.ce, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.4.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.cf = zext i8 %i.cc to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2                ; 3 uses
  %i.ch = add nuw nsw i64 %i.cg, 4                ; 2 uses
  %.not.4.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ch, %.sroa.8.0.copyload.i
  br i1 %.not.4.i.i.i.i.i.i.i.i, label %.invoke, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 %i.cg
  %.sroa.04.0.copyload.4.i.i.i.i.i.i.i.i = load i32, ptr %i.ci, align 1, !noalias !148
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.4.i.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.4.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %storemerge.4.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.p ], [ %.sroa.04.0.copyload.4.i.i.i.i.i.i.i.i, %bb.r ]
  store i32 %storemerge.4.i.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !147
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.v, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit19.i.i.i.i.i.i, !noalias !149

.noexc12.i.i.i.i.i.i:                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  %exitcond20.4.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 5
  br i1 %exitcond20.4.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldtAhj20_uNCINvNtCsksn9slvsHfS_10image_webp18lossless_transform42apply_color_indexing_transform_small_tableKh3_KBX_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3Q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangetEB12_EE0E0E0B19_.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc12.i.i.i.i.i.i
  %i.cj = load i8, ptr %.sroa.4.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.ck = mul i8 %i.cj, 5
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.aa, %i.cl
  %i.cn = load i8, ptr %.sroa.55.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.co = and i8 %i.cm, %i.cn                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.cp = load i8, ptr %.sroa.6.0.copyload.i, align 1, !noalias !148, !noundef !4
  %i.cq = icmp ult i8 %i.co, %i.cp
  br i1 %i.cq, label %bb.t, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.5.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cr = zext i8 %i.co to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 3 uses
end_hunk_0
