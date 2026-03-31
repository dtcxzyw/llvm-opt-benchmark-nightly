begin_hunk_0
  br label %.critedge

.split.us.a:                                      ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 8 uses
  %5 = load i8, ptr %i.bl, align 1                ; 2 uses
  %6 = icmp eq i8 %5, 34
  br i1 %6, label %.split127.us, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us:      ; preds = %.split.us.a, %bb.x
  %7 = phi i8 [ %8, %bb.x ], [ %5, %.split.us.a ]
  %.0.us130 = phi ptr [ %i.bm, %bb.x ], [ %i.bl, %.split.us.a ]
  %.not31.us = icmp eq i8 %7, 0
  br i1 %.not31.us, label %.split129.us, label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.us130, i64 1 ; 3 uses
  %8 = load i8, ptr %i.bm, align 1                ; 2 uses
  %9 = icmp eq i8 %8, 34
  br i1 %9, label %.split127.us, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us, !llvm.loop !127

.critedge:                                        ; preds = %.critedge.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.0 = phi ptr [ %i.cf, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.0.lcssa.i, %.critedge.preheader ] ; 4 uses
end_hunk_0
begin_hunk_1
    i8 12, label %bb.y
  ]

.split127.us:                                     ; preds = %bb.x, %.split.us.a
  %.0.lcssa116.us = phi ptr [ %i.bl, %.split.us.a ], [ %i.bm, %bb.x ] ; 2 uses
  %i.bo = ptrtoint ptr %.0.lcssa116.us to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa116.us, i64 1
  br label %bb.af

bb.y:                                             ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
end_hunk_1
