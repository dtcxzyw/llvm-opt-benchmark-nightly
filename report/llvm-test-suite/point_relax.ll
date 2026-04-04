begin_hunk_0
  %i.mx = load ptr, ptr %i.kv, align 8, !tbaa !83
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv1494
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !4
  %i.na = sext i32 %i.mz to i64                   ; 3 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.na ; 14 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !58
end_hunk_0
begin_hunk_1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mg, i64 16 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.nx = shl nsw i64 %i.na, 3                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.mw, i64 %i.nx
  %scevgep1584 = getelementptr i8, ptr %i.mw, i64 8
  %scevgep1585 = getelementptr i8, ptr %scevgep1584, i64 %i.nx
  %scevgep1613 = getelementptr i8, ptr %i.mw, i64 %i.nx
  %scevgep1615 = getelementptr i8, ptr %i.mw, i64 8
  %scevgep1616 = getelementptr i8, ptr %scevgep1615, i64 %i.nx
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1386, %._crit_edge1370
end_hunk_1
