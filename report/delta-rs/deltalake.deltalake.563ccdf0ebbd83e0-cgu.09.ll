begin_hunk_0
  %i.al = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.al)
  %i.am = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %i.an = sub nuw i64 %i.am, %i.a
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs7p2uQeJxui2_9deltalake.exit

end_hunk_0
