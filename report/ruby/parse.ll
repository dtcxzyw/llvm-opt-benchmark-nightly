inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@heredoc_identifier:bb.a
  %.073157 = phi i32 [ %.073158, %.critedge.i125 ], [ %.073158, %bb.bd ], [ %.073158, %.split ], [ %.073158, %bb.bb ], [ %.073158, %bb.bc ], [ %.073, %nextc0.exit120 ]
  %.182 = phi i64 [ %.081153, %.critedge.i125 ], [ %.081153, %bb.bd ], [ %.081153, %.split ], [ %.081153, %bb.bb ], [ %.081153, %bb.bc ], [ %i.bm, %nextc0.exit120 ] ; 2 uses
  %.279 = phi i8 [ %i.em, %.critedge.i125 ], [ %i.em, %bb.bd ], [ %i.em, %.split ], [ %i.em, %bb.bb ], [ %i.em, %bb.bc ], [ %.178, %nextc0.exit120 ]
  %.076 = phi i32 [ 0, %.critedge.i125 ], [ 0, %bb.bd ], [ 0, %.split ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ 1, %nextc0.exit120 ] ; 2 uses
  %.175 = phi i32 [ 338, %.critedge.i125 ], [ 338, %bb.bd ], [ 338, %.split ], [ 338, %bb.bb ], [ 338, %bb.bc ], [ %.074, %nextc0.exit120 ]
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 %.182
  %i.gw = ptrtoint ptr %i.gt to i64               ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %3 = zext nneg i32 %.076 to i64
  %i.gy = add i64 %3, %i.gx
  %4 = sub i64 %i.gw, %i.gy                       ; 2 uses
  %i.gz = icmp ugt i64 %4, 4294967294
  br i1 %i.gz, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.critedge
end_hunk_0
begin_hunk_1_@heredoc_identifier:bb.a
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !29
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store i32 %i.hy, ptr %i.hz, align 8, !tbaa !486
  %i.ia = trunc i64 %4 to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 28
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !491
  %5 = trunc nuw nsw i32 %.076 to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store i8 %5, ptr %i.ic, align 8, !tbaa !489
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 33
  store i8 %.279, ptr %i.id, align 1, !tbaa !490
  %i.ie = getelementptr i8, ptr %0, i64 56
end_hunk_1
