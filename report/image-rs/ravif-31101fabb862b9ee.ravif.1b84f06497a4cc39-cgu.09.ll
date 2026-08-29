Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1W_B1T_3lenEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjEjNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouphEs3_0E0EB2T_4foldINtNtBc_3cmp11KeyAndValuejB3H_ENvYB4W_NtB4Z_3Ord3maxECs2mu2Cb9JdUH_5ravif:bb.a

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouphEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1W_B1T_3lenEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjEjNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0EB2T_4foldINtNtBc_3cmp11KeyAndValuejB3H_ENvYB4W_NtB4Z_3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1362, !noalias !1366, !nonnull !15, !noundef !15 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1362, !noalias !1366, !nonnull !15, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1362, !noalias !1366, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.h = icmp eq ptr %i.c, %i.e
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !1377
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.6.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !1378, !noalias !1362
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1391
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val.i.i.i = load i64, ptr %i.p, align 8, !noalias !1391, !noundef !15 ; 4 uses
  %i.q = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i.i.i, ptr %i.m, align 8, !noalias !1392
  store i64 %.val.i.i.i, ptr %.sroa.6.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1392
  store i64 %.val.i.i.i, ptr %.sroa.7.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1392
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1396, !noalias !1401, !noundef !15
  %i.r = icmp ult i64 %.val.i.i.i, %.val1.i.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.a, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1379
  %i.s = add i64 %.sroa.0.0.i.i.i, 1
  %i.t = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter11ChunksExactmEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNvMs0_NtNtB2Y_3api8internalINtB3F_12ContextInnerhE24update_block_importances0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB5E_13FlattenCompatppE9iter_fold7flattenIBO_IBY_IB1q_IB1q_INtB1N_4ItermEIB6R_fEEIB2t_IB6R_B2U_EEEENCNCB3z_00EuNCINvNvXsi_B5E_B5R_B4P_4fold7flattenB6y_uNCINvNvB4P_8for_each4callTfxxENCB3z_s_0E0E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.07.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.a = alloca [160 x i8], align 8               ; 16 uses
  %i.b = alloca [168 x i8], align 8               ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0..sroa_idx, i64 168, i1 false)
  %.sroa.42.8.copyload = load ptr, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1423, !noalias !1424, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.val14.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1423, !noalias !1424, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1435, !noalias !1436, !noundef !15 ; 3 uses
  %i.g = icmp eq i64 %.val14.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #28, !noalias !1439
  unreachable

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1435, !noalias !1436 ; 2 uses
  %i.i = udiv i64 %.val.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !46, !alias.scope !1435, !noalias !1436, !noundef !15
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.val14.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1435, !noalias !1436, !noundef !15 ; 2 uses
  %i.p = add nuw i64 %i.o, 1
  %i.q = icmp ne i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %i.i, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1435, !noalias !1436, !noundef !15 ; 2 uses
  %i.u = add nuw i64 %i.t, 1
  %i.v = add i64 %i.i, -1
  %i.w = icmp ne i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = udiv i64 %i.v, %i.u
  %i.y = add nuw i64 %i.x, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ]
  %i.z = sub i64 %.val14.i.i.i.i.i, %.val.i.i.i.i.i
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.z) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.i.i.i.i.i.i, i64 48
  %.sroa.4.0..sroa_idx.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.ae = add nuw i64 %.sroa.01.025.i.i.i.i, 1    ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !1442, !noalias !1447, !noundef !15 ; 4 uses
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1442, !noalias !1447, !noundef !15
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !1442, !noalias !1447
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.b, i64 noundef %i.af), !noalias !1447 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.af), !noalias !1447 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.415.0.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ undef, %bb.g ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !46, !alias.scope !1450, !noalias !1455, !noundef !15
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !1450, !noalias !1455
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.aq, i64 0, i64 %i.ar ; 2 uses
  store i8 0, ptr %i.j, align 8, !alias.scope !1450, !noalias !1455
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1456, !noalias !1455, !noundef !15 ; 6 uses
  %i.at = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %i.as)
  %2 = mul nuw i64 %i.as, %.sroa.0.0.i.i.i.i.i.i  ; 3 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, label %bb.i, !prof !26

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.av = load i64, ptr %i.h, align 8, !alias.scope !1456, !noalias !1455, !noundef !15 ; 2 uses
  %i.aw = icmp ult i64 %2, %i.av
  br i1 %i.aw, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.ab, align 8, !alias.scope !1456, !noalias !1455, !nonnull !15, !align !379, !noundef !15
  %i.ay = sub nuw i64 %i.av, %2                   ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %2 ; 3 uses
  store ptr %i.az, ptr %i.ab, align 8, !alias.scope !1456, !noalias !1455, !captures !1459
  store i64 %i.ay, ptr %i.h, align 8, !alias.scope !1456, !noalias !1455
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.as, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.as
  %i.bb = sub nuw i64 %i.ay, %i.as
  store ptr %i.ba, ptr %i.ab, align 8, !alias.scope !1456, !noalias !1455, !captures !1459
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i: ; preds = %bb.k, %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.bb, %bb.k ], [ 0, %bb.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ null, %bb.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.h, align 8, !alias.scope !1456, !noalias !1455
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1464
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sroa.415.0.i.i.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.sroa.617.0.i.i.i.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.07.i.i.i.i.i.i.i, ptr noundef nonnull %.sink.i.i.i.i.i.i, ptr noundef nonnull %i.bc, ptr noundef nonnull %.sroa.5.0.i.i.i.i, ptr noundef nonnull %i.bd), !noalias !1468
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !1464
  %i.bf = load ptr, ptr %.sroa.42.8.copyload, align 8, !noalias !1469, !nonnull !15, !align !93, !noundef !15
  %i.bg = load ptr, ptr %.sroa.6.8.copyload, align 8, !noalias !1469, !nonnull !15, !align !93, !noundef !15
  %i.bh = load i8, ptr %.sroa.7.8.copyload, align 1, !range !1474, !noalias !1469, !noundef !15
  %i.bi = load i64, ptr %.sroa.8.8.copyload, align 8, !noalias !1469, !noundef !15
  %i.bj = load ptr, ptr %.sroa.9.8.copyload, align 8, !noalias !1469, !nonnull !15, !align !93, !noundef !15
  %i.bk = load i64, ptr %.sroa.10.8.copyload, align 8, !noalias !1469, !noundef !15
  store ptr %i.bf, ptr %i.a, align 8, !noalias !1464
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1464
  store ptr %i.bj, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i, align 8, !noalias !1464
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i13.i.i.i.i, align 8, !noalias !1464
  store i64 %i.bi, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  store i64 %i.bk, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  store i8 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  store i64 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.07.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !1464
  store ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  store ptr %i.be, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1464
  call void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnerhE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1), !noalias !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1460
  %i.bl = add i64 %i.ad, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1407
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter11ChunksExactmEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNvMs0_NtNtB2Y_3api8internalINtB3F_12ContextInnertE24update_block_importances0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB5E_13FlattenCompatppE9iter_fold7flattenIBO_IBY_IB1q_IB1q_INtB1N_4ItermEIB6R_fEEIB2t_IB6R_B2U_EEEENCNCB3z_00EuNCINvNvXsi_B5E_B5R_B4P_4fold7flattenB6y_uNCINvNvB4P_8for_each4callTfxxENCB3z_s_0E0E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.07.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.a = alloca [160 x i8], align 8               ; 16 uses
  %i.b = alloca [168 x i8], align 8               ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0..sroa_idx, i64 168, i1 false)
  %.sroa.42.8.copyload = load ptr, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1491, !noalias !1492, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.val14.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1491, !noalias !1492, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1503, !noalias !1504, !noundef !15 ; 3 uses
  %i.g = icmp eq i64 %.val14.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #28, !noalias !1507
  unreachable

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1503, !noalias !1504 ; 2 uses
  %i.i = udiv i64 %.val.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !46, !alias.scope !1503, !noalias !1504, !noundef !15
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.val14.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1503, !noalias !1504, !noundef !15 ; 2 uses
  %i.p = add nuw i64 %i.o, 1
  %i.q = icmp ne i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %i.i, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1503, !noalias !1504, !noundef !15 ; 2 uses
  %i.u = add nuw i64 %i.t, 1
  %i.v = add i64 %i.i, -1
  %i.w = icmp ne i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = udiv i64 %i.v, %i.u
  %i.y = add nuw i64 %i.x, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ]
  %i.z = sub i64 %.val14.i.i.i.i.i, %.val.i.i.i.i.i
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.z) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.i.i.i.i.i.i, i64 48
  %.sroa.4.0..sroa_idx.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.bl, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.ae = add nuw i64 %.sroa.01.025.i.i.i.i, 1    ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !1510, !noalias !1515, !noundef !15 ; 4 uses
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1510, !noalias !1515, !noundef !15
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !1510, !noalias !1515
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.b, i64 noundef %i.af), !noalias !1515 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.af), !noalias !1515 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.415.0.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ undef, %bb.g ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !46, !alias.scope !1518, !noalias !1523, !noundef !15
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !1518, !noalias !1523
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.aq, i64 0, i64 %i.ar ; 2 uses
  store i8 0, ptr %i.j, align 8, !alias.scope !1518, !noalias !1523
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1524, !noalias !1523, !noundef !15 ; 6 uses
  %i.at = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %i.as)
  %2 = mul nuw i64 %i.as, %.sroa.0.0.i.i.i.i.i.i  ; 3 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, label %bb.i, !prof !26

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.av = load i64, ptr %i.h, align 8, !alias.scope !1524, !noalias !1523, !noundef !15 ; 2 uses
  %i.aw = icmp ult i64 %2, %i.av
  br i1 %i.aw, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.ab, align 8, !alias.scope !1524, !noalias !1523, !nonnull !15, !align !379, !noundef !15
  %i.ay = sub nuw i64 %i.av, %2                   ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %2 ; 3 uses
  store ptr %i.az, ptr %i.ab, align 8, !alias.scope !1524, !noalias !1523, !captures !1459
  store i64 %i.ay, ptr %i.h, align 8, !alias.scope !1524, !noalias !1523
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.as, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.as
  %i.bb = sub nuw i64 %i.ay, %i.as
  store ptr %i.ba, ptr %i.ab, align 8, !alias.scope !1524, !noalias !1523, !captures !1459
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i: ; preds = %bb.k, %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.bb, %bb.k ], [ 0, %bb.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ null, %bb.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.h, align 8, !alias.scope !1524, !noalias !1523
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1531
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sroa.415.0.i.i.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.sroa.617.0.i.i.i.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.07.i.i.i.i.i.i.i, ptr noundef nonnull %.sink.i.i.i.i.i.i, ptr noundef nonnull %i.bc, ptr noundef nonnull %.sroa.5.0.i.i.i.i, ptr noundef nonnull %i.bd), !noalias !1535
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !1531
  %i.bf = load ptr, ptr %.sroa.42.8.copyload, align 8, !noalias !1536, !nonnull !15, !align !93, !noundef !15
  %i.bg = load ptr, ptr %.sroa.6.8.copyload, align 8, !noalias !1536, !nonnull !15, !align !93, !noundef !15
  %i.bh = load i8, ptr %.sroa.7.8.copyload, align 1, !range !1474, !noalias !1536, !noundef !15
  %i.bi = load i64, ptr %.sroa.8.8.copyload, align 8, !noalias !1536, !noundef !15
  %i.bj = load ptr, ptr %.sroa.9.8.copyload, align 8, !noalias !1536, !nonnull !15, !align !93, !noundef !15
  %i.bk = load i64, ptr %.sroa.10.8.copyload, align 8, !noalias !1536, !noundef !15
  store ptr %i.bf, ptr %i.a, align 8, !noalias !1531
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1531
  store ptr %i.bj, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i, align 8, !noalias !1531
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i13.i.i.i.i, align 8, !noalias !1531
  store i64 %i.bi, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  store i64 %i.bk, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  store i8 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  store i64 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.07.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !1531
  store ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  store ptr %i.be, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1531
  call void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1), !noalias !1535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1527
  %i.bl = add i64 %i.ad, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1475
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnerhE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.51.0.copyload = load ptr, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.62.0.copyload = load i64, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.83.0.copyload = load ptr, ptr %.sroa.83.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.45.8.copyload = load ptr, ptr %0, align 8 ; 8 uses
  %.sroa.66.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.66.8.copyload = load ptr, ptr %.sroa.66.8..sroa_idx, align 8 ; 7 uses
  %.sroa.78.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.78.8.copyload = load i64, ptr %.sroa.78.8..sroa_idx, align 8 ; 2 uses
  %.sroa.89.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.89.8.copyload = load i64, ptr %.sroa.89.8..sroa_idx, align 8
  %.sroa.910.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.910.8.copyload = load i64, ptr %.sroa.910.8..sroa_idx, align 8
  %.sroa.1011.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1011.8.copyload = load i8, ptr %.sroa.1011.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.83.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.d = ptrtoint ptr %.sroa.9.0.copyload to i64  ; 2 uses
  %i.e = ptrtoint ptr %.sroa.83.0.copyload to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc nuw i8 %.sroa.11.0.copyload to i1  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %.sroa.9.0.copyload, %.sroa.83.0.copyload
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = add nuw i64 %.sroa.10.0.copyload, 1
  %i.k = icmp ne i64 %.sroa.10.0.copyload, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = udiv i64 %i.g, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.10.0.copyload, 1
  %i.n = add nsw i64 %i.g, -1
  %i.o = icmp ne i64 %.sroa.10.0.copyload, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = udiv i64 %i.n, %i.m
  %i.q = add nuw nsw i64 %i.p, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.r = sub i64 %.sroa.7.0.copyload, %.sroa.62.0.copyload
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.r) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnerhE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.s = shl i64 %.sroa.78.8.copyload, 6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.8.copyload) ]
  %i.t = shl i64 %.sroa.78.8.copyload, 3          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.835.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1336.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1837.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = uitofp i64 %.sroa.910.8.copyload to float
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = select i1 %i.h, i64 0, i64 %.sroa.10.0.copyload
  %i.ao = load ptr, ptr %1, align 8, !nonnull !15, !align !93 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !15, !align !379 ; 4 uses
  %i.aq = load i64, ptr %i.am, align 8            ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 320 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 328 ; 4 uses
  %i.at = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif, i64 %i.at
  %i.au = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep58 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208, i64 %i.au
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.0.i.i13.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.10.0.copyload, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.028.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.av = phi i64 [ %.sroa.62.0.copyload, %.lr.ph.i.i.i.i ], [ %i.ba, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 4 uses
  %i.aw = phi ptr [ %.sroa.83.0.copyload, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.gq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 3 uses
  %i.ay = add nuw i64 %.sroa.01.028.i.i.i.i, 1    ; 2 uses
  %i.az = icmp ult i64 %i.av, %.sroa.7.0.copyload
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw i64 %i.av, 1
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %i.av
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51.0.copyload, i64 %i.av
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub nuw i64 %i.d, %i.bd
  %i.bf = lshr exact i64 %i.be, 3
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i13.i.i.i.i, %i.bf
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.0.i.i13.i.i.i.i ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %storemerge.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bh, ptr %.sroa.9.0.copyload
  %i.bi = load i32, ptr %i.bb, align 4, !noalias !1541, !noundef !15
  %i.bj = load float, ptr %i.bc, align 4, !noalias !1541, !noundef !15
  %i.bk = load i16, ptr %i.bg, align 4, !noalias !1541, !noundef !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !1541, !noundef !15
  %i.bn = shl i64 %i.ax, 6
  %i.bo = sext i16 %i.bm to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = sext i16 %i.bk to i64
  %i.br = add i64 %i.s, %i.bq                     ; 5 uses
end_hunk_0
