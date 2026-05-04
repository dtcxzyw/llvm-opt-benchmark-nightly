inline.NumInlined: 8841
inline.NumDeleted: 3443
begin_hunk_0_@_ZNK6google8protobuf8compiler20CommandLineInterface25GetTransitiveDependenciesEPKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setIS5_NS7_18container_internal6HashEqIS5_vE4HashENSB_2EqESaIS5_EEEPNS0_16RepeatedPtrFieldINS0_19FileDescriptorProtoEEERKNS1_27TransitiveDependencyOptionsE:bb.a
  %i.bs = add i64 %i.br, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread59, %bb.c, %bb.e
  %.sroa.4.053 = phi ptr [ %i.bq, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread59 ], [ %i.f, %bb.c ], [ %i.ab, %bb.e ]
  store ptr %1, ptr %.sroa.4.053, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %.sroa.4.0..sroa_idx.i.i75, align 8, !tbaa !26
  %.not.i.i.i = icmp ugt i64 %i.am, 131071
  %i.an = load ptr, ptr %i.j, align 8
  %8 = icmp eq ptr %i.an, %i.ai
  %or.cond = select i1 %.not.i.i.i, i1 %8, i1 false
  br i1 %or.cond, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i.thread

bb.i:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !34  ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.ao, i32 0, i32 1, i32 1)
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.aq = xor i64 %i.ap, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = icmp eq ptr %i.bo, %i.ai
  br i1 %i.bp, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i, label %bb.k, !prof !41

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bq = add i16 %.sroa.017.047.i.i, -1
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
  %i.bv = add i64 %i.bu, %.sroa.6.0.i.i
  br label %bb.j, !llvm.loop !606

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i: ; preds = %.lr.ph.i.i
  %9 = icmp eq ptr %i.ao, null
  br i1 %9, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i.thread: ; preds = %._crit_edge.i.i, %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i
  %i.bw = load i64, ptr %3, align 8, !tbaa !7, !noalias !607 ; 5 uses
  %i.bx = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %i.bx)
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
  %i.eh = add i64 %i.eg, %.sroa.7.0.i
  br label %bb.r

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %.noexc, %bb.n, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread197
  %.sroa.5181.0194 = phi ptr [ %i.ef, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread197 ], [ %i.l, %bb.n ], [ %i.ct, %.noexc ]
  store ptr %i.ai, ptr %.sroa.5181.0194, align 8, !tbaa !31
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
          cleanup
  br label %bb.an

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.h, %bb.o, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i
  %i.ek = add nuw nsw i32 %.051229, 1             ; 2 uses
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !43
  %i.em = icmp slt i32 %i.ek, %i.el
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a

bb.z:                                             ; preds = %bb.y
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx.i.i75, align 8, !tbaa !26
  %.not.i.i.i94 = icmp ugt i64 %i.fd, 131071
  %i.fe = load ptr, ptr %i.j, align 8
  %10 = icmp eq ptr %i.fe, %i.ez
  %or.cond314 = select i1 %.not.i.i.i94, i1 %10, i1 false
  br i1 %or.cond314, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit112, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87.thread

bb.aa:                                            ; preds = %bb.y
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !34  ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.ff, i32 0, i32 1, i32 1)
  %i.fg = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fh = xor i64 %i.fg, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i77, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !31
  %i.gg = icmp eq ptr %i.gf, %i.ez
  br i1 %i.gg, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87, label %bb.ac, !prof !41

bb.ac:                                            ; preds = %.lr.ph.i.i82
  %i.gh = add i16 %.sroa.017.047.i.i83, -1
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
  %i.gm = add i64 %i.gl, %.sroa.6.0.i.i80
  br label %bb.ab, !llvm.loop !606

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87: ; preds = %.lr.ph.i.i82
  %11 = icmp eq ptr %i.ff, null
  br i1 %11, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit112

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87.thread: ; preds = %._crit_edge.i.i85, %bb.z, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87
  %i.gn = load i64, ptr %3, align 8, !tbaa !7, !noalias !636 ; 5 uses
  %i.go = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %i.go)
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
  %i.iy = add i64 %i.ix, %.sroa.7.0.i138
  br label %bb.aj

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i100.thread: ; preds = %.noexc110, %bb.af, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i100.thread205
  %.sroa.5.0202 = phi ptr [ %i.iw, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i100.thread205 ], [ %i.l, %bb.af ], [ %i.hk, %.noexc110 ]
  store ptr %i.ez, ptr %.sroa.5.0202, align 8, !tbaa !31
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit112
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8compiler20CommandLineInterface18WriteDescriptorSetERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE:bb.a
          cleanup
  br label %bb.an

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit112: ; preds = %.lr.ph.i140, %bb.z, %bb.x, %bb.ag, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i100.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE10find_largeIS8_EENSF_8iteratorERKT_m.exit.i87
  %i.jb = add nuw nsw i32 %.050230, 1             ; 2 uses
  %i.jc = load i32, ptr %i.ae, align 4, !tbaa !63
  %i.jd = icmp slt i32 %i.jb, %i.jc
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_:bb.a
.thread33.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, %.lr.ph.i
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE4findIS9_EENSH_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.az, %.lr.ph.i.us.us ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7 ]
  %.us-phi12 = phi ptr [ %i.ba, %.lr.ph.i.us.us ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE10find_largeIS9_EENSH_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7, %.lr.ph.i
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS8_St6vectorIS8_SE_EEEEEvT_SO_:bb.a
  %i.bq = add i64 %i.bp, %.sroa.7.0.i
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread: ; preds = %bb.f, %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread9
  %.sroa.4.06 = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.thread9 ], [ %i.a, %bb.d ], [ %i.ab, %bb.f ]
  %i.br = load ptr, ptr %.sroa.02.018, align 8, !tbaa !31, !noalias !946
  store ptr %i.br, ptr %.sroa.4.06, align 8, !tbaa !31
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf8compiler12_GLOBAL__N_122HasDebugRedactBehaviorERKNS0_15FieldDescriptorERN4absl12lts_2025051213flat_hash_mapIPKNS0_10DescriptorEbNS7_18container_internal6HashEqISB_vE4HashENSE_2EqESaISt4pairIKSB_bEEEE:bb.a
  %i.am = mul i64 %i.al, -2543921745674291987
  %i.an = tail call noundef i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.an, i8 noundef signext %i.ag), !noalias !1018 ; 2 uses
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !34, !noalias !1018, !nonnull !76, !noundef !76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !34, !noalias !1018
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ao
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE26find_or_prepare_insert_sooIS8_EESE_INSI_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSE_8iteratorEbERKT_:bb.a
  %i.ar = add i64 %.sroa.7.0, %i.aq
  %i.as = and i64 %i.ar, %i.k
  %i.at = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.g, i64 %i.as, i64 %.sroa.15.0) ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.at
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSE_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.av, %.thread ], [ %i.az, %.critedge20 ]
  %.sink76 = phi ptr [ %i.aw, %.thread ], [ %i.af, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface20GeneratorContextImplESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface20GeneratorContextImplESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf8compiler20CommandLineInterface20GeneratorContextImplESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_24
begin_hunk_25_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE30find_or_prepare_insert_non_sooIS9_EESD_INSH_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_25
begin_hunk_26_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE30find_or_prepare_insert_non_sooIS9_EESD_INSH_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_26
begin_hunk_27_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !76, !noundef !76
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
end_hunk_27
begin_hunk_28_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_28
begin_hunk_29_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_29
begin_hunk_30_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.az, %.lr.ph.i.us.us ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7 ]
  %.us-phi12 = phi ptr [ %i.ba, %.lr.ph.i.us.us ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, %.lr.ph.i
end_hunk_30
begin_hunk_31_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findIS9_EENSM_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.az, %.lr.ph.i.us.us ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7 ]
  %.us-phi12 = phi ptr [ %i.ba, %.lr.ph.i.us.us ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeIS9_EENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i7, %.lr.ph.i
end_hunk_31
