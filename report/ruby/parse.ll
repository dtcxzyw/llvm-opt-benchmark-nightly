inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@parser_yylex:bb.a
  store i32 %i.ame, ptr %i.e, align 8
  %i.amf = load ptr, ptr %i.aij, align 8, !tbaa !49
  %i.amg = load ptr, ptr %i.ail, align 8, !tbaa !426
  %i.amh = ptrtoint ptr %i.amg to i64
  %i.ami = ptrtoint ptr %i.ajh to i64
  %i.amj = sub i64 %i.amh, %i.ami                 ; 7 uses
  %i.amk = icmp slt i64 %i.amj, 8
  br i1 %i.amk, label %.loopexit, label %.lr.ph.i.i934

.lr.ph.i.i934:                                    ; preds = %bb.ik, %bb.iq
  %.028.i.i = phi i64 [ %i.amy, %bb.iq ], [ 2, %bb.ik ] ; 4 uses
  %i.aml = getelementptr i8, ptr %i.ajh, i64 %.028.i.i ; 5 uses
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !15
  switch i8 %i.amm, label %bb.iq [
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a
  br i1 %i.amz, label %.lr.ph.i.i934, label %magic_comment_marker.exit.thread.i, !llvm.loop !579

magic_comment_marker.exit.i:                      ; preds = %bb.ip, %bb.im
  %.sink2961 = phi i64 [ 1, %bb.im ], [ 2, %bb.ip ] ; 2 uses
  %i.ana = getelementptr i8, ptr %i.aml, i64 %.sink2961 ; 4 uses
  %.not.i946 = icmp eq ptr %i.ana, null
  br i1 %.not.i946, label %magic_comment_marker.exit.thread.i, label %bb.ir

bb.ir:                                            ; preds = %magic_comment_marker.exit.i
  %3 = add i64 %.028.i.i, %.sink2961
  %i.anb = sub i64 %i.amj, %3                     ; 3 uses
  %i.anc = icmp sgt i64 %i.anb, 2
  br i1 %i.anc, label %.lr.ph.i208.i, label %.loopexit

end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  br i1 %.not184.i, label %.loopexit, label %bb.iy

bb.iy:                                            ; preds = %magic_comment_marker.exit214.i
  %reass.sub = add i64 %.028.i209.i, -3
  %i.ant = add i64 %reass.sub, %.sink2962
  br label %magic_comment_marker.exit.thread.i

magic_comment_marker.exit.thread.i:               ; preds = %bb.iq, %bb.in, %bb.iy, %magic_comment_marker.exit.i
end_hunk_2
