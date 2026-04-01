begin_hunk_0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = add i64 %i.i, %i.d                       ; 4 uses
  %invariant.op = sub i64 %i.n, %i.o              ; 3 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1
  br i1 %i.aq, label %append_ast_arg.exit.thread, label %append_ast_arg.exit.peel

append_ast_arg.exit.peel:                         ; preds = %bb.o, %bb.m, %bb.k, %bb.i
  %i.ar = icmp sgt i64 %invariant.op, -1
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %append_ast_arg.exit.peel
end_hunk_1
begin_hunk_2
bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %invariant.op
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = tail call fastcc i32 @append_ast_expr(ptr noundef %0, ptr noundef %i.ax, i32 noundef 1)
  %i.az = icmp eq i32 %i.ay, -1
end_hunk_2
begin_hunk_3
  br i1 %i.ci, label %append_ast_arg.exit.thread, label %append_ast_arg.exit

append_ast_arg.exit:                              ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w
  %i.cj = add i64 %.076115, %invariant.op         ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.ad, label %bb.af

end_hunk_3
begin_hunk_4
  br label %bb.at

bb.at:                                            ; preds = %.critedge, %bb.as
  %i.dy = phi i64 [ %i.dx, %bb.as ], [ 0, %.critedge ] ; 4 uses
  %i.dz = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !60 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
end_hunk_4
begin_hunk_5
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ed = phi i64 [ %i.ec, %bb.au ], [ 0, %bb.at ]
  %i.ee = trunc nuw i8 %.174 to i1                ; 2 uses
  %invariant.op117 = sub i64 %i.ed, %i.dy         ; 3 uses
  %i.ef = icmp sgt i64 %i.dy, 0
  br i1 %i.ef, label %.lr.ph120.preheader, label %._crit_edge121

end_hunk_5
begin_hunk_6
  br i1 %i.eu, label %append_ast_arg.exit.thread, label %append_ast_arg.exit107.peel

append_ast_arg.exit107.peel:                      ; preds = %bb.ba, %bb.ay
  %i.ev = icmp sgt i64 %invariant.op117, -1
  br i1 %i.ev, label %bb.bb, label %.critedge98.peel

bb.bb:                                            ; preds = %append_ast_arg.exit107.peel
  %i.ew = load ptr, ptr %i.dz, align 8, !tbaa !60
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %invariant.op117
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !19 ; 2 uses
  %.not94.peel = icmp eq ptr %i.ez, null
  br i1 %.not94.peel, label %.critedge98.peel, label %bb.bc
end_hunk_6
begin_hunk_7
  br i1 %i.ft, label %append_ast_arg.exit.thread, label %append_ast_arg.exit107

append_ast_arg.exit107:                           ; preds = %bb.bg, %bb.be
  %i.fu = add i64 %.177117, %invariant.op117      ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  br i1 %i.fv, label %bb.bh, label %.critedge98

end_hunk_7
