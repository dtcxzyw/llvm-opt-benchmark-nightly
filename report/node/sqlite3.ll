inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3_str_vappendf:bb.a

.critedge:                                        ; preds = %.thread, %._crit_edge, %.preheader1240, %._crit_edge1287, %.critedge.loopexit.split.loop.exit1315, %bb.y
  %.46101108 = phi i32 [ %.0606, %bb.y ], [ %.0606, %.critedge.loopexit.split.loop.exit1315 ], [ %.0606, %._crit_edge1287 ], [ %.46101109, %.thread ], [ %.3609, %._crit_edge ], [ %.0606, %.preheader1240 ] ; 15 uses
  %.36811106 = phi i32 [ %.0678, %bb.y ], [ %.2680, %.critedge.loopexit.split.loop.exit1315 ], [ %i.cc, %._crit_edge1287 ], [ %.36811107, %.thread ], [ %.0678, %._crit_edge ], [ %.0678, %.preheader1240 ] ; 22 uses
  %.26961104 = phi i8 [ %.0694, %bb.y ], [ %.1695, %.critedge.loopexit.split.loop.exit1315 ], [ %.0694, %._crit_edge1287 ], [ %.26961105, %.thread ], [ %.0694, %._crit_edge ], [ %.0694, %.preheader1240 ] ; 3 uses
  %.16981102 = phi i8 [ %.0697, %bb.y ], [ %.0697, %.critedge.loopexit.split.loop.exit1315 ], [ %.0697, %._crit_edge1287 ], [ %.16981103, %.thread ], [ %.0697, %._crit_edge ], [ %.0697, %.preheader1240 ] ; 10 uses
  %.17131100 = phi i8 [ %.0712, %bb.y ], [ %.0712, %.critedge.loopexit.split.loop.exit1315 ], [ %.0712, %._crit_edge1287 ], [ %.17131101, %.thread ], [ %.0712, %._crit_edge ], [ %.0712, %.preheader1240 ] ; 8 uses
end_hunk_0
begin_hunk_1_@sqlite3_str_vappendf:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = sub i64 %i.ahb, %index
  %i.aho = trunc i64 %index to i32
  %4 = add i32 %i.aha, %i.aho
  %i.ahp = sub i32 %.36811106, %4
  %i.ahq = zext nneg i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %.11.ph, i64 %i.ahq ; 2 uses
  %i.ahs = getelementptr inbounds i8, ptr %i.ahr, i64 -15
end_hunk_1
begin_hunk_2_@sqlite3_str_vappendf:bb.a
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2024 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2028, %vec.epilog.vector.body ] ; 3 uses
  %i.ahz = sub i64 %i.ahb, %index2024
  %i.aia = trunc i64 %index2024 to i32
  %5 = add i32 %i.aha, %i.aia
  %i.aib = sub i32 %.36811106, %5
  %i.aic = zext nneg i32 %i.aib to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %.11.ph, i64 %i.aic
  %i.aie = getelementptr inbounds i8, ptr %i.aid, i64 -7
end_hunk_2
