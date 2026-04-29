inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0_@copyPredMB:bb.a
  br i1 %.not605, label %.loopexit, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c
  %i.dr = ashr i32 %i.k, %i.f                     ; 8 uses
  %i.ds = ashr i32 %i.do, %i.f                    ; 6 uses
  %.not613 = icmp sgt i32 %i.dr, %i.ds
  %i.dt = shl i32 %i.j, 2                         ; 3 uses
end_hunk_0
begin_hunk_1_@copyPredMB:bb.a
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.op28 = add i32 %i.dr, %invariant.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = add i64 %index, %i.ec             ; 2 uses
  %i.fj = trunc i64 %index to i32
  %.reass29 = add i32 %i.fj, %invariant.op28
  %i.fk = sext i32 %.reass29 to i64
  %i.fl = getelementptr [2 x i8], ptr %1, i64 %i.fk ; 4 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 512
end_hunk_1
begin_hunk_2_@copyPredMB:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.op30 = add i32 %i.dr, %invariant.op
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.fv = add i64 %index22, %i.ec                 ; 2 uses
  %i.fw = trunc i64 %index22 to i32
  %.reass31 = add i32 %i.fw, %invariant.op30
  %i.fx = sext i32 %.reass31 to i64
  %i.fy = getelementptr [2 x i8], ptr %1, i64 %i.fx ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 512
end_hunk_2
