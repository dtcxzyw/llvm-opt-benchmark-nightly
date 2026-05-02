inline.NumInlined: 118
inline.NumDeleted: 43
begin_hunk_0_@GenerateCandidates:bb.a
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %.not26.us.i = icmp eq i32 %i.au, %i.an
  br i1 %.not26.us.i, label %.critedge.us.i, label %.thread99

.critedge.us.i:                                   ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@GenerateCandidates:bb.a
._crit_edge.us.i:                                 ; preds = %.critedge.us.i
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next36.i, %i.ai
  br i1 %i.aw, label %.lr.ph.us.i, label %.thread99, !llvm.loop !137

.thread99:                                        ; preds = %._crit_edge.us.i, %bb.e, %bb.c, %.lr.ph31.i
  %10 = phi i1 [ true, %bb.c ], [ true, %.lr.ph31.i ], [ false, %bb.e ], [ true, %._crit_edge.us.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !126
end_hunk_1
begin_hunk_2_@GenerateCandidates:bb.a
  br i1 %i.dm, label %.lr.ph.us.i74, label %.thread, !llvm.loop !139

.thread:                                          ; preds = %._crit_edge.us.i79, %PixelsAreSimilar.exit.us.i, %bb.i, %bb.h, %bb.g, %.lr.ph35.i, %.thread99, %CopyCurrentCanvas.exit
  %i.dn = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %10, %.thread99 ], [ %10, %.lr.ph35.i ], [ %10, %PixelsAreSimilar.exit.us.i ], [ %10, %bb.g ], [ %10, %bb.h ], [ %10, %bb.i ], [ %10, %._crit_edge.us.i79 ] ; 3 uses
  %i.do = phi i1 [ false, %CopyCurrentCanvas.exit ], [ true, %.thread99 ], [ true, %.lr.ph35.i ], [ false, %PixelsAreSimilar.exit.us.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.us.i79 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !91
  %.not67 = icmp eq i32 %i.dq, 0
end_hunk_2
begin_hunk_3_@GenerateCandidates:bb.a
  store <2 x i32> %i.gh, ptr %i.gg, align 8, !tbaa !3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.gi, align 8, !tbaa !143
  %not..i = xor i1 %i.dn, true
  %11 = zext i1 %not..i to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %11, ptr %i.gj, align 4, !tbaa !144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.gk, align 8, !tbaa !145
  tail call void @WebPMemoryWriterInit(ptr noundef nonnull %i.b) #15
  %i.gl = load i32, ptr %9, align 4, !tbaa !74
  %i.gm = icmp eq i32 %i.gl, 0
  %or.cond.i85 = and i1 %i.dn, %i.gm
  br i1 %or.cond.i85, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
end_hunk_3
begin_hunk_4_@GenerateCandidates:bb.a
  call void @WebPMemoryWriterInit(ptr noundef nonnull %i.c) #15
  %i.va = load i32, ptr %8, align 4, !tbaa !74
  %i.vb = icmp eq i32 %i.va, 0
  %or.cond.i95 = and i1 %i.do, %i.vb
  br i1 %or.cond.i95, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
end_hunk_4
