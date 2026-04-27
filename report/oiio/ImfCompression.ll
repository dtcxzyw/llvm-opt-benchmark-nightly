inline.NumInlined: 449
inline.NumDeleted: 143
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_524getCompressionIdFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11CompressionE:bb.a
  br i1 %i.aj, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN27OpenImageIO_v3_1_Imf__3_3_511CompressionESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN27OpenImageIO_v3_1_Imf__3_3_511CompressionESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.lr.ph
  %.sroa.013.018 = phi ptr [ %i.ao, %.lr.ph ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.018) ]
  %i.ak = load i8, ptr %.sroa.013.018, align 1, !tbaa !13
  %i.al = sext i8 %i.ak to i32
  %i.am = call i32 @tolower(i32 noundef %i.al) #26
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N27OpenImageIO_v3_1_Imf__3_3_511CompressionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_:bb.a
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68
  %i.bb = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i10) #24 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N27OpenImageIO_v3_1_Imf__3_3_511CompressionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_:bb.a
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.j, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.i, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %i.bv, %bb.m ], [ %spec.select, %bb.h ], [ %spec.select74, %bb.l ], [ null, %bb.j ], [ %i.az, %bb.i ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.aj, %bb.f ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %i.bw, %bb.m ], [ %spec.select73, %bb.h ], [ %spec.select75, %bb.l ], [ %i.bf, %bb.j ], [ %i.ba, %bb.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.aj, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
end_hunk_2
