inline.NumInlined: 701
inline.NumDeleted: 154
begin_hunk_0_@make_clock_result:bb.a
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @timetick2integer(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = trunc nuw i32 %2 to i1                     ; 3 uses
  br i1 %4, label %.lr.ph.i, label %reduce_factors.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !211    ; 4 uses
end_hunk_0
begin_hunk_1_@timetick2integer:bb.a
  %.pre-phi = phi i64 [ %.pre85, %..peel.begin_crit_edge ], [ %i.n, %bb.d ]
  %i.s = mul nsw i64 %i.j, 1000000000
  %i.t = add i64 %i.s, %.pre-phi                  ; 3 uses
  br i1 %4, label %bb.f, label %.preheader78

bb.f:                                             ; preds = %.peel.begin
  %i.u = load i64, ptr %1, align 8, !tbaa !211    ; 2 uses
end_hunk_1
begin_hunk_2_@timetick2integer:bb.a
  %i.ar = shl nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.an, i64 noundef 43, i32 noundef 1, i64 noundef %i.as) #27 ; 3 uses
  br i1 %4, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %rb_ll2num_inline.exit68
  %i.au = load i64, ptr %1, align 8, !tbaa !211   ; 4 uses
end_hunk_2
begin_hunk_3_@timetick2integer:bb.a
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @timetick2dblnum(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = trunc nuw i32 %2 to i1
  br i1 %4, label %.lr.ph.i, label %reduce_factors.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !211    ; 4 uses
end_hunk_3
