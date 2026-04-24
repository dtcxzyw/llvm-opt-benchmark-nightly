inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %.not = phi i1 [ false, %bb.j ], [ %2, %bb.i ], [ %2, %bb.h ], [ %2, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ]
  %.0144 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ]
  %.0143 = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
  %.pre-phi771855 = phi i64 [ %i.df, %bb.ah ], [ %i.db, %bb.ag ], [ %i.df, %bb.af ]
  %i.jc = phi <2 x double> [ %i.cx, %bb.ah ], [ %i.cy, %bb.ag ], [ %i.cx, %bb.af ] ; 2 uses
  %i.jd = phi <2 x double> [ %i.cv, %bb.ah ], [ %i.cw, %bb.ag ], [ %i.cv, %bb.af ] ; 2 uses
  br i1 %.not, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread849
  %i.je = fsub double %.0438.lcssa, %.0435.lcssa
end_hunk_1
