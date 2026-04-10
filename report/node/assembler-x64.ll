inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0_@_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi:bb.a
  br i1 %i.h, label %_ZNK2v88internal5Label3posEv.exit, label %bb.b

_ZNK2v88internal5Label3posEv.exit:                ; preds = %bb.a
  %4 = xor i32 %i.g, -1
  %i.i = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi:bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %.neg = sub i64 %i.m, %i.l
  %.neg16 = trunc i64 %.neg to i32
  %i.n = add i32 %3, -4
  %5 = add i32 %i.n, %4
  %i.o = add i32 %5, %.neg16
  store i32 %i.o, ptr %i.i, align 1, !alias.scope !113
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.p, ptr %i.d, align 8
end_hunk_1
