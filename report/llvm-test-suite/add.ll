inline.NumInlined: 2
begin_hunk_0_@gsm_abs
define dso_local signext range(i16 0, -32768) i16 @gsm_abs(i16 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i16 %0, 0
  %1 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %0)
  %i.b = select i1 %i.a, i16 %1, i16 %0
  ret i16 %i.b
}

end_hunk_0
