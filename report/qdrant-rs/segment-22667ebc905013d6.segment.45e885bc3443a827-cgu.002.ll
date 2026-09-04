Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6m_3VechE14extend_trustedBN_E0E0EB2U_:bb.a
  %i.x = fcmp ogt <4 x float> %i.w, splat (float 1.270000e+02)
  %i.y = select <4 x i1> %i.x, <4 x float> splat (float 1.270000e+02), <4 x float> %i.w
  %i.z = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.y)
  %i.aa = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.z)
  %i.ab = getelementptr i8, ptr %i.r, i64 %index
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !alias.scope !10172, !noalias !10173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !10166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ad = phi i64 [ %i.ao, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.ap, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ae, align 4, !noalias !10171, !noundef !5
  %i.af = load float, ptr %i.k, align 4, !noalias !10169, !noundef !5
  %i.ag = fsub float %.val15.i, %i.af
  %i.ah = load float, ptr %i.l, align 8, !noalias !10169, !noundef !5
  %i.ai = fdiv float %i.ag, %i.ah                 ; 2 uses
  %i.aj = fcmp olt float %i.ai, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.aj, float 0.000000e+00, float %i.ai ; 2 uses
  %i.ak = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.ak, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.al = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.am = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ad
  store i8 %i.am, ptr %i.an, align 1, !noalias !10174
  %i.ao = add i64 %i.ad, 1                        ; 2 uses
  %i.ap = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.j
  br i1 %i.aq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %scalar.ph, !llvm.loop !10167

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %i.ao, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10171
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2u_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3H_3VecfE14extend_trustedBN_E0E0EB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.l = and i64 %i.i, -4                         ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %scevgep2 = getelementptr i8, ptr %i.m, i64 %i.l ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l
  %scevgep4 = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.a, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %scevgep, %scevgep4
  %bound16 = icmp ult ptr %i.e, %scevgep2
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !alias.scope !10189, !noalias !10190, !noundef !5
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.q, align 4, !alias.scope !10191, !noalias !10192
  %i.r = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %index
  store <4 x float> %i.r, ptr %i.s, align 4, !alias.scope !10193, !noalias !10194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !10187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.u = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.v, align 4, !noalias !10192, !noundef !5
  %i.w = load float, ptr %i.e, align 4, !noalias !10190, !noundef !5
  %i.x = fdiv float %.val15.i.prol, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.x, ptr %i.y, align 4, !noalias !10195
  %i.z = add i64 %.ph, 1                          ; 2 uses
  %i.aa = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.j, %.neg
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.an, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ao, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ad, align 4, !noalias !10192, !noundef !5
  %i.ae = load float, ptr %i.e, align 4, !noalias !10190, !noundef !5
  %i.af = fdiv float %.val15.i, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store float %i.af, ptr %i.ag, align 4, !noalias !10195
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.val15.i.1 = load float, ptr %i.ai, align 4, !noalias !10192, !noundef !5
  %i.aj = load float, ptr %i.e, align 4, !noalias !10190, !noundef !5
  %i.ak = fdiv float %.val15.i.1, %i.aj
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 4
  store float %i.ak, ptr %i.am, align 4, !noalias !10195
  %i.an = add i64 %i.ac, 2                        ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.j
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !10188

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.an, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10192
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement20slice_from_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3c_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VechE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %scevgep2 = getelementptr i8, ptr %i.f, i64 %i.e
  %i.g = and i64 %i.d, -4
  %scevgep3 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x float>, ptr %i.j, align 4, !alias.scope !10209, !noalias !10210
  %wide.load.a = load <4 x float>, ptr %3, align 4, !alias.scope !10209, !noalias !10210
  %4 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load)
  %i.k = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load.a)
  %5 = getelementptr i8, ptr %i.i, i64 %index     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <4 x i8> %4, ptr %5, align 1, !alias.scope !10211, !noalias !10212
  store <4 x i8> %i.k, ptr %i.l, align 1, !alias.scope !10211, !noalias !10212
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !10207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.n = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.o, align 4, !noalias !10210, !noundef !5
  %i.p = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.prol)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.p, ptr %i.q, align 1, !noalias !10213
  %i.r = add i64 %.ph, 1                          ; 2 uses
  %i.s = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.t = icmp eq i64 %i.e, %.neg
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.u = phi i64 [ %i.ad, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ae, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.v, align 4, !noalias !10210, !noundef !5
  %i.w = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.u
  store i8 %i.w, ptr %i.x, align 1, !noalias !10213
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.val15.i.1 = load float, ptr %i.z, align 4, !noalias !10210, !noundef !5
  %i.aa = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.1)
  %i.ab = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  store i8 %i.aa, ptr %i.ac, align 1, !noalias !10213
  %i.ad = add i64 %i.u, 2                         ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.e
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10208

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ad, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10210
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement22from_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4r_3VechE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %scevgep2 = getelementptr i8, ptr %i.f, i64 %i.e
  %i.g = and i64 %i.d, -4
  %scevgep3 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x float>, ptr %i.j, align 4, !alias.scope !10227, !noalias !10228
  %wide.load.a = load <4 x float>, ptr %3, align 4, !alias.scope !10227, !noalias !10228
  %4 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load)
  %i.k = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load.a)
  %5 = getelementptr i8, ptr %i.i, i64 %index     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <4 x i8> %4, ptr %5, align 1, !alias.scope !10229, !noalias !10230
  store <4 x i8> %i.k, ptr %i.l, align 1, !alias.scope !10229, !noalias !10230
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !10225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.n = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.o, align 4, !noalias !10228, !noundef !5
  %i.p = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.prol)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.p, ptr %i.q, align 1, !noalias !10231
  %i.r = add i64 %.ph, 1                          ; 2 uses
  %i.s = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.t = icmp eq i64 %i.e, %.neg
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.u = phi i64 [ %i.ad, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ae, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.v, align 4, !noalias !10228, !noundef !5
  %i.w = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.u
  store i8 %i.w, ptr %i.x, align 1, !noalias !10231
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.val15.i.1 = load float, ptr %i.z, align 4, !noalias !10228, !noundef !5
  %i.aa = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.1)
  %i.ab = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  store i8 %i.aa, ptr %i.ac, align 1, !noalias !10231
  %i.ad = add i64 %i.u, 2                         ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.e
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10226

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ad, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10228
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveNtNtCseUPaKcRZYeZ_4half8binary163f16NtB1w_22PrimitiveVectorElement20slice_from_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB2i_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB50_3VecB2i_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bi, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bj, %bb.p ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10244)
  %i.g = load float, ptr %i.f, align 4, !alias.scope !10245, !noalias !10246, !noundef !5 ; 2 uses
  %i.h = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !10247 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, !prof !31

.split.i.i.i:                                     ; preds = %bb.c
  %i.j = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !10248

.noexc.i:                                         ; preds = %.split.i.i.i
  %i.k = and i128 %i.j, 18014398509481984
  %.not1.i.i.i = icmp eq i128 %i.k, 0
  br i1 %.not1.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.c
  %i.l = and i64 %i.h, 18014398509481984
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.m = bitcast float %i.g to i32                ; 5 uses
  %i.n = and i32 %i.m, -2147483648                ; 2 uses
  %i.o = and i32 %i.m, 2139095040                 ; 6 uses
  %i.p = and i32 %i.m, 8388607                    ; 4 uses
  %i.q = icmp eq i32 %i.o, 2139095040
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.p, 0
  %..i.i.i.i = select i1 %i.r, i32 0, i32 512
  %i.s = lshr exact i32 %i.n, 16
  %i.t = lshr i32 %i.p, 13
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or i32 %i.u, %..i.i.i.i
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = or disjoint i16 %i.w, 31744
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.y = lshr exact i32 %i.n, 16                  ; 4 uses
  %i.z = lshr exact i32 %i.o, 23                  ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.o, 1191182336
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.o, 947912704
  br i1 %i.ab, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = trunc nuw i32 %i.y to i16
  %i.ad = or disjoint i16 %i.ac, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ae = lshr exact i32 %i.o, 13
  %i.af = add nuw nsw i32 %i.ae, 16384
  %i.ag = lshr i32 %i.p, 13
  %i.ah = and i32 %i.m, 4096
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = and i32 %i.m, 12287
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ak
  %i.al = or disjoint i32 %i.af, %i.ag
  %i.am = or i32 %i.al, %i.y
  %i.an = trunc i32 %i.am to i16
  %i.ao = zext i1 %or.cond.not.i.i.i.i to i16
  %spec.select7.i.i.i.i = add i16 %i.an, %i.ao
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.ap = icmp samesign ult i32 %i.o, 855638016
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = sub nsw i32 126, %i.z
  %i.ar = or disjoint i32 %i.p, 8388608           ; 3 uses
  %i.as = lshr i32 %i.ar, %i.aq                   ; 2 uses
  %i.at = sub nsw i32 29, %i.z
  %i.au = and i32 %i.at, 31                       ; 2 uses
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.av, %i.ar
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = trunc nuw i32 %i.y to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = shl i32 3, %i.au
  %i.ba = add nuw i32 %i.az, 16777215
  %i.bb = and i32 %i.ba, %i.ar
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.as, %i.bd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %spec.select.i.i.i.i, %bb.m ]
  %i.be = or i32 %.sroa.03.0.i.i.i.i, %i.y
  %i.bf = trunc nuw i32 %i.be to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.bg = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.g) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i = phi i16 [ %i.bg, %bb.o ], [ %i.x, %bb.e ], [ %i.ad, %bb.h ], [ %i.ay, %bb.l ], [ %i.bf, %bb.n ], [ %spec.select7.i.i.i.i, %bb.i ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i, ptr %i.bh, align 2, !noalias !10249
  %i.bi = add i64 %.val10.i, 1                    ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.e
  br i1 %i.bk, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.c

end_hunk_0
