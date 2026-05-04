inline.NumInlined: 1242
inline.NumDeleted: 657
begin_hunk_0_@_ZN6google8protobuf8compiler6csharp13EnumGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  store i64 %i.an, ptr %i.al, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 1, ptr %10, align 8
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler6csharp13EnumGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.hx = add i64 %.us-phi178, %i.hw
  %i.hy = and i64 %i.hx, %i.fy
  %i.hz = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.fv, i64 %i.hy, i64 %.us-phi177)
          to label %bb.ah unwind label %.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %.critedge18.i
  %i.ia = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler6csharp13EnumGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  br label %.noexc112.split

bb.ah:                                            ; preds = %.thread.i
  %20 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !92
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %i.hz
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.aw, align 8, !tbaa !30, !noalias !92
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.hz ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %21) ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 3 uses
  store ptr %i.id, ptr %i.ic, align 8, !tbaa !100
  %i.ie = load ptr, ptr %12, align 8, !tbaa !39, !noalias !101 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_:bb.a
  %i.s = mul i64 %i.r, -2543921745674291987
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i8 noundef signext %i.p), !noalias !259 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !30, !noalias !259
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !30, !noalias !259
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_:bb.a
  %i.bi = add i64 %.sroa.7.0.i, %i.bh
  %i.bj = and i64 %i.bi, %i.a
  %i.bk = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.af, i64 %i.bj, i64 %.sroa.15.0.i), !noalias !262 ; 2 uses
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !30, !noalias !262
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.an, align 8, !tbaa !30, !noalias !262
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bk
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge18.i
  %i.bo = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_:bb.a
.critedge20.i:                                    ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge20.i
  %.sink77.i = phi ptr [ %i.bm, %.thread.i ], [ %i.br, %.critedge20.i ] ; 2 uses
  %.sink75.i = phi ptr [ %i.bn, %.thread.i ], [ %i.bq, %.critedge20.i ]
  %.sink.i4 = phi i8 [ 1, %.thread.i ], [ 0, %.critedge20.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit
  %.sink77.i.sink = phi ptr [ %.sink77.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit ], [ %i.w, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sink75.i.sink = phi ptr [ %.sink75.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit ], [ %i.y, %bb.e ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.sink.i4.sink = phi i8 [ %.sink.i4, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE30find_or_prepare_insert_non_sooIiEESt4pairINSB_8iteratorEbERKT_.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink77.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75.i.sink, ptr %.sroa.4.0..sroa_idx.i5, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_8
