Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta12sequence_end8has_comeRShECsa5QsYiPB8Gl_5image:bb.a
  br label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !719, !noalias !720, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !719, !noalias !720, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = add nsw i64 %i.c, -1
  %i.h = load i8, ptr %i.e, align 1, !noalias !729, !noundef !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.4.0.i.i.i.i = phi i8 [ %i.h, %bb.d ], [ undef, %bb.c ]
  %.sink9.i.i.i.i.i = phi ptr [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  %.sink.i.i.i.i.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %storemerge.i.i.i.i.i = phi i8 [ 0, %bb.d ], [ 1, %bb.c ]
  store ptr %.sink9.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !719, !noalias !720
  store i64 %.sink.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !719, !noalias !720
  br label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i

_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.b
  %.sroa.57.sroa.4.0.copyload.i = phi ptr [ @45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.718.0.copyload.i.i, %bb.b ] ; 3 uses
  %.sroa.6.0.i.i = phi i8 [ %.sroa.4.0.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.b ] ; 2 uses
  %.sroa.08.0.i.i = phi i8 [ %storemerge.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %.sroa.016.0.copyload.i.i, %bb.b ] ; 2 uses
  store i8 %.sroa.08.0.i.i, ptr %1, align 8, !alias.scope !707, !noalias !708
  store i8 %.sroa.6.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !707, !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.617.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.i, i64 6, i1 false), !noalias !708
  store ptr %.sroa.57.sroa.4.0.copyload.i, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !alias.scope !707, !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.i = trunc nuw i8 %.sroa.08.0.i.i to i1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i
  %i.j = icmp eq i8 %.sroa.6.0.i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i, label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.e
  store i8 2, ptr %1, align 8, !alias.scope !701, !noalias !708
  br label %bb.h

bb.f:                                             ; preds = %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE7peek_u8Csa5QsYiPB8Gl_5image.exit.i
  store i8 2, ptr %1, align 8, !alias.scope !701, !noalias !708
  %.not12.i = icmp eq ptr %.sroa.57.sroa.4.0.copyload.i, null
  br i1 %.not12.i, label %bb.g, label %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE10skip_if_eqCsa5QsYiPB8Gl_5image.exit, !prof !113

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #20, !noalias !730
  unreachable

_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE10skip_if_eqCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f
  tail call void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %.sroa.57.sroa.4.0.copyload.i)
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.5.0.ph = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEEECsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.ph, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMs2_NtCsdsTQD3x2eOp_3exr2ioINtB5_8PeekReadRShE10skip_if_eqCsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj1_KB12_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.f = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %i.f, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !737
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  store ptr %.sroa.06.0.copyload, ptr %i.c, align 8, !alias.scope !737, !noalias !738
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.47.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8, !alias.scope !737, !noalias !738
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhBB_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KBB_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !740
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj1_BC_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBC_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !noalias !744
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.h = icmp samesign eq i64 %1, 0
  br i1 %i.h, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_KBU_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.i = ptrtoint ptr %i.b to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit
  %.sroa.09.0.i17 = phi ptr [ %0, %.lr.ph ], [ %i.j, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i17, i64 1 ; 2 uses
  %i.k = call i16 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(i64 noundef %i.i), !noalias !745
  %.fr18 = freeze i16 %i.k                        ; 2 uses
  %.sroa.413.0.extract.shift = lshr i16 %.fr18, 8
  %.sroa.413.0.extract.trunc = trunc nuw i16 %.sroa.413.0.extract.shift to i8
  %i.l = trunc i16 %.fr18 to i1
  %.sroa.09.0.i.promoted = load i8, ptr %.sroa.09.0.i17, align 1, !noalias !745
  %.us-phi = select i1 %i.l, i8 %.sroa.413.0.extract.trunc, i8 %.sroa.09.0.i.promoted
  store i8 %.us-phi, ptr %.sroa.09.0.i17, align 1, !noalias !745
  %i.m = icmp eq ptr %i.j, %i.g
  br i1 %i.m, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_KBU_EB4_.exit, label %.loopexit

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_KBU_EB4_.exit: ; preds = %.loopexit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj1_Kj2_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %.idx = and i64 %1, 9223372036854775806         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.f = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %i.f, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !751
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  store ptr %.sroa.06.0.copyload, ptr %i.c, align 8, !alias.scope !751, !noalias !752
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.47.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8, !alias.scope !751, !noalias !752
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj2_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !754
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj2_j1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !noalias !758
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.h = icmp samesign eq i64 %.idx, 0
  br i1 %i.h, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_Kj2_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.i = ptrtoint ptr %i.b to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit
  %.sroa.09.0.i17 = phi ptr [ %0, %.lr.ph ], [ %i.j, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i17, i64 2 ; 2 uses
  %i.k = call i24 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(i64 noundef %i.i), !noalias !759
  %.fr18 = freeze i24 %i.k                        ; 2 uses
  %.sroa.413.0.extract.shift = lshr i24 %.fr18, 8
  %.sroa.413.0.extract.trunc = trunc nuw i24 %.sroa.413.0.extract.shift to i16
  %i.l = trunc i24 %.fr18 to i1
  %.sroa.09.0.i.promoted = load i16, ptr %.sroa.09.0.i17, align 1, !noalias !759
  %.us-phi = select i1 %i.l, i16 %.sroa.413.0.extract.trunc, i16 %.sroa.09.0.i.promoted
  store i16 %.us-phi, ptr %.sroa.09.0.i17, align 1, !noalias !759
  %i.m = icmp eq ptr %i.j, %i.g
  br i1 %i.m, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_Kj2_EB4_.exit, label %.loopexit

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj1_Kj2_EB4_.exit: ; preds = %.loopexit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj2_KB12_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [2 x i8], align 2             ; 4 uses
  %.sroa.6 = alloca [2 x i8], align 2             ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.g, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !765
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8, !alias.scope !765, !noalias !766
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx, i64 24, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhBB_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KBB_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !768
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj2_BC_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBC_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e), !noalias !772
  %.idx = and i64 %1, 9223372036854775804         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.i = icmp samesign eq i64 %.idx, 0
  br i1 %i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %7, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !768
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !773, !noalias !776
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !773, !noalias !776
  %i.k = call i48 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b), !noalias !778 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %i.k, 8
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  store i16 %.sroa.4.0.extract.trunc, ptr %.sroa.4, align 2, !noalias !768
  %.sroa.6.0.extract.shift = lshr i48 %i.k, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6, align 2, !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !768
  %i.l = trunc i48 %i.k to i1
  %.sroa.04.0.in.i = select i1 %i.l, ptr %.sroa.4, ptr %.sroa.07.0.i13
  %.sroa.04.0.i = load i16, ptr %.sroa.04.0.in.i, align 1, !noalias !778
  store i16 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !778
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %6 = and i48 %i.k, 16777216
  %.not = icmp eq i48 %6, 0
  %.sroa.04.0.in.i.1 = select i1 %.not, ptr %5, ptr %.sroa.6
  %.sroa.04.0.i.1 = load i16, ptr %.sroa.04.0.in.i.1, align 1, !noalias !778
  store i16 %.sroa.04.0.i.1, ptr %5, align 1, !noalias !778
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %8 = icmp eq ptr %7, %i.h
  br i1 %8, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit: ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj2_Kj1_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.g, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !784
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8, !alias.scope !784, !noalias !785
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx, i64 24, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj1_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !787
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj1_j2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e), !noalias !791
  %.idx = and i64 %1, 9223372036854775806         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.i = icmp samesign eq i64 %.idx, 0
  br i1 %i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_Kj1_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.o, %.cont ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !787
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !792, !noalias !795
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !792, !noalias !795
  %i.k = call i32 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b), !noalias !797 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i32 %i.k, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i32 %i.k, 24
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !787
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %.cont14, label %.else15

.else15:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i8, ptr %.sroa.07.0.i13, align 1, !noalias !797
  br label %.cont14

.cont14:                                          ; preds = %bb.c, %.else15
  %.sroa.04.0.i = phi i8 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else15 ]
  store i8 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !797
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 1 ; 2 uses
  %i.n = and i32 %i.k, 65536
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.1.else.val = load i8, ptr %i.m, align 1, !noalias !797
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.1 = phi i8 [ %.sroa.6.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.1.else.val, %.else ]
  store i8 %.sroa.04.0.i.1, ptr %i.m, align 1, !noalias !797
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_Kj1_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_Kj1_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj3_Kj1_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 3
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.g, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !803
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8, !alias.scope !803, !noalias !804
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.46.0..sroa_idx, i64 40, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj1_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !806
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj1_j3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !810
  %i.h = urem i64 %1, 3                           ; 2 uses
  %.idx = sub nuw nsw i64 %1, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.j = icmp eq i64 %1, %i.h
  br i1 %i.j, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj1_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = insertelement <2 x ptr> poison, ptr %i.k, i64 0
  %i.n = insertelement <2 x ptr> %i.m, ptr %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.u, %.cont ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !806
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !811, !noalias !814
  store <2 x ptr> %i.n, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !811, !noalias !814
  %i.o = call i48 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !816 ; 6 uses
  %.sroa.4.0.extract.shift = lshr i48 %i.o, 8
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i48 %i.o, 24
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i48 %i.o, 40
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !806
  %i.p = trunc i48 %i.o to i1
  br i1 %i.p, label %.cont16, label %.else17

.else17:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i8, ptr %.sroa.07.0.i13, align 1, !noalias !816
  br label %.cont16

.cont16:                                          ; preds = %bb.c, %.else17
  %.sroa.04.0.i = phi i8 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else17 ]
  store i8 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !816
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 1 ; 2 uses
  %i.r = and i48 %i.o, 65536
  %.not = icmp eq i48 %i.r, 0
  br i1 %.not, label %.else15, label %.cont14

.else15:                                          ; preds = %.cont16
  %.sroa.04.0.i.1.else.val = load i8, ptr %i.q, align 1, !noalias !816
  br label %.cont14

.cont14:                                          ; preds = %.cont16, %.else15
  %.sroa.04.0.i.1 = phi i8 [ %.sroa.6.0.extract.trunc, %.cont16 ], [ %.sroa.04.0.i.1.else.val, %.else15 ]
  store i8 %.sroa.04.0.i.1, ptr %i.q, align 1, !noalias !816
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.t = and i48 %i.o, 4294967296
  %.not18 = icmp eq i48 %i.t, 0
  br i1 %.not18, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.2.else.val = load i8, ptr %i.s, align 1, !noalias !816
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.2 = phi i8 [ %.sroa.8.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.2.else.val, %.else ]
  store i8 %.sroa.04.0.i.2, ptr %i.s, align 1, !noalias !816
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 3 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj1_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj1_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj3_Kj2_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [9 x i8], align 1                 ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [2 x i8], align 2             ; 4 uses
  %.sroa.6 = alloca [2 x i8], align 2             ; 4 uses
  %.sroa.8 = alloca [2 x i8], align 2             ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = icmp eq i64 %3, 3
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.h = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.h, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !822
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.e, align 8, !alias.scope !822, !noalias !823
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.46.0..sroa_idx, i64 40, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj2_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !825
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj2_j3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !829
  %i.i = urem i64 %1, 6                           ; 2 uses
  %.idx = sub nuw nsw i64 %1, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.k = icmp eq i64 %1, %i.i
  br i1 %i.k, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj2_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.n = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.m, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %9, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !825
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !830, !noalias !833
  store <2 x ptr> %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !830, !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !825
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(address) dereferenceable(9) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !835
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !825
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !825
  store i16 %.sroa.4.0.copyload, ptr %.sroa.4, align 2, !noalias !825
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !825
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !825
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6, align 2, !noalias !825
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !825
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !825
  store i16 %.sroa.8.0.copyload, ptr %.sroa.8, align 2, !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !825
  %5 = trunc nuw i8 %.sroa.0.0.copyload to i1
  %.sroa.04.0.in.i = select i1 %5, ptr %.sroa.4, ptr %.sroa.07.0.i13
  %.sroa.04.0.i = load i16, ptr %.sroa.04.0.in.i, align 1, !noalias !835
  store i16 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !835
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %7 = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.sroa.04.0.in.i.1 = select i1 %7, ptr %.sroa.6, ptr %6
  %.sroa.04.0.i.1 = load i16, ptr %.sroa.04.0.in.i.1, align 1, !noalias !835
  store i16 %.sroa.04.0.i.1, ptr %6, align 1, !noalias !835
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.p = trunc nuw i8 %.sroa.7.0.copyload to i1
  %.sroa.04.0.in.i.2 = select i1 %i.p, ptr %.sroa.8, ptr %8
  %.sroa.04.0.i.2 = load i16, ptr %.sroa.04.0.in.i.2, align 1, !noalias !835
  store i16 %.sroa.04.0.i.2, ptr %8, align 1, !noalias !835
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %10 = icmp eq ptr %9, %i.j
  br i1 %10, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj2_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj2_EB4_.exit: ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj3_Kj4_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 1                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [4 x i8], align 4             ; 4 uses
  %.sroa.6 = alloca [4 x i8], align 4             ; 4 uses
  %.sroa.8 = alloca [4 x i8], align 4             ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = icmp eq i64 %3, 3
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.h = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.h, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !841
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.e, align 8, !alias.scope !841, !noalias !842
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.46.0..sroa_idx, i64 40, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj4_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !844
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj4_j3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !848
  %i.i = urem i64 %1, 12                          ; 2 uses
  %.idx = sub nuw nsw i64 %1, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.k = icmp eq i64 %1, %i.i
  br i1 %i.k, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj4_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.n = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.m, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %9, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !844
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !849, !noalias !852
  store <2 x ptr> %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !849, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !844
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj4_EEj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([15 x i8]) align 1 captures(address) dereferenceable(15) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !854
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !844
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !844
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4, align 4, !noalias !844
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !844
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !844
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6, align 4, !noalias !844
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !844
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !844
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8, align 4, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !844
  %5 = trunc nuw i8 %.sroa.0.0.copyload to i1
  %.sroa.04.0.in.i = select i1 %5, ptr %.sroa.4, ptr %.sroa.07.0.i13
  %.sroa.04.0.i = load i32, ptr %.sroa.04.0.in.i, align 1, !noalias !854
  store i32 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !854
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %7 = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.sroa.04.0.in.i.1 = select i1 %7, ptr %.sroa.6, ptr %6
  %.sroa.04.0.i.1 = load i32, ptr %.sroa.04.0.in.i.1, align 1, !noalias !854
  store i32 %.sroa.04.0.i.1, ptr %6, align 1, !noalias !854
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 8 ; 2 uses
  %i.p = trunc nuw i8 %.sroa.7.0.copyload to i1
  %.sroa.04.0.in.i.2 = select i1 %i.p, ptr %.sroa.8, ptr %8
  %.sroa.04.0.i.2 = load i32, ptr %.sroa.04.0.in.i.2, align 1, !noalias !854
  store i32 %.sroa.04.0.i.2, ptr %8, align 1, !noalias !854
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %10 = icmp eq ptr %9, %i.j
  br i1 %10, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj4_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj4_EB4_.exit: ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj4_KB12_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [20 x i8], align 1                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [4 x i8], align 4             ; 4 uses
  %.sroa.6 = alloca [4 x i8], align 4             ; 4 uses
  %.sroa.8 = alloca [4 x i8], align 4             ; 4 uses
  %.sroa.10 = alloca [4 x i8], align 4            ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = icmp eq i64 %3, 4
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.h = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.h, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !860
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.e, align 8, !alias.scope !860, !noalias !861
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx, i64 56, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhBB_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KBB_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !863
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj4_BC_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBC_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.f), !noalias !867
  %.idx = and i64 %1, 9223372036854775792         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.j = icmp samesign eq i64 %.idx, 0
  br i1 %i.j, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_KBU_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = insertelement <2 x ptr> poison, ptr %i.k, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %11, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !863
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !868, !noalias !871
  store <2 x ptr> %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !868, !noalias !871
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !868, !noalias !871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !863
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj4_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !noalias !873
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !863
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !863
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4, align 4, !noalias !863
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !863
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !863
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6, align 4, !noalias !863
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !863
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !863
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8, align 4, !noalias !863
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !863
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 1, !noalias !863
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10, align 4, !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !863
  %5 = trunc nuw i8 %.sroa.0.0.copyload to i1
  %.sroa.04.0.in.i = select i1 %5, ptr %.sroa.4, ptr %.sroa.07.0.i13
  %.sroa.04.0.i = load i32, ptr %.sroa.04.0.in.i, align 1, !noalias !873
  store i32 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !873
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %7 = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.sroa.04.0.in.i.1 = select i1 %7, ptr %.sroa.6, ptr %6
  %.sroa.04.0.i.1 = load i32, ptr %.sroa.04.0.in.i.1, align 1, !noalias !873
  store i32 %.sroa.04.0.i.1, ptr %6, align 1, !noalias !873
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 8 ; 2 uses
  %9 = trunc nuw i8 %.sroa.7.0.copyload to i1
  %.sroa.04.0.in.i.2 = select i1 %9, ptr %.sroa.8, ptr %8
  %.sroa.04.0.i.2 = load i32, ptr %.sroa.04.0.in.i.2, align 1, !noalias !873
  store i32 %.sroa.04.0.i.2, ptr %8, align 1, !noalias !873
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 12 ; 2 uses
  %i.p = trunc nuw i8 %.sroa.9.0.copyload to i1
  %.sroa.04.0.in.i.3 = select i1 %i.p, ptr %.sroa.10, ptr %10
  %.sroa.04.0.i.3 = load i32, ptr %.sroa.04.0.in.i.3, align 1, !noalias !873
  store i32 %.sroa.04.0.i.3, ptr %10, align 1, !noalias !873
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %12 = icmp eq ptr %11, %i.i
  br i1 %12, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_KBU_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_KBU_EB4_.exit: ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj4_Kj1_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %3, 4
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.g = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.g, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !879
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.d, align 8, !alias.scope !879, !noalias !880
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx, i64 56, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj1_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !882
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj1_j4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e), !noalias !886
  %.idx = and i64 %1, 9223372036854775804         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.i = icmp samesign eq i64 %.idx, 0
  br i1 %i.i, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_Kj1_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %i.n = insertelement <2 x ptr> %i.m, ptr %i.k, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.w, %.cont ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !882
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !887, !noalias !890
  store <2 x ptr> %i.n, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !887, !noalias !890
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !887, !noalias !890
  %i.o = call i64 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b), !noalias !892 ; 8 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.o, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %i.o, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i64 %i.o, 40
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i64 %i.o, 56
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !882
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.cont18, label %.else19

.else19:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i8, ptr %.sroa.07.0.i13, align 1, !noalias !892
  br label %.cont18

.cont18:                                          ; preds = %bb.c, %.else19
  %.sroa.04.0.i = phi i8 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else19 ]
  store i8 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !892
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 1 ; 2 uses
  %i.r = and i64 %i.o, 65536
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.else17, label %.cont16

.else17:                                          ; preds = %.cont18
  %.sroa.04.0.i.1.else.val = load i8, ptr %i.q, align 1, !noalias !892
  br label %.cont16

.cont16:                                          ; preds = %.cont18, %.else17
  %.sroa.04.0.i.1 = phi i8 [ %.sroa.6.0.extract.trunc, %.cont18 ], [ %.sroa.04.0.i.1.else.val, %.else17 ]
  store i8 %.sroa.04.0.i.1, ptr %i.q, align 1, !noalias !892
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.t = and i64 %i.o, 4294967296
  %.not20 = icmp eq i64 %i.t, 0
  br i1 %.not20, label %.else15, label %.cont14

.else15:                                          ; preds = %.cont16
  %.sroa.04.0.i.2.else.val = load i8, ptr %i.s, align 1, !noalias !892
  br label %.cont14

.cont14:                                          ; preds = %.cont16, %.else15
  %.sroa.04.0.i.2 = phi i8 [ %.sroa.8.0.extract.trunc, %.cont16 ], [ %.sroa.04.0.i.2.else.val, %.else15 ]
  store i8 %.sroa.04.0.i.2, ptr %i.s, align 1, !noalias !892
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 3 ; 2 uses
  %i.v = and i64 %i.o, 281474976710656
  %.not21 = icmp eq i64 %i.v, 0
  br i1 %.not21, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.3.else.val = load i8, ptr %i.u, align 1, !noalias !892
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.3 = phi i8 [ %.sroa.10.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.3.else.val, %.else ]
  store i8 %.sroa.04.0.i.3, ptr %i.u, align 1, !noalias !892
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_Kj1_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_Kj1_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj4_Kj2_EB6_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [12 x i8], align 1                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [2 x i8], align 2             ; 4 uses
  %.sroa.6 = alloca [2 x i8], align 2             ; 4 uses
  %.sroa.8 = alloca [2 x i8], align 2             ; 4 uses
  %.sroa.10 = alloca [2 x i8], align 2            ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = icmp eq i64 %3, 4
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.h = icmp eq ptr %.sroa.05.0.copyload, null
  br i1 %i.h, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, !prof !736

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #20, !noalias !898
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.e, align 8, !alias.scope !898, !noalias !899
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.63.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx, i64 56, i1 false)
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARShj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitRSAhj2_ENCINvMBP_BM_10wrap_mut_1By_NCINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKBB_KB1x_E0E0EB2b_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !901
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayARSAhj2_j4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterBA_EEENCINvMBT_BQ_10wrap_mut_1By_NCINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKBF_KBC_E0E0EB3f_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.f), !noalias !905
  %.idx = and i64 %1, 9223372036854775800         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.j = icmp samesign eq i64 %.idx, 0
  br i1 %i.j, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_Kj2_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.n = insertelement <2 x ptr> poison, ptr %i.k, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %11, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !901
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !906, !noalias !909
  store <2 x ptr> %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !906, !noalias !909
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !906, !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !901
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([12 x i8]) align 1 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !noalias !911
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !901
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !901
  store i16 %.sroa.4.0.copyload, ptr %.sroa.4, align 2, !noalias !901
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !901
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !901
  store i16 %.sroa.6.0.copyload, ptr %.sroa.6, align 2, !noalias !901
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !901
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !901
  store i16 %.sroa.8.0.copyload, ptr %.sroa.8, align 2, !noalias !901
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !901
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 1, !noalias !901
  store i16 %.sroa.10.0.copyload, ptr %.sroa.10, align 2, !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !901
  %5 = trunc nuw i8 %.sroa.0.0.copyload to i1
  %.sroa.04.0.in.i = select i1 %5, ptr %.sroa.4, ptr %.sroa.07.0.i13
  %.sroa.04.0.i = load i16, ptr %.sroa.04.0.in.i, align 1, !noalias !911
  store i16 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !911
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %7 = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.sroa.04.0.in.i.1 = select i1 %7, ptr %.sroa.6, ptr %6
  %.sroa.04.0.i.1 = load i16, ptr %.sroa.04.0.in.i.1, align 1, !noalias !911
  store i16 %.sroa.04.0.i.1, ptr %6, align 1, !noalias !911
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %9 = trunc nuw i8 %.sroa.7.0.copyload to i1
  %.sroa.04.0.in.i.2 = select i1 %9, ptr %.sroa.8, ptr %8
  %.sroa.04.0.i.2 = load i16, ptr %.sroa.04.0.in.i.2, align 1, !noalias !911
  store i16 %.sroa.04.0.i.2, ptr %8, align 1, !noalias !911
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 6 ; 2 uses
  %i.p = trunc nuw i8 %.sroa.9.0.copyload to i1
  %.sroa.04.0.in.i.3 = select i1 %i.p, ptr %.sroa.10, ptr %10
  %.sroa.04.0.i.3 = load i16, ptr %.sroa.04.0.in.i.3, align 1, !noalias !911
  store i16 %.sroa.04.0.i.3, ptr %10, align 1, !noalias !911
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %12 = icmp eq ptr %11, %i.i
  br i1 %12, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_Kj2_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_Kj2_EB4_.exit: ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs3qoiINtB2_10QoiDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 45)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [14 x i8], align 4                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !917
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.b, i8 0, i64 14, i1 false), !noalias !917
  %i.h = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 14), !noalias !921 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4, !noalias !917 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !917
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !917
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !917 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !noalias !917 ; 3 uses
  %i.i = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i)
  %i.j = call i32 @llvm.bswap.i32(i32 %.sroa.4.0.copyload.i.i) ; 3 uses
  %i.k = call i32 @llvm.bswap.i32(i32 %.sroa.5.0.copyload.i.i) ; 2 uses
  %.off.i.i.i = add i8 %.sroa.6.0.copyload.i.i, -3
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.c, label %bb.g, !prof !922

bb.c:                                             ; preds = %bb.b
  %.not68.i.i.i = icmp ult i8 %.sroa.7.0.copyload.i.i, 2
  br i1 %.not68.i.i.i, label %bb.d, label %bb.g, !prof !196

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %.sroa.0.0.copyload.i.i, 1718185841
  br i1 %i.l, label %bb.e, label %bb.g, !prof !196

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %i.j to i64
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = mul nuw i64 %i.n, %i.m
  %i.p = add i64 %i.o, -400000001
  %or.cond.i.i.i.i = icmp ult i64 %i.p, -400000000
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.h, !prof !138

bb.f:                                             ; preds = %bb.e
  %i.q = inttoptr i64 %i.n to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %.sroa.17.1.ph.i = phi ptr [ undef, %bb.d ], [ %i.q, %bb.f ], [ %i.h, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.1343.0.ph.i = phi i32 [ %i.i, %bb.d ], [ %i.j, %bb.f ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.10.0.ph.i = phi i8 [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %bb.a ], [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %.sroa.7.0.copyload.i.i, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.d ], [ 3, %bb.f ], [ 8, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !917
  %i.r = ptrtoint ptr %.sroa.17.1.ph.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.0.0.ph.i, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %.sroa.10.0.ph.i, ptr %.sroa.7.0..sroa_idx24, align 1
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.1343.0.ph.i, ptr %.sroa.833.0..sroa_idx34, align 4
  %.sroa.9.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %.sroa.9.0..sroa_idx38, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !923
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 14, ptr %i.s, align 1, !noalias !923
  store i8 0, ptr %i.a, align 8, !noalias !923
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCsltZrX1n1NSl_3qoi5error5ErrorEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !923
  %.sroa.67.sroa.5.0.copyload = load i8, ptr %i.t, align 8
  %.sroa.67.sroa.7.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.67.sroa.7.0.copyload = load i8, ptr %.sroa.67.sroa.7.0..sroa.67.0..sroa_idx.sroa_idx, align 1
  %.sroa.67.sroa.8.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.sroa.67.sroa.8.0.copyload = load i16, ptr %.sroa.67.sroa.8.0..sroa.67.0..sroa_idx.sroa_idx, align 2
  %.sroa.67.sroa.9.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.67.sroa.9.0.copyload = load i32, ptr %.sroa.67.sroa.9.0..sroa.67.0..sroa_idx.sroa_idx, align 4
  %.sroa.67.sroa.10.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.67.sroa.12.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.67.sroa.14.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.67.sroa.14.0.copyload = load i8, ptr %.sroa.67.sroa.14.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  %.sroa.67.sroa.15.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  %.sroa.67.sroa.15.0.copyload = load i24, ptr %.sroa.67.sroa.15.0..sroa.67.0..sroa_idx.sroa_idx, align 1
  %.sroa.67.sroa.16.0..sroa.67.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.67.sroa.16.0.copyload = load i8, ptr %.sroa.67.sroa.16.0..sroa.67.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 4, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.d, i64 7, i1 false)
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.67.sroa.5.0.copyload, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.67.sroa.7.0.copyload, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 1
  %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.67.sroa.8.0.copyload, ptr %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx, align 2
  %.sroa.420.sroa.7.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.67.sroa.9.0.copyload, ptr %.sroa.420.sroa.7.0..sroa.420.0..sroa_idx.sroa_idx, align 4
  %.sroa.420.sroa.8.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load <2 x i64>, ptr %.sroa.67.sroa.10.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.u, ptr %.sroa.420.sroa.8.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.10.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x i32>, ptr %.sroa.67.sroa.12.0..sroa.67.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.v, ptr %.sroa.420.sroa.10.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.12.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.67.sroa.14.0.copyload, ptr %.sroa.420.sroa.12.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.13.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i24 %.sroa.67.sroa.15.0.copyload, ptr %.sroa.420.sroa.13.0..sroa.420.0..sroa_idx.sroa_idx, align 1
  %.sroa.420.sroa.14.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.67.sroa.16.0.copyload, ptr %.sroa.420.sroa.14.0..sroa.420.0..sroa_idx.sroa_idx, align 4
  %.sroa.420.sroa.15.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.420.sroa.15.0..sroa.420.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.e, i64 3, i1 false)
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !917
  %.sroa.17.13.extract.trunc56.i = zext nneg i8 %.sroa.7.0.copyload.i.i to i24
  %.sroa.0.0.copyload23 = load i8, ptr %1, align 8, !alias.scope !927
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.7.0.copyload27 = load i8, ptr %.sroa.7.0..sroa_idx26, align 1, !alias.scope !927
  %.sroa.828.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.828.0.copyload32 = load i16, ptr %.sroa.828.0..sroa_idx31, align 2, !alias.scope !927
  %.sroa.833.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.833.0.copyload37 = load i32, ptr %.sroa.833.0..sroa_idx36, align 4, !alias.scope !927
  %.sroa.9.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.copyload23, ptr %i.w, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.7.0.copyload27, ptr %.sroa.4103.0..sroa_idx, align 1
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.828.0.copyload32, ptr %.sroa.5104.0..sroa_idx, align 2
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.833.0.copyload37, ptr %.sroa.6105.0..sroa_idx, align 4
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load <2 x i64>, ptr %.sroa.9.0..sroa_idx40, align 8, !alias.scope !927
  store <2 x i64> %i.x, ptr %.sroa.7106.0..sroa_idx, align 8
  %.sroa.9108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.j, ptr %.sroa.9108.0..sroa_idx, align 8
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.k, ptr %.sroa.10109.0..sroa_idx, align 4
  %.sroa.11110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.6.0.copyload.i.i, ptr %.sroa.11110.0..sroa_idx, align 8
  %.sroa.12111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i24 %.sroa.17.13.extract.trunc56.i, ptr %.sroa.12111.0..sroa_idx, align 1
  %.sroa.13112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.6.0.copyload.i.i, ptr %.sroa.13112.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCs7x0KzV2oPbY_15crossbeam_epoch6atomicINtB5_6SharedINtNtCseXAJVirNrmf_15crossbeam_deque5deque6BufferNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEE5derefCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsa5QsYiPB8Gl_5image5utils11expand_bits(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = and i8 %1, 7                             ; 2 uses
  %notmask = shl nsw i8 -1, %i.b
  %i.c = xor i8 %notmask, -1                      ; 2 uses
  %i.d = icmp eq i8 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i8 -1, %i.c
  %i.f = zext i8 %1 to i32
  %i.g = mul i32 %2, %i.f
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i32 %i.h to i8
  %.lhs.trunc = sub nuw nsw i8 8, %i.j
end_hunk_0
