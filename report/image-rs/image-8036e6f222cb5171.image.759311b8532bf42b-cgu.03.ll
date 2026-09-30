Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEsa_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image:bb.a
  %i.g = add i64 %i.d, -8                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %.sroa.01.0.copyload.i.i.us.i = load i64, ptr %i.e, align 1, !alias.scope !1654, !noalias !1655
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.c ; 2 uses
  store i8 5, ptr %i.h, align 8, !noalias !1656
  %.sroa.54.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.01.0.copyload.i.i.us.i, ptr %.sroa.54.0..sroa_idx.i.us.i, align 8, !noalias !1656
  %i.i = add i64 %i.c, 1                          ; 2 uses
  %.not.i.us.i = icmp ult i64 %i.g, 8
  br i1 %.not.i.us.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsa_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsa_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #40
          to label %.noexc.i unwind label %bb.b, !noalias !1657

.noexc.i:                                         ; preds = %.lr.ph.split.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1657
  resume { ptr, i32 } %i.j

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsa_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsa_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsa_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1657
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEsb_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i12.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i12.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsb_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.51.0.copyload, 4
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, label %.lr.ph.split.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i
  %i.b = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.53.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.c = phi i64 [ %i.f, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.4.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ]
  %i.d = phi ptr [ %i.e, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.0.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = add i64 %i.c, -4                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %.sroa.02.0.copyload.i.i.us.i = load i32, ptr %i.d, align 1, !alias.scope !1672, !noalias !1673
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.b ; 2 uses
  store i8 16, ptr %i.g, align 8, !noalias !1674
  %.sroa.54.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.02.0.copyload.i.i.us.i, ptr %.sroa.54.0..sroa_idx.i.us.i, align 4, !noalias !1674
  %i.h = add i64 %i.b, 1                          ; 2 uses
  %.not.i.us.i = icmp ult i64 %i.f, 4
  br i1 %.not.i.us.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsb_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #40
          to label %.noexc.i unwind label %bb.b, !noalias !1675

.noexc.i:                                         ; preds = %.lr.ph.split.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1675
  resume { ptr, i32 } %i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsb_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsb_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1675
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEsc_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i12.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i12.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsc_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = icmp eq i64 %.sroa.51.0.copyload, 8
  br i1 %i.b, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, label %.lr.ph.split.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i
  %i.c = phi i64 [ %i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.53.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.d = phi i64 [ %i.g, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.4.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ]
  %i.e = phi ptr [ %i.f, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.0.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = add i64 %i.d, -8                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %.sroa.01.0.copyload.i.i.us.i = load i64, ptr %i.e, align 1, !alias.scope !1690, !noalias !1691
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.c ; 2 uses
  store i8 17, ptr %i.h, align 8, !noalias !1692
  %.sroa.54.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.01.0.copyload.i.i.us.i, ptr %.sroa.54.0..sroa_idx.i.us.i, align 8, !noalias !1692
  %i.i = add i64 %i.c, 1                          ; 2 uses
  %.not.i.us.i = icmp ult i64 %i.g, 8
  br i1 %.not.i.us.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsc_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #40
          to label %.noexc.i unwind label %bb.b, !noalias !1693

.noexc.i:                                         ; preds = %.lr.ph.split.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1693
  resume { ptr, i32 } %i.j

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEsc_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEsc_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1693
  ret void
}

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
  %i.d = phi i64 [ %i.m, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.53.0.copyload, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.e = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.4.0.copyload, %.lr.ph.split.i.preheader ]
  %i.f = phi ptr [ %i.g, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.0.0.copyload, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.51.0.copyload
  %i.h = sub nuw i64 %i.e, %.sroa.51.0.copyload   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %2 = load i8, ptr %i.f, align 1, !alias.scope !1709, !noalias !1710, !noundef !7
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %6 = load i8, ptr %5, align 1, !alias.scope !1709, !noalias !1710, !noundef !7
  %7 = zext i8 %6 to i16
  %8 = or disjoint i16 %4, %7                     ; 2 uses
  %i.i = zext i16 %8 to i32                       ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !noalias !1711, !noundef !7
  %.not3.i.i.i = icmp ugt i32 %i.j, %i.i
  br i1 %.not3.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.k = add nuw nsw i32 %i.i, 1
  store i32 %i.k, ptr %i.b, align 4, !noalias !1711
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %.lr.ph.split.i
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %i.d
  store i16 %8, ptr %i.l, align 2, !noalias !1712
  %i.m = add i64 %i.d, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %.sroa.51.0.copyload, %i.h
  br i1 %.not.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB3q_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.i

bb.c:                                             ; preds = %.lr.ph.split.us.invoke.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1708
  resume { ptr, i32 } %i.n

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB3q_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.m, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderINtNtNtBa_2io4util4TakeQINtNtB28_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ]
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
  %i.d = phi i64 [ %i.m, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.53.0.copyload, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.e = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.4.0.copyload, %.lr.ph.split.i.preheader ]
  %i.f = phi ptr [ %i.g, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.0.0.copyload, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.51.0.copyload
  %i.h = sub nuw i64 %i.e, %.sroa.51.0.copyload   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %2 = load i8, ptr %i.f, align 1, !alias.scope !1728, !noalias !1729, !noundef !7
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %6 = load i8, ptr %5, align 1, !alias.scope !1728, !noalias !1729, !noundef !7
  %7 = zext i8 %6 to i16
  %8 = or disjoint i16 %4, %7                     ; 2 uses
  %i.i = zext i16 %8 to i32                       ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !noalias !1730, !noundef !7
  %.not3.i.i.i = icmp ugt i32 %i.j, %i.i
  br i1 %.not3.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.k = add nuw nsw i32 %i.i, 1
  store i32 %i.k, ptr %i.b, align 4, !noalias !1730
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %.lr.ph.split.i
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %i.d
  store i16 %8, ptr %i.l, align 2, !noalias !1731
  %i.m = add i64 %i.d, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %.sroa.51.0.copyload, %i.h
  br i1 %.not.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB3r_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB57_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.i

bb.c:                                             ; preds = %.lr.ph.split.us.invoke.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1727
  resume { ptr, i32 } %i.n

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB2m_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB3r_6cursor6CursorB2c_EEE18read_huffman_codes0NCINvNvBT_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB57_3VectE14extend_trustedINtB1J_3MapB3_B2h_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.m, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShtuNCNvMNtCsksn9slvsHfS_10image_webp8losslessINtB14_15LosslessDecoderQINtNtNtBa_2io4util4TakeQINtNtB29_6cursor6CursorBU_EEE18read_huffman_codes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4j_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0Csa5QsYiPB8Gl_5image.exit.i ]
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
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.a, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %bound0 = icmp ult ptr %i.j, %i.o
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.h, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec = sub nsw i64 %i.h, %i.r                 ; 3 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec
  %i.t = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %wide.vec = load <8 x float>, ptr %i.u, align 4, !alias.scope !1746, !noalias !1747
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x float>, ptr %i.w, align 4, !alias.scope !1746, !noalias !1747
  %strided.vec5 = shufflevector <8 x float> %wide.vec4, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.x = getelementptr [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %strided.vec, ptr %i.x, align 4, !alias.scope !1748, !noalias !1749
  store <4 x float> %strided.vec5, ptr %i.y, align 4, !alias.scope !1748, !noalias !1749
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1743

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aa = sub nsw i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ab = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.af, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load float, ptr %i.ac, align 4, !noalias !1747, !noundef !7
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %.val15.i.prol, ptr %i.ad, align 4, !noalias !1750
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  %i.af = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1744

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ai = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.aj, align 4, !noalias !1747, !noundef !7
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  store float %.val15.i, ptr %i.ak, align 4, !noalias !1750
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val15.i.1 = load float, ptr %i.am, align 4, !noalias !1747, !noundef !7
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  store float %.val15.i.1, ptr %i.ao, align 4, !noalias !1750
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val15.i.2 = load float, ptr %i.aq, align 4, !noalias !1747, !noundef !7
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store float %.val15.i.2, ptr %i.as, align 4, !noalias !1750
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.val15.i.3 = load float, ptr %i.au, align 4, !noalias !1747, !noundef !7
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  store float %.val15.i.3, ptr %i.aw, align 4, !noalias !1750
  %i.ax = add i64 %i.ai, 4                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.h
  br i1 %i.az, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph, !llvm.loop !1745

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaffE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
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
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_:bb.a
  %i.bm = load i8, ptr %i.aw, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.bn = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 1
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 2
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 3
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 4
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 5
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 6
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 7
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 8
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 9
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 10
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 11
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 12
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 13
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 14
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 15
  %i.cd = getelementptr i8, ptr %i.r, i64 %index
  store <16 x i8> %i.cc, ptr %i.cd, align 1, !alias.scope !1798, !noalias !1799
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1792

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cf = and i64 %i.h, 3                         ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 4, i64 %i.cf
  %n.vec5 = sub nsw i64 %i.h, %i.ch               ; 3 uses
  %i.ci = add i64 %.sroa.5.0.copyload, %n.vec5
  %i.cj = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index6
  %i.cl = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cm = getelementptr i8, ptr %i.cl, i64 2
  %i.cn = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cq = getelementptr i8, ptr %i.cp, i64 6
  %i.cr = load i8, ptr %i.ck, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cs = load i8, ptr %i.cm, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.ct = load i8, ptr %i.co, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cu = load i8, ptr %i.cq, align 1, !alias.scope !1796, !noalias !1797, !noundef !7
  %i.cv = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 1
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.ct, i64 2
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 3
  %i.cz = getelementptr i8, ptr %i.cj, i64 %index6
  store <4 x i8> %i.cy, ptr %i.cz, align 1, !alias.scope !1798, !noalias !1799
  %index.next7 = add nuw i64 %index6, 4           ; 2 uses
  %i.da = icmp eq i64 %index.next7, %n.vec5
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !1793

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.vector.body ] ; 4 uses
  %i.db = sub i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.db, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.dc = phi i64 [ %i.df, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.dg, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.dd, align 1, !noalias !1797, !noundef !7
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  store i8 %.val15.i.prol, ptr %i.de, align 1, !noalias !1800
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  %i.dg = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1794

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.df, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.df, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dg, %vec.epilog.scalar.ph.prol ]
  %i.dh = sub i64 %.sroa.01.0.i.ph, %i.h
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.dj = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dz, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.dk, align 1, !noalias !1797, !noundef !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  store i8 %.val15.i, ptr %i.dl, align 1, !noalias !1800
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.val15.i.1 = load i8, ptr %i.dn, align 1, !noalias !1797, !noundef !7
  %i.do = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  store i8 %.val15.i.1, ptr %i.dp, align 1, !noalias !1800
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.val15.i.2 = load i8, ptr %i.dr, align 1, !noalias !1797, !noundef !7
  %i.ds = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  %i.dt = getelementptr i8, ptr %i.ds, i64 2
  store i8 %.val15.i.2, ptr %i.dt, align 1, !noalias !1800
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  %.val15.i.3 = load i8, ptr %i.dv, align 1, !noalias !1797, !noundef !7
  %i.dw = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  %i.dx = getelementptr i8, ptr %i.dw, i64 3
  store i8 %.val15.i.3, ptr %i.dx, align 1, !noalias !1800
  %i.dy = add i64 %i.dj, 4                        ; 2 uses
  %i.dz = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.ea = icmp eq i64 %i.dz, %i.h
  br i1 %i.ea, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %vec.epilog.scalar.ph, !llvm.loop !1795

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.dy, %vec.epilog.scalar.ph ]
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
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

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
  %.val15.i = load i8, ptr %i.i, align 1, !noalias !1809, !noundef !7
  %i.j = invoke noundef i16 @_RNvXs8_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivehE14from_primitive(i8 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1809

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %i.j, ptr %i.k, align 2, !noalias !1810
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
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
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val8.i = load i8, ptr %i.j, align 1, !noalias !1824, !noundef !7
  %3 = getelementptr i8, ptr %i.j, i64 1
  %.val9.i = load i8, ptr %3, align 1, !noalias !1824, !noundef !7 ; 2 uses
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
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !1833, !noalias !1834, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !noalias !1835, !noundef !7
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1824
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit, label %bb.c

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
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.a, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %bound0 = icmp ult ptr %i.j, %i.o
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.h, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec = sub nsw i64 %i.h, %i.r                 ; 3 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec
  %i.t = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.vec = load <8 x i16>, ptr %i.u, align 2, !alias.scope !1870, !noalias !1871
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i16>, ptr %i.w, align 2, !alias.scope !1870, !noalias !1871
  %strided.vec5 = shufflevector <8 x i16> %wide.vec4, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.x = getelementptr [2 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <4 x i16> %strided.vec, ptr %i.x, align 2, !alias.scope !1872, !noalias !1873
  store <4 x i16> %strided.vec5, ptr %i.y, align 2, !alias.scope !1872, !noalias !1873
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1867

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aa = sub i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ab = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.af, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i16, ptr %i.ac, align 2, !noalias !1871, !noundef !7
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store i16 %.val15.i.prol, ptr %i.ad, align 2, !noalias !1874
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  %i.af = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1868
end_hunk_1
begin_hunk_2_@_RINvMs2_CsPkZ9TkQnmq_10rayon_coreNtB6_17ThreadPoolBuilder11thread_nameNCNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1g_25ParallelBlockDecompressorINtB1g_22OnProgressChunksReaderINtB1g_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuEE3new00ECsa5QsYiPB8Gl_5image

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsPkZ9TkQnmq_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f32(float) #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQFdEuINtB7_5FnMutTdEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs4_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE7skip_toCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs0_NtCsdsTQD3x2eOp_3exr4mathINtB5_4Vec2jE6to_i32(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXs1_NtCsdsTQD3x2eOp_3exr4mathINtB5_4Vec2lENtNtNtCsj6eKBz9Db1c_4core3ops5arith3Add3addCsa5QsYiPB8Gl_5image(i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implfECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression32decompress_image_section_from_le(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1424), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsdsTQD3x2eOp_3exr5errorNtB3_5Error11unsupportedReECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newReEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsdsTQD3x2eOp_3exr4metaNtB5_8MetaData37read_validated_from_buffered_peekableINtNtB7_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([4296 x i8]) align 8 captures(none) dereferenceable(4296), ptr noalias nofree noundef align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE6removeCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCsaKJjC64KgbL_3std4timeNtB5_7InstantNtNtNtCsj6eKBz9Db1c_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #29

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #30

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #31

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB28_5error5ErrorEEE13new_zeroed_inCsa5QsYiPB8Gl_5image() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now() unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #33

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs5_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_6SenderINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1u_5error5ErrorEENtNtBT_5clone5Clone5cloneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsg_NtNtCsaKJjC64KgbL_3std4sync4mpmcINtB5_8ReceiverINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs3s7QNvxKlGF_10num_bigint(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1R_NtNtNtB6_3ffi6os_str8OsStringEEENCNvMsd_BQ_BN_3new0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtB6_11collections4hash3map7HashMapNtNtNtB6_3ffi6os_str8OsStringINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtB1o_3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB1o_6result6ResultIB35_DNtNtNtB4d_2io7decoder12ImageDecoderEL0_ENtNtB4d_5error10ImageErrorENtNtB1o_6marker4SendNtB6G_4SyncEL_EEEENCNvMsd_BQ_BN_3new0EB4d_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCs4wP2HXfJTCR_5alloc6string6StringEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minimumnum.f32(float, float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f32(float) #24

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsdsTQD3x2eOp_3exr5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXs2_NtCsdsTQD3x2eOp_3exr4mathINtB5_4Vec2lENtNtNtCsj6eKBz9Db1c_4core3ops5arith3Sub3subCsa5QsYiPB8Gl_5image(i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read6levelsINtB3_16ReadLargestLevelNtNtB5_7samples15ReadFlatSamplesE13rgba_channelsffffNCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB24_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB28_2io7decoder12ImageDecoder10read_images0_0NCB1Z_s1_0INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB28_(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCsdsTQD3x2eOp_3exr5image4read5imageINtB3_9ReadImageFdEuINtNtB5_6layers19ReadFirstValidLayerINtNtB5_17specific_channels13CollectPixelsINtB1F_19ReadOptionalChannelINtB1F_19ReadRequiredChannelIB2L_IB2L_NtNtB7_9recursive8NoneMorefEfEfEfETffffEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfENCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4G_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB4K_2io7decoder12ImageDecoder10read_images0_0NCB4B_s1_0EEE11from_chunksINtB7_5LayerINtB7_16SpecificChannelsB40_TNtNtNtB9_4meta9attribute18ChannelDescriptionB8m_B8m_INtNtB5N_6option6OptionB8m_EEEEB5G_EB4K_(ptr dead_on_unwind noalias nofree noundef writable sret([1320 x i8]) align 8 captures(none) dereferenceable(1320), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4344)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minimumnum.v4f32(<4 x float>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maximumnum.v4f32(<4 x float>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fptoui.sat.v4i32.v4f32(<4 x float>) #24

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nounwind }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { noinline }
attributes #39 = { cold noreturn nounwind }
attributes #40 = { noinline noreturn }
attributes #41 = { inlinehint }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !"_RNvXs12_NtNtCsj6eKBz9Db1c_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!1 = distinct !{!1, !0, !"_RNvXs12_NtNtCsj6eKBz9Db1c_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2 = distinct !{!2, !0, !"_RNvXs12_NtNtCsj6eKBz9Db1c_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!7 = !{}
!8 = !{i64 0, i64 3}
!9 = !{i64 -1, i64 4}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{i8 0, i8 3}
!13 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{i64 -2, i64 -9223372036854775808}
!16 = !{i64 8}
!17 = !{i64 1, i64 536870913}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{i64 0, i64 2}
!20 = !{i64 4}
!21 = !{i64 -2, i64 -9223372036854775805}
!22 = !{i64 -1, i64 -9223372036854775808}
!23 = !{i8 0, i8 4}
!24 = !{i64 0, i64 -9223372036854775805}
!25 = !{i8 -1, i8 10}
!26 = !{i64 -1, i64 -9223372036854775786}
!27 = !{!1}
!28 = !{!2}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 4001, i32 4000000}
!32 = !{i64 0, i64 -9223372036854775807}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"branch_weights", i32 4, i32 12}
!35 = !{!"branch_weights", i32 2002, i32 2000}
!36 = !{i32 -1, i32 1000000000}
!37 = !{!"branch_weights", i32 4000000, i32 4001}
!38 = !{!"branch_weights", i32 1, i32 4001}
!39 = distinct !{!39, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image"}
!40 = distinct !{!40, !39, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 1"}
!41 = distinct !{!41, !39, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 0"}
!42 = distinct !{!42, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image"}
!43 = distinct !{!43, !42, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 1"}
!44 = distinct !{!44, !42, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 0"}
!45 = distinct !{!45, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image"}
!46 = distinct !{!46, !45, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 1"}
!47 = distinct !{!47, !45, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 0"}
!48 = distinct !{!48, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image"}
!49 = distinct !{!49, !48, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 1"}
!50 = distinct !{!50, !48, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 0"}
!51 = distinct !{!51, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image"}
!52 = distinct !{!52, !51, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 1"}
!53 = distinct !{!53, !51, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 0"}
!54 = distinct !{!54, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image"}
!55 = distinct !{!55, !54, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 1"}
!56 = distinct !{!56, !54, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 0"}
!57 = distinct !{!57, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image"}
!58 = distinct !{!58, !57, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 1"}
!59 = distinct !{!59, !57, !"_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image: argument 0"}
!60 = distinct !{!60, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image"}
!61 = distinct !{!61, !60, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 1"}
!62 = distinct !{!62, !60, !"_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEINtNtCslM68MWqqr2K_4lebe2io10ReadEndianlE23read_from_little_endianCsa5QsYiPB8Gl_5image: argument 0"}
!63 = !{!44, !43, !41, !40}
!64 = !{!44, !41}
!65 = !{!50, !49, !47, !46}
!66 = !{!50, !47}
!67 = !{!56, !55, !53, !52}
!68 = !{!56, !53}
!69 = !{!62, !61, !59, !58}
!70 = !{!62, !59}
!71 = distinct !{!71, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image"}
!72 = distinct !{!72, !71, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image: argument 1"}
!73 = distinct !{!73, !71, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image: argument 0"}
!74 = distinct !{!74, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image"}
!75 = distinct !{!75, !74, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image: argument 1"}
!76 = distinct !{!76, !74, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image: argument 0"}
!77 = distinct !{!77, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image"}
!78 = distinct !{!78, !77, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image: argument 0"}
!79 = distinct !{!79, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image"}
!80 = distinct !{!80, !79, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image: argument 1"}
!81 = distinct !{!81, !79, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image: argument 0"}
!82 = distinct !{!82, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image"}
!83 = distinct !{!83, !82, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image: argument 0"}
!84 = distinct !{!84, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!85 = distinct !{!85, !84, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!86 = distinct !{!86, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!87 = distinct !{!87, !86, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!88 = distinct !{!88, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!89 = distinct !{!89, !88, !"_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!90 = distinct !{!90, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!91 = distinct !{!91, !90, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!92 = distinct !{!92, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image"}
!93 = distinct !{!93, !92, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image: argument 1"}
!94 = distinct !{!94, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!95 = distinct !{!95, !94, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!96 = distinct !{!96, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image"}
!97 = distinct !{!97, !96, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyE8push_mutCsa5QsYiPB8Gl_5image: argument 0"}
!98 = distinct !{!98, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!99 = distinct !{!99, !98, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!100 = distinct !{!100, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image"}
!101 = distinct !{!101, !100, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image: argument 0"}
!102 = distinct !{!102, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image"}
!103 = distinct !{!103, !102, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsa5QsYiPB8Gl_5image: argument 0"}
!104 = !{!72}
!105 = !{!73}
!106 = !{!75}
!107 = !{!76}
!108 = !{!78}
!109 = !{!80}
!110 = !{!81}
!111 = !{!"branch_weights", !"expected", i32 2130644933, i32 16838715}
!112 = !{!85, !83}
!113 = !{!83}
!114 = !{!87}
!115 = !{!89}
!116 = !{!91}
!117 = !{!93}
!118 = !{!95}
!119 = !{!97}
!120 = !{!99}
!121 = !{!101}
!122 = !{!103}
!123 = distinct !{!123, !"_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image"}
!124 = distinct !{!124, !123, !"_RNvXsl_NtNtCsj6eKBz9Db1c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB1h_25ParallelBlockDecompressorINtB1h_22OnProgressChunksReaderINtB1h_20FilteredChunksReaderINtNtNtB9_2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCsa5QsYiPB8Gl_5image: argument 0"}
!125 = distinct !{!125, !"_RNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB7_25ParallelBlockDecompressorINtB7_22OnProgressChunksReaderINtB7_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0Csa5QsYiPB8Gl_5image"}
!126 = distinct !{!126, !125, !"_RNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB7_25ParallelBlockDecompressorINtB7_22OnProgressChunksReaderINtB7_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuEE21decompress_next_block0Csa5QsYiPB8Gl_5image: argument 0"}
!127 = distinct !{!127, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image"}
!128 = distinct !{!128, !127, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataEECsa5QsYiPB8Gl_5image: argument 0"}
!129 = distinct !{!129, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image"}
!130 = distinct !{!130, !129, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image: argument 0"}
!131 = distinct !{!131, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image"}
!132 = distinct !{!132, !131, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorIBC_NtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1P_5error5ErrorEEEECsa5QsYiPB8Gl_5image: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1K_5error5ErrorEEECsa5QsYiPB8Gl_5image"}
!134 = distinct !{!134, !133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1K_5error5ErrorEEECsa5QsYiPB8Gl_5image: argument 0"}
!135 = distinct !{!135, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image"}
!136 = distinct !{!136, !135, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image: argument 0"}
!137 = distinct !{!137, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockECsa5QsYiPB8Gl_5image"}
!138 = distinct !{!138, !137, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockECsa5QsYiPB8Gl_5image: argument 0"}
!139 = distinct !{!139, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image"}
end_hunk_2
