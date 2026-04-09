inline.NumInlined: 632
inline.NumDeleted: 362
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE17_M_default_appendEm:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.x = lshr i64 %3, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.z = sub i64 %i.d, %i.e
  %i.aa = and i64 %i.z, -8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.aa
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.aa
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !205  ; 6 uses
  %5 = sub i64 %2, %i.b
  %6 = add i64 %5, 9223372036854775807
  %i.c = icmp ult i64 %6, %4
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_1
