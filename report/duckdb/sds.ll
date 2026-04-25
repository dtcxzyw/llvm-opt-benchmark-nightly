inline.NumInlined: 91
inline.NumDeleted: 9
begin_hunk_0_@_ZN10duckdb_hll7sdsjoinEPPciS0_:bb.a
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.g = add nsw i32 %1, -1
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %.not24 = icmp eq i32 %1, 1
  br i1 %.not24, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %3 = add nsw i64 %wide.trip.count, -2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %_ZN10duckdb_hll6sdscatEPcPKc.exit16
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 4 uses
  %.01017 = phi ptr [ %.0.i.i, %.lr.ph.split ], [ %.1, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 6 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_hll7sdsjoinEPPciS0_:bb.a
_ZN10duckdb_hll6sdscatEPcPKc.exit16:              ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12, %_ZN10duckdb_hll6sdscatEPcPKc.exit
  %.1 = phi ptr [ %i.ac, %_ZN10duckdb_hll6sdscatEPcPKc.exit ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12 ], [ %i.bk, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.c, !llvm.loop !47

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %_ZN10duckdb_hll6sdscatEPcPKc.exit16
  %4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 2 uses
  %5 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %_ZN10duckdb_hll6sdscatEPcPKc.exit16 ] ; 6 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !28       ; 2 uses
  %8 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %7) #32 ; 3 uses
  %9 = getelementptr inbounds i8, ptr %5, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !21
  %11 = zext i8 %10 to i32                        ; 2 uses
  %12 = and i32 %11, 7
  switch i32 %12, label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel [
    i32 0, label %28
    i32 1, label %24
    i32 2, label %20
    i32 3, label %16
    i32 4, label %13
  ]

13:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %14 = getelementptr inbounds i8, ptr %5, i64 -18
  %15 = load i64, ptr %14, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel

16:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %17 = getelementptr inbounds i8, ptr %5, i64 -10
  %18 = load i32, ptr %17, align 1, !tbaa !14
  %19 = zext i32 %18 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel

20:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %21 = getelementptr inbounds i8, ptr %5, i64 -6
  %22 = load i16, ptr %21, align 1, !tbaa !10
  %23 = zext i16 %22 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel

24:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %25 = getelementptr inbounds i8, ptr %5, i64 -4
  %26 = load i8, ptr %25, align 1, !tbaa !7
  %27 = zext i8 %26 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel

28:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %29 = lshr i32 %11, 3
  %30 = zext nneg i32 %29 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel

_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel:         ; preds = %28, %24, %20, %16, %13, %._crit_edge.loopexit.peel.begin
  %.0.i.i.i.peel = phi i64 [ %15, %13 ], [ %30, %28 ], [ %27, %24 ], [ %23, %20 ], [ %19, %16 ], [ 0, %._crit_edge.loopexit.peel.begin ] ; 2 uses
  %31 = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %5, i64 noundef %8) ; 15 uses
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_ZN10duckdb_hll6sdscatEPcPKc.exit.peel, label %33

33:                                               ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 %.0.i.i.i.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull readonly align 1 %7, i64 %8, i1 false)
  %35 = add i64 %.0.i.i.i.peel, %8                ; 6 uses
  %36 = getelementptr inbounds i8, ptr %31, i64 -1 ; 2 uses
  %37 = load i8, ptr %36, align 1, !tbaa !21
  %38 = and i8 %37, 7
  switch i8 %38, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel [
    i8 0, label %50
    i8 1, label %47
    i8 2, label %44
    i8 3, label %41
    i8 4, label %39
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %31, i64 -18
  store i64 %35, ptr %40, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel

41:                                               ; preds = %33
  %42 = trunc i64 %35 to i32
  %43 = getelementptr inbounds i8, ptr %31, i64 -10
  store i32 %42, ptr %43, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel

44:                                               ; preds = %33
  %45 = trunc i64 %35 to i16
  %46 = getelementptr inbounds i8, ptr %31, i64 -6
  store i16 %45, ptr %46, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel

47:                                               ; preds = %33
  %48 = trunc i64 %35 to i8
  %49 = getelementptr inbounds i8, ptr %31, i64 -4
  store i8 %48, ptr %49, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel

50:                                               ; preds = %33
  %.tr.i.i.i.peel = trunc i64 %35 to i8
  %51 = shl i8 %.tr.i.i.i.peel, 3
  store i8 %51, ptr %36, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel:     ; preds = %50, %47, %44, %41, %39, %33
  %52 = getelementptr inbounds nuw i8, ptr %31, i64 %35
  store i8 0, ptr %52, align 1, !tbaa !21
  br label %_ZN10duckdb_hll6sdscatEPcPKc.exit.peel

_ZN10duckdb_hll6sdscatEPcPKc.exit.peel:           ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i.peel, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i.peel
  %.not.peel = icmp eq i64 %4, %i.h
  br i1 %.not.peel, label %._crit_edge, label %53

53:                                               ; preds = %_ZN10duckdb_hll6sdscatEPcPKc.exit.peel
  %54 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #32 ; 3 uses
  %55 = getelementptr inbounds i8, ptr %31, i64 -1
  %56 = load i8, ptr %55, align 1, !tbaa !21
  %57 = zext i8 %56 to i32                        ; 2 uses
  %58 = and i32 %57, 7
  switch i32 %58, label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel [
    i32 0, label %74
    i32 1, label %70
    i32 2, label %66
    i32 3, label %62
    i32 4, label %59
  ]

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %31, i64 -18
  %61 = load i64, ptr %60, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel

62:                                               ; preds = %53
  %63 = getelementptr inbounds i8, ptr %31, i64 -10
  %64 = load i32, ptr %63, align 1, !tbaa !14
  %65 = zext i32 %64 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel

66:                                               ; preds = %53
  %67 = getelementptr inbounds i8, ptr %31, i64 -6
  %68 = load i16, ptr %67, align 1, !tbaa !10
  %69 = zext i16 %68 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel

70:                                               ; preds = %53
  %71 = getelementptr inbounds i8, ptr %31, i64 -4
  %72 = load i8, ptr %71, align 1, !tbaa !7
  %73 = zext i8 %72 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel

74:                                               ; preds = %53
  %75 = lshr i32 %57, 3
  %76 = zext nneg i32 %75 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel

_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel:       ; preds = %74, %70, %66, %62, %59, %53
  %.0.i.i.i13.peel = phi i64 [ %61, %59 ], [ %76, %74 ], [ %73, %70 ], [ %69, %66 ], [ %65, %62 ], [ 0, %53 ] ; 2 uses
  %77 = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %31, i64 noundef %54) ; 9 uses
  %78 = icmp eq ptr %77, null
  br i1 %78, label %._crit_edge, label %79

79:                                               ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 %.0.i.i.i13.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %80, ptr nonnull readonly align 1 %2, i64 %54, i1 false)
  %81 = add i64 %.0.i.i.i13.peel, %54             ; 6 uses
  %82 = getelementptr inbounds i8, ptr %77, i64 -1 ; 2 uses
  %83 = load i8, ptr %82, align 1, !tbaa !21
  %84 = and i8 %83, 7
  switch i8 %84, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel [
    i8 0, label %96
    i8 1, label %93
    i8 2, label %90
    i8 3, label %87
    i8 4, label %85
  ]

85:                                               ; preds = %79
  %86 = getelementptr inbounds i8, ptr %77, i64 -18
  store i64 %81, ptr %86, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel

87:                                               ; preds = %79
  %88 = trunc i64 %81 to i32
  %89 = getelementptr inbounds i8, ptr %77, i64 -10
  store i32 %88, ptr %89, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel

90:                                               ; preds = %79
  %91 = trunc i64 %81 to i16
  %92 = getelementptr inbounds i8, ptr %77, i64 -6
  store i16 %91, ptr %92, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel

93:                                               ; preds = %79
  %94 = trunc i64 %81 to i8
  %95 = getelementptr inbounds i8, ptr %77, i64 -4
  store i8 %94, ptr %95, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel

96:                                               ; preds = %79
  %.tr.i.i.i15.peel = trunc i64 %81 to i8
  %97 = shl i8 %.tr.i.i.i15.peel, 3
  store i8 %97, ptr %82, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel:   ; preds = %96, %93, %90, %87, %85, %79
  %98 = getelementptr inbounds nuw i8, ptr %77, i64 %81
  store i8 0, ptr %98, align 1, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel, %_ZN10duckdb_hll6sdscatEPcPKc.exit.peel, %_ZN10duckdb_hll8sdsemptyEv.exit
  %.010.lcssa = phi ptr [ %.0.i.i, %_ZN10duckdb_hll8sdsemptyEv.exit ], [ %31, %_ZN10duckdb_hll6sdscatEPcPKc.exit.peel ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i.i12.peel ], [ %77, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i14.peel ]
  ret ptr %.010.lcssa
}

end_hunk_1
begin_hunk_2_@_ZN10duckdb_hll10sdsjoinsdsEPPciPKcm:bb.a
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.g = add nsw i32 %1, -1
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %.not20 = icmp eq i32 %1, 1
  br i1 %.not20, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %4 = add nsw i64 %wide.trip.count, -2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ] ; 4 uses
  %.01114 = phi ptr [ %.0.i.i, %.lr.ph.split ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call noundef ptr @_ZN10duckdb_hll9sdscatsdsEPcS0_(ptr noundef %.01114, ptr noundef %i.j) ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN10duckdb_hll10sdsjoinsdsEPPciPKcm:bb.a
_ZN10duckdb_hll9sdscatlenEPcPKvm.exit:            ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i, %_ZN10duckdb_hllL6sdslenEPc.exit.i, %bb.c
  %.1 = phi ptr [ %i.k, %bb.c ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i ], [ %i.ac, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.c, !llvm.loop !49

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit
  %5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ] ; 2 uses
  %6 = phi ptr [ %.0.i.i, %.lr.ph ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = tail call noundef ptr @_ZN10duckdb_hll9sdscatsdsEPcS0_(ptr noundef %6, ptr noundef %8) ; 7 uses
  %.not.peel = icmp eq i64 %5, %i.h
  br i1 %.not.peel, label %._crit_edge, label %10

10:                                               ; preds = %._crit_edge.loopexit.peel.begin
  %11 = getelementptr inbounds i8, ptr %9, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !21
  %13 = zext i8 %12 to i32                        ; 2 uses
  %14 = and i32 %13, 7
  switch i32 %14, label %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel [
    i32 0, label %30
    i32 1, label %26
    i32 2, label %22
    i32 3, label %18
    i32 4, label %15
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %9, i64 -18
  %17 = load i64, ptr %16, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %9, i64 -10
  %20 = load i32, ptr %19, align 1, !tbaa !14
  %21 = zext i32 %20 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel

22:                                               ; preds = %10
  %23 = getelementptr inbounds i8, ptr %9, i64 -6
  %24 = load i16, ptr %23, align 1, !tbaa !10
  %25 = zext i16 %24 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel

26:                                               ; preds = %10
  %27 = getelementptr inbounds i8, ptr %9, i64 -4
  %28 = load i8, ptr %27, align 1, !tbaa !7
  %29 = zext i8 %28 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel

30:                                               ; preds = %10
  %31 = lshr i32 %13, 3
  %32 = zext nneg i32 %31 to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel

_ZN10duckdb_hllL6sdslenEPc.exit.i.peel:           ; preds = %30, %26, %22, %18, %15, %10
  %.0.i.i13.peel = phi i64 [ %17, %15 ], [ %32, %30 ], [ %29, %26 ], [ %25, %22 ], [ %21, %18 ], [ 0, %10 ] ; 2 uses
  %33 = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %9, i64 noundef %3) ; 9 uses
  %34 = icmp eq ptr %33, null
  br i1 %34, label %._crit_edge, label %35

35:                                               ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %.0.i.i13.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr readonly align 1 %2, i64 %3, i1 false)
  %37 = add i64 %.0.i.i13.peel, %3                ; 6 uses
  %38 = getelementptr inbounds i8, ptr %33, i64 -1 ; 2 uses
  %39 = load i8, ptr %38, align 1, !tbaa !21
  %40 = and i8 %39, 7
  switch i8 %40, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel [
    i8 0, label %52
    i8 1, label %49
    i8 2, label %46
    i8 3, label %43
    i8 4, label %41
  ]

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %33, i64 -18
  store i64 %37, ptr %42, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel

43:                                               ; preds = %35
  %44 = trunc i64 %37 to i32
  %45 = getelementptr inbounds i8, ptr %33, i64 -10
  store i32 %44, ptr %45, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel

46:                                               ; preds = %35
  %47 = trunc i64 %37 to i16
  %48 = getelementptr inbounds i8, ptr %33, i64 -6
  store i16 %47, ptr %48, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel

49:                                               ; preds = %35
  %50 = trunc i64 %37 to i8
  %51 = getelementptr inbounds i8, ptr %33, i64 -4
  store i8 %50, ptr %51, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel

52:                                               ; preds = %35
  %.tr.i.i.peel = trunc i64 %37 to i8
  %53 = shl i8 %.tr.i.i.peel, 3
  store i8 %53, ptr %38, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel:       ; preds = %52, %49, %46, %43, %41, %35
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel, %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel, %._crit_edge.loopexit.peel.begin, %_ZN10duckdb_hll8sdsemptyEv.exit
  %.011.lcssa = phi ptr [ %.0.i.i, %_ZN10duckdb_hll8sdsemptyEv.exit ], [ %9, %._crit_edge.loopexit.peel.begin ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i.peel ], [ %33, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.peel ]
  ret ptr %.011.lcssa
}

end_hunk_3
begin_hunk_4_@calloc
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23, !48}
!48 = !{!"llvm.loop.peeled.count", i32 1}
!49 = distinct !{!49, !23, !48}
end_hunk_4
