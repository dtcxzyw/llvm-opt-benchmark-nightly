inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a
  br i1 %or.cond153.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i

bb.an:                                            ; preds = %bb.al
  %i.gr = load ptr, ptr %i.fv, align 8, !tbaa !36 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 1, i32 1)
  %i.gs = and i64 %.0189.i, 4294967295
  %i.gt = xor i64 %i.gs, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = icmp eq i32 %i.ho, %i.gk
  br i1 %i.hp, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i, label %bb.ap, !prof !102

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i50.i
  %i.hq = add i16 %.sroa.017.047.i.i.i.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a
  %i.hv = add i64 %i.hu, %.sroa.6.0.i.i.i.i.i
  br label %bb.ao, !llvm.loop !103

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i: ; preds = %.lr.ph.i.i.i.i50.i
  %.not153.i = icmp eq ptr %i.gr, null
  br i1 %.not153.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i, %bb.am
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %.0189.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !91 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef 104) #25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i: ; preds = %._crit_edge.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i, %bb.am
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %.0189.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !91 ; 3 uses
  %i.ib = load i32, ptr %i.ef, align 4, !tbaa !93 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_:bb.a
  %i.s = mul i64 %i.r, -2543921745674291987
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i8 noundef signext %i.p), !noalias !245 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !36, !noalias !245, !nonnull !88, !noundef !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !36, !noalias !245
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.u
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_:bb.a
  %i.bi = add i64 %.sroa.7.0.i, %i.bh
  %i.bj = and i64 %i.bi, %i.a
  %i.bk = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.af, i64 %i.bj, i64 %.sroa.15.0.i), !noalias !248 ; 2 uses
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !36, !noalias !248, !nonnull !88, !noundef !88
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.an, align 8, !tbaa !36, !noalias !248
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bk
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge18.i
  %i.bo = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_:bb.a
.critedge20.i:                                    ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.critedge20.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink76.i.sink = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ %i.w, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ %i.bm, %.thread.i ], [ %i.br, %.critedge20.i ]
  %.sink75.i.sink = phi ptr [ %i.g, %bb.d ], [ %i.y, %bb.e ], [ %i.f, %bb.c ], [ %i.bn, %.thread.i ], [ %i.bq, %.critedge20.i ]
  %.sink.i4.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge20.i ]
  store ptr %.sink76.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75.i.sink, ptr %.sroa.4.0..sroa_idx.i5, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_6
