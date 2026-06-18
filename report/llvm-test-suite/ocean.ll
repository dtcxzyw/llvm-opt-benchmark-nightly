inline.NumInlined: 160
inline.NumDeleted: 21
begin_hunk_0_@_ZN8Predator7processEv:bb.a
  %2 = alloca %class.Coordinate, align 8          ; 4 uses
  %3 = alloca %class.Coordinate, align 4          ; 3 uses
  %4 = alloca %class.Coordinate, align 4          ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.j, align 8, !tbaa !24
  %i.k = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.c unwind label %bb.d, !inline_history !26 ; 3 uses

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.i, ptr %i.l, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 45, ptr %i.n, align 8, !tbaa !22
  %i.o = zext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.o
  %i.q = zext i32 %i.g to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  store ptr %i.j, ptr %i.r, align 8, !tbaa !11
  %i.s = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !33
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !33
  %i.w = load ptr, ptr %0, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(28) %0) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #13
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.a
  %i.aa = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, i8 noundef signext 102), !noalias !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10, !noalias !34 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8, !noalias !34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.af, %i.ak
  %narrow.i.not = select i1 %.not.i, i1 true, i1 %i.al
  br i1 %narrow.i.not, label %_ZN4Prey7processEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !30
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !30
  store i32 6, ptr %i.a, align 8, !tbaa !31
  store i32 %i.ai, ptr %3, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ak, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.ad, ptr %4, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !8
  call void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %bb.g

_ZN4Prey7processEv.exit:                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.as = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i8 noundef signext 45), !noalias !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !4
  store <2 x i32> %i.aw, ptr %1, align 8, !tbaa !4
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !tbaa !4, !noalias !37
  store <2 x i32> %i.ax, ptr %2, align 8, !tbaa !4
  call void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4Prey7processEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Prey7processEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.Coordinate, align 8          ; 2 uses
  %2 = alloca %class.Coordinate, align 8          ; 2 uses
  %i.a = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, i8 noundef signext 45), !noalias !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !4
  store <2 x i32> %i.f, ptr %1, align 8, !tbaa !4
  %i.g = load <2 x i32>, ptr %i.c, align 4, !tbaa !4, !noalias !40
  store <2 x i32> %i.g, ptr %2, align 8, !tbaa !4
  call void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8Predator9reproduceE10Coordinate(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 8 uses
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !4
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.b unwind label %bb.c, !inline_history !43 ; 2 uses

bb.b:                                             ; preds = %bb.a
  store <2 x i32> %i.b, ptr %i.c, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 6, ptr %i.f, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8Predator, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 6, ptr %i.g, align 8, !tbaa !31
  store i8 83, ptr %i.e, align 8, !tbaa !22
  %i.h = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !33
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #13
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZN6Random8randRealEv(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @random() #11
  %i.b = sitofp i64 %i.a to float
  %i.c = fmul nnan float %i.b, f0x30000000
  ret float %i.c
}

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean10initializeEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 20), (24, 32)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12 ; 2 uses
  store i64 9092445769429, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 750, ptr %i.c, align 8, !tbaa !45
  store <4 x i32> <i32 500, i32 1000, i32 1000, i32 200>, ptr %0, align 8, !tbaa !4
  tail call void @_ZN5Ocean9initCellsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean9initCellsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN5Ocean13addEmptyCellsEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 2 uses
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %_ZN5Ocean13addEmptyCellsEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count21.i = zext i32 %i.a to i64
  %wide.trip.count.i = zext i32 %i.c to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv18.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next19.i, %._crit_edge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %indvars.iv18.i
  %i.e = trunc nuw i64 %indvars.iv18.i to i32
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.c
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count21.i
  br i1 %exitcond22.not.i, label %_ZN5Ocean13addEmptyCellsEv.exit, label %.preheader.i, !llvm.loop !46

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.f, align 8, !tbaa !24
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.c unwind label %bb.d, !inline_history !26 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.e, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 45, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store ptr %i.f, ptr %i.l, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !48

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #13
  resume { ptr, i32 } %i.m

_ZN5Ocean13addEmptyCellsEv.exit:                  ; preds = %._crit_edge.i, %bb.a, %.preheader.lr.ph.i
  tail call void @_ZN5Ocean12addObstaclesEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN5Ocean12addPredatorsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN5Ocean7addPreyEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %0, ptr @Ocean1, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean13addEmptyCellsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge14.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %._crit_edge14.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count21 = zext i32 %i.a to i64
  %wide.trip.count = zext i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %indvars.iv18
  %i.e = trunc nuw i64 %indvars.iv18 to i32
  br label %bb.b

._crit_edge14.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge14.split, label %.preheader, !llvm.loop !46

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.f, align 8, !tbaa !24
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.c unwind label %bb.d, !inline_history !26 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %indvars.iv to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.e, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 45, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.f, ptr %i.l, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !48

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #13
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean12addObstaclesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0511 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.e ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23, !noalias !49
  %i.e = add i32 %i.d, -1
  %i.f = tail call i64 @random() #11, !noalias !49
  %i.g = sext i32 %i.e to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 2147483647
  %i.j = load i32, ptr %0, align 8, !tbaa !19, !noalias !49
  %i.k = add i32 %i.j, -1
  %i.l = tail call i64 @random() #11, !noalias !49
  %i.m = sext i32 %i.k to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = sdiv i64 %i.n, 2147483647
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.p
  %i.r = and i64 %i.i, 4294967295
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11, !noalias !49 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !22, !noalias !49
  %.not.i = icmp eq i8 %i.v, 45
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !52

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14, !noalias !49 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10, !noalias !49 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8, !noalias !49 ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !24, !noalias !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !49
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.t) #11, !noalias !49, !inline_history !53
  %i.ae = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.ae, align 8, !tbaa !24
  %i.af = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.aa, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8Obstacle, i64 16), ptr %i.ae, align 8, !tbaa !24
  store i8 35, ptr %i.ai, align 8, !tbaa !22
  %i.aj = zext i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.aj
  %i.al = zext i32 %i.y to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store ptr %i.ae, ptr %i.am, align 8, !tbaa !11
  %i.an = add nuw i32 %.0511, 1                   ; 2 uses
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !45
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !54

bb.f:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 24) #13
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean12addPredatorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0613 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.e ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23, !noalias !55
  %i.e = add i32 %i.d, -1
  %i.f = tail call i64 @random() #11, !noalias !55
  %i.g = sext i32 %i.e to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 2147483647
  %i.j = load i32, ptr %0, align 8, !tbaa !19, !noalias !55
  %i.k = add i32 %i.j, -1
  %i.l = tail call i64 @random() #11, !noalias !55
  %i.m = sext i32 %i.k to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = sdiv i64 %i.n, 2147483647
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.p
  %i.r = and i64 %i.i, 4294967295
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11, !noalias !55 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !22, !noalias !55
  %.not.i = icmp eq i8 %i.v, 45
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !52

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14, !noalias !55 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10, !noalias !55 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8, !noalias !55 ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !24, !noalias !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !55
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.t) #11, !noalias !55, !inline_history !53
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.ae, align 8, !tbaa !24
  %i.af = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.e unwind label %bb.f, !inline_history !43 ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.aa, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 6, ptr %i.aj, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8Predator, i64 16), ptr %i.ae, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 6, ptr %i.ak, align 8, !tbaa !31
  store i8 83, ptr %i.ai, align 8, !tbaa !22
  %i.al = zext i32 %i.aa to i64
  %i.am = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.al
  %i.an = zext i32 %i.y to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !11
  %i.ap = add nuw i32 %.0613, 1                   ; 2 uses
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ar = icmp ult i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !58

bb.f:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #13
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean7addPreyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0511 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %bb.e ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23, !noalias !59
  %i.e = add i32 %i.d, -1
  %i.f = tail call i64 @random() #11, !noalias !59
  %i.g = sext i32 %i.e to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 2147483647
  %i.j = load i32, ptr %0, align 8, !tbaa !19, !noalias !59
  %i.k = add i32 %i.j, -1
end_hunk_0
