Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.5?download=true
inline.NumInlined: 202
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCsksn9slvsHfS_10image_webp:bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCsksn9slvsHfS_10image_webp(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRaNtB6_7Display3fmtCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_7Display3fmtCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsksn9slvsHfS_10image_webp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([9 x i8]) align 1 captures(none) dereferenceable(9) initializes((0, 9)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, i8 0, i64 9, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecAhj4_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter11ChunksExacthENCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8             ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2 = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #17, !noalias !342
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = udiv i64 %.val, %.val2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 4)
  %i.h = load i64, ptr %i.b, align 8, !range !10, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !11, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.d, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj4_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #15
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj4_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not.i12.i.i.i.i.i = icmp ugt i64 %.val2, %.val
  br i1 %.not.i12.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj4_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val2, 4
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %i.s = sub i64 3, %.val
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.s, i64 -4)
  %i.u = add i64 %i.t, %.val                      ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 28
  %.sroa.05.0.copyload8 = ptrtoaddr ptr %.sroa.05.0.copyload to i64
  %i.x = sub i64 %.sroa.05.0.copyload8, %i.o
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 6 uses
  %i.y = shl i64 %n.vec, 2
  %i.z = sub i64 %.val, %i.y
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %.sroa.05.0.copyload, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.05.0.copyload, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !alias.scope !344, !noalias !345
  %wide.load9 = load <4 x i32>, ptr %i.ad, align 1, !alias.scope !344, !noalias !345
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 1, !noalias !346
  store <4 x i32> %wide.load9, ptr %i.af, align 1, !noalias !346
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph13 = phi i64 [ %.val, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.ph14 = phi ptr [ %.sroa.05.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i
  %i.ah = phi i64 [ %i.an, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i ], [ %.ph, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12 ] ; 2 uses
  %i.ai = phi i64 [ %i.al, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i ], [ %.ph13, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12 ]
  %i.aj = phi ptr [ %i.ak, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i ], [ %.ph14, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i.preheader12 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = add i64 %i.ai, -4                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %.sroa.02.0.copyload.i.i.us.i.i.i.i.i = load i32, ptr %i.aj, align 1, !alias.scope !344, !noalias !345
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  store i32 %.sroa.02.0.copyload.i.i.us.i.i.i.i.i, ptr %i.am, align 1, !noalias !346
  %i.an = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %.not.i.us.i.i.i.i.i = icmp ult i64 %i.al, 4
  br i1 %.not.i.us.i.i.i.i.i, label %.loopexit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i, !llvm.loop !339

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %.noexc.i.i.i.i.i unwind label %.body, !noalias !347

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.split.i.i.i.i.i
  unreachable

.body:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.r, align 8, !alias.scope !348, !noalias !347
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp.exit unwind label %bb.e

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i, %middle.block, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj4_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i
  %.val8.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAhj4_E7reserveCsksn9slvsHfS_10image_webp.exit.i.i ], [ %n.vec, %middle.block ], [ %i.an, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShAhj4_uNCNvNtCsksn9slvsHfS_10image_webp18lossless_transform30apply_color_indexing_transform0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB13_EE0E0E0B19_.exit.us.i.i.i.i.i ]
  store i64 %.val8.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !348, !noalias !347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsksn9slvsHfS_10image_webp.exit: ; preds = %.body
  resume { ptr, i32 } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjmEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerate9EnumerateINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4ItermEEEE9from_iterCsksn9slvsHfS_10image_webp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = ptrtoint ptr %.val2 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = lshr exact i64 %i.e, 2                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTjmEE7reserveCsksn9slvsHfS_10image_webp.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #15
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTjmEE7reserveCsksn9slvsHfS_10image_webp.exit.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq ptr %.val, %.val2
  br i1 %i.o, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTjmEE7reserveCsksn9slvsHfS_10image_webp.exit.i.i
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.e, 4
  br i1 %i.p, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.f, 4611686018427387902
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.q = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.aa, %.preheader.i.i ] ; 4 uses
  %i.r = phi i64 [ %.sroa.55.0.copyload, %.preheader.i.i.preheader.new ], [ %i.ab, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.q
  %.val15.i.i.i.i.i.i = load i32, ptr %i.s, align 4, !noalias !371, !noundef !4
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  store i64 %i.r, ptr %i.t, align 8, !noalias !372
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %.val15.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !372
  %i.v = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.w = add i64 %i.r, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.v
  %.val15.i.i.i.i.i.i.1 = load i32, ptr %i.x, align 4, !noalias !371, !noundef !4
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.v ; 2 uses
  store i64 %i.w, ptr %i.y, align 8, !noalias !372
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.val15.i.i.i.i.i.i.1, ptr %i.z, align 8, !noalias !372
  %i.aa = add nuw i64 %i.q, 2                     ; 2 uses
  %i.ab = add i64 %i.r, 2                         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %2 = and i64 %i.e, 4
  %lcmp.mod.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init7 = phi i64 [ %.sroa.55.0.copyload, %.preheader.i.i.preheader ], [ %i.ab, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.epil.init
  %.val15.i.i.i.i.i.i.epil = load i32, ptr %i.ac, align 4, !noalias !371, !noundef !4
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.epil.init ; 2 uses
  store i64 %.epil.init7, ptr %i.ad, align 8, !noalias !372
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.val15.i.i.i.i.i.i.epil, ptr %i.ae, align 8, !noalias !372
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTjmEE7reserveCsksn9slvsHfS_10image_webp.exit.i.i
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtCsj6eKBz9Db1c_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E3newCsksn9slvsHfS_10image_webp(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees_0INtB7_5FnMutTRTjRmEEE8call_mutBU_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvNtCsksn9slvsHfS_10image_webp14alpha_blending17do_alpha_blending(i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
