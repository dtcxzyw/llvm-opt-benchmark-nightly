inline.NumInlined: 136
inline.NumDeleted: 12
begin_hunk_0_@sdsjoin:bb.a
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdsempty.exit
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %.not27 = icmp eq i32 %1, 1
  br i1 %.not27, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %3 = add nsw i64 %wide.trip.count, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %sdscat.exit18
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %sdscat.exit18 ] ; 4 uses
  %.01019 = phi ptr [ %.0.i.i, %.lr.ph.split ], [ %.1, %sdscat.exit18 ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #27 ; 3 uses
end_hunk_0
begin_hunk_1_@sdsjoin:bb.a
sdscat.exit18:                                    ; preds = %sdssetlen.exit.i.i16, %sdslen.exit.i.i13, %sdscat.exit
  %.1 = phi ptr [ %i.ae, %sdscat.exit ], [ null, %sdslen.exit.i.i13 ], [ %i.bj, %sdssetlen.exit.i.i16 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.d, !llvm.loop !50

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %sdscat.exit18
  %4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sdscat.exit18 ] ; 2 uses
  %5 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %sdscat.exit18 ] ; 6 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !20       ; 2 uses
  %8 = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %7) #27 ; 3 uses
  %9 = getelementptr i8, ptr %5, i64 -1
  %.val.i.i.i.peel = load i8, ptr %9, align 1, !tbaa !17 ; 2 uses
  %10 = and i8 %.val.i.i.i.peel, 7
  switch i8 %10, label %sdslen.exit.i.i.peel [
    i8 0, label %26
    i8 1, label %22
    i8 2, label %18
    i8 3, label %14
    i8 4, label %11
  ]

11:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %12 = getelementptr inbounds i8, ptr %5, i64 -17
  %13 = load i64, ptr %12, align 1, !tbaa !14
  br label %sdslen.exit.i.i.peel

14:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %15 = getelementptr inbounds i8, ptr %5, i64 -9
  %16 = load i32, ptr %15, align 1, !tbaa !9
  %17 = zext i32 %16 to i64
  br label %sdslen.exit.i.i.peel

18:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %19 = getelementptr inbounds i8, ptr %5, i64 -5
  %20 = load i16, ptr %19, align 1, !tbaa !18
  %21 = zext i16 %20 to i64
  br label %sdslen.exit.i.i.peel

22:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %23 = getelementptr inbounds i8, ptr %5, i64 -3
  %24 = load i8, ptr %23, align 1, !tbaa !17
  %25 = zext i8 %24 to i64
  br label %sdslen.exit.i.i.peel

26:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %27 = lshr i8 %.val.i.i.i.peel, 3
  %28 = zext nneg i8 %27 to i64
  br label %sdslen.exit.i.i.peel

sdslen.exit.i.i.peel:                             ; preds = %26, %22, %18, %14, %11, %._crit_edge.loopexit.peel.begin
  %.0.i.i.i.peel = phi i64 [ %13, %11 ], [ %28, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %14 ], [ 0, %._crit_edge.loopexit.peel.begin ] ; 2 uses
  %29 = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %5, i64 noundef %8, i32 noundef 1) ; 15 uses
  %30 = icmp eq ptr %29, null
  br i1 %30, label %sdscat.exit.peel, label %31

31:                                               ; preds = %sdslen.exit.i.i.peel
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 %.0.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %7, i64 %8, i1 false)
  %33 = add i64 %.0.i.i.i.peel, %8                ; 6 uses
  %34 = getelementptr i8, ptr %29, i64 -1         ; 2 uses
  %.val.i16.i.i.peel = load i8, ptr %34, align 1, !tbaa !17
  %35 = and i8 %.val.i16.i.i.peel, 7
  switch i8 %35, label %sdssetlen.exit.i.i.peel [
    i8 0, label %47
    i8 1, label %44
    i8 2, label %41
    i8 3, label %38
    i8 4, label %36
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %29, i64 -17
  store i64 %33, ptr %37, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i.peel

38:                                               ; preds = %31
  %39 = trunc i64 %33 to i32
  %40 = getelementptr inbounds i8, ptr %29, i64 -9
  store i32 %39, ptr %40, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i.peel

41:                                               ; preds = %31
  %42 = trunc i64 %33 to i16
  %43 = getelementptr inbounds i8, ptr %29, i64 -5
  store i16 %42, ptr %43, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i.peel

44:                                               ; preds = %31
  %45 = trunc i64 %33 to i8
  %46 = getelementptr inbounds i8, ptr %29, i64 -3
  store i8 %45, ptr %46, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i.peel

47:                                               ; preds = %31
  %.tr.i.i.i.peel = trunc i64 %33 to i8
  %48 = shl i8 %.tr.i.i.i.peel, 3
  store i8 %48, ptr %34, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i.peel

sdssetlen.exit.i.i.peel:                          ; preds = %47, %44, %41, %38, %36, %31
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 %33
  store i8 0, ptr %49, align 1, !tbaa !17
  br label %sdscat.exit.peel

sdscat.exit.peel:                                 ; preds = %sdssetlen.exit.i.i.peel, %sdslen.exit.i.i.peel
  %.not.peel = icmp eq i64 %4, %i.l
  br i1 %.not.peel, label %._crit_edge, label %50

50:                                               ; preds = %sdscat.exit.peel
  %51 = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #27 ; 3 uses
  %52 = getelementptr i8, ptr %29, i64 -1
  %.val.i.i.i12.peel = load i8, ptr %52, align 1, !tbaa !17 ; 2 uses
  %53 = and i8 %.val.i.i.i12.peel, 7
  switch i8 %53, label %sdslen.exit.i.i13.peel [
    i8 0, label %69
    i8 1, label %65
    i8 2, label %61
    i8 3, label %57
    i8 4, label %54
  ]

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %29, i64 -17
  %56 = load i64, ptr %55, align 1, !tbaa !14
  br label %sdslen.exit.i.i13.peel

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, ptr %29, i64 -9
  %59 = load i32, ptr %58, align 1, !tbaa !9
  %60 = zext i32 %59 to i64
  br label %sdslen.exit.i.i13.peel

61:                                               ; preds = %50
  %62 = getelementptr inbounds i8, ptr %29, i64 -5
  %63 = load i16, ptr %62, align 1, !tbaa !18
  %64 = zext i16 %63 to i64
  br label %sdslen.exit.i.i13.peel

65:                                               ; preds = %50
  %66 = getelementptr inbounds i8, ptr %29, i64 -3
  %67 = load i8, ptr %66, align 1, !tbaa !17
  %68 = zext i8 %67 to i64
  br label %sdslen.exit.i.i13.peel

69:                                               ; preds = %50
  %70 = lshr i8 %.val.i.i.i12.peel, 3
  %71 = zext nneg i8 %70 to i64
  br label %sdslen.exit.i.i13.peel

sdslen.exit.i.i13.peel:                           ; preds = %69, %65, %61, %57, %54, %50
  %.0.i.i.i14.peel = phi i64 [ %56, %54 ], [ %71, %69 ], [ %68, %65 ], [ %64, %61 ], [ %60, %57 ], [ 0, %50 ] ; 2 uses
  %72 = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %29, i64 noundef %51, i32 noundef 1) ; 9 uses
  %73 = icmp eq ptr %72, null
  br i1 %73, label %._crit_edge, label %74

74:                                               ; preds = %sdslen.exit.i.i13.peel
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 %.0.i.i.i14.peel
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr nonnull readonly align 1 %2, i64 %51, i1 false)
  %76 = add i64 %.0.i.i.i14.peel, %51             ; 6 uses
  %77 = getelementptr i8, ptr %72, i64 -1         ; 2 uses
  %.val.i16.i.i15.peel = load i8, ptr %77, align 1, !tbaa !17
  %78 = and i8 %.val.i16.i.i15.peel, 7
  switch i8 %78, label %sdssetlen.exit.i.i16.peel [
    i8 0, label %90
    i8 1, label %87
    i8 2, label %84
    i8 3, label %81
    i8 4, label %79
  ]

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, ptr %72, i64 -17
  store i64 %76, ptr %80, align 1, !tbaa !14
  br label %sdssetlen.exit.i.i16.peel

81:                                               ; preds = %74
  %82 = trunc i64 %76 to i32
  %83 = getelementptr inbounds i8, ptr %72, i64 -9
  store i32 %82, ptr %83, align 1, !tbaa !9
  br label %sdssetlen.exit.i.i16.peel

84:                                               ; preds = %74
  %85 = trunc i64 %76 to i16
  %86 = getelementptr inbounds i8, ptr %72, i64 -5
  store i16 %85, ptr %86, align 1, !tbaa !18
  br label %sdssetlen.exit.i.i16.peel

87:                                               ; preds = %74
  %88 = trunc i64 %76 to i8
  %89 = getelementptr inbounds i8, ptr %72, i64 -3
  store i8 %88, ptr %89, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i16.peel

90:                                               ; preds = %74
  %.tr.i.i.i17.peel = trunc i64 %76 to i8
  %91 = shl i8 %.tr.i.i.i17.peel, 3
  store i8 %91, ptr %77, align 1, !tbaa !17
  br label %sdssetlen.exit.i.i16.peel

sdssetlen.exit.i.i16.peel:                        ; preds = %90, %87, %84, %81, %79, %74
  %92 = getelementptr inbounds nuw i8, ptr %72, i64 %76
  store i8 0, ptr %92, align 1, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %sdssetlen.exit.i.i16.peel, %sdslen.exit.i.i13.peel, %sdscat.exit.peel, %sdsempty.exit
  %.010.lcssa = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %29, %sdscat.exit.peel ], [ null, %sdslen.exit.i.i13.peel ], [ %72, %sdssetlen.exit.i.i16.peel ]
  ret ptr %.010.lcssa
}

end_hunk_1
begin_hunk_2_@sdsjoinsds:bb.a
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %bb.a, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i.i ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdsempty.exit
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %.not21 = icmp eq i32 %1, 1
  br i1 %.not21, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %4 = add nsw i64 %wide.trip.count, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %sdscatlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %sdscatlen.exit ] ; 4 uses
  %.01114 = phi ptr [ %.0.i.i, %.lr.ph.split ], [ %.1, %sdscatlen.exit ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = call ptr @sdscatsds(ptr noundef %.01114, ptr noundef %i.n) ; 7 uses
end_hunk_2
begin_hunk_3_@sdsjoinsds:bb.a
sdscatlen.exit:                                   ; preds = %sdssetlen.exit.i, %sdslen.exit.i, %bb.d
  %.1 = phi ptr [ %i.o, %bb.d ], [ null, %sdslen.exit.i ], [ %i.ae, %sdssetlen.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.d, !llvm.loop !52

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %sdscatlen.exit
  %5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sdscatlen.exit ] ; 2 uses
  %6 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %sdscatlen.exit ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = call ptr @sdscatsds(ptr noundef %6, ptr noundef %8) ; 7 uses
  %.not.peel = icmp eq i64 %5, %i.l
  br i1 %.not.peel, label %._crit_edge, label %10

10:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %11 = getelementptr i8, ptr %9, i64 -1
  %.val.i.i.peel = load i8, ptr %11, align 1, !tbaa !17 ; 2 uses
  %12 = and i8 %.val.i.i.peel, 7
  switch i8 %12, label %sdslen.exit.i.peel [
    i8 0, label %28
    i8 1, label %24
    i8 2, label %20
    i8 3, label %16
    i8 4, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, ptr %9, i64 -17
  %15 = load i64, ptr %14, align 1, !tbaa !14
  br label %sdslen.exit.i.peel

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %9, i64 -9
  %18 = load i32, ptr %17, align 1, !tbaa !9
  %19 = zext i32 %18 to i64
  br label %sdslen.exit.i.peel

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %9, i64 -5
  %22 = load i16, ptr %21, align 1, !tbaa !18
  %23 = zext i16 %22 to i64
  br label %sdslen.exit.i.peel

24:                                               ; preds = %10
  %25 = getelementptr inbounds i8, ptr %9, i64 -3
  %26 = load i8, ptr %25, align 1, !tbaa !17
  %27 = zext i8 %26 to i64
  br label %sdslen.exit.i.peel

28:                                               ; preds = %10
  %29 = lshr i8 %.val.i.i.peel, 3
  %30 = zext nneg i8 %29 to i64
  br label %sdslen.exit.i.peel

sdslen.exit.i.peel:                               ; preds = %28, %24, %20, %16, %13, %10
  %.0.i.i13.peel = phi i64 [ %15, %13 ], [ %30, %28 ], [ %27, %24 ], [ %23, %20 ], [ %19, %16 ], [ 0, %10 ] ; 2 uses
  %31 = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %9, i64 noundef %3, i32 noundef 1) ; 9 uses
  %32 = icmp eq ptr %31, null
  br i1 %32, label %._crit_edge, label %33

33:                                               ; preds = %sdslen.exit.i.peel
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 %.0.i.i13.peel
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr readonly align 1 %2, i64 %3, i1 false)
  %35 = add i64 %.0.i.i13.peel, %3                ; 6 uses
  %36 = getelementptr i8, ptr %31, i64 -1         ; 2 uses
  %.val.i16.i.peel = load i8, ptr %36, align 1, !tbaa !17
  %37 = and i8 %.val.i16.i.peel, 7
  switch i8 %37, label %sdssetlen.exit.i.peel [
    i8 0, label %49
    i8 1, label %46
    i8 2, label %43
    i8 3, label %40
    i8 4, label %38
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, ptr %31, i64 -17
  store i64 %35, ptr %39, align 1, !tbaa !14
  br label %sdssetlen.exit.i.peel

40:                                               ; preds = %33
  %41 = trunc i64 %35 to i32
  %42 = getelementptr inbounds i8, ptr %31, i64 -9
  store i32 %41, ptr %42, align 1, !tbaa !9
  br label %sdssetlen.exit.i.peel

43:                                               ; preds = %33
  %44 = trunc i64 %35 to i16
  %45 = getelementptr inbounds i8, ptr %31, i64 -5
  store i16 %44, ptr %45, align 1, !tbaa !18
  br label %sdssetlen.exit.i.peel

46:                                               ; preds = %33
  %47 = trunc i64 %35 to i8
  %48 = getelementptr inbounds i8, ptr %31, i64 -3
  store i8 %47, ptr %48, align 1, !tbaa !17
  br label %sdssetlen.exit.i.peel

49:                                               ; preds = %33
  %.tr.i.i.peel = trunc i64 %35 to i8
  %50 = shl i8 %.tr.i.i.peel, 3
  store i8 %50, ptr %36, align 1, !tbaa !17
  br label %sdssetlen.exit.i.peel

sdssetlen.exit.i.peel:                            ; preds = %49, %46, %43, %40, %38, %33
  %51 = getelementptr inbounds nuw i8, ptr %31, i64 %35
  store i8 0, ptr %51, align 1, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %sdssetlen.exit.i.peel, %sdslen.exit.i.peel, %._crit_edge.loopexit.peel.begin, %sdsempty.exit
  %.011.lcssa = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %9, %._crit_edge.loopexit.peel.begin ], [ null, %sdslen.exit.i.peel ], [ %31, %sdssetlen.exit.i.peel ]
  ret ptr %.011.lcssa
}

end_hunk_3
begin_hunk_4_@sdstemplate:bb.a
  %.0.i.i.i53 = phi i64 [ %i.cp, %bb.ah ], [ %i.ce, %bb.ad ], [ %i.ch, %bb.ae ], [ %i.ck, %bb.af ], [ %i.cn, %bb.ag ], [ 0, %bb.ac ] ; 2 uses
  %i.cq = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.1, i64 noundef 1, i32 noundef 1) ; 9 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %sdscat.exit, label %bb.ai, !llvm.loop !53

bb.ai:                                            ; preds = %sdslen.exit.i.i52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.0.i.i.i53
end_hunk_4
begin_hunk_5_@sdstemplate:bb.a
sdssetlen.exit.i.i55:                             ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  store i8 0, ptr %i.de, align 1, !tbaa !17
  br label %sdscat.exit, !llvm.loop !53

bb.ao:                                            ; preds = %sdscatlen.exit
  %i.df = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.by, i32 noundef 125) #27 ; 3 uses
end_hunk_5
begin_hunk_6_@llvm.assume
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28, !51}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = distinct !{!52, !28, !51}
!53 = distinct !{!53, !28}
end_hunk_6
