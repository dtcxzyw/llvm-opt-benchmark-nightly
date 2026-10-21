Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter11ChunksExactmEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNvMs0_NtNtB2Y_3api8internalINtB3F_12ContextInnertE24update_block_importances0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB5E_13FlattenCompatppE9iter_fold7flattenIBO_IBY_IB1q_IB1q_INtB1N_4ItermEIB6R_fEEIB2t_IB6R_B2U_EEEENCNCB3z_00EuNCINvNvXsi_B5E_B5R_B4P_4fold7flattenB6y_uNCINvNvB4P_8for_each4callTfxxENCB3z_s_0E0E0E0ECs2mu2Cb9JdUH_5ravif:bb.a
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1417, !noalias !1412, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.val14.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1417, !noalias !1412, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1420, !noalias !1412, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %.val14.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #28, !noalias !1421
  unreachable

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1420, !noalias !1412 ; 2 uses
  %i.i = udiv i64 %.val.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1420, !noalias !1412, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.val14.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1420, !noalias !1412, !noundef !4 ; 2 uses
  %i.p = add nuw i64 %i.o, 1
  %i.q = icmp ne i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %i.i, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1420, !noalias !1412, !noundef !4 ; 2 uses
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
  %i.ad = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.bo, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.ae = add nuw i64 %.sroa.01.025.i.i.i.i, 1    ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !1422, !noalias !1412, !noundef !4 ; 4 uses
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1422, !noalias !1412, !noundef !4
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !1422, !noalias !1412
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.b, i64 noundef %i.af), !noalias !1423 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.af), !noalias !1423 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.415.0.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ undef, %bb.g ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1424, !noalias !1412, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !1424, !noalias !1412
  store i8 0, ptr %i.j, align 8, !alias.scope !1424, !noalias !1412
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1425, !noalias !1412, !noundef !4 ; 5 uses
  %i.at = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %i.as) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %i.av = select i1 %i.aq, i64 0, i64 %i.au       ; 3 uses
  %i.aw = extractvalue { i64, i1 } %i.at, 1
  %not..i.i.i.i.i.i = xor i1 %i.aq, true
  %i.ax = select i1 %not..i.i.i.i.i.i, i1 %i.aw, i1 false
  br i1 %i.ax, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.ay = load i64, ptr %i.h, align 8, !alias.scope !1425, !noalias !1412, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %i.av, %i.ay
  br i1 %i.az, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ab, align 8, !alias.scope !1425, !noalias !1412, !nonnull !4, !align !21, !noundef !4
  %i.bb = sub nuw i64 %i.ay, %i.av                ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.av ; 3 uses
  store ptr %i.bc, ptr %i.ab, align 8, !alias.scope !1425, !noalias !1412, !captures !25
  store i64 %i.bb, ptr %i.h, align 8, !alias.scope !1425, !noalias !1412
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.as, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.as
  %i.be = sub nuw i64 %i.bb, %i.as
  store ptr %i.bd, ptr %i.ab, align 8, !alias.scope !1425, !noalias !1412, !captures !25
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i: ; preds = %bb.k, %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %bb.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.bc, %bb.k ], [ null, %bb.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.h, align 8, !alias.scope !1425, !noalias !1412
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1427
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sroa.415.0.i.i.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.sroa.617.0.i.i.i.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.07.i.i.i.i.i.i.i, ptr noundef nonnull %.sink.i.i.i.i.i.i, ptr noundef nonnull %i.bf, ptr noundef nonnull %.sroa.5.0.i.i.i.i, ptr noundef nonnull %i.bg), !noalias !1428
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !1427
  %i.bi = load ptr, ptr %.sroa.42.8.copyload, align 8, !noalias !1429, !nonnull !4, !align !15, !noundef !4
  %i.bj = load ptr, ptr %.sroa.6.8.copyload, align 8, !noalias !1429, !nonnull !4, !align !15, !noundef !4
  %i.bk = load i8, ptr %.sroa.7.8.copyload, align 1, !range !26, !noalias !1429, !noundef !4
  %i.bl = load i64, ptr %.sroa.8.8.copyload, align 8, !noalias !1429, !noundef !4
  %i.bm = load ptr, ptr %.sroa.9.8.copyload, align 8, !noalias !1429, !nonnull !4, !align !15, !noundef !4
  %i.bn = load i64, ptr %.sroa.10.8.copyload, align 8, !noalias !1429, !noundef !4
  store ptr %i.bi, ptr %i.a, align 8, !noalias !1427
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1427
  store ptr %i.bm, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i, align 8, !noalias !1427
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i13.i.i.i.i, align 8, !noalias !1427
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i64 %i.bn, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i8 %i.bk, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i64 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.07.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !1427
  store ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store ptr %i.bh, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  call void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1426
  %i.bo = add i64 %i.ad, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1412
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
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.51.0.copyload = load ptr, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51.0.copyload) ]
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
  %i.ao = load ptr, ptr %1, align 8, !nonnull !4, !align !15 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !4, !align !21 ; 4 uses
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
  %i.bi = load i32, ptr %i.bb, align 4, !noalias !1482, !noundef !4
  %i.bj = load float, ptr %i.bc, align 4, !noalias !1482, !noundef !4
  %i.bk = load i16, ptr %i.bg, align 4, !noalias !1482, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !1482, !noundef !4
  %i.bn = shl i64 %i.ax, 6
  %i.bo = sext i16 %i.bm to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = sext i16 %i.bk to i64
  %i.br = add i64 %i.s, %i.bq                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1482
  %i.bs = shl i64 %i.ax, 3                        ; 4 uses
  %i.bt = load i64, ptr %i.u, align 8, !noalias !1482, !noundef !4 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.45.8.copyload, align 8, !noalias !1482, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.bv = load i64, ptr %i.v, align 8, !alias.scope !1484, !noalias !1482, !noundef !4
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = load i64, ptr %i.w, align 8, !alias.scope !1484, !noalias !1482
  %i.by = icmp eq i64 %i.bx, 0
  %or.cond.i6.i.i.i.i.i.i.i = select i1 %i.bw, i1 true, i1 %i.by, !prof !11
  br i1 %or.cond.i6.i.i.i.i.i.i.i, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  store ptr null, ptr %i.aa, align 8, !alias.scope !1486, !noalias !1487
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1486, !noalias !1487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false), !alias.scope !1486, !noalias !1487
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.bz = load i64, ptr %i.x, align 8, !alias.scope !1484, !noalias !1482, !noundef !4 ; 3 uses
  %i.ca = sub i64 0, %i.bz
  %.not.i7.i.i.i.i.i.i.i = icmp slt i64 %i.bs, %i.ca
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.y, align 8, !alias.scope !1484, !noalias !1482, !noundef !4 ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %.not5.i8.i.i.i.i.i.i.i = icmp slt i64 %i.t, %i.cc
  br i1 %.not5.i8.i.i.i.i.i.i.i, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cd = add i64 %i.bs, 8
  %i.ce = add i64 %i.cd, %i.bz
  %.not6.i9.i.i.i.i.i.i.i = icmp sgt i64 %i.ce, %i.bt
  br i1 %.not6.i9.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cf = add i64 %i.cb, %i.t                     ; 2 uses
  %i.cg = add i64 %i.cf, 8
  %i.ch = load i64, ptr %i.z, align 8, !alias.scope !1484, !noalias !1482, !noundef !4
  %.not7.i10.i.i.i.i.i.i.i = icmp sgt i64 %i.cg, %i.ch
  br i1 %.not7.i10.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ci = mul i64 %i.cf, %i.bt
  %i.cj = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bz
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.bs
  store ptr %i.cl, ptr %i.aa, align 8, !alias.scope !1483, !noalias !1482
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1483, !noalias !1482
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !1489, !noalias !1482
  store i64 %i.t, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1482
  store i64 8, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1482
  store i64 8, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1482
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1482
  %i.cm = sdiv i64 %i.bp, 8                       ; 4 uses
  %i.cn = sdiv i64 %i.br, 8                       ; 3 uses
  %i.co = load i64, ptr %i.ac, align 8, !noalias !1482, !noundef !4 ; 2 uses
  %i.cp = load ptr, ptr %.sroa.66.8.copyload, align 8, !noalias !1482, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !1491, !noalias !1482, !noundef !4
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = load i64, ptr %i.ae, align 8, !alias.scope !1491, !noalias !1482
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cr, i1 true, i1 %i.ct, !prof !11
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i
  store ptr null, ptr %i.ai, align 8, !alias.scope !1493, !noalias !1494
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1493, !noalias !1494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !alias.scope !1493, !noalias !1494
  br label %switch.lookup

bb.q:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i
  %i.cu = load i64, ptr %i.af, align 8, !alias.scope !1491, !noalias !1482, !noundef !4 ; 3 uses
  %i.cv = sub i64 0, %i.cu
  %.not.i.i.i.i.i.i.i.i = icmp slt i64 %i.cm, %i.cv
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1495
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cw = load i64, ptr %i.ag, align 8, !alias.scope !1491, !noalias !1482, !noundef !4 ; 2 uses
  %i.cx = sub i64 0, %i.cw
  %.not5.i.i.i.i.i.i.i.i = icmp slt i64 %i.cn, %i.cx
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1495
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cy = add nsw i64 %i.cm, 8
  %i.cz = add i64 %i.cy, %i.cu
  %.not6.i.i.i.i.i.i.i.i = icmp sgt i64 %i.cz, %i.co
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.v, label %bb.w, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1495
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.da = add i64 %i.cw, %i.cn                    ; 2 uses
  %i.db = add i64 %i.da, 8
  %i.dc = load i64, ptr %i.ah, align 8, !alias.scope !1491, !noalias !1482, !noundef !4
  %.not7.i.i.i.i.i.i.i.i = icmp sgt i64 %i.db, %i.dc
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnerhE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif:bb.a
  store i64 8, ptr %.sroa.1837.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1496, !noalias !1482
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.p, %bb.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext nneg i8 %switch.load to i64
  %switch.load59 = load i8, ptr %switch.gep58, align 1
  %switch.ext60 = zext nneg i8 %switch.load59 to i64
  %i.dh = shl nuw nsw i64 1, %switch.ext
  %i.di = shl nuw nsw i64 1, %switch.ext60
  %i.dj = call noundef i32 @_RINvNtNtCsdEEMmLUVy6d_5rav1e4dist4rust8get_satdhECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i64 noundef %i.dh, i64 noundef %i.di, i64 noundef %.sroa.89.8.copyload), !noalias !1482
  %i.dk = uitofp i32 %i.dj to float               ; 2 uses
  %i.dl = uitofp i32 %i.bi to float               ; 3 uses
  %i.dm = fcmp ugt float %i.dl, %i.dk
  %i.dn = fdiv float %i.dk, %i.dl
  %i.do = fsub float 1.000000e+00, %i.dn
  %.sroa.0.0.i.i.i14.i.i.i.i = select i1 %i.dm, float %i.do, float 0.000000e+00
  %i.dp = fadd float %i.bj, %i.dl
  %i.dq = fmul float %i.dp, %.sroa.0.0.i.i.i14.i.i.i.i
  %i.dr = fdiv float %i.dq, %i.ak                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1482
  %i.ds = icmp slt i64 %i.bp, 0
  %..i.i.i.i.i.i.i.i.i = select i1 %i.ds, i64 -63, i64 0
  %i.dt = icmp slt i64 %i.br, 0
  %.sroa.01.0.neg.i.i.i.i.i.i.i.i.i = select i1 %i.dt, i64 -63, i64 0
  %i.du = add i64 %..i.i.i.i.i.i.i.i.i, %i.bp     ; 2 uses
  %i.dv = sdiv i64 %i.du, 64                      ; 5 uses
  %i.dw = shl nsw i64 %i.dv, 6                    ; 2 uses
  %i.dx = add i64 %.sroa.01.0.neg.i.i.i.i.i.i.i.i.i, %i.br ; 2 uses
  %i.dy = sdiv i64 %i.dx, 64                      ; 5 uses
  %i.dz = shl nsw i64 %i.dy, 6                    ; 2 uses
  %i.ea = add i64 %i.dw, 64                       ; 3 uses
  %i.eb = add i64 %i.dz, 64                       ; 3 uses
  %i.ec = sub i64 %i.ea, %i.bp                    ; 2 uses
  %i.ed = sub i64 %i.eb, %i.br                    ; 2 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = sitofp i64 %i.ee to float
  %i.eg = fmul nnan float %i.ef, f0x39800000
  %i.eh = icmp sgt i64 %i.du, -64                 ; 2 uses
  %i.ei = icmp sgt i64 %i.dx, -64                 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = and i1 %i.ei, %i.eh
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %switch.lookup
  %i.ej = load i64, ptr %i.ar, align 8, !noalias !1497, !noundef !4 ; 2 uses
  %i.ek = icmp ult i64 %i.dv, %i.ej
  br i1 %i.ek, label %bb.aa, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.el = load i64, ptr %i.as, align 8, !noalias !1497, !noundef !4
  %i.em = icmp ult i64 %i.dy, %i.el
  br i1 %i.em, label %bb.ab, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.en = mul i64 %i.ej, %i.dy
  %i.eo = add i64 %i.en, %i.dv                    ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.aq
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = fmul float %i.eg, %i.dr
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.eo ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !noalias !1497, !noundef !4
  %i.et = fadd float %i.eq, %i.es
  store float %i.et, ptr %i.er, align 4, !noalias !1497
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1497
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.z, %switch.lookup
  %i.eu = sub i64 %i.bp, %i.dw                    ; 2 uses
  %i.ev = mul i64 %i.ed, %i.eu
  %i.ew = sitofp i64 %i.ev to float
  %i.ex = fmul nnan float %i.ew, f0x39800000
  %i.ey = ashr exact i64 %i.ea, 6                 ; 4 uses
  %i.ez = icmp sgt i64 %i.ea, -64                 ; 2 uses
  %or.cond.i15.i.i.i.i.i.i.i.i.i = and i1 %i.ei, %i.ez
  br i1 %or.cond.i15.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i
  %i.fa = load i64, ptr %i.ar, align 8, !noalias !1498, !noundef !4 ; 2 uses
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.af, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr %i.as, align 8, !noalias !1498, !noundef !4
  %i.fd = icmp ult i64 %i.dy, %i.fc
  br i1 %i.fd, label %bb.ag, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fe = mul i64 %i.fa, %i.dy
  %i.ff = add i64 %i.fe, %i.ey                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, %i.aq
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fh = fmul float %i.ex, %i.dr
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ff ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !noalias !1498, !noundef !4
  %i.fk = fadd float %i.fh, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !noalias !1498
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ff, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1498
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af, %bb.ae, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i
  %i.fl = sub i64 %i.br, %i.dz                    ; 2 uses
  %i.fm = mul i64 %i.ec, %i.fl
  %i.fn = sitofp i64 %i.fm to float
  %i.fo = fmul nnan float %i.fn, f0x39800000
  %i.fp = ashr exact i64 %i.eb, 6                 ; 4 uses
  %i.fq = icmp sgt i64 %i.eb, -64                 ; 2 uses
  %or.cond.i17.i.i.i.i.i.i.i.i.i = and i1 %i.eh, %i.fq
  br i1 %or.cond.i17.i.i.i.i.i.i.i.i.i, label %bb.aj, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i
  %i.fr = load i64, ptr %i.ar, align 8, !noalias !1499, !noundef !4 ; 2 uses
  %i.fs = icmp ult i64 %i.dv, %i.fr
  br i1 %i.fs, label %bb.ak, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = load i64, ptr %i.as, align 8, !noalias !1499, !noundef !4
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %bb.al, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul i64 %i.fr, %i.fp
  %i.fw = add i64 %i.fv, %i.dv                    ; 3 uses
  %i.fx = icmp ult i64 %i.fw, %i.aq
  br i1 %i.fx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fy = fmul float %i.fo, %i.dr
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.fw ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !noalias !1499, !noundef !4
  %i.gb = fadd float %i.fy, %i.ga
  store float %i.gb, ptr %i.fz, align 4, !noalias !1499
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1499
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.ak, %bb.aj, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i
  %i.gc = mul i64 %i.eu, %i.fl
  %i.gd = sitofp i64 %i.gc to float
  %i.ge = fmul nnan float %i.gd, f0x39800000
  %or.cond.i19.i.i.i.i.i.i.i.i.i = and i1 %i.fq, %i.ez
  br i1 %or.cond.i19.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.ao:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.ar, align 8, !noalias !1500, !noundef !4 ; 2 uses
  %i.gg = icmp ult i64 %i.ey, %i.gf
  br i1 %i.gg, label %bb.ap, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.gh = load i64, ptr %i.as, align 8, !noalias !1500, !noundef !4
  %i.gi = icmp ult i64 %i.fp, %i.gh
  br i1 %i.gi, label %bb.aq, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.gj = mul i64 %i.gf, %i.fp
  %i.gk = add i64 %i.gj, %i.ey                    ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.aq
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gm = fmul float %i.ge, %i.dr
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.gk ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !noalias !1500, !noundef !4
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4, !noalias !1500
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1500
  unreachable

_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.ar, %bb.ap, %bb.ao, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i
  %i.gq = add i64 %i.ax, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ay, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnerhE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnerhE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.51.0.copyload = load ptr, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
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
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnertE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51.0.copyload) ]
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
  %i.ao = load ptr, ptr %1, align 8, !nonnull !4, !align !15 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !4, !align !21 ; 4 uses
  %i.aq = load i64, ptr %i.am, align 8            ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 320 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 328 ; 4 uses
  %i.at = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif, i64 %i.at
  %i.au = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep58 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208, i64 %i.au
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.0.i.i13.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.10.0.copyload, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.028.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.av = phi i64 [ %.sroa.62.0.copyload, %.lr.ph.i.i.i.i ], [ %i.ba, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 4 uses
  %i.aw = phi ptr [ %.sroa.83.0.copyload, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.gq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 3 uses
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
  %i.bi = load i32, ptr %i.bb, align 4, !noalias !1553, !noundef !4
  %i.bj = load float, ptr %i.bc, align 4, !noalias !1553, !noundef !4
  %i.bk = load i16, ptr %i.bg, align 4, !noalias !1553, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !1553, !noundef !4
  %i.bn = shl i64 %i.ax, 6
  %i.bo = sext i16 %i.bm to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = sext i16 %i.bk to i64
  %i.br = add i64 %i.s, %i.bq                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1553
  %i.bs = shl i64 %i.ax, 3                        ; 4 uses
  %i.bt = load i64, ptr %i.u, align 8, !noalias !1553, !noundef !4 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.45.8.copyload, align 8, !noalias !1553, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.bv = load i64, ptr %i.v, align 8, !alias.scope !1555, !noalias !1553, !noundef !4
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = load i64, ptr %i.w, align 8, !alias.scope !1555, !noalias !1553
  %i.by = icmp eq i64 %i.bx, 0
  %or.cond.i6.i.i.i.i.i.i.i = select i1 %i.bw, i1 true, i1 %i.by, !prof !11
  br i1 %or.cond.i6.i.i.i.i.i.i.i, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  store ptr null, ptr %i.aa, align 8, !alias.scope !1557, !noalias !1558
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1557, !noalias !1558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false), !alias.scope !1557, !noalias !1558
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.bz = load i64, ptr %i.x, align 8, !alias.scope !1555, !noalias !1553, !noundef !4 ; 3 uses
  %i.ca = sub i64 0, %i.bz
  %.not.i7.i.i.i.i.i.i.i = icmp slt i64 %i.bs, %i.ca
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.y, align 8, !alias.scope !1555, !noalias !1553, !noundef !4 ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %.not5.i8.i.i.i.i.i.i.i = icmp slt i64 %i.t, %i.cc
  br i1 %.not5.i8.i.i.i.i.i.i.i, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cd = add i64 %i.bs, 8
  %i.ce = add i64 %i.cd, %i.bz
  %.not6.i9.i.i.i.i.i.i.i = icmp sgt i64 %i.ce, %i.bt
  br i1 %.not6.i9.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cf = add i64 %i.cb, %i.t                     ; 2 uses
  %i.cg = add i64 %i.cf, 8
  %i.ch = load i64, ptr %i.z, align 8, !alias.scope !1555, !noalias !1553, !noundef !4
  %.not7.i10.i.i.i.i.i.i.i = icmp sgt i64 %i.cg, %i.ch
  br i1 %.not7.i10.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ci = mul i64 %i.cf, %i.bt
  %i.cj = getelementptr [2 x i8], ptr %i.bu, i64 %i.ci
  %i.ck = getelementptr [2 x i8], ptr %i.cj, i64 %i.bz
  %i.cl = getelementptr [2 x i8], ptr %i.ck, i64 %i.bs
  store ptr %i.cl, ptr %i.aa, align 8, !alias.scope !1554, !noalias !1553
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1554, !noalias !1553
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !1560, !noalias !1553
  store i64 %i.t, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1560, !noalias !1553
  store i64 8, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1560, !noalias !1553
  store i64 8, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1560, !noalias !1553
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1553
  %i.cm = sdiv i64 %i.bp, 8                       ; 4 uses
  %i.cn = sdiv i64 %i.br, 8                       ; 3 uses
  %i.co = load i64, ptr %i.ac, align 8, !noalias !1553, !noundef !4 ; 2 uses
  %i.cp = load ptr, ptr %.sroa.66.8.copyload, align 8, !noalias !1553, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !1562, !noalias !1553, !noundef !4
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = load i64, ptr %i.ae, align 8, !alias.scope !1562, !noalias !1553
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cr, i1 true, i1 %i.ct, !prof !11
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i
  store ptr null, ptr %i.ai, align 8, !alias.scope !1564, !noalias !1565
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1564, !noalias !1565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !alias.scope !1564, !noalias !1565
  br label %switch.lookup

bb.q:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i
  %i.cu = load i64, ptr %i.af, align 8, !alias.scope !1562, !noalias !1553, !noundef !4 ; 3 uses
  %i.cv = sub i64 0, %i.cu
  %.not.i.i.i.i.i.i.i.i = icmp slt i64 %i.cm, %i.cv
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1566
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cw = load i64, ptr %i.ag, align 8, !alias.scope !1562, !noalias !1553, !noundef !4 ; 2 uses
  %i.cx = sub i64 0, %i.cw
  %.not5.i.i.i.i.i.i.i.i = icmp slt i64 %i.cn, %i.cx
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1566
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cy = add nsw i64 %i.cm, 8
  %i.cz = add i64 %i.cy, %i.cu
  %.not6.i.i.i.i.i.i.i.i = icmp sgt i64 %i.cz, %i.co
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.v, label %bb.w, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1566
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.da = add i64 %i.cw, %i.cn                    ; 2 uses
  %i.db = add i64 %i.da, 8
  %i.dc = load i64, ptr %i.ah, align 8, !alias.scope !1562, !noalias !1553, !noundef !4
  %.not7.i.i.i.i.i.i.i.i = icmp sgt i64 %i.db, %i.dc
end_hunk_1
