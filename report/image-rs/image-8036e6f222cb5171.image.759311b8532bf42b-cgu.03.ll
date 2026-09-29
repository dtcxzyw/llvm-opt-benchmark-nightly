Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEsc_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB1C_15LosslessDecoderINtNtNtBc_2io4util4TakeQINtNtB2G_6cursor6CursorRShEEE18read_huffman_codes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB51_3VectE14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !20, !noundef !7 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.not.i13.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i13.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB3q_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  switch i64 %.sroa.51.0.copyload, label %.lr.ph.split.i.preheader [
    i64 0, label %.lr.ph.split.us.i
    i64 1, label %.lr.ph.split.us.invoke.i
  ]

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br label %.lr.ph.split.us.invoke.i

.lr.ph.split.us.invoke.i:                         ; preds = %.lr.ph.split.us.i, %.lr.ph.i
  %i.c = phi ptr [ @51, %.lr.ph.split.us.i ], [ @52, %.lr.ph.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.51.0.copyload, i64 noundef %.sroa.51.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #40
          to label %.lr.ph.split.us.cont.i unwind label %bb.c, !noalias !1708

.lr.ph.split.us.cont.i:                           ; preds = %.lr.ph.split.us.invoke.i
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i
  %i.d = phi i64 [ %i.t, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.53.0.copyload, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.e = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.4.0.copyload, %.lr.ph.split.i.preheader ]
  %i.f = phi ptr [ %i.g, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.0.0.copyload, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.51.0.copyload
  %i.h = sub nuw i64 %i.e, %.sroa.51.0.copyload   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.i = load i8, ptr %i.f, align 1, !alias.scope !1709, !noalias !1710, !noundef !7
  %i.j = zext i8 %i.i to i16
  %i.k = shl nuw i16 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1709, !noalias !1710, !noundef !7
  %i.n = zext i8 %i.m to i16
  %i.o = or disjoint i16 %i.k, %i.n               ; 2 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = load i32, ptr %i.b, align 4, !noalias !1711, !noundef !7
  %.not3.i.i.i = icmp ugt i32 %i.q, %i.p
  br i1 %.not3.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.r = add nuw nsw i32 %i.p, 1
  store i32 %i.r, ptr %i.b, align 4, !noalias !1711
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %.lr.ph.split.i
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %i.d
  store i16 %i.o, ptr %i.s, align 2, !noalias !1712
  %i.t = add i64 %i.d, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %.sroa.51.0.copyload, %i.h
  br i1 %.not.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB3q_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.i

bb.c:                                             ; preds = %.lr.ph.split.us.invoke.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1708
  resume { ptr, i32 } %i.u

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB3q_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.t, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1708
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB1C_15LosslessDecoderQINtNtNtBc_2io4util4TakeQINtNtB2H_6cursor6CursorRShEEE18read_huffman_codes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3P_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB52_3VectE14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !20, !noundef !7 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.not.i13.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i13.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB3r_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB57_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  switch i64 %.sroa.51.0.copyload, label %.lr.ph.split.i.preheader [
    i64 0, label %.lr.ph.split.us.i
    i64 1, label %.lr.ph.split.us.invoke.i
  ]

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br label %.lr.ph.split.us.invoke.i

.lr.ph.split.us.invoke.i:                         ; preds = %.lr.ph.split.us.i, %.lr.ph.i
  %i.c = phi ptr [ @51, %.lr.ph.split.us.i ], [ @52, %.lr.ph.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.51.0.copyload, i64 noundef %.sroa.51.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #40
          to label %.lr.ph.split.us.cont.i unwind label %bb.c, !noalias !1727

.lr.ph.split.us.cont.i:                           ; preds = %.lr.ph.split.us.invoke.i
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i
  %i.d = phi i64 [ %i.t, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.53.0.copyload, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.e = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.4.0.copyload, %.lr.ph.split.i.preheader ]
  %i.f = phi ptr [ %i.g, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.0.0.copyload, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.51.0.copyload
  %i.h = sub nuw i64 %i.e, %.sroa.51.0.copyload   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.i = load i8, ptr %i.f, align 1, !alias.scope !1728, !noalias !1729, !noundef !7
  %i.j = zext i8 %i.i to i16
  %i.k = shl nuw i16 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1728, !noalias !1729, !noundef !7
  %i.n = zext i8 %i.m to i16
  %i.o = or disjoint i16 %i.k, %i.n               ; 2 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = load i32, ptr %i.b, align 4, !noalias !1730, !noundef !7
  %.not3.i.i.i = icmp ugt i32 %i.q, %i.p
  br i1 %.not3.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.r = add nuw nsw i32 %i.p, 1
  store i32 %i.r, ptr %i.b, align 4, !noalias !1730
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %.lr.ph.split.i
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %i.d
  store i16 %i.o, ptr %i.s, align 2, !noalias !1731
  %i.t = add i64 %i.d, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %.sroa.51.0.copyload, %i.h
  br i1 %.not.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB3r_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB57_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.i

bb.c:                                             ; preds = %.lr.ph.split.us.invoke.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1727
  resume { ptr, i32 } %i.u

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB3r_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB57_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.t, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1727
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAfj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.j = lshr exact i64 %i.g, 1
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j
  %i.l = getelementptr i8, ptr %i.a, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %i.l, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.a, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.h, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.h, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x float>, ptr %i.r, align 4, !alias.scope !1746, !noalias !1747
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x float>, ptr %i.t, align 4, !alias.scope !1746, !noalias !1747
  %strided.vec5 = shufflevector <8 x float> %wide.vec4, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %strided.vec, ptr %i.u, align 4, !alias.scope !1748, !noalias !1749
  store <4 x float> %strided.vec5, ptr %i.v, align 4, !alias.scope !1748, !noalias !1749
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1743

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub nsw i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load float, ptr %i.z, align 4, !noalias !1747, !noundef !7
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store float %.val15.i.prol, ptr %i.aa, align 4, !noalias !1750
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1744

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ag, align 4, !noalias !1747, !noundef !7
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store float %.val15.i, ptr %i.ah, align 4, !noalias !1750
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val15.i.1 = load float, ptr %i.aj, align 4, !noalias !1747, !noundef !7
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store float %.val15.i.1, ptr %i.al, align 4, !noalias !1750
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load float, ptr %i.an, align 4, !noalias !1747, !noundef !7
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store float %.val15.i.2, ptr %i.ap, align 4, !noalias !1750
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load float, ptr %i.ar, align 4, !noalias !1747, !noundef !7
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %.val15.i.3, ptr %i.at, align 4, !noalias !1750
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h
  br i1 %i.aw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph, !llvm.loop !1745

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1747
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAfj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.i, align 4, !noalias !1759, !noundef !7
  %i.j = invoke noundef i8 @_RNvXs3_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivefE14from_primitive(float noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1759

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i8 %i.j, ptr %i.k, align 1, !noalias !1760
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1759
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1759
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAfj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.i, align 4, !noalias !1769, !noundef !7
  %i.j = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1769

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %i.j, ptr %i.k, align 2, !noalias !1770
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1769
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1769
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.i, align 1, !noalias !1779, !noundef !7
  %i.j = invoke noundef float @_RNvXs7_NtCsa5QsYiPB8Gl_5image5colorfINtB5_13FromPrimitivehE14from_primitive(i8 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1779

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store float %i.j, ptr %i.k, align 4, !noalias !1780
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1779
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1779
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 1                         ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 10
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %scevgep2 = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = getelementptr i8, ptr %i.a, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -1
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.a, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 34
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.h, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k         ; 2 uses
  %n.vec = sub nsw i64 %i.h, %i.m                 ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec
  %i.o = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 22
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 26
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 30
  %i.au = load i8, ptr %i.p, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.av = load i8, ptr %i.r, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.aw = load i8, ptr %i.t, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.ax = load i8, ptr %i.v, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.ay = load i8, ptr %i.x, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.az = load i8, ptr %i.z, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.ba = load i8, ptr %i.ab, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bb = load i8, ptr %i.ad, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bc = load i8, ptr %i.af, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bd = load i8, ptr %i.ah, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.be = load i8, ptr %i.aj, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bf = load i8, ptr %i.al, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bg = load i8, ptr %i.an, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bh = load i8, ptr %i.ap, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bi = load i8, ptr %i.ar, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bj = load i8, ptr %i.at, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bk = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 1
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 2
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 3
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 4
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 5
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 6
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 7
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 8
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 9
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 10
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 11
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 12
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 13
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 14
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 15
  %i.ca = getelementptr i8, ptr %i.o, i64 %index
  store <16 x i8> %i.bz, ptr %i.ca, align 1, !alias.scope !1798, !noalias !1799
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1792

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.m, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cc = and i64 %i.h, 3                         ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = select i1 %i.cd, i64 4, i64 %i.cc
  %n.vec5 = sub nsw i64 %i.h, %i.ce               ; 3 uses
  %i.cf = add i64 %.sroa.5.0.copyload, %n.vec5
  %i.cg = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index6
  %i.ci = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %i.cm = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cn = getelementptr i8, ptr %i.cm, i64 6
  %i.co = load i8, ptr %i.ch, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cp = load i8, ptr %i.cj, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cq = load i8, ptr %i.cl, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cr = load i8, ptr %i.cn, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cs = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 1
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 2
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cr, i64 3
  %i.cw = getelementptr i8, ptr %i.cg, i64 %index6
  store <4 x i8> %i.cv, ptr %i.cw, align 1, !alias.scope !1798, !noalias !1799
  %index.next7 = add nuw i64 %index6, 4           ; 2 uses
  %i.cx = icmp eq i64 %index.next7, %n.vec5
  br i1 %i.cx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !1793

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.vector.body ] ; 4 uses
  %i.cy = sub i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.cy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.cz = phi i64 [ %i.dc, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.dd, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.da, align 1, !noalias !1797, !noundef !7
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.cz
  store i8 %.val15.i.prol, ptr %i.db, align 1, !noalias !1800
  %i.dc = add i64 %i.cz, 1                        ; 3 uses
  %i.dd = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1794

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dc, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dc, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dd, %vec.epilog.scalar.ph.prol ]
  %i.de = sub i64 %.sroa.01.0.i.ph, %i.h
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.dg = phi i64 [ %i.dv, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dw, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.dh, align 1, !noalias !1797, !noundef !7
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dg
  store i8 %.val15.i, ptr %i.di, align 1, !noalias !1800
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %.val15.i.1 = load i8, ptr %i.dk, align 1, !noalias !1797, !noundef !7
  %i.dl = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dg
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  store i8 %.val15.i.1, ptr %i.dm, align 1, !noalias !1800
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.val15.i.2 = load i8, ptr %i.do, align 1, !noalias !1797, !noundef !7
  %i.dp = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dg
  %i.dq = getelementptr i8, ptr %i.dp, i64 2
  store i8 %.val15.i.2, ptr %i.dq, align 1, !noalias !1800
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  %.val15.i.3 = load i8, ptr %i.ds, align 1, !noalias !1797, !noundef !7
  %i.dt = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dg
  %i.du = getelementptr i8, ptr %i.dt, i64 3
  store i8 %.val15.i.3, ptr %i.du, align 1, !noalias !1800
  %i.dv = add i64 %i.dg, 4                        ; 2 uses
  %i.dw = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.dx = icmp eq i64 %i.dw, %i.h
  br i1 %i.dx, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %vec.epilog.scalar.ph, !llvm.loop !1795

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.dv, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1797
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1809
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1809
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB1B_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io7encoder12ImageEncoder11write_image0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4H_13FlattenCompatppE9iter_fold7flattenB1n_uNCINvNvXsi_B4H_B4U_B3S_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB1p_EuNCINvNvB3S_8for_each4callhNCINvMsk_B2x_B2u_14extend_trustedINtB4H_7FlatMapBX_B1n_B1t_EE0E0E0E0EB1F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val8.i = load i8, ptr %i.j, align 1, !noalias !1824, !noundef !7
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %.val9.i = load i8, ptr %i.k, align 1, !noalias !1824, !noundef !7 ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %.val8.i to i16
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.val9.i to i16
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1824
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1824
  store i16 %.sroa.0.0.insert.insert.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1824
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1827
  store ptr %.sroa.5.0..sroa_idx.i.i.i, ptr %i.a, align 8, !noalias !1827
  store i64 2, ptr %i.h, align 8, !noalias !1827
  store ptr %2, ptr %i.i, align 8, !noalias !1827
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  store i64 1, ptr %i.b, align 8, !alias.scope !1830, !noalias !1831
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %.val9.i)
  store i64 2, ptr %i.b, align 8, !alias.scope !1830, !noalias !1831
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !1833, !noalias !1834, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noalias !1835, !noundef !7
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1824
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.i, align 2, !noalias !1844, !noundef !7
  %i.j = invoke noundef float @_RNvXs6_NtCsa5QsYiPB8Gl_5image5colorfINtB5_13FromPrimitivetE14from_primitive(i16 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1844

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store float %i.j, ptr %i.k, align 4, !noalias !1845
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1844
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1844
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.i, align 2, !noalias !1854, !noundef !7
  %i.j = invoke noundef i8 @_RNvXs5_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivetE14from_primitive(i16 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1854

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i8 %i.j, ptr %i.k, align 1, !noalias !1855
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1854
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1854
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 68
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 1           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.j = lshr exact i64 %i.g, 1
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j
  %i.l = getelementptr i8, ptr %i.a, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %i.l, i64 -2
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.a, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.h, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.h, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.vec = load <8 x i16>, ptr %i.r, align 2, !alias.scope !1870, !noalias !1871
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i16>, ptr %i.t, align 2, !alias.scope !1870, !noalias !1871
  %strided.vec5 = shufflevector <8 x i16> %wide.vec4, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [2 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <4 x i16> %strided.vec, ptr %i.u, align 2, !alias.scope !1872, !noalias !1873
  store <4 x i16> %strided.vec5, ptr %i.v, align 2, !alias.scope !1872, !noalias !1873
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1867

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i16, ptr %i.z, align 2, !noalias !1871, !noundef !7
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i16 %.val15.i.prol, ptr %i.aa, align 2, !noalias !1874
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1868

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub i64 %.sroa.01.0.i.ph, %i.h
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.ag, align 2, !noalias !1871, !noundef !7
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i16 %.val15.i, ptr %i.ah, align 2, !noalias !1874
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.val15.i.1 = load i16, ptr %i.aj, align 2, !noalias !1871, !noundef !7
  %i.ak = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i16 %.val15.i.1, ptr %i.al, align 2, !noalias !1874
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val15.i.2 = load i16, ptr %i.an, align 2, !noalias !1871, !noundef !7
  %i.ao = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  store i16 %.val15.i.2, ptr %i.ap, align 2, !noalias !1874
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.val15.i.3 = load i16, ptr %i.ar, align 2, !noalias !1871, !noundef !7
  %i.as = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 6
  store i16 %.val15.i.3, ptr %i.at, align 2, !noalias !1874
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h
  br i1 %i.aw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph, !llvm.loop !1869

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1871
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCINvNtB1r_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callhNCINvMsk_B3Y_B3V_14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 496                       ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 1984
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %scevgep2 = getelementptr i8, ptr %i.f, i64 %i.e
  %scevgep3 = getelementptr i8, ptr %0, i64 495
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 7936
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 72057594037927920        ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.j = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.k = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.z = getelementptr i8, ptr %i.j, i64 495
  %i.aa = getelementptr i8, ptr %i.k, i64 991
  %i.ab = getelementptr i8, ptr %i.l, i64 1487
  %i.ac = getelementptr i8, ptr %i.m, i64 1983
  %i.ad = getelementptr i8, ptr %i.n, i64 2479
  %i.ae = getelementptr i8, ptr %i.o, i64 2975
  %i.af = getelementptr i8, ptr %i.p, i64 3471
  %i.ag = getelementptr i8, ptr %i.q, i64 3967
  %i.ah = getelementptr i8, ptr %i.r, i64 4463
  %i.ai = getelementptr i8, ptr %i.s, i64 4959
  %i.aj = getelementptr i8, ptr %i.t, i64 5455
  %i.ak = getelementptr i8, ptr %i.u, i64 5951
  %i.al = getelementptr i8, ptr %i.v, i64 6447
  %i.am = getelementptr i8, ptr %i.w, i64 6943
  %i.an = getelementptr i8, ptr %i.x, i64 7439
  %i.ao = getelementptr i8, ptr %i.y, i64 7935
  %i.ap = load i8, ptr %i.z, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.aq = load i8, ptr %i.aa, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.ar = load i8, ptr %i.ab, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.as = load i8, ptr %i.ac, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.at = load i8, ptr %i.ad, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.au = load i8, ptr %i.ae, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.av = load i8, ptr %i.af, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.aw = load i8, ptr %i.ag, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.ax = load i8, ptr %i.ah, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.ay = load i8, ptr %i.ai, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.az = load i8, ptr %i.aj, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.ba = load i8, ptr %i.ak, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.bb = load i8, ptr %i.al, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.bc = load i8, ptr %i.am, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.bd = load i8, ptr %i.an, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.be = load i8, ptr %i.ao, align 1, !alias.scope !1890, !noalias !1891, !noundef !7
  %i.bf = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.bg = insertelement <16 x i8> %i.bf, i8 %i.aq, i64 1
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.ar, i64 2
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 3
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 4
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 5
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 6
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 7
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 8
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 9
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2282, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2282, !nonnull !7
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noalias !2282, !noundef !7 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.l
  br i1 %i.p, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2282
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2282, !noundef !7
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB4b_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !16, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB51_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2285, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2285, !nonnull !7
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noalias !2285, !noundef !7 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.l
  br i1 %i.p, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2285
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2285, !noundef !7
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB51_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB51_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_KB3K_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB1x_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !16, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2288, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2288, !nonnull !7
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noalias !2288, !noundef !7 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.l
  br i1 %i.p, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !noalias !2288
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %i.n, i64 %.val11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i64, ptr %i.r, align 8, !noalias !2288, !noundef !7
  %i.t = lshr i64 %i.s, 3
  %..i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 %.sroa.02.0.i) ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB2n_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBb_3cmp3Ord3minE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %..i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRjjjNCINvMNtCsaXAyoiiLu3Y_9zune_jpeg3mcuINtNtB16_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE22inner_decode_mcu_widthKb1_Kb0_E0NvYjNtNtBa_3cmp3Ord3minE0Csa5QsYiPB8Gl_5image.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3l_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callB3A_NCINvMsk_B12_INtB12_3VecB3A_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.not10.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload
  br i1 %.not.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = phi i64 [ %i.j, %.lr.ph.i ], [ %.sroa.42.0.copyload, %bb.a ] ; 2 uses
  %i.b = phi ptr [ %i.f, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !2298, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !14, !noalias !2298, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.copyload, i64 %i.a ; 5 uses
  store ptr %i.c, ptr %i.g, align 8, !noalias !2299
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.e, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2299
  %i.h = getelementptr i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.h, i8 0, i64 14, i1 false), !noalias !2300
  %i.i = getelementptr i8, ptr %i.g, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !noalias !2300
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2299
  %i.j = add i64 %i.a, 1                          ; 2 uses
  %.not.not.i = icmp eq ptr %i.f, %.sroa.6.0.copyload
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.42.0 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.j, %.lr.ph.i ]
  %i.k = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.k, label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsk_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBI_B4y_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.l = shl nuw i64 %.sroa.5.0.copyload, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !2298
  br label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsk_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBI_B4y_EE0E0E0ECsa5QsYiPB8Gl_5image.exit

_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsk_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBI_B4y_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.42.0, ptr %.sroa.01.0.copyload, align 8, !noalias !2298
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertENvMs1s_NtCs53gkmrwjETj_4tiff4tagsNtB1U_12SampleFormat19from_u16_exhaustiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callB2k_NCINvMsk_B12_INtB12_3VecB2k_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.not.not12.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload
  br i1 %.not.not12.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %2 = ptrtoaddr ptr %.sroa.6.0.copyload to i64
  %3 = ptrtoaddr ptr %.sroa.4.0.copyload to i64
  %i.a = add i64 %2, -2
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add nuw i64 %i.c, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 30
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.e = shl i64 %.sroa.42.0.copyload, 2          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = shl i64 %i.b, 1
  %i.g = and i64 %i.f, -4
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 %i.g
  %scevgep5 = getelementptr i8, ptr %i.i, i64 4
  %i.j = and i64 %i.b, -2
  %i.k = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.j
  %scevgep6 = getelementptr i8, ptr %i.k, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep6
  %bound1 = icmp ult ptr %.sroa.4.0.copyload, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.l = add i64 %.sroa.42.0.copyload, %n.vec     ; 2 uses
  %i.m = shl i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = add i64 %.sroa.42.0.copyload, %index     ; 2 uses
  %i.p = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !2317, !noalias !2318 ; 3 uses
  %wide.load7 = load <4 x i16>, ptr %i.q, align 2, !alias.scope !2317, !noalias !2318 ; 3 uses
  %i.r = add <4 x i16> %wide.load, splat (i16 -1)
  %i.s = add <4 x i16> %wide.load7, splat (i16 -1)
  %i.t = icmp ult <4 x i16> %i.r, splat (i16 4)
  %i.u = icmp ult <4 x i16> %i.s, splat (i16 4)
  %i.v = select <4 x i1> %i.t, <4 x i16> %wide.load, <4 x i16> splat (i16 5)
  %i.w = select <4 x i1> %i.u, <4 x i16> %wide.load7, <4 x i16> splat (i16 5)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o
  %i.y = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.o
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %interleaved.vec = shufflevector <4 x i16> %i.v, <4 x i16> %wide.load, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.x, align 2, !alias.scope !2319, !noalias !2320
  %interleaved.vec8 = shufflevector <4 x i16> %i.w, <4 x i16> %wide.load7, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec8, ptr %i.z, align 2, !alias.scope !2319, !noalias !2320
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  %.ph11 = phi ptr [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %i.ab = phi i64 [ %i.ah, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i ], [ %.ph11, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !2318, !noundef !7 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  %.off.i.i.i.i = add i16 %i.ad, -1
  %switch.i.i.i.i = icmp ult i16 %.off.i.i.i.i, 4
  %.sroa.0.0.i.i.i.i = select i1 %switch.i.i.i.i, i16 %i.ad, i16 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab ; 2 uses
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.af, align 2, !noalias !2320
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.ad, ptr %i.ag, align 2, !noalias !2320
  %i.ah = add i64 %i.ab, 1                        ; 2 uses
  %.not.not.i = icmp eq ptr %i.ae, %.sroa.6.0.copyload
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2314

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.sroa.42.0 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %i.ah, %.lr.ph.i ]
  %i.ai = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.ai, label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatuNvMs1s_B2C_B2A_19from_u16_exhaustiveNCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.aj = shl nuw i64 %.sroa.5.0.copyload, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 2) #33, !noalias !2321
  br label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatuNvMs1s_B2C_B2A_19from_u16_exhaustiveNCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit

_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatuNvMs1s_B2C_B2A_19from_u16_exhaustiveNCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.42.0, ptr %.sroa.01.0.copyload, align 8, !noalias !2318
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedINtNtNtB15_8adapters5chain5ChainBI_INtNtNtB17_5array4iter8IntoIterhKj2_EEE0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %.not.not = icmp eq ptr %i.e, %i.c
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !7
  invoke void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB1Y_9into_iter8IntoIterhEINtNtNtBb_5array4iter8IntoIterhKj2_EEE0E0INtB7_5FnMutTuhEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef %i.g)
          to label %bb.b unwind label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2330
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.m, align 8, !alias.scope !2331, !noundef !7 ; 2 uses
  %i.n = icmp eq i64 %.val6, 0
  br i1 %i.n, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val5 = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %.val6, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2332
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsdsTQD3x2eOp_3exr5block6reader22OnProgressChunksReaderINtB6_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuENtB6_12ChunksReader19decompress_parallelNCINvMNtNtNtBa_5image4read5imageINtB37_9ReadImageB2i_INtNtB39_6layers19ReadFirstValidLayerINtNtB39_17specific_channels13CollectPixelsINtB4w_19ReadOptionalChannelINtB4w_19ReadRequiredChannelIB5D_IB5D_NtNtB3b_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB7z_14OpenExrDecoderB1v_ENtNtNtB7D_2io7decoder12ImageDecoder10read_images0_0NCB7u_s1_0EEE11from_chunksINtB3b_5LayerINtB3b_16SpecificChannelsB6T_TNtNtNtBa_4meta9attribute18ChannelDescriptionBaA_BaA_INtNtB1C_6option6OptionBaA_EEEEB1v_Es_0EB7D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4400) %1, i1 noundef zeroext %2, ptr noalias nofree noundef align 8 dereferenceable(1376) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [136 x i8], align 8               ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 8 uses
  %i.g = alloca [96 x i8], align 8                ; 7 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %i.i = alloca [96 x i8], align 8                ; 7 uses
  %i.j = alloca [96 x i8], align 8                ; 8 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.822.i = alloca [72 x i8], align 8        ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [4408 x i8], align 8              ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [4288 x i8], align 8              ; 7 uses
  %i.p = alloca [96 x i8], align 8                ; 10 uses
  %i.q = alloca [96 x i8], align 8                ; 4 uses
  %i.r = alloca [4312 x i8], align 8              ; 6 uses
  %i.s = alloca [5 x i8], align 1                 ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [4296 x i8], align 8              ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.949 = alloca [32 x i8], align 8          ; 4 uses
  %.sroa.1051 = alloca [40 x i8], align 8         ; 2 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.830 = alloca [4392 x i8], align 8        ; 7 uses
  %i.aa = alloca [4472 x i8], align 8             ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4280
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2403, !noalias !2404, !noundef !7 ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 3                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink13.i.i.i = select i1 %i.ad, ptr %i.af, ptr %i.ai ; 2 uses
  %.sink12.i.i.i = select i1 %i.ad, i64 %i.ah, i64 %i.ac ; 2 uses
  %.idx = mul nuw nsw i64 %.sink12.i.i.i, 1424
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i, i64 %.idx
  %i.ak = icmp eq i64 %.sink12.i.i.i, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.an, i64 1424 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aj
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  %i.an = phi ptr [ %i.al, %bb.a ], [ %.sink13.i.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 1408
  %.val.i.i.i = load i32, ptr %i.ao, align 4, !range !2405, !noalias !2406, !noundef !7
  %i.ap = icmp eq i32 %.val.i.i.i, 0
end_hunk_2
