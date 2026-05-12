inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 9223372036854775807, %i.f
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_1
