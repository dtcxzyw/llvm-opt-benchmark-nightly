inline.NumInlined: 3566
inline.NumDeleted: 1489
begin_hunk_0_@_ZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEb:._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !42
  %i.s = select i1 %2, i64 5, i64 0               ; 3 uses
  br i1 %2, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i24

bb.a:                                             ; preds = %._crit_edge.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEb:._crit_edge.i.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i24: ; preds = %._crit_edge.i.i.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !48
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 21
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8compiler10objectivec14FieldGenerator24GenerateFieldDescriptionEPNS0_2io7PrinterEb:._crit_edge.i.i.i
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !42, !alias.scope !160
  %8 = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %8, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.s, ptr %i.v, align 8, !tbaa !48, !alias.scope !160
end_hunk_2
