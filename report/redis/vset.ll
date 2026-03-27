begin_hunk_0
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i32 1, i32 -1
  %i.s = sitofp i32 %i.r to float
  %i.t = fmul nnan float %i.s, %i.i
  br label %bit_count.exit.us

bit_count.exit.us:                                ; preds = %bit_count.exit.us.loopexit, %bb.b
end_hunk_0
