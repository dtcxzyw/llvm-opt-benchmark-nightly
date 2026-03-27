begin_hunk_0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load <13 x i32>, ptr %i.l, align 4
  %i.q = shufflevector <13 x i32> %i.p, <13 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 12>
  %.fr = freeze <4 x i32> %i.q
  %i.r = icmp slt <4 x i32> %.fr, splat (i32 1)
  %i.s = bitcast <4 x i1> %i.r to i4
  %.not37 = icmp eq i4 %i.s, 0
  br i1 %.not37, label %._crit_edge, label %bb.b
end_hunk_0
