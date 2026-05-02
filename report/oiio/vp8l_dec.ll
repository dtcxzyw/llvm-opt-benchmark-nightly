inline.NumInlined: 127
inline.NumDeleted: 53
begin_hunk_0_@VP8LDecodeAlphaImageStream:bb.a
  %i.ol = phi i1 [ false, %ExtractPalettedAlphaRows.exit192.i ], [ true, %bb.r ], [ true, %PlaneCodeToDistance.exit.i ]
  %i.om = load i32, ptr %i.ok, align 4, !tbaa !54
  %.not.i193.i = icmp eq i32 %i.om, 0
  br i1 %.not.i193.i, label %bb.ar, label %VP8LIsEndOfStream.exit194.i

bb.ar:                                            ; preds = %.thread203.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 64
end_hunk_0
begin_hunk_1_@VP8LDecodeAlphaImageStream:bb.a
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !126
  %i.or = icmp eq i64 %i.oo, %i.oq
  br i1 %i.or, label %bb.as, label %VP8LIsEndOfStream.exit194.i

bb.as:                                            ; preds = %bb.ar
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !49
  %i.ou = icmp sgt i32 %i.ot, 64
  %i.ov = zext i1 %i.ou to i32
  br label %VP8LIsEndOfStream.exit194.i

VP8LIsEndOfStream.exit194.i:                      ; preds = %bb.as, %bb.ar, %.thread203.i
  %2 = phi i32 [ 1, %.thread203.i ], [ 0, %bb.ar ], [ %i.ov, %bb.as ] ; 3 uses
  store i32 %2, ptr %i.ok, align 4, !tbaa !54
  br i1 %i.ol, label %bb.au, label %bb.at

bb.at:                                            ; preds = %VP8LIsEndOfStream.exit194.i
  %.not143.i = icmp ne i32 %2, 0
  %i.ow = icmp slt i32 %.0116222.i, %i.r
  %or.cond151.i.a = select i1 %.not143.i, i1 %i.ow, i1 false
  br i1 %or.cond151.i.a, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %VP8LIsEndOfStream.exit194.i
  %i.ox = load i32, ptr %i.b, align 8, !tbaa !13
  switch i32 %i.ox, label %DecodeAlphaData.exit [
    i32 0, label %bb.av
end_hunk_1
