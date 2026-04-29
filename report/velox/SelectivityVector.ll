inline.NumInlined: 426
inline.NumDeleted: 235
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector13countSelectedEv:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bc, 12
  %n.vec = and i32 %i.bc, 134217712               ; 4 uses
  %i.bd = shl i32 %n.vec, 6                       ; 2 uses
  %i.be = add i32 %i.au, %i.bd
  %i.bf = add i32 %i.p, %i.bd
  %i.bg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.i, i64 0
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector13countSelectedEv:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.fm, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec17 = and i32 %i.bc, 134217724             ; 3 uses
  %i.fn = shl i32 %n.vec17, 6                     ; 2 uses
  %i.fo = add i32 %i.au, %i.fn
  %i.fp = add i32 %i.p, %i.fn
  %i.fq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_1
