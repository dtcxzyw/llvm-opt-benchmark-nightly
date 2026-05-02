inline.NumInlined: 570
inline.NumDeleted: 100
begin_hunk_0_@nurat_convert:bb.a
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !16
  %i.hy = and i64 %i.hx, 31
  %i.hz = icmp eq i64 %i.hy, 10
  %4 = zext i1 %i.hz to i32
  %5 = or i32 %3, %4
  %or.cond.not234 = icmp eq i32 %5, 0
  br i1 %or.cond.not234, label %bb.bb, label %rb_integer_type_p.exit.i.i151

rb_integer_type_p.exit.i.i151:                    ; preds = %k_integer_p.exit.thread
  %i.ia = inttoptr i64 %.482 to ptr               ; 2 uses
end_hunk_0
