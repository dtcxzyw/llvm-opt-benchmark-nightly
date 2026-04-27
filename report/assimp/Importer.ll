inline.NumInlined: 2268
inline.NumDeleted: 959
begin_hunk_0_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.g, %bb.h, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.as = phi i32 [ %i.ai, %bb.g ], [ %i.ar, %bb.h ], [ %i.ai, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ] ; 2 uses
  %i.at = phi ptr [ %i.aj, %bb.g ], [ %.pre197, %bb.h ], [ %i.aj, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i130 = icmp ne ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = select i1 %.not.i130, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.ba = shl i32 %i.ax, 4
  %i.bb = add i32 %i.ba, %i.as                    ; 3 uses
  store i32 %i.bb, ptr %.phi.trans.insert206, align 4
  %i.bc = load ptr, ptr %i.g, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv170
end_hunk_0
begin_hunk_1_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.bk, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.bl = shl i32 %i.bi, 4
  %i.bm = add i32 %i.bl, %i.bb                    ; 3 uses
  store i32 %i.bm, ptr %.phi.trans.insert206, align 4
  %i.bn = load ptr, ptr %i.g, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv170
end_hunk_1
begin_hunk_2_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.bv, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.bw = shl i32 %i.bt, 4
  %i.bx = add i32 %i.bw, %i.bm                    ; 3 uses
  store i32 %i.bx, ptr %.phi.trans.insert206, align 4
  %i.by = load ptr, ptr %i.g, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv170
end_hunk_2
begin_hunk_3_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.cg, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ch = shl i32 %i.ce, 4
  %i.ci = add i32 %i.ch, %i.bx                    ; 3 uses
  store i32 %i.ci, ptr %.phi.trans.insert206, align 4
  %i.cj = load ptr, ptr %i.g, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv170
end_hunk_3
begin_hunk_4_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.cr, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.cs = shl i32 %i.cp, 4
  %i.ct = add i32 %i.cs, %i.ci                    ; 3 uses
  store i32 %i.ct, ptr %.phi.trans.insert206, align 4
  %i.cu = load ptr, ptr %i.g, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv170
end_hunk_4
begin_hunk_5_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.dc, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.dd = shl i32 %i.da, 4
  %i.de = add i32 %i.dd, %i.ct                    ; 3 uses
  store i32 %i.de, ptr %.phi.trans.insert206, align 4
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv170
end_hunk_5
begin_hunk_6_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.dn, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.do = shl i32 %i.dl, 4
  %i.dp = add i32 %i.do, %i.de                    ; 3 uses
  store i32 %i.dp, ptr %.phi.trans.insert206, align 4
  %i.dq = load ptr, ptr %i.g, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv170
end_hunk_6
begin_hunk_7_@_ZNK6Assimp8Importer21GetMemoryRequirementsER12aiMemoryInfo:bb.a
  br i1 %i.dy, label %bb.i, label %_ZNK6aiMesh16HasTextureCoordsEj.exit

bb.i:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.dz = shl i32 %i.dw, 4
  %i.ea = add i32 %i.dz, %i.dp                    ; 2 uses
  store i32 %i.ea, ptr %.phi.trans.insert206, align 4
  %.pre198 = load ptr, ptr %i.g, align 8
  %.phi.trans.insert199 = getelementptr inbounds nuw [8 x i8], ptr %.pre198, i64 %indvars.iv170
end_hunk_7
