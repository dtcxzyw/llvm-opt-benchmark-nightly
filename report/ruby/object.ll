inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_convert_to_float:bb.a

bb.o:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %2 = icmp eq i64 %i.ah, 0
  %i.ai = and i64 %i.ah, 7
  %3 = icmp ne i64 %i.ai, 0
  %4 = or i1 %2, %3
  %5 = icmp eq i32 %1, 0
  %or.cond.not = and i1 %5, %4
  br i1 %or.cond.not, label %rb_float_new_inline.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  %.not11 = icmp eq i32 %1, 0
end_hunk_0
