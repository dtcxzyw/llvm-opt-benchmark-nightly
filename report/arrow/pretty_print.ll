inline.NumInlined: 4037
inline.NumDeleted: 1046
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ArrayPrinter5VisitERKNS_10UnionArrayE:_ZN5arrow6StatusD2Ev.exit

_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre136.pre = load ptr, ptr %i.ep, align 8, !tbaa !834
  %.pre.pre = load ptr, ptr %i.eq, align 8, !tbaa !833
  store ptr %i.fa, ptr %14, align 8, !tbaa !841
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !835
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ew
  store ptr %16, ptr %i.ey, align 8, !tbaa !839
  %.pre139 = ptrtoint ptr %.pre.pre to i64
  %.pre140.a = ptrtoint ptr %.pre136.pre to i64
  %.pre142 = sub i64 %.pre139, %.pre140.a
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm.exit

end_hunk_0
