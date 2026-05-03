inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@RM_SetCommandInfo:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !211 ; 2 uses
  %i.ad = and i64 %i.ac, 15
  %i.ae = tail call range(i64 0, 5) i64 @llvm.ctpop.i64(i64 range(i64 0, 225) %i.ad)
  %or.cond.not.i = icmp eq i64 %i.ae, 1
  br i1 %or.cond.not.i, label %bb.k, label %isPowerOfTwo.exit.thread.i

end_hunk_0
begin_hunk_1_@RM_SetCommandInfo:bb.a

bb.k:                                             ; preds = %.lr.ph88.i.preheader
  %i.ah = and i64 %i.ac, 224
  %i.ai = tail call range(i64 0, 4) i64 @llvm.ctpop.i64(i64 range(i64 0, 225) %i.ah)
  %.not3.i65.i = icmp samesign ugt i64 %i.ai, 1
  br i1 %.not3.i65.i, label %bb.l, label %bb.n

end_hunk_1
