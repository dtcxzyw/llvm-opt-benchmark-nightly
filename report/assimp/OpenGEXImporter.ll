inline.NumInlined: 1858
inline.NumDeleted: 966
begin_hunk_0_@_ZN6Assimp7OpenGEX15OpenGEXImporter21handleVertexArrayNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  br i1 %.not.i, label %_ZN6Assimp7OpenGEXL23countDataArrayListItemsEPN10ODDLParser13DataArrayListE.exit, label %bb.o, !llvm.loop !64

_ZN6Assimp7OpenGEXL23countDataArrayListItemsEPN10ODDLParser13DataArrayListE.exit: ; preds = %bb.o
  %lsr.iv181.lcssa202 = phi i64 [ %lsr.iv181, %bb.o ]
  %lsr.iv181.lcssa195 = phi i64 [ %lsr.iv181, %bb.o ]
  %lsr.iv181.lcssa189 = phi i64 [ %lsr.iv181, %bb.o ]
  %lsr.iv181.lcssa = phi i64 [ %lsr.iv181, %bb.o ]
  %indvar.lcssa = phi i64 [ %lsr.iv.next, %bb.o ] ; 2 uses
  %spec.select.i.lcssa = phi i64 [ %spec.select.i, %bb.o ] ; 17 uses
  switch i32 %.0.i.ph, label %default.unreachable161 [
end_hunk_0
begin_hunk_1_@_ZN6Assimp7OpenGEX15OpenGEXImporter21handleVertexArrayNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = add i64 %.078.i, 1                      ; 2 uses
  %scevgep202 = getelementptr i8, ptr %lsr.iv201, i64 12
  %exitcond.not.i = icmp eq i64 %lsr.iv181.lcssa202, %i.ax
  br i1 %exitcond.not.i, label %_ZN6Assimp7OpenGEXL15copyVectorArrayEmPN10ODDLParser13DataArrayListEP10aiVector3tIfE.exit.loopexit, label %.lr.ph.i, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc48, %bb.t
end_hunk_1
begin_hunk_2_@_ZN6Assimp7OpenGEX15OpenGEXImporter21handleVertexArrayNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  store float %.sink.i.i, ptr %lsr.iv195, align 4
  %i.by = add nuw i64 %.06.i, 1                   ; 2 uses
  %scevgep196 = getelementptr i8, ptr %lsr.iv195, i64 16
  %exitcond.not.i54 = icmp eq i64 %lsr.iv181.lcssa195, %i.by
  br i1 %exitcond.not.i54, label %_ZN6Assimp7OpenGEXL15copyVectorArrayEmPN10ODDLParser13DataArrayListEP10aiVector3tIfE.exit.loopexit178, label %bb.w, !llvm.loop !66

bb.af:                                            ; preds = %_ZN6Assimp7OpenGEXL23countDataArrayListItemsEPN10ODDLParser13DataArrayListE.exit
end_hunk_2
begin_hunk_3_@_ZN6Assimp7OpenGEX15OpenGEXImporter21handleVertexArrayNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = add i64 %.078.i68, 1                    ; 2 uses
  %scevgep191 = getelementptr i8, ptr %lsr.iv190, i64 12
  %exitcond.not.i72 = icmp eq i64 %lsr.iv181.lcssa189, %i.cx
  br i1 %exitcond.not.i72, label %_ZN6Assimp7OpenGEXL15copyVectorArrayEmPN10ODDLParser13DataArrayListEP10aiVector3tIfE.exit.loopexit179, label %.lr.ph.i66, !llvm.loop !65

bb.ak:                                            ; preds = %_ZN6Assimp7OpenGEXL23countDataArrayListItemsEPN10ODDLParser13DataArrayListE.exit
end_hunk_3
begin_hunk_4_@_ZN6Assimp7OpenGEX15OpenGEXImporter21handleVertexArrayNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a

.lr.ph.i78:                                       ; preds = %bb.am, %_ZN6Assimp7OpenGEXL11fillVector3EP10aiVector3tIfEPN10ODDLParser5ValueE.exit.i82
  %lsr.iv185 = phi ptr [ %scevgep, %bb.am ], [ %scevgep186, %_ZN6Assimp7OpenGEXL11fillVector3EP10aiVector3tIfEPN10ODDLParser5ValueE.exit.i82 ] ; 4 uses
  %lsr.iv183 = phi i64 [ %lsr.iv181.lcssa, %bb.am ], [ %lsr.iv.next184, %_ZN6Assimp7OpenGEXL11fillVector3EP10aiVector3tIfEPN10ODDLParser5ValueE.exit.i82 ]
  %.09.i79 = phi ptr [ %i.dx, %_ZN6Assimp7OpenGEXL11fillVector3EP10aiVector3tIfEPN10ODDLParser5ValueE.exit.i82 ], [ %i.s, %bb.am ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i79, i64 8
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
end_hunk_4
