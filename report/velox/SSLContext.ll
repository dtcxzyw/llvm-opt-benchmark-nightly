inline.NumInlined: 1421
inline.NumDeleted: 747
begin_hunk_0_@_ZN5folly10SSLContext21setClientECCurvesListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %n.mod.vf = and i64 %i.p, 15                    ; 2 uses
  %i.q = icmp eq i64 %n.mod.vf, 0
  %i.r = select i1 %i.q, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.p, %i.r                 ; 4 uses
  %i.s = shl i64 %n.vec, 5
  %i.t = getelementptr i8, ptr %i.k, i64 %i.s
  %5 = shl i64 %n.vec, 5
  %i.u = getelementptr i8, ptr %i.a, i64 %5
  %i.v = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.j, i64 0
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN5folly10SSLContext21setClientECCurvesListERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %n.mod.vf76 = and i64 %i.p, 3                   ; 2 uses
  %i.ar = icmp eq i64 %n.mod.vf76, 0
  %i.as = select i1 %i.ar, i64 4, i64 %n.mod.vf76
  %n.vec77 = sub nsw i64 %i.p, %i.as              ; 3 uses
  %i.at = shl i64 %n.vec77, 5
  %i.au = getelementptr i8, ptr %i.k, i64 %i.at
  %6 = shl i64 %n.vec77, 5
  %i.av = getelementptr i8, ptr %i.a, i64 %6
  %i.aw = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_1
begin_hunk_2_@_ZN5folly10SSLContext18setSupportedGroupsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %n.mod.vf = and i64 %i.p, 15                    ; 2 uses
  %i.q = icmp eq i64 %n.mod.vf, 0
  %i.r = select i1 %i.q, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.p, %i.r                 ; 4 uses
  %i.s = shl i64 %n.vec, 5
  %i.t = getelementptr i8, ptr %i.k, i64 %i.s
  %5 = shl i64 %n.vec, 5
  %i.u = getelementptr i8, ptr %i.a, i64 %5
  %i.v = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.j, i64 0
  br label %vector.body

end_hunk_2
begin_hunk_3_@_ZN5folly10SSLContext18setSupportedGroupsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %n.mod.vf76 = and i64 %i.p, 3                   ; 2 uses
  %i.ar = icmp eq i64 %n.mod.vf76, 0
  %i.as = select i1 %i.ar, i64 4, i64 %n.mod.vf76
  %n.vec77 = sub nsw i64 %i.p, %i.as              ; 3 uses
  %i.at = shl i64 %n.vec77, 5
  %i.au = getelementptr i8, ptr %i.k, i64 %i.at
  %6 = shl i64 %n.vec77, 5
  %i.av = getelementptr i8, ptr %i.a, i64 %6
  %i.aw = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_3
