inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZN6Assimp15BlenderImporter12ResolveImageEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexEPKNS3_5ImageERNS3_14ConversionDataE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.0.idx76 = phi i64 [ %.0.add, %bb.k ], [ %.add, %.lr.ph.preheader ] ; 5 uses
  %scevgep95 = getelementptr i8, ptr %4, i64 %.0.idx76
  %i.be = load i8, ptr %scevgep95, align 1
  %.not60 = icmp eq i8 %i.be, 46
end_hunk_0
begin_hunk_1_@_ZN6Assimp15BlenderImporter12ResolveImageEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexEPKNS3_5ImageERNS3_14ConversionDataE:bb.a
  br i1 %.not, label %.critedgesplit, label %.lr.ph, !llvm.loop !90

.critedgesplit:                                   ; preds = %bb.k
  %.0.idx.lcssa.ph = phi i64 [ %i.bd, %bb.k ]
  %.0.ptr.lcssa.ph = phi ptr [ %scevgep, %bb.k ]
  br label %.critedge

.lr.ph..critedge_crit_edge:                       ; preds = %.lr.ph
  %.0.idx76.lcssa = phi i64 [ %.0.idx76, %.lr.ph ]
  %.0.idx76.lcssa.a = phi i64 [ %.0.idx76, %.lr.ph ]
  %scevgep94 = getelementptr i8, ptr %4, i64 %.0.idx76.lcssa
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %.lr.ph..critedge_crit_edge
  %.0.idx.lcssa = phi i64 [ %.0.idx76.lcssa.a, %.lr.ph..critedge_crit_edge ], [ %.0.idx.lcssa.ph, %.critedgesplit ] ; 3 uses
  %.0.ptr.lcssa = phi ptr [ %scevgep94, %.lr.ph..critedge_crit_edge ], [ %.0.ptr.lcssa.ph, %.critedgesplit ] ; 3 uses
  %.not61 = icmp slt i64 %.0.idx.lcssa, %.add
  br i1 %.not61, label %bb.l, label %.critedge.thread

end_hunk_1
