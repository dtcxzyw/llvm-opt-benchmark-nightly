inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0_@gb18030_decode:bb.a

bb.k:                                             ; preds = %bb.j
  %i.az = mul nuw nsw i32 %i.aa, 10
  %i.ba = zext nneg i8 %i.l to i32
  %i.bb = add nuw nsw i32 %i.az, %i.ba
  %i.bc = mul nuw nsw i32 %i.bb, 1260
  %i.bd = zext nneg i8 %i.y to i32
  %i.be = mul nuw nsw i32 %i.bd, 10
  %i.bf = add nuw nsw i32 %i.be, %i.bc
  %i.bg = zext nneg i8 %i.z to i32
  %i.bh = add nuw nsw i32 %i.bf, %i.bg            ; 2 uses
  %i.bi = icmp samesign ult i32 %i.bh, 1237576
  br i1 %i.bi, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %5 = add nsw i32 %i.bh, -123464
  %i.bj = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %5) #10
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.thread, label %bb.ah, !llvm.loop !76

end_hunk_0
