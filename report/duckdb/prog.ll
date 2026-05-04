inline.NumInlined: 1409
inline.NumDeleted: 635
begin_hunk_0_@_ZN10duckdb_re24Prog14ComputeByteMapEv:bb.a

vector.early.exit:                                ; preds = %vector.body276
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.gl, i1 false) ; 2 uses
  %2 = extractelement <16 x i32> %i.ga, i64 %first.active.lane
  %3 = trunc i64 %first.active.lane to i32
  %i.go = add i32 %index277, %3
  %4 = add i32 %.0175, %i.go
  br label %..critedge_crit_edge227

_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147.thread: ; preds = %bb.ah, %_ZN10duckdb_re214ByteMapBuilder4MarkEii.exit147
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re24Prog14ComputeByteMapEv:bb.a
  br label %bb.ar

..critedge_crit_edge227:                          ; preds = %scalar.ph269, %vector.early.exit
  %split228 = phi i32 [ %4, %vector.early.exit ], [ %.058.in224, %scalar.ph269 ]
  %split229 = phi i32 [ %2, %vector.early.exit ], [ %.058, %scalar.ph269 ]
  br label %.critedge, !llvm.loop !156

.critedge:                                        ; preds = %bb.ag, %middle.block279, %..critedge_crit_edge227, %.preheader
end_hunk_1
