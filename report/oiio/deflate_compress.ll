inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@deflate_compress_lazy:bb.a
  %i.ags = sub nuw i32 %.4.i163.i, %.0.i155
  %i.agt = shl nsw i32 %i.ags, 2
  %i.agu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.041149, i1 true)
  %i.agv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agr, i1 true)
  %4 = sub i32 %i.agt, %i.agu
  %i.agw = add i32 %4, %i.agv
  %i.agx = icmp sgt i32 %i.agw, 2
  br i1 %i.agx, label %bb.cp, label %bb.cq

end_hunk_0
begin_hunk_1_@deflate_compress_lazy2:bb.a
  %i.ags = sub nuw i32 %.4.i163.i, %.0.i206
  %i.agt = shl nsw i32 %i.ags, 2
  %i.agu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0203, i1 true)
  %i.agv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agr, i1 true)
  %4 = sub i32 %i.agt, %i.agu
  %i.agw = add i32 %4, %i.agv
  %i.agx = icmp sgt i32 %i.agw, 2
  br i1 %i.agx, label %bb.cp, label %bb.cq

end_hunk_1
begin_hunk_2_@deflate_compress_lazy2:bb.a
  %i.ant = sub nuw i32 %.4.i.i, %.0.i206
  %i.anu = shl nsw i32 %i.ant, 2
  %i.anv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0203, i1 true)
  %i.anw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ans, i1 true)
  %5 = sub i32 %i.anu, %i.anv
  %i.anx = add i32 %5, %i.anw
  %i.any = icmp sgt i32 %i.anx, 6
  br i1 %i.any, label %bb.eb, label %bb.ec

end_hunk_2
