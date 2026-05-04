inline.NumInlined: 4892
inline.NumDeleted: 1492
begin_hunk_0_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread249.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i, %bb.bc
  %i.kw = phi i64 [ %.pre258.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i ], [ 1, %bb.bc ], [ %i.ij, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.3.0248.i.i.i.i = phi ptr [ %.sroa.3.0247.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.thread.i.i.i.i ], [ %i.dt, %bb.bc ], [ %i.kg, %.lr.ph.i.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.3.0248.i.i.i.i, i64 8
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %i.kz = icmp eq i32 %i.ky, 1
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %or.cond.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.lf = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 1, i32 1)
  %i.lg = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.lh = xor i64 %i.lg, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !100
  %i.mg = icmp eq ptr %i.mf, %i.ii
  br i1 %i.mg, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i, label %bb.bl, !prof !137

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mh = add i16 %.sroa.017.046.i.i.i.i.i.i.i, -1
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.mm = add i64 %i.ml, %.sroa.6.0.i.i.i93.i.i.i.i
  br label %bb.bk, !llvm.loop !144

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %43 = icmp eq ptr %i.lf, null
  br i1 %43, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.md, i64 noundef 16)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i unwind label %bb.bu

end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i77.i.i.i.i, align 8, !tbaa !51
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE5eraseIS8_EEmRKT_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.thread9.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE4findIS8_EENSI_8iteratorERKT_.exit.i.i.i.i.i, %bb.bi
  %i.mn = load i64, ptr %21, align 8, !tbaa !93, !noalias !145 ; 5 uses
  %i.mo = icmp ne i64 %i.mn, 0
  call void @llvm.assume(i1 %i.mo)
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread266.i.i.i.i: ; preds = %.lr.ph.i187.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i, %bb.bz
  %.sroa.3243.0265.i.i.i.i = phi ptr [ %.sroa.3243.0264.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE22find_or_prepare_insertIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i99.thread.i.i.i.i ], [ %i.dt, %bb.bz ], [ %i.qv, %.lr.ph.i187.i.i.i.i ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.3243.0265.i.i.i.i, i64 8 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !3
  %i.rn = add nsw i32 %i.rm, -1
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !19, !noundef !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  %i.cs = add i64 %i.cr, %.sroa.7.0.i
  br label %bb.j

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.h, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread92
  %.sroa.485.089 = phi ptr [ %i.cq, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread92 ], [ %i.af, %bb.f ], [ %i.bb, %bb.h ]
  store ptr %0, ptr %.sroa.485.089, align 8, !tbaa !100
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  br i1 %.not, label %.thread32.i.i, label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.fc = load ptr, ptr %i.ec, align 8, !tbaa !52 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.fc, i32 0, i32 1, i32 1)
  %i.fd = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.fe = xor i64 %i.fd, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !100
  %i.gd = icmp eq ptr %i.gc, %i.ei
  br i1 %i.gd, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit, label %bb.y, !prof !137

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ge = add i16 %.sroa.017.046.i.i, -1
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  %i.gj = add i64 %i.gi, %.sroa.6.0.i.i
  br label %bb.x, !llvm.loop !686

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %8 = icmp eq ptr %i.fc, null
  br i1 %8, label %.critedge, label %.thread32.i.i

.critedge:                                        ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit.a, %bb.v, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 1, ptr %7, align 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  resume { ptr, i32 } %i.ha

.thread32.i.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE4findIS8_EENSL_8iteratorERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  %i.ka = add i64 %i.jz, %.sroa.7.0.i64
  br label %bb.al

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread: ; preds = %bb.aj, %bb.ah, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread100
  %.sroa.4.097 = phi ptr [ %i.jy, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i49.thread100 ], [ %i.hl, %bb.ah ], [ %i.ii, %bb.aj ]
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !725
  store ptr %i.kb, ptr %.sroa.4.097, align 8, !tbaa !100
end_hunk_14
begin_hunk_15_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_124AnalyzeDependencyForFileEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS6_NS8_18container_internal6HashEqIS6_vE4HashENSC_2EqESaIS6_EEEPNS8_13flat_hash_mapIS6_SG_SD_SE_SaISt4pairIKS6_SG_EEEEPNSI_IS6_iSD_SE_SaISJ_ISK_iEEEE:bb.a
  %i.kh = icmp slt i32 %i.kd, %i.kg
  br i1 %i.kh, label %bb.s, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, !llvm.loop !726

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit34, %.lr.ph.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread, %bb.g
  ret void
}

end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, label %bb.f, !prof !137

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !730

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %2 = icmp eq ptr %i.k, null
  br i1 %2, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !51
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit
  %.0 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9 ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !19, !noundef !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS0_13flat_hash_setIS8_NS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EEEEESC_SD_SaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !19, !noundef !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorEiEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_iEEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.i
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !19, !noundef !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i24 = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i24, i64 %i.ap
end_hunk_24
begin_hunk_25_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink79 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink77 = phi ptr [ %i.as, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink79, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_25
