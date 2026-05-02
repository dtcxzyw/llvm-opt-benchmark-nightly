inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@SliceHeader:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15356
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !58
  %i.db = icmp eq i32 %i.da, 0
  %or.cond = or i1 %i.be, %i.db
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@SliceHeader:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 15356
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !58
  %i.dt = icmp eq i32 %i.ds, 0
  %or.cond3 = or i1 %i.be, %i.dt
  br i1 %or.cond3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_1
