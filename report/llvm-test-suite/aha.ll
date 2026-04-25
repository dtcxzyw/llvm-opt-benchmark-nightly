inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@main:bb.a
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @trialx, i64 64), align 16, !tbaa !4
  %i.ai = tail call i32 @userfun(i32 noundef %i.ah) #9
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @correct_result, i64 64), align 16, !tbaa !4
  %i.aj = load i32, ptr @numi, align 4, !tbaa !4  ; 6 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 16), align 16, !tbaa !4 ; 4 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 20), align 4, !tbaa !4 ; 11 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 24), align 8, !tbaa !4 ; 4 uses
  %i.ao = add nsw i32 %i.aj, -1
  %i.ap = add nuw nsw i32 %i.aj, 10               ; 4 uses
  %i.aq = add nuw nsw i32 %i.aj, 9                ; 10 uses
  %i.ar = icmp samesign ugt i32 %i.aj, 2
  %i.as = zext nneg i32 %i.ao to i64
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 12), align 4
  %.not4749.i = icmp eq i32 %i.at, 0
  %i.au = icmp sgt i32 %i.al, 10
  %i.av = icmp sgt i32 %i.am, 10
  %i.aw = icmp sgt i32 %i.an, 10
  %.not.i = icmp eq i32 %i.am, %i.ap
  %.not41.i = icmp eq i32 %i.an, %i.ap
  %.not45.i = icmp eq i32 %i.am, %i.aq
  %.not46.i = icmp eq i32 %i.an, %i.aq
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 8), align 8
  %i.ay = icmp sgt i32 %i.ax, 1
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @isa, i64 12), align 4
  %.not47.i = icmp eq i32 %i.az, 0
  %brmerge42 = select i1 %i.au, i1 true, i1 %i.av
  %brmerge44 = select i1 %brmerge42, i1 true, i1 %i.aw
  %brmerge = select i1 %.not.i, i1 true, i1 %.not41.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %fix_operands.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %fix_operands.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr @pgm, i64 %indvars.iv ; 7 uses
  store i32 0, ptr %i.ba, align 16, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 4 uses
end_hunk_0
begin_hunk_1_@main:bb.a

fix_operands.exit:                                ; preds = %fix_operands.exit.sink.split, %.thread50.i, %bb.m, %.thread._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %fix_operands.exit, %.preheader
  %i.bs = tail call i32 @search()                 ; 2 uses
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.bs) ; 0 uses
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.cc = load i32, ptr @numi, align 4, !tbaa !4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next33, %i.cd
  br i1 %i.ce, label %.lr.ph27, label %._crit_edge28, !llvm.loop !31

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.cb, %.lr.ph27 ]
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.ci = icmp slt i32 %i.cg, 5
  %i.cj = icmp eq i32 %i.bs, 0
  %i.ck = and i1 %i.ci, %i.cj
  br i1 %i.ck, label %.preheader, label %bb.n, !llvm.loop !32

bb.n:                                             ; preds = %._crit_edge28
  ret i32 0
end_hunk_3
begin_hunk_4_@llvm.umin.i32
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
end_hunk_4
