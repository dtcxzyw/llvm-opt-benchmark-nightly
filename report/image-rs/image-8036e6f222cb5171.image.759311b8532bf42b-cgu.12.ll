Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNvNtCsa5QsYiPB8Gl_5image5utils17interleave_planes10trampolineKj2_KB12_EB6_:bb.a
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

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.o, %.cont ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !768
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !773, !noalias !776
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !773, !noalias !776
  %i.k = call i48 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b), !noalias !778 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %i.k, 8
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %.sroa.6.0.extract.shift = lshr i48 %i.k, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !768
  %i.l = trunc i48 %i.k to i1
  br i1 %i.l, label %.cont14, label %.else15

.else15:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i16, ptr %.sroa.07.0.i13, align 1, !noalias !778
  br label %.cont14

.cont14:                                          ; preds = %bb.c, %.else15
  %.sroa.04.0.i = phi i16 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else15 ]
  store i16 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !778
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.n = and i48 %i.k, 16777216
  %.not = icmp eq i48 %i.n, 0
  br i1 %.not, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.1.else.val = load i16, ptr %i.m, align 1, !noalias !778
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.1 = phi i16 [ %.sroa.6.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.1.else.val, %.else ]
  store i16 %.sroa.04.0.i.1, ptr %i.m, align 1, !noalias !778
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj2_KBU_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
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
  %5 = icmp eq i64 %1, %i.h
  br i1 %5, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj1_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %i.m = insertelement <2 x ptr> %i.l, ptr %i.k, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.t, %.cont ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !806
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !811, !noalias !814
  store <2 x ptr> %i.m, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !811, !noalias !814
  %i.n = call i48 @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj1_EEj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !816 ; 6 uses
  %.sroa.4.0.extract.shift = lshr i48 %i.n, 8
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i48 %i.n, 24
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i48 %i.n, 40
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !806
  %i.o = trunc i48 %i.n to i1
  br i1 %i.o, label %.cont16, label %.else17

.else17:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i8, ptr %.sroa.07.0.i13, align 1, !noalias !816
  br label %.cont16

.cont16:                                          ; preds = %bb.c, %.else17
  %.sroa.04.0.i = phi i8 [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.04.0.i.else.val, %.else17 ]
  store i8 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !816
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 1 ; 2 uses
  %i.q = and i48 %i.n, 65536
  %.not = icmp eq i48 %i.q, 0
  br i1 %.not, label %.else15, label %.cont14

.else15:                                          ; preds = %.cont16
  %.sroa.04.0.i.1.else.val = load i8, ptr %i.p, align 1, !noalias !816
  br label %.cont14

.cont14:                                          ; preds = %.cont16, %.else15
  %.sroa.04.0.i.1 = phi i8 [ %.sroa.6.0.extract.trunc, %.cont16 ], [ %.sroa.04.0.i.1.else.val, %.else15 ]
  store i8 %.sroa.04.0.i.1, ptr %i.p, align 1, !noalias !816
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.s = and i48 %i.n, 4294967296
  %.not18 = icmp eq i48 %i.s, 0
  br i1 %.not18, label %.else, label %.cont

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.2.else.val = load i8, ptr %i.r, align 1, !noalias !816
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.2 = phi i8 [ %.sroa.8.0.extract.trunc, %.cont14 ], [ %.sroa.04.0.i.2.else.val, %.else ]
  store i8 %.sroa.04.0.i.2, ptr %i.r, align 1, !noalias !816
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 3 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj1_EB4_.exit, label %bb.c

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
  %5 = icmp eq i64 %1, %i.i
  br i1 %5, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj2_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.m = insertelement <2 x ptr> poison, ptr %i.k, i64 0
  %i.n = insertelement <2 x ptr> %i.m, ptr %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.t, %.cont ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !825
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !830, !noalias !833
  store <2 x ptr> %i.n, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !830, !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !825
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj2_EEj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(address) dereferenceable(9) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !835
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !825
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !825
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !825
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !825
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !825
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !825
  %i.o = trunc nuw i8 %.sroa.0.0.copyload to i1
  br i1 %i.o, label %.cont16, label %.else17

.else17:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i16, ptr %.sroa.07.0.i13, align 1, !noalias !835
  br label %.cont16

.cont16:                                          ; preds = %bb.c, %.else17
  %.sroa.04.0.i = phi i16 [ %.sroa.4.0.copyload, %bb.c ], [ %.sroa.04.0.i.else.val, %.else17 ]
  store i16 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !835
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 2 ; 2 uses
  %i.q = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.q, label %.cont14, label %.else15

.else15:                                          ; preds = %.cont16
  %.sroa.04.0.i.1.else.val = load i16, ptr %i.p, align 1, !noalias !835
  br label %.cont14

.cont14:                                          ; preds = %.cont16, %.else15
  %.sroa.04.0.i.1 = phi i16 [ %.sroa.6.0.copyload, %.cont16 ], [ %.sroa.04.0.i.1.else.val, %.else15 ]
  store i16 %.sroa.04.0.i.1, ptr %i.p, align 1, !noalias !835
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.s = trunc nuw i8 %.sroa.7.0.copyload to i1
  br i1 %i.s, label %.cont, label %.else

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.2.else.val = load i16, ptr %i.r, align 1, !noalias !835
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.2 = phi i16 [ %.sroa.8.0.copyload, %.cont14 ], [ %.sroa.04.0.i.2.else.val, %.else ]
  store i16 %.sroa.04.0.i.2, ptr %i.r, align 1, !noalias !835
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 6 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj2_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj2_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
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
  %5 = icmp eq i64 %1, %i.i
  br i1 %5, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj4_EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.m = insertelement <2 x ptr> poison, ptr %i.k, i64 0
  %i.n = insertelement <2 x ptr> %i.m, ptr %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.t, %.cont ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !844
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !849, !noalias !852
  store <2 x ptr> %i.n, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !849, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !844
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj4_EEj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Y_B1V_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([15 x i8]) align 1 captures(address) dereferenceable(15) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !854
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !844
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !844
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !844
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !844
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !844
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !844
  %i.o = trunc nuw i8 %.sroa.0.0.copyload to i1
  br i1 %i.o, label %.cont16, label %.else17

.else17:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i32, ptr %.sroa.07.0.i13, align 1, !noalias !854
  br label %.cont16

.cont16:                                          ; preds = %bb.c, %.else17
  %.sroa.04.0.i = phi i32 [ %.sroa.4.0.copyload, %bb.c ], [ %.sroa.04.0.i.else.val, %.else17 ]
  store i32 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !854
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.q = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.q, label %.cont14, label %.else15

.else15:                                          ; preds = %.cont16
  %.sroa.04.0.i.1.else.val = load i32, ptr %i.p, align 1, !noalias !854
  br label %.cont14

.cont14:                                          ; preds = %.cont16, %.else15
  %.sroa.04.0.i.1 = phi i32 [ %.sroa.6.0.copyload, %.cont16 ], [ %.sroa.04.0.i.1.else.val, %.else15 ]
  store i32 %.sroa.04.0.i.1, ptr %i.p, align 1, !noalias !854
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 8 ; 2 uses
  %i.s = trunc nuw i8 %.sroa.7.0.copyload to i1
  br i1 %i.s, label %.cont, label %.else

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.2.else.val = load i32, ptr %i.r, align 1, !noalias !854
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.2 = phi i32 [ %.sroa.8.0.copyload, %.cont14 ], [ %.sroa.04.0.i.2.else.val, %.else ]
  store i32 %.sroa.04.0.i.2, ptr %i.r, align 1, !noalias !854
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 12 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj4_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj3_Kj4_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj3_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
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

bb.c:                                             ; preds = %.lr.ph, %.cont
  %.sroa.07.0.i13 = phi ptr [ %0, %.lr.ph ], [ %i.w, %.cont ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !863
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !868, !noalias !871
  store <2 x ptr> %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !868, !noalias !871
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !868, !noalias !871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !863
  call void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAQINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtNtB8_5slice4iter4IterAhj4_EEB1F_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionB1D_EENCINvMB1Z_B1W_10wrap_mut_1By_NvYBz_NtNtNtBG_6traits8iterator8Iterator4nextE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !noalias !873
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1, !noalias !863
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !863
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !863
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !863
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !noalias !863
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 1, !noalias !863
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !863
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 1, !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !863
  %i.p = trunc nuw i8 %.sroa.0.0.copyload to i1
  br i1 %i.p, label %.cont18, label %.else19

.else19:                                          ; preds = %bb.c
  %.sroa.04.0.i.else.val = load i32, ptr %.sroa.07.0.i13, align 1, !noalias !873
  br label %.cont18

.cont18:                                          ; preds = %bb.c, %.else19
  %.sroa.04.0.i = phi i32 [ %.sroa.4.0.copyload, %bb.c ], [ %.sroa.04.0.i.else.val, %.else19 ]
  store i32 %.sroa.04.0.i, ptr %.sroa.07.0.i13, align 1, !noalias !873
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 4 ; 2 uses
  %i.r = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.r, label %.cont16, label %.else17

.else17:                                          ; preds = %.cont18
  %.sroa.04.0.i.1.else.val = load i32, ptr %i.q, align 1, !noalias !873
  br label %.cont16

.cont16:                                          ; preds = %.cont18, %.else17
  %.sroa.04.0.i.1 = phi i32 [ %.sroa.6.0.copyload, %.cont18 ], [ %.sroa.04.0.i.1.else.val, %.else17 ]
  store i32 %.sroa.04.0.i.1, ptr %i.q, align 1, !noalias !873
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 8 ; 2 uses
  %i.t = trunc nuw i8 %.sroa.7.0.copyload to i1
  br i1 %i.t, label %.cont14, label %.else15

.else15:                                          ; preds = %.cont16
  %.sroa.04.0.i.2.else.val = load i32, ptr %i.s, align 1, !noalias !873
  br label %.cont14

.cont14:                                          ; preds = %.cont16, %.else15
  %.sroa.04.0.i.2 = phi i32 [ %.sroa.8.0.copyload, %.cont16 ], [ %.sroa.04.0.i.2.else.val, %.else15 ]
  store i32 %.sroa.04.0.i.2, ptr %i.s, align 1, !noalias !873
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 12 ; 2 uses
  %i.v = trunc nuw i8 %.sroa.9.0.copyload to i1
  br i1 %i.v, label %.cont, label %.else

.else:                                            ; preds = %.cont14
  %.sroa.04.0.i.3.else.val = load i32, ptr %i.u, align 1, !noalias !873
  br label %.cont

.cont:                                            ; preds = %.cont14, %.else
  %.sroa.04.0.i.3 = phi i32 [ %.sroa.10.0.copyload, %.cont14 ], [ %.sroa.04.0.i.3.else.val, %.else ]
  store i32 %.sroa.04.0.i.3, ptr %i.u, align 1, !noalias !873
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i13, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_KBU_EB4_.exit, label %bb.c

_RINvNtCsa5QsYiPB8Gl_5image5utils23interleave_planes_innerKj4_KBU_EB4_.exit: ; preds = %.cont, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultARShj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
