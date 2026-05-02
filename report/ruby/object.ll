inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_convert_to_float:bb.a

bb.o:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %2 = icmp ne i64 %i.ah, 0
  %i.ai = and i64 %i.ah, 7
  %3 = icmp eq i64 %i.ai, 0
  %.not18 = and i1 %2, %3
  %4 = trunc nuw i32 %1 to i1
  %or.cond = select i1 %.not18, i1 true, i1 %4
  br i1 %or.cond, label %bb.p, label %rb_float_new_inline.exit15

bb.p:                                             ; preds = %bb.o, %bb.a
  %.not11 = icmp eq i32 %1, 0
end_hunk_0
