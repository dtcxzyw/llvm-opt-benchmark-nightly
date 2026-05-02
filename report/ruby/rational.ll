inline.NumInlined: 570
inline.NumDeleted: 100
begin_hunk_0_@nurat_convert:bb.a
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !16
  %i.hy = and i64 %i.hx, 31
  %i.hz = icmp eq i64 %i.hy, 10
  %4 = icmp ne i32 %3, 0
  %or.cond235 = or i1 %4, %i.hz
  br i1 %or.cond235, label %rb_integer_type_p.exit.i.i151, label %bb.bb

rb_integer_type_p.exit.i.i151:                    ; preds = %k_integer_p.exit.thread
  %i.ia = inttoptr i64 %.482 to ptr               ; 2 uses
end_hunk_0
