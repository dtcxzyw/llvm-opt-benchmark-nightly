inline.NumInlined: 1128
inline.NumDeleted: 571
begin_hunk_0_@_ZNSt6vectorIN2v84base11OwnedVectorIcEESaIS3_EE17_M_default_appendEm:bb.a
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2v84base11OwnedVectorIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %2 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %3 = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !38, !noalias !35
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !38, !noalias !35
  store ptr %3, ptr %.012.i.i.i, align 8, !alias.scope !35, !noalias !38
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !38, !noalias !35
  store i64 %i.y, ptr %2, align 8, !alias.scope !35, !noalias !38
  store i64 0, ptr %i.x, align 8, !alias.scope !38, !noalias !35
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
end_hunk_0
