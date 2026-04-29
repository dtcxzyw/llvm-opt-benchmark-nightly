inline.NumInlined: 1357
inline.NumDeleted: 613
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector13countSelectedEv:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bc, 12
  %n.vec = and i32 %i.bc, 134217712               ; 5 uses
  %i.bd = shl i32 %n.vec, 6
  %i.be = add i32 %i.au, %i.bd
  %1 = shl i32 %n.vec, 6
  %i.bf = add i32 %i.p, %1
  %i.bg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.i, i64 0
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector13countSelectedEv:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.fm, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec17 = and i32 %i.bc, 134217724             ; 4 uses
  %i.fn = shl i32 %n.vec17, 6
  %i.fo = add i32 %i.au, %i.fn
  %2 = shl i32 %n.vec17, 6
  %i.fp = add i32 %i.p, %2
  %i.fq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox17SelectivityVector6selectERKS1_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 576460752303423472       ; 5 uses
  %4 = shl i64 %n.vec, 6
  %i.s = shl i64 %n.vec, 6
  %i.t = or disjoint i64 %i.s, 64
  br label %vector.body

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox17SelectivityVector6selectERKS1_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.o, 576460752303423484     ; 4 uses
  %5 = shl i64 %n.vec35, 6
  %i.ah = shl i64 %n.vec35, 6
  %i.ai = or disjoint i64 %i.ah, 64
  br label %vec.epilog.vector.body

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox17SelectivityVector6selectERKS1_:bb.a
  br i1 %cmp.n40, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv9.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

end_hunk_4
