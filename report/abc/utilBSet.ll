inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Abc_TtGetCM4Pat:bb.a

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i32 %.val33, 16
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %.val33, 1073741823
  %i.w = shl nuw nsw i32 %.val33, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %.val33, %spec.select.i
  %.pre45 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.pre45, null
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @realloc(ptr noundef nonnull %.pre45, i64 noundef %i.y) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.ab = phi ptr [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !18
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !20
  %.pre46 = load i32, ptr %i.b, align 4, !tbaa !14
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ac = phi i32 [ %.val33, %.Vec_IntPush.exit_crit_edge ], [ %.val33, %bb.h ], [ %.pre46, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre45, %bb.h ], [ %i.ab, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !14
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 %i.o, ptr %i.ag, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit, %bb.b
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i16, ptr %i.i, align 2, !tbaa !23
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = shl i32 %i.ak, %i.f
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %4, i64 %i.am
  %i.ao = and i64 %indvars.iv, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = lshr i64 %indvars.iv, 6
  %i.ar = and i64 %i.aq, 67108863
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !8
  %i.au = or i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !46

bb.o:                                             ; preds = %.lr.ph38, %bb.o
  %indvars.iv42 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next43, %bb.o ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv42
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ax
  store i32 -1, ptr %i.ay, align 4, !tbaa !10
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %.val32 = load i32, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %i.az = sext i32 %.val32 to i64
  %i.ba = icmp slt i64 %indvars.iv.next43, %i.az
  br i1 %i.ba, label %bb.o, label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %bb.o, %bb.a, %.preheader
  %.val32.lcssa = phi i32 [ %.val3236.pre, %.preheader ], [ 0, %bb.a ], [ %.val32, %bb.o ]
  ret i32 %.val32.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Abc_TtGetCM5Pat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((4, 8)) %3, ptr nofree noundef captures(none) initializes((4, 8)) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, -5                       ; 2 uses
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %.not = icmp eq ptr %5, null
  %.not45 = icmp eq i32 %i.a, 31                  ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader36

.preheader36:                                     ; preds = %bb.a
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader36
  %i.e = tail call i32 @llvm.smax.i32(i32 %1, i32 11)
  %i.f = add nsw i32 %i.e, -11
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not45, label %.critedge, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.preheader
  %smax52 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count53 = zext nneg i32 %smax52 to i64
  br label %.lr.ph40

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = tail call i32 @Abc_TtHashLookup5(i32 noundef %i.h, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.j = shl i32 %i.i, %i.f
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.k
  %i.m = and i64 %indvars.iv, 63
  %i.n = shl nuw i64 1, %i.m
  %i.o = lshr i64 %indvars.iv, 6
  %i.p = and i64 %i.o, 67108863
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = or i64 %i.r, %i.n
  store i64 %i.s, ptr %i.q, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !48

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %indvars.iv49 = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvars.iv.next50, %.lr.ph40 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %i.v = tail call i32 @Abc_TtHashLookup5(i32 noundef %i.u, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count53
  br i1 %exitcond54.not, label %.loopexit, label %.lr.ph40, !llvm.loop !49

.loopexit:                                        ; preds = %bb.b, %.lr.ph40
  %.val3341.pr = load i32, ptr %i.d, align 4, !tbaa !14 ; 2 uses
  %i.w = icmp sgt i32 %.val3341.pr, 0
  br i1 %i.w, label %.lr.ph43, label %.critedge

.lr.ph43:                                         ; preds = %.loopexit
  %i.x = getelementptr i8, ptr %4, i64 8
  %.val34 = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.y, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph43, %bb.c
  %indvars.iv55 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next56, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv55
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val35, i64 %i.ab
  store i32 -1, ptr %i.ac, align 4, !tbaa !10
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.val33 = load i32, ptr %i.d, align 4, !tbaa !14 ; 2 uses
  %i.ad = sext i32 %.val33 to i64
  %i.ae = icmp slt i64 %indvars.iv.next56, %i.ad
  br i1 %i.ae, label %bb.c, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %bb.c, %.preheader, %.preheader36, %.loopexit
  %.val33.lcssa = phi i32 [ %.val3341.pr, %.loopexit ], [ 0, %.preheader ], [ 0, %.preheader36 ], [ %.val33, %bb.c ]
  ret i32 %.val33.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Abc_TtGetCM6Pat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) initializes((4, 8)) %4, ptr nofree noundef captures(none) initializes((4, 8)) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = sub nsw i32 %1, %2                       ; 3 uses
  %i.b = shl nuw i32 1, %i.a                      ; 2 uses
  %i.c = add nsw i32 %2, -6                       ; 3 uses
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %.not = icmp eq ptr %6, null
  %.not51 = icmp eq i32 %i.a, 31                  ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %bb.a
  br i1 %.not51, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.a, i32 6)
  %i.h = add nsw i32 %i.g, -6
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not51, label %.critedge, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %.preheader
  %smax54 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %.lr.ph46

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.044 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.b ] ; 4 uses
  %i.i = shl i32 %.044, %i.c
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %i.j
  %i.l = tail call i32 @Abc_TtHashLookup6(ptr noundef %i.k, i32 noundef %i.d, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.m = shl i32 %i.l, %i.h
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %6, i64 %i.n
  %i.p = and i32 %.044, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = lshr i32 %.044, 6
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8
  %i.w = or i64 %i.v, %i.r
  store i64 %i.w, ptr %i.u, align 8, !tbaa !8
  %i.x = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %smax
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !51

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.lr.ph46
  %.145 = phi i32 [ %i.ac, %.lr.ph46 ], [ 0, %.lr.ph46.preheader ] ; 2 uses
  %i.y = shl i32 %.145, %i.c
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %i.ab = tail call i32 @Abc_TtHashLookup6(ptr noundef %i.aa, i32 noundef %i.d, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 0 uses
  %i.ac = add nuw nsw i32 %.145, 1                ; 2 uses
  %exitcond55.not = icmp eq i32 %i.ac, %smax54
  br i1 %exitcond55.not, label %.loopexit, label %.lr.ph46, !llvm.loop !52

.loopexit:                                        ; preds = %bb.b, %.lr.ph46
  %.val3947.pr = load i32, ptr %i.f, align 4, !tbaa !14 ; 2 uses
  %i.ad = icmp sgt i32 %.val3947.pr, 0
  br i1 %i.ad, label %.lr.ph49, label %.critedge

.lr.ph49:                                         ; preds = %.loopexit
  %i.ae = getelementptr i8, ptr %5, i64 8
  %.val40 = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr i8, ptr %3, i64 8
  %.val41 = load ptr, ptr %i.af, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph49, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.val41, i64 %i.ai
  store i32 -1, ptr %i.aj, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val39 = load i32, ptr %i.f, align 4, !tbaa !14 ; 2 uses
  %i.ak = sext i32 %.val39 to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.c, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %bb.c, %.preheader, %.preheader42, %.loopexit
  %.val39.lcssa = phi i32 [ %.val3947.pr, %.loopexit ], [ 0, %.preheader ], [ 0, %.preheader42 ], [ %.val39, %bb.c ]
  ret i32 %.val39.lcssa
}

; Function Attrs: nounwind uwtable
define void @Abc_TtPrintPat(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1, i32 noundef %2) ; 0 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = shl nuw i32 1, %1
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  tail call void @Extra_PrintBinary(ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.c) #28
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !56
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @Abc_TtCheck1Shared(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 5 uses
  %.sroa.9 = alloca i32, align 4                  ; 5 uses
  %i.a = icmp ult i32 %3, 2
  %i.b = add i32 %3, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %3, i32 %i.d       ; 3 uses
  %i.e = add nsw i32 %.09.i, -1                   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = sub nsw i32 %1, %2                       ; 2 uses
  %.not3950 = icmp sgt i32 %i.g, 0
  br i1 %.not3950, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.split.us.us.preheader, label %._crit_edge.loopexit55

.split.us.us.preheader:                           ; preds = %.lr.ph
  %wide.trip.count74 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %.loopexit
  %indvars.iv71 = phi i64 [ 0, %.split.us.us.preheader ], [ %indvars.iv.next72, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %invariant.gep.us = getelementptr inbounds nuw [8 x i8], ptr @s_Truth26, i64 %indvars.iv71 ; 2 uses
  %i.i = load i64, ptr %invariant.gep.us, align 8, !tbaa !8
  br label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.d
  %.lcssa58 = phi ptr [ %.sroa.9, %bb.d ], [ %.sroa.0, %bb.c ]
  %.lcssa = phi i32 [ %i.y, %bb.d ], [ %i.p, %bb.c ]
  store i32 %.lcssa, ptr %.lcssa58, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge, label %.split.us.us, !llvm.loop !57

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge.us.us, label %bb.c, !llvm.loop !58

bb.c:                                             ; preds = %bb.b, %.split.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.split.us.us ] ; 2 uses
  %i.j = phi i32 [ %i.p, %bb.b ], [ 0, %.split.us.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8
  %i.m = and i64 %i.l, %i.i
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = add nuw nsw i32 %i.j, %i.o               ; 3 uses
  %i.q = icmp sgt i32 %i.p, %i.f
  br i1 %i.q, label %.loopexit, label %bb.b

..critedge_crit_edge.us.us:                       ; preds = %bb.b
  %gep.us.us.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.us, i64 48
  %i.r = load i64, ptr %gep.us.us.1, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %..critedge_crit_edge.us.us
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %..critedge_crit_edge.us.us ] ; 2 uses
  %i.s = phi i32 [ %i.y, %bb.e ], [ 0, %..critedge_crit_edge.us.us ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.1
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = and i64 %i.u, %i.r
  %i.w = icmp ne i64 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %i.s, %i.x               ; 3 uses
  %i.z = icmp sgt i32 %i.y, %i.f
  br i1 %i.z, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.sink.split, label %bb.d, !llvm.loop !58

._crit_edge.loopexit55:                           ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.e, %._crit_edge.loopexit55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge.sink.split, %bb.a
  %.3 = phi i32 [ %i.e, %._crit_edge.sink.split ], [ %.09.i, %bb.a ], [ %.09.i, %.loopexit ]
  ret i32 %.3
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Abc_TtGetCMInt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(address_is_null) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 5 uses
  %i.c = sub nsw i32 %1, %2                       ; 2 uses
  %i.d = shl i32 8, %i.c
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.c, i32 6)
  %i.f = add nsw i32 %i.e, -6
  %i.g = shl i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.h, i1 false)
  switch i32 %2, label %bb.q [
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = add nsw i32 %1, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 -1, i64 16, i1 false)
  %.not21.i = icmp eq i32 %i.i, 31
  br i1 %.not21.i, label %Abc_TtGetCM1Pat.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = shl nuw i32 1, %i.i
  %.not.i = icmp eq ptr %7, null
  %i.k = tail call i32 @llvm.smax.i32(i32 %1, i32 7)
  %i.l = add nsw i32 %i.k, -7
  %smax23.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1) ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.d
  %.020.us.i = phi i32 [ %.1.us.i, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01719.us.i = phi i32 [ %i.z, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.m = lshr i32 %.01719.us.i, 5
  %i.n = zext nneg i32 %i.m to i64
end_hunk_0
