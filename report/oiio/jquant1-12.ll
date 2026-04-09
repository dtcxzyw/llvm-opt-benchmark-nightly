inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0_@color_quantize:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %i.i = icmp slt i32 %3, 1
  %.not31 = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.i, i1 true, i1 %.not31
end_hunk_0
begin_hunk_1_@color_quantize:bb.a
  br label %.preheader.lr.ph

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph.split
  %wide.trip.count49 = zext nneg i32 %3 to i64
  %wide.trip.count44 = zext nneg i32 %i.h to i64  ; 2 uses
  %xtraiter61 = and i64 %wide.trip.count44, 3     ; 3 uses
end_hunk_1
begin_hunk_2_@color_quantize:bb.a
.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %.02334.us.us = phi i32 [ %i.f, %.preheader.lr.ph.us ], [ %i.bl, %._crit_edge.us.us ]
  %.02533.us.us = phi ptr [ %i.s, %.preheader.lr.ph.us ], [ %i.bk, %._crit_edge.us.us ] ; 2 uses
  %.02632.us.us = phi ptr [ %i.q, %.preheader.lr.ph.us ], [ %.lcssa58, %._crit_edge.us.us ] ; 2 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
end_hunk_2
begin_hunk_3_@color_quantize:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 8 ; 3 uses
  %i.ax = load i16, ptr %i.an, align 2, !tbaa !75
  %i.ay = sext i16 %i.ax to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.ay
end_hunk_3
begin_hunk_4_@color_quantize:bb.a
  %epil.iter62 = phi i64 [ %epil.iter62.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42.epil
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %.127.us.us.epil, i64 2 ; 2 uses
  %i.bf = load i16, ptr %.127.us.us.epil, align 2, !tbaa !75
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bg
end_hunk_4
begin_hunk_5_@color_quantize:bb.a
  br i1 %epil.iter62.cmp.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !108

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.unr-lcssa
  %.lcssa58 = phi ptr [ %i.aw, %._crit_edge.us.us.unr-lcssa ], [ %i.be, %bb.b ]
  %.lcssa = phi i16 [ %i.bb, %._crit_edge.us.us.unr-lcssa ], [ %i.bj, %bb.b ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02533.us.us, i64 2
  store i16 %.lcssa, ptr %.02533.us.us, align 2, !tbaa !75
  %i.bl = add i32 %.02334.us.us, -1               ; 2 uses
end_hunk_5
