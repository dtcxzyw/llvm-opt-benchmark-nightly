inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@pass2_fs_dither:bb.a
  %.0141 = phi ptr [ %i.au, %bb.d ], [ %i.at, %bb.c ]
  %.0140 = phi i64 [ 1, %bb.d ], [ -1, %bb.c ]
  %.0139 = phi i64 [ 3, %bb.d ], [ -3, %bb.c ]    ; 2 uses
  %4 = phi i64 [ 5, %bb.d ], [ -1, %bb.c ]
  store i32 %storemerge, ptr %i.s, align 8, !tbaa !93
  br label %bb.e

end_hunk_0
begin_hunk_1_@pass2_fs_dither:bb.a
  %.0135153 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.g ]
  %.0136152 = phi i32 [ 0, %.lr.ph ], [ %i.en, %bb.g ]
  %.0137151 = phi i32 [ %i.f, %.lr.ph ], [ %i.er, %bb.g ]
  %.1150 = phi ptr [ %.0141, %.lr.ph ], [ %i.av, %bb.g ] ; 5 uses
  %.1143149 = phi ptr [ %.0142, %.lr.ph ], [ %i.eq, %bb.g ] ; 2 uses
  %.1145148 = phi ptr [ %.0144, %.lr.ph ], [ %i.ep, %bb.g ] ; 4 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %.1150, i64 %.0139 ; 6 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !68
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %.0160, 8
end_hunk_1
begin_hunk_2_@pass2_fs_dither:bb.a
  %i.be = add nsw i32 %.0129159, 8
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = ashr i32 %i.bf, 4
  %5 = getelementptr inbounds [2 x i8], ptr %.1150, i64 %4
  %i.bh = load i16, ptr %5, align 2, !tbaa !68
  %i.bi = sext i16 %i.bh to i32
  %i.bj = add nsw i32 %.0130158, 8
  %i.bk = add nsw i32 %i.bj, %i.bi
end_hunk_2
begin_hunk_3_@pass2_fs_dither:bb.a

._crit_edge:                                      ; preds = %bb.g
  %i.es = getelementptr i8, ptr %i.av, i64 2
  %i.et = trunc nsw i32 %i.dz to i16
  store i16 %i.et, ptr %i.av, align 2, !tbaa !68
  %i.eu = trunc nsw i32 %i.eg to i16
  store i16 %i.eu, ptr %i.es, align 2, !tbaa !68
  %i.ev = trunc nsw i32 %i.en to i16
  %6 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i16 %i.ev, ptr %6, align 2, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge167, label %.lr.ph166.split, !llvm.loop !94
end_hunk_3
