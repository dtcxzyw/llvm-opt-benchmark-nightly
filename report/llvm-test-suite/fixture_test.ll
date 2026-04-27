inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN23MyFixture_Bar_Benchmark13BenchmarkCaseERN9benchmark5StateE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.s, align 32, !tbaa !48  ; 3 uses
  %.not25 = icmp eq ptr %i.u, %i.v
  br i1 %.not25, label %bb.f, label %_ZNK9benchmark5State5rangeEm.exit

end_hunk_0
begin_hunk_1_@_ZN23MyFixture_Bar_Benchmark13BenchmarkCaseERN9benchmark5StateE:bb.a
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_:bb.a
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68
  %i.bb = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i10) #17 ; 2 uses
  %.not.i.i.i30 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_:bb.a
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.j, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.i, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %i.bv, %bb.m ], [ %spec.select, %bb.h ], [ %spec.select74, %bb.l ], [ null, %bb.j ], [ %i.az, %bb.i ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.aj, %bb.f ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %i.bw, %bb.m ], [ %spec.select73, %bb.h ], [ %spec.select75, %bb.l ], [ %i.bf, %bb.j ], [ %i.ba, %bb.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.aj, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
end_hunk_3
