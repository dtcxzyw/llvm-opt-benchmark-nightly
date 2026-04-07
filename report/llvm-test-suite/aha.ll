inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@check:bb.a
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = tail call i32 %i.u(i32 noundef %i.g, i32 noundef %i.l, i32 noundef %i.q) #9
  %i.w = getelementptr [4 x i8], ptr @r, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 48
  store i32 %i.v, ptr %i.x, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@check:bb.a
bb.f:                                             ; preds = %._crit_edge.thread
  %i.fk = add nuw nsw i32 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, 16
  br i1 %exitcond.not, label %.loopexit, label %.preheader.split, !llvm.loop !22

.preheader.split:                                 ; preds = %.preheader, %bb.f
  %i.fl = phi i32 [ %i.gz, %bb.f ], [ %i.ab, %.preheader ] ; 2 uses
end_hunk_1
begin_hunk_2_@check:bb.a
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !21
  %i.gp = tail call i32 %i.go(i32 noundef %i.ga, i32 noundef %i.gf, i32 noundef %i.gk) #9
  %i.gq = getelementptr [4 x i8], ptr @r, i64 %indvars.iv30
  %i.gr = getelementptr i8, ptr %i.gq, i64 48
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !4
end_hunk_2
begin_hunk_3_@check:bb.a
  %i.gv = load i32, ptr @numi, align 4, !tbaa !4  ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next31, %i.gw
  br i1 %i.gx, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i32, ptr @unacceptable, align 4, !tbaa !4
end_hunk_3
begin_hunk_4_@fix_operands:bb.a
  %i.ae = sext i32 %i.c to i64
  %i.af = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !25
  %.not47 = icmp eq i32 %i.ah, 0
  br i1 %.not47, label %bb.t, label %bb.o

end_hunk_4
begin_hunk_5_@fix_operands:bb.a
  %i.ai = sext i32 %i.c to i64
  %i.aj = getelementptr inbounds [56 x i8], ptr @isa, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %.not4749 = icmp eq i32 %i.al, 0
  br i1 %.not4749, label %.thread50, label %.thread._crit_edge

end_hunk_5
begin_hunk_6_@search:bb.a
  store i32 %i.ae, ptr %i.w, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.e, !llvm.loop !26

.loopexit:                                        ; preds = %bb.g, %bb.i, %bb.f
  %.sink = phi i32 [ %i.ac, %bb.i ], [ %i.z, %bb.f ], [ 11, %bb.g ]
end_hunk_6
begin_hunk_7_@search:bb.a
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  tail call void @fix_operands(i32 noundef %i.ah)
  %i.au = icmp sgt i64 %indvars.iv108.i, 1
  br i1 %i.au, label %.lr.ph78.i, label %increment.exit.thread, !llvm.loop !27

increment.exit:                                   ; preds = %.thread.thread.i, %.loopexit, %bb.k, %bb.l
  %.0.i = phi i32 [ %.04777106.i, %.loopexit ], [ %.04777106.i, %bb.k ], [ %i.ah, %bb.l ], [ %i.r, %.thread.thread.i ] ; 2 uses
  %i.av = icmp sgt i32 %.0.i, -1
  br i1 %i.av, label %bb.b, label %increment.exit.thread, !llvm.loop !28

increment.exit.thread:                            ; preds = %bb.d, %increment.exit, %bb.c, %bb.m
  %.09 = phi i32 [ %.1, %bb.m ], [ %.1, %bb.d ], [ %.1, %increment.exit ], [ 5, %bb.c ]
end_hunk_7
begin_hunk_8_@main:bb.a
fix_operands.exit:                                ; preds = %fix_operands.exit.sink.split, %.thread50.i, %bb.m, %.thread._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %fix_operands.exit, %.preheader
  %i.bs = tail call i32 @search()                 ; 2 uses
end_hunk_8
begin_hunk_9_@main:bb.a
  %i.cc = load i32, ptr @numi, align 4, !tbaa !4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next33, %i.cd
  br i1 %i.ce, label %.lr.ph27, label %._crit_edge28, !llvm.loop !30

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.cb, %.lr.ph27 ]
end_hunk_9
begin_hunk_10_@main:bb.a
  %i.ci = icmp slt i32 %i.cg, 5
  %i.cj = icmp eq i32 %i.bs, 0
  %i.ck = and i1 %i.ci, %i.cj
  br i1 %i.ck, label %.preheader, label %bb.n, !llvm.loop !31

bb.n:                                             ; preds = %._crit_edge28
  ret i32 0
end_hunk_10
begin_hunk_11_@llvm.umin.i32
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{!11, !12, i64 0}
!22 = distinct !{!22, !17, !23}
!23 = !{!"llvm.loop.unswitch.partial.disable"}
!24 = distinct !{!24, !17}
!25 = !{!11, !5, i64 12}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
end_hunk_11
