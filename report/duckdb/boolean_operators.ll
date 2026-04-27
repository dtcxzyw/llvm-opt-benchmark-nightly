inline.NumInlined: 393
inline.NumDeleted: 221
begin_hunk_0_@_ZN6duckdb16VectorOperations3NotERNS_6VectorES2_m:bb.a
  %i.ex = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ey = and i64 %.03.us.i.i.i, 63
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !35, !noalias !104
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ex
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !36, !noalias !104
  %i.fc = shl nuw i64 1, %i.ey                    ; 2 uses
  %i.fd = and i64 %i.fb, %i.fc
end_hunk_0
begin_hunk_1_@_ZN6duckdb16VectorOperations3NotERNS_6VectorES2_m:bb.a
  %i.gm = lshr i64 %i.gl, 6
  %i.gn = and i64 %i.gl, 63
  %i.go = load ptr, ptr %i.et, align 8, !tbaa !35, !noalias !104
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !36, !noalias !104
  %i.gr = shl nuw i64 1, %i.gn
  %i.gs = and i64 %i.gr, %i.gq
  %.not.i62.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i62.i.i, label %bb.ae, label %bb.ad

end_hunk_1
