inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@vxprintf:bb.a
  br i1 %.not515767, label %.preheader648, label %iter.check

iter.check:                                       ; preds = %bb.cv
  %i.ok = call i32 @llvm.smin.i32(i32 %.2372, i32 340) ; 3 uses
  %smin = sext i32 %i.ok to i64                   ; 10 uses
  %i.ol = sext i32 %i.oj to i64
  %i.om = add nsw i64 %smin, 1
end_hunk_0
begin_hunk_1_@vxprintf:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = sub i64 %smin, %index
  %i.pd = trunc i64 %index to i32
  %4 = add i32 %i.oj, %i.pd
  %i.pe = sub i32 %i.ok, %4
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pf ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -15
end_hunk_1
begin_hunk_2_@vxprintf:bb.a
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1746 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1750, %vec.epilog.vector.body ] ; 3 uses
  %i.po = sub i64 %smin, %index1746
  %i.pp = trunc i64 %index1746 to i32
  %5 = add i32 %i.oj, %i.pp
  %i.pq = sub i32 %i.ok, %5
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pr
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 -7
end_hunk_2
