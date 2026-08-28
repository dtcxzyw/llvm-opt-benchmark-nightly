Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/unity?download=true
inline.NumInlined: 73
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@UnityConcludeTest:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %.not1 = icmp eq i64 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @Unity, align 8, !tbaa !20
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 32), align 8, !tbaa !21
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.e, i64 noundef %i.f)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPass)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 48), align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 48), align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @Unity, i64 64), i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.j = tail call i32 @putc(i32 noundef 10, ptr noundef %i.i), !inline_history !13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityTestResultsBegin(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @UnityPrint(ptr noundef %0)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.b = tail call i32 @putc(i32 noundef 58, ptr noundef %i.a), !inline_history !13 ; 0 uses
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.e = tail call i32 @putc(i32 noundef 45, ptr noundef %i.d), !inline_history !13 ; 0 uses
  %i.f = sub nsw i64 0, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.g = icmp samesign ugt i64 %.0.i, 9
  br i1 %i.g, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ 1, %bb.c ]
  %i.h = mul i64 %.07.i.i, 10                     ; 3 uses
  %i.i = udiv i64 %.0.i, %i.h
  %i.j = icmp samesign ugt i64 %i.i, 9
  br i1 %i.j, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.c
  %.1.i.i.ph = phi i64 [ 1, %bb.c ], [ %i.h, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.1.i.i = phi i64 [ %i.q, %.preheader.i.i ], [ %.1.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %i.k = udiv i64 %.0.i, %.1.i.i
  %i.l = urem i64 %i.k, 10
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = or disjoint i32 %i.m, 48
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.p = tail call i32 @putc(i32 noundef %i.n, ptr noundef %i.o), !inline_history !13 ; 0 uses
  %i.q = udiv i64 %.1.i.i, 10
  %.not.i.i = icmp ult i64 %.1.i.i, 10
  br i1 %.not.i.i, label %UnityPrintNumber.exit, label %.preheader.i.i

UnityPrintNumber.exit:                            ; preds = %.preheader.i.i
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.s = tail call i32 @putc(i32 noundef 58, ptr noundef %i.r), !inline_history !13 ; 0 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 8), align 8, !tbaa !23
  tail call void @UnityPrint(ptr noundef %i.t)
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.v = tail call i32 @putc(i32 noundef 58, ptr noundef %i.u), !inline_history !13 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertBits(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = xor i64 %2, %1
  %i.f = and i64 %i.e, %0
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintMask(i64 noundef %0, i64 noundef %1)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintMask(i64 noundef %0, i64 noundef %2)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityTestResultsFailBegin(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.a, i64 noundef %0)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.c = tail call i32 @putc(i32 noundef 58, ptr noundef %i.b), !inline_history !13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityAddMsgIfSpecified(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 16), align 8, !tbaa !24
  %.not2 = icmp eq ptr %i.a, null
  br i1 %.not2, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDetail1Name)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 16), align 8, !tbaa !24
  tail call void @UnityPrint(ptr noundef %i.b)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 24), align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDetail2Name)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 24), align 8, !tbaa !25
  tail call void @UnityPrint(ptr noundef %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualNumber(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  %.not = icmp eq i64 %0, %1
  %or.cond9 = or i1 %.not, %or.cond
  br i1 %or.cond9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %3)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintNumberByStyle(i64 noundef %0, i32 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintNumberByStyle(i64 noundef %1, i32 noundef %4)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %2)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertGreaterOrLessOrEqualNumber(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = icmp ne i64 %0, %1                         ; 2 uses
  %7 = and i32 %2, 1
  %.not = icmp eq i32 %7, 0                       ; 2 uses
  %or.cond38 = or i1 %6, %.not
  br i1 %or.cond38, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %not. = xor i1 %6, true
  %spec.select = zext i1 %not. to i32             ; 2 uses
  %i.e = and i32 %5, 16
  %.not28 = icmp eq i32 %i.e, 0
  %i.f = and i32 %2, 4
  %.not29 = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.g = and i32 %2, 2
  %.not30 = icmp eq i32 %i.g, 0                   ; 2 uses
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sle i64 %1, %0
  %or.cond39.a = or i1 %i.h, %.not29
  %.1 = select i1 %or.cond39.a, i32 %spec.select, i32 1
  %i.i = icmp sge i64 %1, %0
  %or.cond40.a = or i1 %i.i, %.not30
  br i1 %or.cond40.a, label %select.unfold, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ule i64 %1, %0
  %or.cond41.a = or i1 %i.j, %.not29
  %.2 = select i1 %or.cond41.a, i32 %spec.select, i32 1
  %i.k = icmp uge i64 %1, %0
  %or.cond42 = or i1 %i.k, %.not30
  br i1 %or.cond42, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.3 = phi i32 [ %.1, %bb.d ], [ %.2, %bb.e ]
  %.not33 = icmp eq i32 %.3, 0
  br i1 %.not33, label %bb.l, label %select.unfold..thread_crit_edge

select.unfold..thread_crit_edge:                  ; preds = %select.unfold
  %.pre = and i32 %2, 2
  %i.l = icmp eq i32 %.pre, 0
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintNumberByStyle(i64 noundef %1, i32 noundef %5)
  br i1 %i.l, label %bb.g, label %bb.f

.critedge:                                        ; preds = %bb.d, %bb.e
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintNumberByStyle(i64 noundef %1, i32 noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %select.unfold..thread_crit_edge
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrGt)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %select.unfold..thread_crit_edge
  %i.m = and i32 %2, 4
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrLt)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrOrEqual)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @UnityPrintNumberByStyle(i64 noundef %0, i32 noundef %5)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.l:                                             ; preds = %select.unfold, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualIntArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %5, 15                           ; 2 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.c = icmp ne i64 %i.b, 0
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.e = icmp ne i64 %i.d, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
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
  br i1 %i.i, label %bb.g, label %UnityIsOneArrayNull.exit.preheader

UnityIsOneArrayNull.exit.preheader:               ; preds = %bb.f
  %i.j = add i32 %2, -1                           ; 5 uses
  %i.k = icmp eq i32 %6, 1
  br i1 %i.k, label %UnityIsOneArrayNull.exit.preheader.split.us, label %UnityIsOneArrayNull.exit.preheader.split

UnityIsOneArrayNull.exit.preheader.split.us:      ; preds = %UnityIsOneArrayNull.exit.preheader
  switch i32 %i.a, label %.preheader [
    i32 1, label %.preheader111
    i32 2, label %.preheader114
    i32 8, label %.preheader117
  ]

.preheader117:                                    ; preds = %UnityIsOneArrayNull.exit.preheader.split.us
  %i.l = load i64, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.m = load i64, ptr %1, align 8, !tbaa !26     ; 2 uses
  %.not59.us.jt8178 = icmp eq i64 %i.l, %i.m
  br i1 %.not59.us.jt8178, label %UnityIsOneArrayNull.exit.us.jt8, label %.split.us.thread

.preheader114:                                    ; preds = %UnityIsOneArrayNull.exit.preheader.split.us
  %i.n = load i16, ptr %0, align 2, !tbaa !27     ; 2 uses
  %i.o = load i16, ptr %1, align 2, !tbaa !27     ; 2 uses
  %.not59.us.jt2183 = icmp eq i16 %i.n, %i.o
  br i1 %.not59.us.jt2183, label %UnityIsOneArrayNull.exit.us.jt2, label %.split.us.loopexit148

.preheader111:                                    ; preds = %UnityIsOneArrayNull.exit.preheader.split.us
  %i.p = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.q = load i8, ptr %1, align 1, !tbaa !9       ; 2 uses
  %.not59.us.jt1189 = icmp eq i8 %i.p, %i.q
  br i1 %.not59.us.jt1189, label %UnityIsOneArrayNull.exit.us.jt1, label %.split.us.loopexit146

.preheader:                                       ; preds = %UnityIsOneArrayNull.exit.preheader.split.us
  %i.r = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !29     ; 2 uses
  %.not59.us.jt4195 = icmp eq i32 %i.r, %i.s
  br i1 %.not59.us.jt4195, label %UnityIsOneArrayNull.exit.us.jt4, label %.split.us.loopexit

UnityIsOneArrayNull.exit.preheader.split.us.jt8:  ; preds = %UnityIsOneArrayNull.exit.us.jt8
  %i.t = add i32 %i.aj, -1
  %.1.us.jt8 = getelementptr inbounds nuw i8, ptr %.066.us91180, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05463.us100179, i64 8 ; 2 uses
  %i.v = load i64, ptr %.1.us.jt8, align 8, !tbaa !26 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %.not59.us.jt8 = icmp eq i64 %i.v, %i.w
  br i1 %.not59.us.jt8, label %UnityIsOneArrayNull.exit.us.jt8, label %.split.us.thread

UnityIsOneArrayNull.exit.preheader.split.us.jt2:  ; preds = %UnityIsOneArrayNull.exit.us.jt2
  %i.x = add i32 %i.ak, -1
  %.1.us.jt2 = getelementptr inbounds nuw i8, ptr %.066.us92185, i64 2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05463.us101184, i64 2 ; 2 uses
  %i.z = load i16, ptr %.1.us.jt2, align 2, !tbaa !27 ; 2 uses
  %i.aa = load i16, ptr %i.y, align 2, !tbaa !27  ; 2 uses
  %.not59.us.jt2 = icmp eq i16 %i.z, %i.aa
  br i1 %.not59.us.jt2, label %UnityIsOneArrayNull.exit.us.jt2, label %.split.us.loopexit148

UnityIsOneArrayNull.exit.preheader.split.us.jt1:  ; preds = %UnityIsOneArrayNull.exit.us.jt1
  %i.ab = add i32 %i.al, -1
  %.1.us.jt1 = getelementptr inbounds nuw i8, ptr %.066.us93191, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.us102190, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.1.us.jt1, align 1, !tbaa !9 ; 2 uses
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !9   ; 2 uses
  %.not59.us.jt1 = icmp eq i8 %i.ad, %i.ae
  br i1 %.not59.us.jt1, label %UnityIsOneArrayNull.exit.us.jt1, label %.split.us.loopexit146

UnityIsOneArrayNull.exit.preheader.split.us.jt4:  ; preds = %UnityIsOneArrayNull.exit.us.jt4
  %i.af = add i32 %i.am, -1
  %.1.us.jt4 = getelementptr inbounds nuw i8, ptr %.066.us94197, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05463.us103196, i64 4 ; 2 uses
  %i.ah = load i32, ptr %.1.us.jt4, align 4, !tbaa !29 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !29 ; 2 uses
  %.not59.us.jt4 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not59.us.jt4, label %UnityIsOneArrayNull.exit.us.jt4, label %.split.us.loopexit

UnityIsOneArrayNull.exit.us.jt8:                  ; preds = %.preheader117, %UnityIsOneArrayNull.exit.preheader.split.us.jt8
  %i.aj = phi i32 [ %i.t, %UnityIsOneArrayNull.exit.preheader.split.us.jt8 ], [ %i.j, %.preheader117 ] ; 3 uses
  %.066.us91180 = phi ptr [ %.1.us.jt8, %UnityIsOneArrayNull.exit.preheader.split.us.jt8 ], [ %0, %.preheader117 ]
  %.05463.us100179 = phi ptr [ %i.u, %UnityIsOneArrayNull.exit.preheader.split.us.jt8 ], [ %1, %.preheader117 ]
  %.not58.us.jt8 = icmp eq i32 %i.aj, 0
  br i1 %.not58.us.jt8, label %.loopexit, label %UnityIsOneArrayNull.exit.preheader.split.us.jt8

UnityIsOneArrayNull.exit.us.jt2:                  ; preds = %.preheader114, %UnityIsOneArrayNull.exit.preheader.split.us.jt2
  %i.ak = phi i32 [ %i.x, %UnityIsOneArrayNull.exit.preheader.split.us.jt2 ], [ %i.j, %.preheader114 ] ; 3 uses
  %.066.us92185 = phi ptr [ %.1.us.jt2, %UnityIsOneArrayNull.exit.preheader.split.us.jt2 ], [ %0, %.preheader114 ]
  %.05463.us101184 = phi ptr [ %i.y, %UnityIsOneArrayNull.exit.preheader.split.us.jt2 ], [ %1, %.preheader114 ]
  %.not58.us.jt2 = icmp eq i32 %i.ak, 0
  br i1 %.not58.us.jt2, label %.loopexit, label %UnityIsOneArrayNull.exit.preheader.split.us.jt2

UnityIsOneArrayNull.exit.us.jt1:                  ; preds = %.preheader111, %UnityIsOneArrayNull.exit.preheader.split.us.jt1
  %i.al = phi i32 [ %i.ab, %UnityIsOneArrayNull.exit.preheader.split.us.jt1 ], [ %i.j, %.preheader111 ] ; 3 uses
  %.066.us93191 = phi ptr [ %.1.us.jt1, %UnityIsOneArrayNull.exit.preheader.split.us.jt1 ], [ %0, %.preheader111 ]
  %.05463.us102190 = phi ptr [ %i.ac, %UnityIsOneArrayNull.exit.preheader.split.us.jt1 ], [ %1, %.preheader111 ]
  %.not58.us.jt1 = icmp eq i32 %i.al, 0
  br i1 %.not58.us.jt1, label %.loopexit, label %UnityIsOneArrayNull.exit.preheader.split.us.jt1

UnityIsOneArrayNull.exit.us.jt4:                  ; preds = %.preheader, %UnityIsOneArrayNull.exit.preheader.split.us.jt4
  %i.am = phi i32 [ %i.af, %UnityIsOneArrayNull.exit.preheader.split.us.jt4 ], [ %i.j, %.preheader ] ; 3 uses
  %.066.us94197 = phi ptr [ %.1.us.jt4, %UnityIsOneArrayNull.exit.preheader.split.us.jt4 ], [ %0, %.preheader ]
  %.05463.us103196 = phi ptr [ %i.ag, %UnityIsOneArrayNull.exit.preheader.split.us.jt4 ], [ %1, %.preheader ]
  %.not58.us.jt4 = icmp eq i32 %i.am, 0
  br i1 %.not58.us.jt4, label %.loopexit, label %UnityIsOneArrayNull.exit.preheader.split.us.jt4

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.an = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.an, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ap = tail call i32 @putc(i32 noundef 58, ptr noundef %i.ao) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityIsOneArrayNull.exit.preheader.split:         ; preds = %UnityIsOneArrayNull.exit.preheader, %UnityIsOneArrayNull.exit
  %i.aq = phi i32 [ %i.br, %UnityIsOneArrayNull.exit ], [ %i.j, %UnityIsOneArrayNull.exit.preheader ] ; 3 uses
  %.05165 = phi i32 [ %.152, %UnityIsOneArrayNull.exit ], [ %i.a, %UnityIsOneArrayNull.exit.preheader ]
  %.05364 = phi i32 [ %i.aq, %UnityIsOneArrayNull.exit ], [ %2, %UnityIsOneArrayNull.exit.preheader ]
  %.05463 = phi ptr [ %i.bq, %UnityIsOneArrayNull.exit ], [ %1, %UnityIsOneArrayNull.exit.preheader ] ; 5 uses
  switch i32 %.05165, label %bb.k [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 8, label %bb.j
  ]

bb.h:                                             ; preds = %UnityIsOneArrayNull.exit.preheader.split
  %i.ar = load i8, ptr %0, align 1, !tbaa !9
  %i.as = sext i8 %i.ar to i64
  %i.at = load i8, ptr %.05463, align 1, !tbaa !9
  %i.au = sext i8 %i.at to i64
  br label %bb.l

bb.i:                                             ; preds = %UnityIsOneArrayNull.exit.preheader.split
  %i.av = load i16, ptr %0, align 2, !tbaa !27
  %i.aw = sext i16 %i.av to i64
  %i.ax = load i16, ptr %.05463, align 2, !tbaa !27
  %i.ay = sext i16 %i.ax to i64
  br label %bb.l

bb.j:                                             ; preds = %UnityIsOneArrayNull.exit.preheader.split
  %i.az = load i64, ptr %0, align 8, !tbaa !26
  %i.ba = load i64, ptr %.05463, align 8, !tbaa !26
  br label %bb.l

bb.k:                                             ; preds = %UnityIsOneArrayNull.exit.preheader.split
  %i.bb = load i32, ptr %0, align 4, !tbaa !29
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i32, ptr %.05463, align 4, !tbaa !29
  %i.be = sext i32 %i.bd to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.bf = phi i1 [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.j ]
  %.152 = phi i32 [ 4, %bb.k ], [ 1, %bb.h ], [ 2, %bb.i ], [ 8, %bb.j ] ; 3 uses
  %.049 = phi i64 [ %i.bc, %bb.k ], [ %i.as, %bb.h ], [ %i.aw, %bb.i ], [ %i.az, %bb.j ] ; 2 uses
  %.047 = phi i64 [ %i.be, %bb.k ], [ %i.au, %bb.h ], [ %i.ay, %bb.i ], [ %i.ba, %bb.j ] ; 2 uses
  %.not59 = icmp eq i64 %.049, %.047
  br i1 %.not59, label %UnityIsOneArrayNull.exit, label %.split.us.loopexit151

.split.us.loopexit:                               ; preds = %UnityIsOneArrayNull.exit.preheader.split.us.jt4, %.preheader
  %.05364.us98.lcssa = phi i32 [ %2, %.preheader ], [ %i.am, %UnityIsOneArrayNull.exit.preheader.split.us.jt4 ]
  %.lcssa154.in = phi i32 [ %i.r, %.preheader ], [ %i.ah, %UnityIsOneArrayNull.exit.preheader.split.us.jt4 ]
  %.lcssa.in = phi i32 [ %i.s, %.preheader ], [ %i.ai, %UnityIsOneArrayNull.exit.preheader.split.us.jt4 ]
  %.lcssa = sext i32 %.lcssa.in to i64
  %.lcssa154 = sext i32 %.lcssa154.in to i64
  br label %.split.us

.split.us.loopexit146:                            ; preds = %UnityIsOneArrayNull.exit.preheader.split.us.jt1, %.preheader111
  %.05364.us97.lcssa = phi i32 [ %2, %.preheader111 ], [ %i.al, %UnityIsOneArrayNull.exit.preheader.split.us.jt1 ]
  %.lcssa159.in = phi i8 [ %i.p, %.preheader111 ], [ %i.ad, %UnityIsOneArrayNull.exit.preheader.split.us.jt1 ]
  %.lcssa157.in = phi i8 [ %i.q, %.preheader111 ], [ %i.ae, %UnityIsOneArrayNull.exit.preheader.split.us.jt1 ]
  %.lcssa157 = sext i8 %.lcssa157.in to i64
  %.lcssa159 = sext i8 %.lcssa159.in to i64
  br label %.split.us

.split.us.loopexit148:                            ; preds = %UnityIsOneArrayNull.exit.preheader.split.us.jt2, %.preheader114
  %.05364.us96.lcssa = phi i32 [ %2, %.preheader114 ], [ %i.ak, %UnityIsOneArrayNull.exit.preheader.split.us.jt2 ]
  %.lcssa164.in = phi i16 [ %i.n, %.preheader114 ], [ %i.z, %UnityIsOneArrayNull.exit.preheader.split.us.jt2 ]
  %.lcssa162.in = phi i16 [ %i.o, %.preheader114 ], [ %i.aa, %UnityIsOneArrayNull.exit.preheader.split.us.jt2 ]
  %.lcssa162 = sext i16 %.lcssa162.in to i64
  %.lcssa164 = sext i16 %.lcssa164.in to i64
  br label %.split.us

.split.us.loopexit151:                            ; preds = %bb.l
  %i.bg = shl nuw nsw i32 %.152, 3
  %i.bh = zext nneg i32 %i.bg to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit151, %.split.us.loopexit148, %.split.us.loopexit146, %.split.us.loopexit
  %.us-phi = phi i1 [ true, %.split.us.loopexit146 ], [ true, %.split.us.loopexit ], [ true, %.split.us.loopexit148 ], [ %i.bf, %.split.us.loopexit151 ]
  %.us-phi67 = phi i64 [ 8, %.split.us.loopexit146 ], [ 32, %.split.us.loopexit ], [ 16, %.split.us.loopexit148 ], [ %i.bh, %.split.us.loopexit151 ]
  %.us-phi68 = phi i64 [ %.lcssa159, %.split.us.loopexit146 ], [ %.lcssa154, %.split.us.loopexit ], [ %.lcssa164, %.split.us.loopexit148 ], [ %.049, %.split.us.loopexit151 ] ; 2 uses
  %.us-phi69 = phi i64 [ %.lcssa157, %.split.us.loopexit146 ], [ %.lcssa, %.split.us.loopexit ], [ %.lcssa162, %.split.us.loopexit148 ], [ %.047, %.split.us.loopexit151 ] ; 2 uses
  %.us-phi70 = phi i32 [ %.05364.us97.lcssa, %.split.us.loopexit146 ], [ %.05364.us98.lcssa, %.split.us.loopexit ], [ %.05364.us96.lcssa, %.split.us.loopexit148 ], [ %.05364, %.split.us.loopexit151 ] ; 2 uses
  %i.bi = and i32 %5, 32
  %i.bj = icmp ne i32 %i.bi, 0
  %or.cond4 = and i1 %i.bj, %.us-phi
  br i1 %or.cond4, label %bb.m, label %.split.us.thread

bb.m:                                             ; preds = %.split.us
  %notmask = shl nsw i64 -1, %.us-phi67
  %i.bk = xor i64 %notmask, -1                    ; 2 uses
  %i.bl = and i64 %.us-phi68, %i.bk
  %i.bm = and i64 %.us-phi69, %i.bk
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %UnityIsOneArrayNull.exit.preheader.split.us.jt8, %.preheader117, %bb.m, %.split.us
  %.us-phi70110 = phi i32 [ %.us-phi70, %bb.m ], [ %.us-phi70, %.split.us ], [ %2, %.preheader117 ], [ %i.aj, %UnityIsOneArrayNull.exit.preheader.split.us.jt8 ]
  %.150 = phi i64 [ %i.bl, %bb.m ], [ %.us-phi68, %.split.us ], [ %i.l, %.preheader117 ], [ %i.v, %UnityIsOneArrayNull.exit.preheader.split.us.jt8 ]
  %.148 = phi i64 [ %i.bm, %bb.m ], [ %.us-phi69, %.split.us ], [ %i.m, %.preheader117 ], [ %i.w, %UnityIsOneArrayNull.exit.preheader.split.us.jt8 ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.bn = sub nuw i32 %2, %.us-phi70110
  %i.bo = zext i32 %i.bn to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.bo)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintNumberByStyle(i64 noundef %.150, i32 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintNumberByStyle(i64 noundef %.148, i32 noundef %5)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityIsOneArrayNull.exit:                         ; preds = %bb.l
  %i.bp = zext nneg i32 %.152 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.05463, i64 %i.bp
  %i.br = add i32 %i.aq, -1
  %.not58 = icmp eq i32 %i.aq, 0
  br i1 %.not58, label %.loopexit, label %UnityIsOneArrayNull.exit.preheader.split

.loopexit:                                        ; preds = %UnityIsOneArrayNull.exit, %UnityIsOneArrayNull.exit.us.jt8, %UnityIsOneArrayNull.exit.us.jt2, %UnityIsOneArrayNull.exit.us.jt1, %UnityIsOneArrayNull.exit.us.jt4, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualFloatArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

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
  br i1 %i.f, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %UnityIsOneArrayNull.exit.preheader

UnityIsOneArrayNull.exit.preheader:               ; preds = %bb.f
  %i.i = icmp eq i32 %5, 1
  %spec.select.idx = select i1 %i.i, i64 4, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.j = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.j, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.l = tail call i32 @putc(i32 noundef 58, ptr noundef %i.k) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.h:                                             ; preds = %UnityIsOneArrayNull.exit.preheader, %UnityFloatsWithin.exit.thread
  %.046 = phi ptr [ %1, %UnityIsOneArrayNull.exit.preheader ], [ %i.al, %UnityFloatsWithin.exit.thread ] ; 3 uses
  %.02545 = phi ptr [ %0, %UnityIsOneArrayNull.exit.preheader ], [ %spec.select, %UnityFloatsWithin.exit.thread ] ; 3 uses
  %.02644 = phi i32 [ %2, %UnityIsOneArrayNull.exit.preheader ], [ %i.m, %UnityFloatsWithin.exit.thread ] ; 2 uses
  %i.m = add i32 %.02644, -1                      ; 2 uses
  %i.n = load float, ptr %.02545, align 4, !tbaa !30 ; 7 uses
  %i.o = fmul float %i.n, f0x3727C5AC
  %i.p = load float, ptr %.046, align 4, !tbaa !30 ; 6 uses
  %i.q = fsub float %i.n, %i.n
  %i.r = fcmp ord float %i.q, 0.000000e+00
  %i.s = fcmp uno float %i.n, 0.000000e+00        ; 2 uses
  %i.t = fsub float %i.p, %i.p
  %i.u = fcmp ord float %i.t, 0.000000e+00
  %i.v = or i1 %i.r, %i.u
  %i.w = fcmp uno float %i.p, 0.000000e+00        ; 2 uses
  %i.x = fcmp uno float %i.p, %i.n
  %or.cond41.i = or i1 %i.x, %i.v
  br i1 %or.cond41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fcmp olt float %i.n, 0.000000e+00
  %i.z = fcmp uge float %i.p, 0.000000e+00
  %i.aa = xor i1 %i.y, %i.z
  %or.cond42.i = and i1 %i.s, %i.w
  %or.cond45.i = or i1 %i.aa, %or.cond42.i
  br i1 %or.cond45.i, label %UnityFloatsWithin.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.h
  %or.cond42.old.i = and i1 %i.s, %i.w
  br i1 %or.cond42.old.i, label %UnityFloatsWithin.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = fsub float %i.p, %i.n                   ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fneg float %i.ab
  %.0.i32 = select i1 %i.ac, float %i.ad, float %i.ab ; 4 uses
  %i.ae = fsub float %.0.i32, %.0.i32
  %or.cond44.i = fcmp uno float %.0.i32, %i.ae
  %.035.i = tail call float @llvm.fabs.f32(float %i.o)
  %6 = fcmp ogt float %.0.i32, %.035.i
  %or.cond40 = or i1 %6, %or.cond44.i
  br i1 %or.cond40, label %UnityFloatsWithin.exit.thread37, label %UnityFloatsWithin.exit.thread

UnityFloatsWithin.exit.thread37:                  ; preds = %bb.k
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.af = sub nuw i32 %2, %.02644
  %i.ag = zext i32 %i.af to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.ag)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.ah = load float, ptr %.02545, align 4, !tbaa !30
  %i.ai = fpext float %i.ah to double
  tail call void @UnityPrintFloat(double noundef %i.ai)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.aj = load float, ptr %.046, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double
  tail call void @UnityPrintFloat(double noundef %i.ak)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityFloatsWithin.exit.thread:                    ; preds = %bb.k, %bb.j, %bb.i
  %spec.select = getelementptr inbounds nuw i8, ptr %.02545, i64 %spec.select.idx
  %i.al = getelementptr inbounds nuw i8, ptr %.046, i64 4
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %UnityFloatsWithin.exit.thread, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertFloatsWithin(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %UnityFloatsWithin.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fsub float %1, %1
  %i.f = fcmp ord float %i.e, 0.000000e+00
  %i.g = fcmp uno float %1, 0.000000e+00          ; 2 uses
  %i.h = fsub float %2, %2
  %i.i = fcmp ord float %i.h, 0.000000e+00
  %i.j = or i1 %i.f, %i.i
  %i.k = fcmp uno float %2, 0.000000e+00          ; 2 uses
  %i.l = fcmp uno float %2, %1
  %or.cond41.i = or i1 %i.l, %i.j
  br i1 %or.cond41.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fcmp olt float %1, 0.000000e+00
  %i.n = fcmp uge float %2, 0.000000e+00
  %i.o = xor i1 %i.m, %i.n
  %or.cond42.i = and i1 %i.g, %i.k
  %or.cond45.i = or i1 %i.o, %or.cond42.i
  br i1 %or.cond45.i, label %UnityFloatsWithin.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond42.old.i = and i1 %i.g, %i.k
  br i1 %or.cond42.old.i, label %UnityFloatsWithin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = fsub float %2, %1                        ; 3 uses
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.p
  %.0.i = select i1 %i.q, float %i.r, float %i.p  ; 4 uses
  %i.s = fsub float %.0.i, %.0.i
  %or.cond44.i = fcmp uno float %.0.i, %i.s
  %.035.i = tail call float @llvm.fabs.f32(float %0)
  %5 = fcmp ogt float %.0.i, %.035.i
  %or.cond12 = or i1 %5, %or.cond44.i
  br i1 %or.cond12, label %UnityFloatsWithin.exit.thread9, label %UnityFloatsWithin.exit.thread

UnityFloatsWithin.exit.thread9:                   ; preds = %bb.e
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.t = fpext float %1 to double
  tail call void @UnityPrintFloat(double noundef %i.t)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.u = fpext float %2 to double
  tail call void @UnityPrintFloat(double noundef %i.u)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityFloatsWithin.exit.thread:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertFloatSpecial(float noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.UnityAssertDoubleSpecial.trait_names, i64 32, i1 false)
  %4 = and i32 %3, 1
  %.not = icmp eq i32 %4, 0
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.c = icmp ne i64 %i.b, 0
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.e = icmp ne i64 %i.d, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %.thread [
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.d
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 7, label %bb.f
    i32 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = fsub float %0, %0
  %i.g = fcmp uno float %i.f, 0.000000e+00
  %i.h = fcmp ogt float %0, 0.000000e+00
  %narrow47 = and i1 %i.h, %i.g
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.i = fsub float %0, %0
  %i.j = fcmp uno float %i.i, 0.000000e+00
  %i.k = fcmp olt float %0, 0.000000e+00
  %narrow44 = and i1 %i.k, %i.j
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.l = fcmp uno float %0, 0.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.m = fsub float %0, %0
  %narrow = fcmp ord float %i.m, %0
  br label %bb.g

.thread:                                          ; preds = %bb.b
  store ptr @UnityStrInvalidFloatTrait, ptr %i.a, align 16, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.035.in = phi i1 [ %narrow, %bb.f ], [ %narrow47, %bb.c ], [ %narrow44, %bb.d ], [ %i.l, %bb.e ]
  %.0.shrunk = phi i64 [ 3, %bb.f ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  %5 = trunc i32 %3 to i1
  %i.n = xor i1 %.035.in, %5
  br i1 %i.n, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread, %bb.g
  %.0.shrunk43 = phi i64 [ 0, %.thread ], [ %.0.shrunk, %bb.g ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %2)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNot)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.shrunk43
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  tail call void @UnityPrint(ptr noundef %i.p)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.q = fpext float %0 to double
  tail call void @UnityPrintFloat(double noundef %i.q)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %1)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualDoubleArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

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
  br i1 %i.f, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %UnityIsOneArrayNull.exit.preheader

UnityIsOneArrayNull.exit.preheader:               ; preds = %bb.f
  %i.i = icmp eq i32 %5, 1
  %spec.select.idx = select i1 %i.i, i64 8, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.j = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.j, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.l = tail call i32 @putc(i32 noundef 58, ptr noundef %i.k) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.h:                                             ; preds = %UnityIsOneArrayNull.exit.preheader, %UnityDoublesWithin.exit.thread
  %.046 = phi ptr [ %1, %UnityIsOneArrayNull.exit.preheader ], [ %i.aj, %UnityDoublesWithin.exit.thread ] ; 3 uses
  %.02545 = phi ptr [ %0, %UnityIsOneArrayNull.exit.preheader ], [ %spec.select, %UnityDoublesWithin.exit.thread ] ; 3 uses
  %.02644 = phi i32 [ %2, %UnityIsOneArrayNull.exit.preheader ], [ %i.m, %UnityDoublesWithin.exit.thread ] ; 2 uses
  %i.m = add i32 %.02644, -1                      ; 2 uses
  %i.n = load double, ptr %.02545, align 8, !tbaa !33 ; 7 uses
  %i.o = fmul double %i.n, f0x3D719799812DEA11
  %i.p = load double, ptr %.046, align 8, !tbaa !33 ; 6 uses
  %i.q = fsub double %i.n, %i.n
  %i.r = fcmp ord double %i.q, 0.000000e+00
  %i.s = fcmp uno double %i.n, 0.000000e+00       ; 2 uses
  %i.t = fsub double %i.p, %i.p
  %i.u = fcmp ord double %i.t, 0.000000e+00
  %i.v = or i1 %i.r, %i.u
  %i.w = fcmp uno double %i.p, 0.000000e+00       ; 2 uses
  %i.x = fcmp uno double %i.p, %i.n
  %or.cond41.i = or i1 %i.x, %i.v
  br i1 %or.cond41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fcmp olt double %i.n, 0.000000e+00
  %i.z = fcmp uge double %i.p, 0.000000e+00
  %i.aa = xor i1 %i.y, %i.z
  %or.cond42.i = and i1 %i.s, %i.w
  %or.cond45.i = or i1 %i.aa, %or.cond42.i
  br i1 %or.cond45.i, label %UnityDoublesWithin.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.h
  %or.cond42.old.i = and i1 %i.s, %i.w
  br i1 %or.cond42.old.i, label %UnityDoublesWithin.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = fsub double %i.p, %i.n                  ; 3 uses
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  %i.ad = fneg double %i.ab
  %.0.i32 = select i1 %i.ac, double %i.ad, double %i.ab ; 4 uses
  %i.ae = fsub double %.0.i32, %.0.i32
  %or.cond44.i = fcmp uno double %.0.i32, %i.ae
  %.035.i = tail call double @llvm.fabs.f64(double %i.o)
  %6 = fcmp ogt double %.0.i32, %.035.i
  %or.cond40 = or i1 %6, %or.cond44.i
  br i1 %or.cond40, label %UnityDoublesWithin.exit.thread37, label %UnityDoublesWithin.exit.thread

UnityDoublesWithin.exit.thread37:                 ; preds = %bb.k
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.af = sub nuw i32 %2, %.02644
  %i.ag = zext i32 %i.af to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.ag)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.ah = load double, ptr %.02545, align 8, !tbaa !33
  tail call void @UnityPrintFloat(double noundef %i.ah)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.ai = load double, ptr %.046, align 8, !tbaa !33
  tail call void @UnityPrintFloat(double noundef %i.ai)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityDoublesWithin.exit.thread:                   ; preds = %bb.k, %bb.j, %bb.i
  %spec.select = getelementptr inbounds nuw i8, ptr %.02545, i64 %spec.select.idx
  %i.aj = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %UnityDoublesWithin.exit.thread, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertDoublesWithin(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %UnityDoublesWithin.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double %1, %1
  %i.f = fcmp ord double %i.e, 0.000000e+00
  %i.g = fcmp uno double %1, 0.000000e+00         ; 2 uses
  %i.h = fsub double %2, %2
  %i.i = fcmp ord double %i.h, 0.000000e+00
  %i.j = or i1 %i.f, %i.i
  %i.k = fcmp uno double %2, 0.000000e+00         ; 2 uses
  %i.l = fcmp uno double %2, %1
  %or.cond41.i = or i1 %i.l, %i.j
  br i1 %or.cond41.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fcmp olt double %1, 0.000000e+00
  %i.n = fcmp uge double %2, 0.000000e+00
  %i.o = xor i1 %i.m, %i.n
  %or.cond42.i = and i1 %i.g, %i.k
  %or.cond45.i = or i1 %i.o, %or.cond42.i
  br i1 %or.cond45.i, label %UnityDoublesWithin.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond42.old.i = and i1 %i.g, %i.k
  br i1 %or.cond42.old.i, label %UnityDoublesWithin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = fsub double %2, %1                       ; 3 uses
  %i.q = fcmp olt double %i.p, 0.000000e+00
  %i.r = fneg double %i.p
  %.0.i = select i1 %i.q, double %i.r, double %i.p ; 4 uses
  %i.s = fsub double %.0.i, %.0.i
  %or.cond44.i = fcmp uno double %.0.i, %i.s
  %.035.i = tail call double @llvm.fabs.f64(double %0)
  %5 = fcmp ogt double %.0.i, %.035.i
  %or.cond12 = or i1 %5, %or.cond44.i
  br i1 %or.cond12, label %UnityDoublesWithin.exit.thread9, label %UnityDoublesWithin.exit.thread

UnityDoublesWithin.exit.thread9:                  ; preds = %bb.e
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintFloat(double noundef %1)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintFloat(double noundef %2)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityDoublesWithin.exit.thread:                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertDoubleSpecial(double noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.UnityAssertDoubleSpecial.trait_names, i64 32, i1 false)
  %4 = and i32 %3, 1
  %.not = icmp eq i32 %4, 0
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.c = icmp ne i64 %i.b, 0
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.e = icmp ne i64 %i.d, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %.thread [
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.d
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 7, label %bb.f
    i32 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = fsub double %0, %0
  %i.g = fcmp uno double %i.f, 0.000000e+00
  %i.h = fcmp ogt double %0, 0.000000e+00
  %narrow47 = and i1 %i.h, %i.g
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.i = fsub double %0, %0
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = fcmp olt double %0, 0.000000e+00
  %narrow44 = and i1 %i.k, %i.j
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.l = fcmp uno double %0, 0.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.m = fsub double %0, %0
  %narrow = fcmp ord double %i.m, %0
  br label %bb.g

.thread:                                          ; preds = %bb.b
  store ptr @UnityStrInvalidFloatTrait, ptr %i.a, align 16, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.035.in = phi i1 [ %narrow, %bb.f ], [ %narrow47, %bb.c ], [ %narrow44, %bb.d ], [ %i.l, %bb.e ]
  %.0.shrunk = phi i64 [ 3, %bb.f ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  %5 = trunc i32 %3 to i1
  %i.n = xor i1 %.035.in, %5
  br i1 %i.n, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread, %bb.g
  %.0.shrunk43 = phi i64 [ 0, %.thread ], [ %.0.shrunk, %bb.g ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %2)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNot)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.shrunk43
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  tail call void @UnityPrint(ptr noundef %i.p)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintFloat(double noundef %0)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %1)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertNumbersWithin(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %5, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %2, %1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = sub nsw i64 %2, %1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = sub nsw i64 %1, %2
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %2, %1
  br i1 %i.i, label %bb.g, label %6

bb.g:                                             ; preds = %bb.f
  %i.j = sub nuw nsw i64 %2, %1
  br label %bb.h

6:                                                ; preds = %bb.f
  %7 = sub nuw nsw i64 %1, %2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %6, %bb.d, %bb.e
  %.sink = phi i64 [ %i.j, %bb.g ], [ %7, %6 ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.k = icmp ugt i64 %.sink, %0                  ; 2 uses
  %i.l = zext i1 %i.k to i64
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDelta)
  tail call void @UnityPrintNumberByStyle(i64 noundef %0, i32 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintNumberByStyle(i64 noundef %1, i32 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintNumberByStyle(i64 noundef %2, i32 noundef %5)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualString(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.l, %.critedge ], [ 0, %bb.b ] ; 2 uses
  %i.g = zext i32 %.0 to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %.not21 = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 2 uses
  %.not22 = icmp eq i8 %i.k, 0
  %or.cond29 = select i1 %.not21, i1 %.not22, i1 false
  br i1 %or.cond29, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.preheader
  %.not23 = icmp eq i8 %i.i, %i.k
  %i.l = add i32 %.0, 1
  br i1 %.not23, label %.preheader, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %.critedge, %bb.c
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
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
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.b = tail call i32 @putc(i32 noundef 39, ptr noundef %i.a), !inline_history !13 ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %0)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.d = tail call i32 @putc(i32 noundef 39, ptr noundef %i.c), !inline_history !13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.f = tail call i32 @putc(i32 noundef 39, ptr noundef %i.e), !inline_history !13 ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %1)
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.h = tail call i32 @putc(i32 noundef 39, ptr noundef %i.g), !inline_history !13 ; 0 uses
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
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9     ; 2 uses
  %.not26 = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9     ; 2 uses
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
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.b = tail call i32 @putc(i32 noundef 39, ptr noundef %i.a), !inline_history !13 ; 0 uses
  tail call void @UnityPrintLen(ptr noundef nonnull %0, i32 noundef %2)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.d = tail call i32 @putc(i32 noundef 39, ptr noundef %i.c), !inline_history !13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.f = tail call i32 @putc(i32 noundef 39, ptr noundef %i.e), !inline_history !13 ; 0 uses
  tail call void @UnityPrintLen(ptr noundef nonnull %1, i32 noundef %2)
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.h = tail call i32 @putc(i32 noundef 39, ptr noundef %i.g), !inline_history !13 ; 0 uses
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
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !10
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 5 uses
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
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  %.not48.us.us = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us.split.split, %.critedge.us
  %.040.us = phi i32 [ %i.ae, %.critedge.us ], [ 0, %.split.us.split.split ] ; 2 uses
  %i.z = zext i32 %.040.us to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9   ; 2 uses
  %.not48.us = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9   ; 2 uses
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
  %i.o = load i8, ptr %0, align 1, !tbaa !9
  %i.p = zext i32 %i.k to i64
  %.not42.us141 = icmp eq i32 %i.k, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.split.us
  %i.q = phi i32 [ %i.j, %.preheader.lr.ph.split.split.us ], [ %i.z, %._crit_edge.us ] ; 3 uses
  %.03358.us = phi i32 [ %3, %.preheader.lr.ph.split.split.us ], [ %i.q, %._crit_edge.us ] ; 2 uses
  %.03457.us = phi ptr [ %1, %.preheader.lr.ph.split.split.us ], [ %scevgep93, %._crit_edge.us ] ; 4 uses
  %i.r = load i8, ptr %.03457.us, align 1, !tbaa !9
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
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = load i8, ptr %i.u, align 1, !tbaa !9
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
end_hunk_0
