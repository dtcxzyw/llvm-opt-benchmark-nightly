inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@main:bb.a
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 64), align 16, !tbaa !4
  %i.ai = tail call i32 @userfun(i32 noundef %i.ah) #9
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 64), align 16, !tbaa !4
  %i.aj = load i32, ptr @numi, align 4, !tbaa !4  ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !4 ; 7 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 20), align 4, !tbaa !4 ; 19 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 24), align 8, !tbaa !4 ; 5 uses
  %i.ao = add nsw i32 %i.aj, -1
  %i.ap = add nuw nsw i32 %i.aj, 10               ; 6 uses
  %i.aq = add nuw nsw i32 %i.aj, 9                ; 18 uses
  %i.ar = icmp samesign ugt i32 %i.aj, 2          ; 2 uses
  %i.as = zext nneg i32 %i.ao to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 12), align 4
  %.not4749.i = icmp eq i32 %i.at, 0              ; 2 uses
  %i.au = icmp sgt i32 %i.al, 10                  ; 2 uses
  %i.av = icmp sgt i32 %i.am, 10                  ; 2 uses
  %i.aw = icmp sgt i32 %i.an, 10                  ; 2 uses
  %.not.i = icmp eq i32 %i.am, %i.ap              ; 2 uses
  %.not41.i = icmp eq i32 %i.an, %i.ap            ; 2 uses
  %.not45.i = icmp eq i32 %i.am, %i.aq            ; 2 uses
  %.not46.i = icmp eq i32 %i.an, %i.aq            ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 8), align 8
  %i.ay = icmp sgt i32 %i.ax, 1                   ; 2 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 12), align 4
  %.not47.i = icmp eq i32 %i.az, 0                ; 2 uses
  %.not = icmp eq i32 %i.aj, 1
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %brmerge42 = select i1 %i.au, i1 true, i1 %i.av
  %brmerge44 = select i1 %brmerge42, i1 true, i1 %i.aw
  %brmerge = select i1 %.not.i, i1 true, i1 %.not41.i
  %2 = add nsw i64 %wide.trip.count, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %fix_operands.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %fix_operands.exit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %indvars.iv ; 7 uses
  store i32 0, ptr %i.ba, align 16, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 4 uses
end_hunk_0
begin_hunk_1_@main:bb.a

fix_operands.exit:                                ; preds = %fix_operands.exit.sink.split, %.thread50.i, %bb.m, %.thread._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.b, !llvm.loop !30

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %fix_operands.exit
  %3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %fix_operands.exit ] ; 2 uses
  %4 = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %3 ; 7 uses
  store i32 0, ptr %4, align 16, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 %i.al, ptr %5, align 4, !tbaa !4
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.am, ptr %6, align 8, !tbaa !4
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.an, ptr %7, align 4, !tbaa !4
  %8 = icmp eq i64 %3, %i.as
  br i1 %8, label %9, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %._crit_edge.loopexit.peel.begin
  br i1 %.not4749.i, label %.thread50.i.peel, label %.thread._crit_edge.i.peel

.thread50.i.peel:                                 ; preds = %.thread.i.peel
  %brmerge42.peel = select i1 %i.au, i1 true, i1 %i.av
  %brmerge44.peel = select i1 %brmerge42.peel, i1 true, i1 %i.aw
  br i1 %brmerge44.peel, label %._crit_edge, label %fix_operands.exit.sink.split.peel

9:                                                ; preds = %._crit_edge.loopexit.peel.begin
  %brmerge.peel = select i1 %.not.i, i1 true, i1 %.not41.i
  br i1 %brmerge.peel, label %11, label %10

10:                                               ; preds = %9
  store i32 %i.ap, ptr %5, align 4, !tbaa !4
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ %i.ap, %10 ], [ %i.al, %9 ]     ; 7 uses
  br i1 %i.ar, label %13, label %27

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %4, i64 -12
  %15 = load i32, ptr %14, align 4, !tbaa !4
  %.not42.i.peel = icmp eq i32 %15, %i.aq
  br i1 %.not42.i.peel, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %4, i64 -8
  %18 = load i32, ptr %17, align 8, !tbaa !4
  %.not43.i.peel = icmp eq i32 %18, %i.aq
  br i1 %.not43.i.peel, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %4, i64 -4
  %21 = load i32, ptr %20, align 4, !tbaa !4
  %.not44.i.peel = icmp eq i32 %21, %i.aq
  %or.cond.i.peel = or i1 %.not45.i, %.not44.i.peel
  %brmerge40.peel = select i1 %or.cond.i.peel, i1 true, i1 %.not46.i
  br i1 %brmerge40.peel, label %27, label %22

22:                                               ; preds = %19
  %23 = icmp slt i32 %12, %i.aq
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  br i1 %i.ay, label %25, label %27

25:                                               ; preds = %24
  store i32 %i.aq, ptr %6, align 8, !tbaa !4
  br label %27

26:                                               ; preds = %22
  store i32 %i.aq, ptr %5, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %26, %25, %24, %19, %16, %13, %11
  %28 = phi i32 [ %12, %11 ], [ %12, %13 ], [ %12, %16 ], [ %12, %19 ], [ %i.aq, %26 ], [ %12, %25 ], [ %12, %24 ]
  %29 = phi i32 [ %i.am, %11 ], [ %i.am, %13 ], [ %i.am, %16 ], [ %i.am, %19 ], [ %i.am, %26 ], [ %i.aq, %25 ], [ %i.am, %24 ]
  br i1 %.not47.i, label %._crit_edge, label %.thread._crit_edge.i.peel

.thread._crit_edge.i.peel:                        ; preds = %27, %.thread.i.peel
  %30 = phi i32 [ %28, %27 ], [ %i.al, %.thread.i.peel ]
  %31 = phi i32 [ %29, %27 ], [ %i.am, %.thread.i.peel ] ; 2 uses
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %fix_operands.exit.sink.split.peel, label %._crit_edge

fix_operands.exit.sink.split.peel:                ; preds = %.thread._crit_edge.i.peel, %.thread50.i.peel
  %.sink.peel = phi i32 [ %31, %.thread._crit_edge.i.peel ], [ 11, %.thread50.i.peel ]
  store i32 %.sink.peel, ptr %5, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %fix_operands.exit.sink.split.peel, %.thread._crit_edge.i.peel, %27, %.thread50.i.peel, %.preheader
  %i.bs = tail call i32 @search()                 ; 2 uses
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.bs) ; 0 uses
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.cc = load i32, ptr @numi, align 4, !tbaa !4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next33, %i.cd
  br i1 %i.ce, label %.lr.ph27, label %._crit_edge28, !llvm.loop !32

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.cb, %.lr.ph27 ]
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.ci = icmp slt i32 %i.cg, 5
  %i.cj = icmp eq i32 %i.bs, 0
  %i.ck = and i1 %i.ci, %i.cj
  br i1 %i.ck, label %.preheader, label %bb.n, !llvm.loop !33

bb.n:                                             ; preds = %._crit_edge28
  ret i32 0
end_hunk_3
begin_hunk_4_@llvm.umin.i32
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
end_hunk_4
