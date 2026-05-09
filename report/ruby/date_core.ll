inline.NumInlined: 1371
inline.NumDeleted: 154
begin_hunk_0_@f_zero_p:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc void @decode_year(i64 noundef %0, double noundef %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = select i1 %i.a, i32 584400, i32 584388   ; 3 uses
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.b, label %.critedge

end_hunk_0
begin_hunk_1_@decode_year:bb.a

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %.critedge
  %.lcssa.i = phi i64 [ %.pr.i, %.critedge ], [ %i.w, %.lr.ph.i ]
  %4 = shl nuw nsw i32 %i.b, 1
  %5 = or disjoint i32 %4, 1
  %6 = zext nneg i32 %5 to i64                    ; 2 uses
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.v, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef %6) #19 ; 10 uses
  store i64 %i.x, ptr %2, align 8, !tbaa !10
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
end_hunk_1
begin_hunk_2_@decode_year:bb.a
  br i1 %.not35, label %f_zero_p.exit.thread, label %f_zero_p.exit.thread42

f_zero_p.exit.thread:                             ; preds = %bb.h, %rb_type.exit.i, %rb_type.exit.thread8.i, %f_zero_p.exit
  %i.am = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.v, i64 noundef 37, i32 noundef 1, i64 noundef %6) #19
  br label %f_zero_p.exit.thread42

f_zero_p.exit.thread42:                           ; preds = %bb.h, %rb_type.exit.thread8.i, %f_zero_p.exit.thread, %f_zero_p.exit
end_hunk_2
