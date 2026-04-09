inline.NumInlined: 147
inline.NumDeleted: 93
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %5 = sub i64 %.neg.i, %i.b
  %i.c = icmp ult i64 %5, %4
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
