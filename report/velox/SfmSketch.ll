inline.NumInlined: 374
inline.NumDeleted: 200
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 576460752303423472      ; 4 uses
  %i.ar = shl i64 %n.vec, 6                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, 64
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.an, 576460752303423484    ; 3 uses
  %i.bg = shl i64 %n.vec86, 6                     ; 2 uses
  %i.bh = or disjoint i64 %i.bg, 64
  br label %vec.epilog.vector.body

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a
  br i1 %cmp.n91, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.k, 12
  %n.vec = and i64 %i.k, 576460752303423472       ; 4 uses
  %i.l = shl i64 %n.vec, 6                        ; 2 uses
  %i.m = or disjoint i64 %i.l, 64
  br label %vector.body

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ag, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.k, 576460752303423484     ; 3 uses
  %i.ah = shl i64 %n.vec18, 6                     ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 64
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv:bb.a
  br i1 %cmp.n23, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1.ph = phi i64 [ 0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9functions3sfm9SfmSketch11cardinalityEv:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 12
  %n.vec = and i64 %i.n, 576460752303423472       ; 4 uses
  %i.o = shl i64 %n.vec, 6                        ; 2 uses
  %i.p = or disjoint i64 %i.o, 64
  br label %vector.body

end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9functions3sfm9SfmSketch11cardinalityEv:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.n, 576460752303423484     ; 3 uses
  %i.ak = shl i64 %n.vec44, 6                     ; 2 uses
  %i.al = or disjoint i64 %i.ak, 64
  %i.am = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9functions3sfm9SfmSketch11cardinalityEv:bb.a
  br i1 %cmp.n49, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1.i.ph = phi i64 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i
end_hunk_8
