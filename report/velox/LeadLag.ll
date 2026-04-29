inline.NumInlined: 3744
inline.NumDeleted: 1387
begin_hunk_0_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EE14resetPartitionEPKNS0_4exec15WindowPartitionE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 67108848                ; 4 uses
  %i.af = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.ag = or disjoint i64 %i.af, 64
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EE14resetPartitionEPKNS0_4exec15WindowPartitionE:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.ae, 67108860              ; 3 uses
  %i.bb = shl nuw nsw i64 %n.vec21, 6             ; 2 uses
  %i.bc = or disjoint i64 %i.bb, 64
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb1EE14resetPartitionEPKNS0_4exec15WindowPartitionE:bb.a
  br i1 %cmp.n26, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv4.ph = phi i64 [ 0, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EE14resetPartitionEPKNS0_4exec15WindowPartitionE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 67108848                ; 4 uses
  %i.af = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.ag = or disjoint i64 %i.af, 64
  br label %vector.body

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EE14resetPartitionEPKNS0_4exec15WindowPartitionE:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ba, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.ae, 67108860              ; 3 uses
  %i.bb = shl nuw nsw i64 %n.vec21, 6             ; 2 uses
  %i.bc = or disjoint i64 %i.bb, 64
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_115LeadLagFunctionILb0EE14resetPartitionEPKNS0_4exec15WindowPartitionE:bb.a
  br i1 %cmp.n26, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv4.ph = phi i64 [ 0, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i
end_hunk_5
