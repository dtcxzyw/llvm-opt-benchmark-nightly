inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3VdbeExec:bb.a
  br i1 %i.boj, label %bb.pc, label %.thread7703

.thread7703:                                      ; preds = %bb.pb
  %i.bok = add nsw i32 %i.boi, -1
  br label %.lr.ph6351.preheader

bb.pc:                                            ; preds = %bb.pb
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a
  br i1 %i.boo, label %.lr.ph6351.preheader, label %.critedge

.lr.ph6351.preheader:                             ; preds = %.thread7703, %bb.pc
  %.031807709 = phi i32 [ %i.bok, %.thread7703 ], [ %i.bon, %bb.pc ]
  %smax = call i32 @llvm.smax.i32(i32 %i.boi, i32 2)
  %20 = zext nneg i32 %smax to i64
  %21 = add nsw i64 %20, -2
  %wide.trip.count7196 = zext nneg i32 %.031807709 to i64
  br label %.lr.ph6351

.lr.ph6351:                                       ; preds = %.lr.ph6351.preheader, %bb.pr
  %indvars.iv7192 = phi i64 [ %21, %.lr.ph6351.preheader ], [ %indvars.iv.next7193, %bb.pr ] ; 2 uses
  %.230296349 = phi ptr [ %i.bog, %.lr.ph6351.preheader ], [ %.33030, %bb.pr ] ; 7 uses
  %i.bop = getelementptr inbounds nuw [16 x i8], ptr %i.boc, i64 %indvars.iv7192 ; 4 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 14
end_hunk_1
begin_hunk_2_@sqlite3VdbeExec:bb.a
bb.pr:                                            ; preds = %bb.pe, %bb.pq, %bb.pg
  %.33030 = phi ptr [ %.230296349, %bb.pe ], [ %i.box, %bb.pg ], [ %i.bpw, %bb.pq ]
  %indvars.iv.next7193 = add nuw nsw i64 %indvars.iv7192, 1 ; 2 uses
  %exitcond7197.not = icmp eq i64 %indvars.iv.next7193, %wide.trip.count7196
  br i1 %exitcond7197.not, label %.critedge, label %.lr.ph6351, !llvm.loop !2677

bb.ps:                                            ; preds = %bb.pj, %bb.pk, %bb.pl, %bb.pp
  %i.bpx = and i16 %i.bpb, 63
end_hunk_2
