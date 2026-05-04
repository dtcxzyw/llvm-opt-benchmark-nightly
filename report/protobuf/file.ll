inline.NumInlined: 5513
inline.NumDeleted: 2439
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  br i1 %i.an, label %.thread32.i.i, label %bb.g, !prof !20

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS5_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  br label %bb.o

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  %i.gm = add i64 %.sroa.7.0.i, %i.gl
  %i.gn = and i64 %i.gm, %i.eg
  %i.go = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.fl, i64 %i.gn, i64 %.sroa.15.0.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread198 unwind label %bb.aq ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread198: ; preds = %.thread.i173
  %23 = load ptr, ptr %i.bg, align 8, !tbaa !12, !noalias !90
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %i.go
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bh, align 8, !tbaa !12, !noalias !90
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.go
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %24) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.ah:                                            ; preds = %.critedge18.i
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  %i.gr = add i64 %i.gq, %.sroa.7.0.i
  br label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.ac, %.noexc73, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread198
  %.sroa.5.0195 = phi ptr [ %i.gp, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread198 ], [ %i.bg, %bb.ac ], [ %i.fd, %.noexc73 ]
  store ptr %i.cf, ptr %.sroa.5.0195, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i171, %bb.ad, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %i.gs = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !11
  %.not.i.i75 = icmp ult i64 %i.gs, 131072
  br i1 %.not.i.i75, label %.loopexit216, label %bb.ai, !prof !21
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  br i1 %or.cond, label %_ZNSt15insert_iteratorIN4absl12lts_2025051213flat_hash_setIPKN6google8protobuf14FileDescriptorENS1_18container_internal6HashEqIS7_vE4HashENSA_2EqESaIS7_EEEEaSERKS7_.exit.i, label %"_ZZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorEENK3$_0clES7_.exit.thread.i"

bb.bz:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iteratorppEv.exit.i
  %i.nw = load ptr, ptr %i.no, align 8, !tbaa !12, !noalias !123 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.nw, i32 0, i32 1, i32 1), !noalias !123
  %i.nx = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.ny = xor i64 %i.nx, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.ou
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !13, !noalias !123
  %i.ox = icmp eq ptr %i.ow, %i.nq
  br i1 %i.ox, label %_ZNSt15insert_iteratorIN4absl12lts_2025051213flat_hash_setIPKN6google8protobuf14FileDescriptorENS1_18container_internal6HashEqIS7_vE4HashENSA_2EqESaIS7_EEEEaSERKS7_.exit.i, label %bb.cb, !prof !20

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oy = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
  %i.pd = add i64 %i.pc, %.sroa.6.0.i.i.i.i
  br label %bb.ca, !llvm.loop !129

"_ZZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorEENK3$_0clES7_.exit.thread.i": ; preds = %._crit_edge.i.i.i.i, %bb.by
  %i.pe = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSF_8iteratorENSF_14const_iteratorESK_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr %.sroa.5190.0, ptr %.sroa.10.0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.6.020.i)
          to label %.noexc134 unwind label %bb.cy ; 2 uses

end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8compiler10objectivec13FileGenerator11CommonState50CollectMinimalFileDepsContainingExtensionsInternalEPKNS0_14FileDescriptorE:bb.a
bb.cd:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZNSt15insert_iteratorIN4absl12lts_2025051213flat_hash_setIPKN6google8protobuf14FileDescriptorENS1_18container_internal6HashEqIS7_vE4HashENSA_2EqESaIS7_EEEEaSERKS7_.exit.i

_ZNSt15insert_iteratorIN4absl12lts_2025051213flat_hash_setIPKN6google8protobuf14FileDescriptorENS1_18container_internal6HashEqIS7_vE4HashENSA_2EqESaIS7_EEEEaSERKS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.by, %bb.cd, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sroa.5190.2 = phi ptr [ null, %bb.cd ], [ %.sroa.5190.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ %.sroa.5190.0, %bb.by ], [ %.sroa.5190.0, %.lr.ph.i.i.i.i ]
  %.sroa.10.2 = phi ptr [ %.sroa.10.1, %bb.cd ], [ %.sroa.10.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ %.sroa.10.0, %bb.by ], [ %.sroa.10.0, %.lr.ph.i.i.i.i ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i, i64 1 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.6.020.i, i64 8 ; 2 uses
  %i.qc = load i8, ptr %i.qa, align 1, !tbaa !68, !noalias !123 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertINSF_8iteratorEEEvT_SI_:bb.a
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertINSF_8iteratorEEEvT_SI_:bb.a
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.7.0.i, %i.bk
  %i.bm = and i64 %i.bl, %i.d
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ak, i64 %i.bm, i64 %.sroa.15.0.i), !noalias !168 ; 2 uses
  %5 = load ptr, ptr %i.a, align 8, !tbaa !12, !noalias !168
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.bn
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !168
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread

bb.i:                                             ; preds = %.critedge18.i
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertINSF_8iteratorEEEvT_SI_:bb.a
  %i.bq = add i64 %i.bp, %.sroa.7.0.i
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread: ; preds = %bb.d, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread9
  %.sroa.4.06 = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread9 ], [ %i.a, %bb.d ], [ %i.ab, %bb.f ]
  %i.br = load ptr, ptr %.sroa.6.022, align 8, !tbaa !13, !noalias !174
  store ptr %i.br, ptr %.sroa.4.06, align 8, !tbaa !13
end_hunk_10
begin_hunk_11_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  br i1 %i.ck, label %.lr.ph844, label %_ZNK6google8protobuf8compiler10objectivec13FileGenerator19DetermineNeededDepsEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEENS3_18PublicDepsHandlingE.exit

.lr.ph844:                                        ; preds = %.preheader804
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br label %bb.l

end_hunk_11
begin_hunk_12_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.ez = add i64 %.sroa.7.0.i, %i.ey
  %i.fa = and i64 %i.ez, %i.ct
  %i.fb = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.dy, i64 %i.fa, i64 %.sroa.15.0.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread747 unwind label %bb.u ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread747: ; preds = %.thread.i
  %46 = load ptr, ptr %i.cl, align 8, !tbaa !12, !noalias !394
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %i.fb
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.cm, align 8, !tbaa !12, !noalias !394
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.fb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %47) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.s:                                             ; preds = %.critedge18.i
end_hunk_12
begin_hunk_13_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.fe = add i64 %i.fd, %.sroa.7.0.i
  br label %bb.r

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.n, %.noexc249, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread747
  %.sroa.5732.0744 = phi ptr [ %i.fc, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread747 ], [ %i.cl, %bb.n ], [ %i.dq, %.noexc249 ]
  store ptr %i.cs, ptr %.sroa.5732.0744, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit: ; preds = %.lr.ph.i593, %bb.o, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 1 ; 2 uses
  %i.ff = load ptr, ptr %i.cg, align 8, !tbaa !210 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 52
end_hunk_13
begin_hunk_14_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  br i1 %i.ft, label %.lr.ph846, label %_ZNK6google8protobuf8compiler10objectivec13FileGenerator19DetermineNeededDepsEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEENS3_18PublicDepsHandlingE.exit

.lr.ph846:                                        ; preds = %.preheader803
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br label %bb.w

end_hunk_14
begin_hunk_15_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.ie = add i64 %.sroa.7.0.i600, %i.id
  %i.if = and i64 %i.ie, %i.fy
  %i.ig = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.hd, i64 %i.if, i64 %.sroa.15.0.i599)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread755 unwind label %bb.ag ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread755: ; preds = %.thread.i608
  %48 = load ptr, ptr %i.fu, align 8, !tbaa !12, !noalias !420
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 %i.ig
  %.sroa.0.0.copyload.i.i.i.i22.i609 = load ptr, ptr %i.fv, align 8, !tbaa !12, !noalias !420
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i609, i64 %i.ig
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %49) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread

bb.ae:                                            ; preds = %.critedge18.i606
end_hunk_15
begin_hunk_16_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.ij = add i64 %i.ii, %.sroa.7.0.i600
  br label %bb.ad

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread: ; preds = %bb.z, %.noexc263, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread755
  %.sroa.5725.0752 = phi ptr [ %i.ih, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread755 ], [ %i.fu, %bb.z ], [ %i.gv, %.noexc263 ]
  store ptr %i.fx, ptr %.sroa.5725.0752, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit265

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit265: ; preds = %.lr.ph.i602, %bb.aa, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i253.thread
  %i.ik = add nuw nsw i32 %.0146845, 1            ; 2 uses
  %i.il = load ptr, ptr %i.fp, align 8, !tbaa !210 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
end_hunk_16
begin_hunk_17_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i

.lr.ph842:                                        ; preds = %.preheader816
  %i.lt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br label %bb.bh

end_hunk_17
begin_hunk_18_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
          to label %.noexc622 unwind label %bb.bd ; 2 uses

.noexc622:                                        ; preds = %.noexc621
  %i.mx = load ptr, ptr %i.ln, align 8, !tbaa !12, !noalias !449
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mw ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i5.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !12, !noalias !449
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i5.i, i64 %i.mw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.my) ]
  br label %.noexc295

.noexc295:                                        ; preds = %.noexc622, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.ay, %bb.aw
end_hunk_18
begin_hunk_19_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.qi = add i64 %.sroa.7.0.i626, %i.qh
  %i.qj = and i64 %i.qi, %i.oc
  %i.qk = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ph, i64 %i.qj, i64 %.sroa.15.0.i625)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i302.thread763 unwind label %bb.bu ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i302.thread763: ; preds = %.thread.i634
  %50 = load ptr, ptr %i.lu, align 8, !tbaa !12, !noalias !477
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 %i.qk
  %.sroa.0.0.copyload.i.i.i.i22.i635 = load ptr, ptr %i.lv, align 8, !tbaa !12, !noalias !477
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i635, i64 %i.qk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %51) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i302.thread

bb.br:                                            ; preds = %.critedge18.i632
end_hunk_19
begin_hunk_20_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.qn = add i64 %i.qm, %.sroa.7.0.i626
  br label %bb.bq

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i302.thread: ; preds = %bb.bm, %.noexc312, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i302.thread763
  %.sroa.5717.0760 = phi ptr [ %i.ql, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i302.thread763 ], [ %i.lu, %bb.bm ], [ %i.oz, %.noexc312 ]
  store ptr %i.nu, ptr %.sroa.5717.0760, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit
end_hunk_20
begin_hunk_21_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br label %bb.bw

end_hunk_21
begin_hunk_22_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.tx = add i64 %.sroa.7.0.i646, %i.tw
  %i.ty = and i64 %i.tx, %i.rp
  %i.tz = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.sw, i64 %i.ty, i64 %.sroa.15.0.i645)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread772 unwind label %bb.cf ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread772: ; preds = %.thread.i654
  %52 = load ptr, ptr %i.rd, align 8, !tbaa !12, !noalias !503
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %i.tz
  %.sroa.0.0.copyload.i.i.i.i22.i655 = load ptr, ptr %i.re, align 8, !tbaa !12, !noalias !503
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i655, i64 %i.tz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %53) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread

bb.ce:                                            ; preds = %.critedge18.i652
end_hunk_22
begin_hunk_23_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.uc = add i64 %i.ub, %.sroa.7.0.i646
  br label %bb.cd

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread: ; preds = %bb.bz, %.noexc329, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread772
  %.sroa.5711.0769 = phi ptr [ %i.ua, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread772 ], [ %i.rd, %bb.bz ], [ %i.sn, %.noexc329 ]
  %i.ud = load ptr, ptr %.sroa.0713.0848, align 8, !tbaa !13, !noalias !509
  store ptr %i.ud, ptr %.sroa.5711.0769, align 8, !tbaa !13
end_hunk_23
begin_hunk_24_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  store ptr %i.uz, ptr %i.rc, align 8, !tbaa !188
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit331

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit331: ; preds = %.lr.ph.i648, %bb.ca, %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.cg, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i319.thread
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0713.0848, i64 8 ; 2 uses
  %.not792 = icmp eq ptr %i.va, %i.qz
  br i1 %.not792, label %._crit_edge850, label %bb.bw
end_hunk_24
begin_hunk_25_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  br i1 %or.cond791, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread777, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread

bb.co:                                            ; preds = %bb.cm
  %i.vr = load ptr, ptr %i.vh, align 8, !tbaa !12 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.vr, i32 0, i32 1, i32 1)
  %i.vs = ptrtoint ptr %i.vk to i64               ; 2 uses
  %i.vt = xor i64 %i.vs, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_25
begin_hunk_26_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.wp
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !13
  %i.ws = icmp eq ptr %i.wr, %i.vk
  br i1 %i.ws, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread777, label %bb.cq, !prof !20

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i
  %i.wt = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_26
begin_hunk_27_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  %i.wy = add i64 %i.wx, %.sroa.6.0.i.i.i.i
  br label %bb.cp, !llvm.loop !129

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread777: ; preds = %.lr.ph.i.i.i.i, %bb.cn
  %i.wz = load ptr, ptr %i.vc, align 8, !tbaa !210
  %i.xa = invoke noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.wz, i32 noundef %.0149851)
          to label %bb.cs unwind label %bb.cu
end_hunk_27
begin_hunk_28_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator12GenerateFileEPNS0_2io7PrinterENS3_17GeneratedFileTypeERKNS3_20GeneratedFileOptionsESt8functionIFvvEE:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  br label %.loopexit.split-lp

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.cn, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  %i.xd = add nuw nsw i32 %.0149851, 1            ; 2 uses
  %i.xe = load ptr, ptr %i.vc, align 8, !tbaa !210 ; 2 uses
end_hunk_28
begin_hunk_29_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator19DetermineNeededDepsEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEENS3_18PublicDepsHandlingE:bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit38

.lr.ph:                                           ; preds = %.preheader37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %bb.b
end_hunk_29
begin_hunk_30_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator19DetermineNeededDepsEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEENS3_18PublicDepsHandlingE:bb.a
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.7.0.i, %i.bu
  %i.bw = and i64 %i.bv, %i.p
  %i.bx = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.au, i64 %i.bw, i64 %.sroa.15.0.i), !noalias !594 ; 2 uses
  %3 = load ptr, ptr %i.g, align 8, !tbaa !12, !noalias !594
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %i.bx
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !594
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.i:                                             ; preds = %.critedge18.i
end_hunk_30
begin_hunk_31_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator19DetermineNeededDepsEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEENS3_18PublicDepsHandlingE:bb.a
  %i.ca = add i64 %i.bz, %.sroa.7.0.i
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.d, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread32
  %.sroa.4.029 = phi ptr [ %i.by, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread32 ], [ %i.g, %bb.d ], [ %i.am, %bb.f ]
  store ptr %i.o, ptr %.sroa.4.029, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit
end_hunk_31
begin_hunk_32_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
end_hunk_32
begin_hunk_33_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a, label %bb.f, !prof !20

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
end_hunk_33
begin_hunk_34_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !129

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !89
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !12
end_hunk_34
begin_hunk_35_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_:bb.a
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9
  %.0 = phi i64 [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.a ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

end_hunk_35
begin_hunk_36_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE30find_or_prepare_insert_non_sooIS9_EESJ_INSN_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_36
begin_hunk_37_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE30find_or_prepare_insert_non_sooIS9_EESJ_INSN_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_37
begin_hunk_38_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_38
begin_hunk_39_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_39
begin_hunk_40_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
end_hunk_40
begin_hunk_41_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
end_hunk_41
begin_hunk_42_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS5_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS5_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_42
begin_hunk_43_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf14FileDescriptorENS5_8compiler10objectivec13FileGenerator11CommonState12MinDepsEntryEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77) ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_43
begin_hunk_44_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSF_8iteratorENSF_14const_iteratorESK_:bb.a
  %i.y = mul i64 %i.x, -2543921745674291987
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i8 noundef signext %i.s), !noalias !879 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !12, !noalias !879
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !12, !noalias !879
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %bb.a
end_hunk_44
begin_hunk_45_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSF_8iteratorENSF_14const_iteratorESK_:bb.a
  %i.br = add i64 %.sroa.7.0.i, %i.bq
  %i.bs = and i64 %i.br, %i.a
  %i.bt = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ao, i64 %i.bs, i64 %.sroa.15.0.i), !noalias !882 ; 2 uses
  %i.bu = load ptr, ptr %i.af, align 8, !tbaa !12, !noalias !882
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.aw, align 8, !tbaa !12, !noalias !882
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
end_hunk_45
begin_hunk_46_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSF_8iteratorENSF_14const_iteratorESK_:bb.a

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bh
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bh ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12
  %.sroa.0.08 = phi ptr [ %i.bv, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12 ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ %i.ac, %bb.e ]
  %.sroa.5.05 = phi ptr [ %i.bw, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread12 ], [ %i.f, %bb.c ], [ %i.ae, %bb.e ] ; 2 uses
  %i.cb = load ptr, ptr %3, align 8, !tbaa !13, !noalias !888
  store ptr %i.cb, ptr %.sroa.5.05, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %.sroa.0.07 = phi ptr [ %i.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %.sroa.0.08, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sroa.5.06 = phi ptr [ %i.bz, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %.sroa.5.05, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ %i.g, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.07, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.5.06, 1
  ret { ptr, ptr } %.fca.1.insert
end_hunk_46
begin_hunk_47_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSC_8iteratorEbERKT_:bb.a
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i24 = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i24, i64 %i.am
end_hunk_47
begin_hunk_48_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSC_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink79 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink77 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink79) ]
  store ptr %.sink79, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_48
begin_hunk_49_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE4findIS7_EENSC_8iteratorERKT_:bb.a
.thread33.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.an, %.lr.ph.i.us.us ], [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeIS7_EENSC_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_49
