inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@halide_float16_bits_to_float:entry
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %i.a = tail call range(i32 22, 33) i32 @llvm.ctlz.i32(i32 %and2, i1 true)
  %sub6 = xor i32 %i.a, 31                        ; 3 uses
  %shl7 = shl nuw nsw i32 1, %sub6
  %neg = xor i32 %shl7, -1
  %and8 = and i32 %and2, %neg
  %sub9 = sub nuw nsw i32 23, %sub6
  %shl10 = shl i32 %and8, %sub9
  %add11 = shl nuw nsw i32 %sub6, 23
  %shl12 = add nuw nsw i32 %add11, 864026624
  %i.b = or i32 %shl10, %shl12
  br label %if.end28

if.else:                                          ; preds = %entry
end_hunk_0
