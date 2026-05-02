inline.NumInlined: 25
inline.NumDeleted: 16
begin_hunk_0_@WebPAnimDecoderGetNext:bb.a
  %i.ar = icmp eq i32 %i.ao, %i.i
  %i.as = icmp eq i32 %i.aq, %i.k
  %i.at = and i1 %i.ar, %i.as
  %4 = zext i1 %i.at to i32
  %5 = or i32 %i.w, %4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %IsKeyFrame.exit.thread128, label %IsKeyFrame.exit.thread

IsKeyFrame.exit.thread:                           ; preds = %bb.c, %bb.e, %IsKeyFrame.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296
end_hunk_0
begin_hunk_1_@WebPAnimDecoderGetNext:bb.a
  br label %bb.g

bb.g:                                             ; preds = %IsKeyFrame.exit.thread128, %IsKeyFrame.exit.thread
  %.0.i114126 = phi i32 [ 0, %IsKeyFrame.exit.thread128 ], [ 1, %IsKeyFrame.exit.thread ] ; 2 uses
  %i.bi = shl i32 %i.i, 2                         ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@WebPAnimDecoderGetNext:bb.a
  %i.ck = icmp slt i32 %i.cj, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.cm = load i32, ptr %i.cl, align 4
  %6 = or i32 %i.cm, %.0.i114126
  %7 = icmp ne i32 %6, 0
  %or.cond8 = select i1 %i.ck, i1 true, i1 %7
  br i1 %or.cond8, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_2
