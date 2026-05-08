inline.NumInlined: 1388
inline.NumDeleted: 170
begin_hunk_0_@clause_SetDataFromParents:bb.a
  %.val72.i = load i32, ptr %i.j, align 4         ; 2 uses
  %i.k = icmp eq i32 %.val72.i, 0
  %i.l = getelementptr i8, ptr %1, i64 12
  %.val71.i = load i32, ptr %i.l, align 4         ; 3 uses
  br i1 %i.k, label %8, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %7 = tail call i32 @llvm.umax.i32(i32 %.val71.i, i32 %.val72.i)
  br label %bb.e

8:                                                ; preds = %bb.d
  %9 = icmp eq i32 %.val71.i, 0
  br i1 %9, label %clause_SetSplitDataFromParents.exit, label %bb.e

bb.e:                                             ; preds = %8, %._crit_edge.i
  %.val70.i = phi i32 [ %7, %._crit_edge.i ], [ %.val71.i, %8 ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.val70.i, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
end_hunk_0
begin_hunk_1_@clause_SetDataFromParents:bb.a
  %i.fd = icmp samesign ult i64 %indvars.iv.next96.i, %i.fc
  br i1 %i.fd, label %bb.ae, label %clause_SetSplitDataFromParents.exit, !llvm.loop !78

clause_SetSplitDataFromParents.exit:              ; preds = %bb.ae, %bb.r, %8, %.preheader.i, %.preheader78.i
  %i.fe = getelementptr i8, ptr %1, i64 8
  %.val16 = load i32, ptr %i.fe, align 8
  %i.ff = getelementptr i8, ptr %3, i64 8
end_hunk_1
