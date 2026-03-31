begin_hunk_0
  br label %.critedge

.split.us.a:                                      ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 6 uses
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us:      ; preds = %.split.us.a, %bb.x
  %.0.us130 = phi ptr [ %i.bm, %bb.x ], [ %i.bl, %.split.us.a ] ; 4 uses
  %5 = load i8, ptr %.0.us130, align 1
  switch i8 %5, label %bb.x [
    i8 34, label %.split127.us
    i8 0, label %.split129.us
  ]

bb.x:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.us130, i64 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us, !llvm.loop !127

.critedge:                                        ; preds = %.critedge.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.0 = phi ptr [ %i.cf, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.0.lcssa.i, %.critedge.preheader ] ; 4 uses
end_hunk_0
begin_hunk_1
    i8 12, label %bb.y
  ]

.split127.us:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us
  %i.bo = ptrtoint ptr %.0.us130 to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0.us130, i64 1
  br label %bb.af

bb.y:                                             ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
end_hunk_1
