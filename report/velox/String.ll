inline.NumInlined: 733
inline.NumDeleted: 345
begin_hunk_0_@_ZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dd, 12
  %n.vec = and i64 %i.dd, 2305843009213693936     ; 4 uses
  %i.de = shl i64 %n.vec, 4                       ; 2 uses
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.de
  %i.dg = getelementptr i8, ptr %.sroa.0.0, i64 %i.de
  %i.dh = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.cy, i64 0
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.eg, %vec.epilog.iter.check ], [ %i.cy, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.dd, 2305843009213693948  ; 3 uses
  %i.eh = shl i64 %n.vec234, 4                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.cz, i64 %i.eh
  %i.ej = getelementptr i8, ptr %.sroa.0.0, i64 %i.eh
  %i.ek = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_1
