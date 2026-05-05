inline.NumInlined: 400
inline.NumDeleted: 127
begin_hunk_0_@_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE:bb.a

bb.r:                                             ; preds = %bb.t, %bb.q
  %lsr.iv133 = phi i64 [ %lsr.iv.next134, %bb.t ], [ %i.bo, %bb.q ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bn, %bb.q ], [ %i.bs, %bb.t ] ; 4 uses
  %lsr.iv133135 = inttoptr i64 %lsr.iv133 to ptr
  %i.br = load i8, ptr %.0.i.i, align 1
  switch i8 %i.br, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit_crit_edge [
end_hunk_0
begin_hunk_1_@_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE:bb.a
  br label %bb.r, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exitsplit:    ; preds = %bb.s
  %.0.lcssa.i.i.ph = phi ptr [ %i.bp, %bb.s ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit_crit_edge: ; preds = %bb.r
  %.0.i.i.lcssa = phi ptr [ %.0.i.i, %bb.r ]
  %.0.i.i.lcssa.a = phi ptr [ %.0.i.i, %bb.r ]    ; 0 uses
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exitsplit, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit_crit_edge
  %.0.lcssa.i.i = phi ptr [ %.0.i.i.lcssa, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit_crit_edge ], [ %.0.lcssa.i.i.ph, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exitsplit ]
  %i.bt = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true) ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bq, %i.bu
end_hunk_1
begin_hunk_2_@_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE:bb.a
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.0.i34 = phi ptr [ %i.ca, %bb.y ], [ %i.ce, %bb.ab ] ; 5 uses
  %i.cd = load i8, ptr %.0.i34, align 1
  switch i8 %i.cd, label %._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit_crit_edge [
    i8 32, label %bb.aa
end_hunk_2
begin_hunk_3_@_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE:bb.a
  br label %bb.z, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexitsplit: ; preds = %bb.aa
  %.0.ph.ph = phi ptr [ %scevgep.i, %bb.aa ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit

._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit_crit_edge: ; preds = %bb.z
  %.0.i34.lcssa = phi ptr [ %.0.i34, %bb.z ]
  %.0.i34.lcssa.a = phi ptr [ %.0.i34, %bb.z ]    ; 0 uses
  br label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit: ; preds = %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexitsplit, %._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit_crit_edge
  %.0.ph = phi ptr [ %.0.i34.lcssa, %._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit_crit_edge ], [ %.0.ph.ph, %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexitsplit ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit:      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit.loopexit, %bb.x
end_hunk_3
begin_hunk_4_@_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE:bb.a
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.0.i43 = phi ptr [ %i.cm, %bb.ag ], [ %i.cq, %bb.aj ] ; 5 uses
  %i.cp = load i8, ptr %.0.i43, align 1
  switch i8 %i.cp, label %._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit_crit_edge [
    i8 32, label %bb.ai
end_hunk_4
begin_hunk_5_@_ZN6Assimp12IrrlichtBase18ReadVectorPropertyERNS0_8PropertyI10aiVector3tIfEEERN4pugi8xml_nodeE:bb.a
  br label %bb.ah, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexitsplit: ; preds = %bb.ai
  %.1.ph.ph = phi ptr [ %scevgep.i42, %bb.ai ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit

._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit_crit_edge: ; preds = %bb.ah
  %.0.i43.lcssa = phi ptr [ %.0.i43, %bb.ah ]
  %.0.i43.lcssa.a = phi ptr [ %.0.i43, %bb.ah ]   ; 0 uses
  br label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit: ; preds = %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexitsplit, %._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit_crit_edge
  %.1.ph = phi ptr [ %.0.i43.lcssa, %._ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit_crit_edge ], [ %.1.ph.ph, %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexitsplit ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47:    ; preds = %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit47.loopexit, %bb.af
end_hunk_5
begin_hunk_6_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %lsr.iv192.lcssa = phi ptr [ %lsr.iv192, %bb.j ]
  %.lcssa185 = phi i64 [ %i.ac, %bb.j ]           ; 2 uses
  %.lcssa182 = phi ptr [ %lsr.iv, %bb.j ]         ; 3 uses
  store ptr %.lcssa182, ptr %i.a, align 8
end_hunk_6
begin_hunk_7_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.lr.ph71
  %lsr.iv194 = phi ptr [ %lsr.iv192.lcssa, %.lr.ph71.preheader ], [ %scevgep195, %.lr.ph71 ] ; 3 uses
  store ptr %lsr.iv194, ptr %i.a, align 8
  %i.ag = load i8, ptr %lsr.iv194, align 1
  %i.ah = add i8 %i.ag, -48
end_hunk_7
