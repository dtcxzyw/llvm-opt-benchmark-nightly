inline.NumInlined: 298
inline.NumDeleted: 162
begin_hunk_0_@fielddef_toproto:bb.a

.lr.ph60.i.i:                                     ; preds = %bb.av, %bb.bb
  %.03658.i.i = phi ptr [ %i.ij, %bb.bb ], [ %i.dy, %bb.av ] ; 2 uses
  %.03757.i.i = phi ptr [ %.138.i.i, %bb.bb ], [ %.0.i48.i.i, %bb.av ] ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.03658.i.i, i64 1 ; 2 uses
  %i.ik = load i8, ptr %.03658.i.i, align 1, !tbaa !19 ; 7 uses
  switch i8 %i.ik, label %special_escape.exit43.i.i [
end_hunk_0
begin_hunk_1_@fielddef_toproto:bb.a
  %.0.i44.i.i = phi i8 [ 110, %.lr.ph60.i.i ], [ %i.ik, %bb.ay ], [ 114, %bb.aw ], [ 116, %bb.ax ]
  store i8 92, ptr %.03757.i.i, align 1, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 1
  store i8 %.0.i44.i.i, ptr %i.il, align 1, !tbaa !19
  br label %bb.bb

special_escape.exit43.i.i:                        ; preds = %.lr.ph60.i.i
  %i.im = icmp sgt i8 %i.ik, 31
  br i1 %i.im, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %special_escape.exit43.i.i
end_hunk_1
begin_hunk_2_@fielddef_toproto:bb.a
  br label %bb.bb

bb.ba:                                            ; preds = %special_escape.exit43.i.i
  %2 = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 1
  store i8 92, ptr %.03757.i.i, align 1, !tbaa !19
  %i.in = lshr i8 %i.ik, 6
  %i.io = or disjoint i8 %i.in, 48
  %i.ip = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 2
  store i8 %i.io, ptr %2, align 1, !tbaa !19
  %i.iq = lshr i8 %i.ik, 3
  %i.ir = and i8 %i.iq, 7
  %i.is = or disjoint i8 %i.ir, 48
end_hunk_2
begin_hunk_3_@fielddef_toproto:bb.a
  store i8 %i.is, ptr %i.ip, align 1, !tbaa !19
  %i.iu = and i8 %i.ik, 7
  %i.iv = or disjoint i8 %i.iu, 48
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %special_escape.exit45.i.i
  %.pn.i.i = phi i64 [ 2, %special_escape.exit45.i.i ], [ 1, %bb.az ], [ 4, %bb.ba ]
  %.138.i.i = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 %.pn.i.i
  %i.iw = icmp ult ptr %i.ij, %i.ii
  br i1 %i.iw, label %.lr.ph60.i.i, label %default_bytes.exit.i, !llvm.loop !33

end_hunk_3
