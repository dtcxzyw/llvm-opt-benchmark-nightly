inline.NumInlined: 1002
inline.NumDeleted: 561
begin_hunk_0_@_ZN6Assimp15ObjFileImporter11createNodesEPKNS_7ObjFile5ModelEPKNS1_6ObjectEP6aiNodeP7aiSceneRSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteISE_EESaISH_EE:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc57
  %7 = add i64 %i.ax, -8
  %8 = sub i64 %7, %i.ay                          ; 2 uses
  %i.bj = lshr i64 %8, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bh, i64 8
  %9 = add i64 %i.ax, -8
  %i.bl = sub i64 %9, %i.ay
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %scevgep84 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %scevgep85 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.bm
  %bound0 = icmp ult ptr %i.bh, %scevgep86
  %bound1 = icmp ult ptr %i.aw, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader91, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj:bb.a
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = add i32 %i.au, -1
  %i.aw = add i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.at, align 8
  %i.ax = load ptr, ptr %0, align 8               ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8
end_hunk_1
