inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@uv_pipe_chmod:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 0, i32 292
  %.not29 = icmp samesign ult i32 %1, 2
  %3 = select i1 %.not, i32 146, i32 438
  %.1 = select i1 %.not29, i32 %spec.select, i32 %3 ; 2 uses
  %i.i = tail call i32 @fchmod(i32 noundef %i.e, i32 noundef %.1) #11
  %.not30 = icmp eq i32 %i.i, 0
end_hunk_0
begin_hunk_1_@uv_pipe:bb.a
  %i.c = and i32 %2, 64
  %.not16 = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.b, %2
  %or.cond.not.not = icmp eq i32 %i.d, 0          ; 2 uses
  %.0 = select i1 %or.cond.not.not, i32 524288, i32 526336
  %i.e = call i32 @pipe2(ptr noundef nonnull %i.a, i32 noundef %.0) #11
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.c, label %bb.b
end_hunk_1
begin_hunk_2_@uv_pipe:bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %or.cond.not.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load <2 x i32>, ptr %i.a, align 8
end_hunk_2
