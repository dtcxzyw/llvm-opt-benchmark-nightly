Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/unity?download=true
inline.NumInlined: 73
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@UnityAssertEqualString:bb.a
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %3)
  tail call fastcc void @UnityPrintExpectedAndActualStrings(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %2)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.loopexit:                                        ; preds = %.preheader, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityPrintExpectedAndActualStrings(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.b = tail call i32 @putc(i32 noundef 39, ptr noundef %i.a), !inline_history !0 ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %0)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.d = tail call i32 @putc(i32 noundef 39, ptr noundef %i.c), !inline_history !0 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.f = tail call i32 @putc(i32 noundef 39, ptr noundef %i.e), !inline_history !0 ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %1)
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.h = tail call i32 @putc(i32 noundef 39, ptr noundef %i.g), !inline_history !0 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualStringLen(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.critedge5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10    ; 2 uses
  %.not26 = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 2 uses
  %.not27 = icmp eq i8 %i.j, 0
  %or.cond38 = select i1 %.not26, i1 %.not27, i1 false
  br i1 %or.cond38, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %.lr.ph
  %.not28 = icmp eq i8 %i.h, %i.j
  br i1 %.not28, label %bb.c, label %.critedge.thread

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge5, %bb.d
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call fastcc void @UnityPrintExpectedAndActualStringsLen(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.d, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityPrintExpectedAndActualStringsLen(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.b = tail call i32 @putc(i32 noundef 39, ptr noundef %i.a), !inline_history !0 ; 0 uses
  tail call void @UnityPrintLen(ptr noundef nonnull %0, i32 noundef %2)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.d = tail call i32 @putc(i32 noundef 39, ptr noundef %i.c), !inline_history !0 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.f = tail call i32 @putc(i32 noundef 39, ptr noundef %i.e), !inline_history !0 ; 0 uses
  tail call void @UnityPrintLen(ptr noundef nonnull %1, i32 noundef %2)
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.h = tail call i32 @putc(i32 noundef 39, ptr noundef %i.g), !inline_history !0 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualStringArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %.loopexit56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %.split.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.i = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.i, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.k = tail call i32 @putc(i32 noundef 58, ptr noundef %i.j) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.split.us:                                        ; preds = %bb.f
  %.not46 = icmp eq i32 %5, 1                     ; 2 uses
  %spec.select = select i1 %.not46, ptr null, ptr %0 ; 2 uses
  %wide.trip.count125 = zext i32 %2 to i64        ; 2 uses
  br i1 %.not46, label %.split.us.split.us, label %.split.us.split.split

.split.us.split.us:                               ; preds = %.split.us, %.loopexit.us.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.loopexit.us.us ], [ 0, %.split.us ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv122
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 5 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp ne ptr %i.m, null
  %or.cond3.us.us = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond3.us.us, label %.preheader.us.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.us
  %.not47.us.us = icmp eq ptr %i.o, %i.m
  br i1 %.not47.us.us, label %.loopexit.us.us, label %.thread

.preheader.us.us:                                 ; preds = %.split.us.split.us, %.critedge.us.us
  %.040.us.us = phi i32 [ %i.w, %.critedge.us.us ], [ 0, %.split.us.split.us ] ; 2 uses
  %i.r = zext i32 %.040.us.us to i64              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10    ; 2 uses
  %.not48.us.us = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10    ; 2 uses
  %.not49.us.us = icmp eq i8 %i.v, 0
  %or.cond157 = select i1 %.not48.us.us, i1 %.not49.us.us, i1 false
  br i1 %or.cond157, label %.loopexit.us.us, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.preheader.us.us
  %.not50.us.us = icmp eq i8 %i.t, %i.v
  %i.w = add i32 %.040.us.us, 1
  br i1 %.not50.us.us, label %.preheader.us.us, label %.thread

.loopexit.us.us:                                  ; preds = %.preheader.us.us, %bb.h
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit56, label %.split.us.split.us

.split.us.split.split:                            ; preds = %.split.us, %.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 0, %.split.us ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us.split.split, %.critedge.us
  %.040.us = phi i32 [ %i.ae, %.critedge.us ], [ 0, %.split.us.split.split ] ; 2 uses
  %i.z = zext i32 %.040.us to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10  ; 2 uses
  %.not48.us = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10  ; 2 uses
  %.not49.us = icmp eq i8 %i.ad, 0
  %or.cond158 = select i1 %.not48.us, i1 %.not49.us, i1 false
  br i1 %or.cond158, label %.loopexit.us, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader.us
  %.not50.us = icmp eq i8 %i.ab, %i.ad
  %i.ae = add i32 %.040.us, 1
  br i1 %.not50.us, label %.preheader.us, label %.thread

.loopexit.us:                                     ; preds = %.preheader.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count125
  br i1 %exitcond.not, label %.loopexit56, label %.split.us.split.split

.thread:                                          ; preds = %.split.us.split.split, %.critedge.us, %bb.h, %.critedge.us.us
  %.267 = phi ptr [ %spec.select, %.critedge.us ], [ %i.o, %.critedge.us.us ], [ %i.o, %bb.h ], [ %spec.select, %.split.us.split.split ]
  %i.af = phi i64 [ %indvars.iv, %.critedge.us ], [ %indvars.iv122, %.critedge.us.us ], [ %indvars.iv122, %bb.h ], [ %indvars.iv, %.split.us.split.split ]
  %i.ag = phi ptr [ %i.y, %.critedge.us ], [ %i.m, %.critedge.us.us ], [ %i.m, %bb.h ], [ null, %.split.us.split.split ]
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  %.not52 = icmp eq i32 %2, 1
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.af)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  tail call fastcc void @UnityPrintExpectedAndActualStrings(ptr noundef %.267, ptr noundef %i.ag)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.loopexit56:                                      ; preds = %.loopexit.us, %.loopexit.us.us, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualMemory(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  %i.f = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.g, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.f
  %i.j = add i32 %3, -1                           ; 2 uses
  %i.k = add i32 %2, -1                           ; 5 uses
  %i.l = icmp eq i32 %6, 0
  br i1 %i.l, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.m = zext i32 %i.k to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.o = load i8, ptr %0, align 1, !tbaa !10
  %i.p = zext i32 %i.k to i64
  %.not42.us141 = icmp eq i32 %i.k, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.split.us
  %i.q = phi i32 [ %i.j, %.preheader.lr.ph.split.split.us ], [ %i.z, %._crit_edge.us ] ; 3 uses
  %.03358.us = phi i32 [ %3, %.preheader.lr.ph.split.split.us ], [ %i.q, %._crit_edge.us ] ; 2 uses
  %.03457.us = phi ptr [ %1, %.preheader.lr.ph.split.split.us ], [ %scevgep93, %._crit_edge.us ] ; 4 uses
  %i.r = load i8, ptr %.03457.us, align 1, !tbaa !10
  %.not43.us64 = icmp eq i8 %i.o, %i.r
  br i1 %.not43.us64, label %.lr.ph.preheader, label %.split.us

.lr.ph.preheader:                                 ; preds = %.preheader.us
  %i.s = getelementptr i8, ptr %.03457.us, i64 %i.p
  %scevgep93 = getelementptr i8, ptr %i.s, i64 1
  br i1 %.not42.us141, label %._crit_edge.us, label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi i32 [ %i.y, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.152.us65143 = phi ptr [ %i.u, %.lr.ph ], [ %.03457.us, %.lr.ph.preheader ]
  %.13651.us66142 = phi ptr [ %i.v, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %.152.us65143, i64 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.13651.us66142, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = load i8, ptr %i.u, align 1, !tbaa !10
  %.not43.us = icmp eq i8 %i.w, %i.x
  br i1 %.not43.us, label %.lr.ph, label %.split.us

.lr.ph:                                           ; preds = %.lr.ph144
  %i.y = add i32 %i.t, -1                         ; 2 uses
  %.not42.us = icmp eq i32 %i.y, 0
  br i1 %.not42.us, label %._crit_edge.us, label %.lr.ph144

._crit_edge.us:                                   ; preds = %.lr.ph, %.lr.ph.preheader
  %i.z = add i32 %i.q, -1
  %.not41.us = icmp eq i32 %i.q, 0
  br i1 %.not41.us, label %.loopexit, label %.preheader.us

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.aa = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.aa, i64 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ac = tail call i32 @putc(i32 noundef 58, ptr noundef %i.ab) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %4)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ad = phi i32 [ %i.au, %._crit_edge ], [ %i.j, %.preheader.preheader ] ; 3 uses
  %.03358 = phi i32 [ %i.ad, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  %.03457 = phi ptr [ %scevgep92, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.03556 = phi ptr [ %scevgep, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %scevgep = getelementptr i8, ptr %.03556, i64 %i.n
  %scevgep92 = getelementptr i8, ptr %.03457, i64 %i.n
  %i.ae = load i8, ptr %.03556, align 1, !tbaa !10
  %i.af = load i8, ptr %.03457, align 1, !tbaa !10
  %.not43130 = icmp eq i8 %i.ae, %i.af
  br i1 %.not43130, label %.lr.ph133, label %.split.us

bb.h:                                             ; preds = %.lr.ph133
  %i.ag = getelementptr inbounds nuw i8, ptr %.13651132, i64 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.152131, i64 1 ; 3 uses
  %i.ai = add i32 %i.at, -1
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !10
  %.not43 = icmp eq i8 %i.aj, %i.ak
  br i1 %.not43, label %.lr.ph133, label %.split.us

.split.us:                                        ; preds = %.preheader, %bb.h, %.preheader.us, %.lr.ph144
  %.us-phi = phi i32 [ %.03358.us, %.preheader.us ], [ %.03358, %bb.h ], [ %.03358.us, %.lr.ph144 ], [ %.03358, %.preheader ]
  %.us-phi59 = phi ptr [ %0, %.preheader.us ], [ %i.ag, %bb.h ], [ %i.v, %.lr.ph144 ], [ %.03556, %.preheader ]
  %.us-phi60 = phi ptr [ %.03457.us, %.preheader.us ], [ %i.ah, %bb.h ], [ %i.u, %.lr.ph144 ], [ %.03457, %.preheader ]
  %.us-phi61 = phi i32 [ %2, %.preheader.us ], [ %i.at, %bb.h ], [ %i.t, %.lr.ph144 ], [ %2, %.preheader ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrMemory)
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.us
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.al = sub nuw i32 %3, %.us-phi
  %i.am = zext i32 %i.al to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.am)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.us
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrByte)
  %i.an = sub nuw i32 %2, %.us-phi61
  %i.ao = zext i32 %i.an to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.ao)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.ap = load i8, ptr %.us-phi59, align 1, !tbaa !10
  %i.aq = zext i8 %i.ap to i64
  tail call void @UnityPrintNumberByStyle(i64 noundef %i.aq, i32 noundef 65)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.ar = load i8, ptr %.us-phi60, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i64
  tail call void @UnityPrintNumberByStyle(i64 noundef %i.as, i32 noundef 65)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.lr.ph133:                                        ; preds = %.preheader, %bb.h
  %.13651132 = phi ptr [ %i.ag, %bb.h ], [ %.03556, %.preheader ]
  %.152131 = phi ptr [ %i.ah, %bb.h ], [ %.03457, %.preheader ]
  %i.at = phi i32 [ %i.ai, %bb.h ], [ %i.k, %.preheader ] ; 3 uses
  %.not42 = icmp eq i32 %i.at, 0
  br i1 %.not42, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %.lr.ph133
  %i.au = add i32 %i.ad, -1
  %.not41 = icmp eq i32 %i.ad, 0
  br i1 %.not41, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @UnityNumToPtr(i64 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  switch i8 %1, label %bb.e [
    i8 1, label %bb.b
end_hunk_0
