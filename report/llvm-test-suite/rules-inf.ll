inline.NumInlined: 1388
inline.NumDeleted: 170
begin_hunk_0_@clause_SetDataFromParents:bb.a
  %.val72.i = load i32, ptr %i.j, align 4         ; 2 uses
  %i.k = icmp eq i32 %.val72.i, 0
  %i.l = getelementptr i8, ptr %1, i64 12
  %.val71.i = load i32, ptr %i.l, align 4         ; 2 uses
  %7 = icmp eq i32 %.val71.i, 0
  %or.cond.i = select i1 %i.k, i1 %7, i1 false
  br i1 %or.cond.i, label %clause_SetSplitDataFromParents.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.val71.i, i32 %.val72.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.select.i, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
end_hunk_0
begin_hunk_1_@clause_SetDataFromParents:bb.a
  %i.fd = icmp samesign ult i64 %indvars.iv.next96.i, %i.fc
  br i1 %i.fd, label %bb.ae, label %clause_SetSplitDataFromParents.exit, !llvm.loop !78

clause_SetSplitDataFromParents.exit:              ; preds = %bb.ae, %bb.r, %bb.d, %.preheader.i, %.preheader78.i
  %i.fe = getelementptr i8, ptr %1, i64 8
  %.val16 = load i32, ptr %i.fe, align 8
  %i.ff = getelementptr i8, ptr %3, i64 8
end_hunk_1
