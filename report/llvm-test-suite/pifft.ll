inline.NumInlined: 52
begin_hunk_0_@mp_unsgn_imul:bb.a
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.al)
  %i.am = sub i64 %i.aj, %smin                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  %5 = shl i64 %indvar, 2
  %diff.check = icmp ugt i64 %5, -36
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph73.preheader107, label %vector.ph

end_hunk_0
