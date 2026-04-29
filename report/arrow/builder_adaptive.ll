inline.NumInlined: 907
inline.NumDeleted: 390
begin_hunk_0_@_ZN5arrow18AdaptiveIntBuilder13ExpandIntSizeEh:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 5 uses
  %i.y = and i64 %i.s, 15
  %i.z = mul i64 %n.vec, -2
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.z
  %4 = sub nsw i64 0, %n.vec
  %i.ab = getelementptr i8, ptr %i.x, i64 %4
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN5arrow18AdaptiveIntBuilder13ExpandIntSizeEh:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.s, 9223372036854775804    ; 4 uses
  %i.ah = and i64 %i.s, 3
  %i.ai = mul i64 %n.vec11, -2
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ai
  %5 = sub nsw i64 0, %n.vec11
  %i.ak = getelementptr i8, ptr %i.x, i64 %5
  br label %vec.epilog.vector.body

end_hunk_1
begin_hunk_2_@_ZN5arrow18AdaptiveIntBuilder14ExpandIntSizeNIiEENS_6StatusEv:bb.a

vector.ph18:                                      ; preds = %vector.memcheck
  %n.vec20 = and i64 %i.q, 9223372036854775800    ; 4 uses
  %i.w = and i64 %i.q, 7
  %i.x = mul i64 %n.vec20, -4
  %i.y = getelementptr i8, ptr %i.u, i64 %i.x
  %4 = sub nsw i64 0, %n.vec20
  %i.z = getelementptr i8, ptr %i.v, i64 %4
  br label %vector.body21

end_hunk_2
begin_hunk_3_@_ZN5arrow19AdaptiveUIntBuilder13ExpandIntSizeEh:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 5 uses
  %i.y = and i64 %i.s, 15
  %i.z = mul i64 %n.vec, -2
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.z
  %4 = sub nsw i64 0, %n.vec
  %i.ab = getelementptr i8, ptr %i.x, i64 %4
  br label %vector.body

end_hunk_3
begin_hunk_4_@_ZN5arrow19AdaptiveUIntBuilder13ExpandIntSizeEh:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.s, 9223372036854775804    ; 4 uses
  %i.ah = and i64 %i.s, 3
  %i.ai = mul i64 %n.vec11, -2
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ai
  %5 = sub nsw i64 0, %n.vec11
  %i.ak = getelementptr i8, ptr %i.x, i64 %5
  br label %vec.epilog.vector.body

end_hunk_4
begin_hunk_5_@_ZN5arrow19AdaptiveUIntBuilder14ExpandIntSizeNIjEENS_6StatusEv:bb.a

vector.ph18:                                      ; preds = %vector.memcheck
  %n.vec20 = and i64 %i.q, 9223372036854775800    ; 4 uses
  %i.w = and i64 %i.q, 7
  %i.x = mul i64 %n.vec20, -4
  %i.y = getelementptr i8, ptr %i.u, i64 %i.x
  %4 = sub nsw i64 0, %n.vec20
  %i.z = getelementptr i8, ptr %i.v, i64 %4
  br label %vector.body21

end_hunk_5
