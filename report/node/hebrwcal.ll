Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/hebrwcal?download=true
inline.NumInlined: 68
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7814HebrewCalendar3addE19UCalendarDateFieldsiR10UErrorCode:bb.a
  br i1 %or.cond.peel, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.peel.begin61
  %i.r = mul nsw i64 %i.p, 12
  %i.s = add nsw i64 %i.r, 17
  %i.t = srem i64 %i.s, 19                        ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  %i.v = select i1 %i.u, i64 -7, i64 12
  %.not54.peel = icmp slt i64 %i.t, %i.v
  %i.w = zext i1 %.not54.peel to i64
  %spec.select.peel = add nuw nsw i64 %.037, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.peel.begin61
  %.2.peel = phi i64 [ %spec.select.peel, %bb.h ], [ %.037, %.peel.begin61 ] ; 3 uses
  %i.x = icmp slt i64 %.2.peel, 13
  br i1 %i.x, label %.loopexit, label %.peel.next62

.peel.next62:                                     ; preds = %bb.i, %bb.j
  %storemerge71.in.in = phi i64 [ %storemerge71.in, %bb.j ], [ %i.p, %bb.i ]
  %.138.in = phi i64 [ %spec.select, %bb.j ], [ %.2.peel, %bb.i ] ; 2 uses
  %.138 = add nsw i64 %.138.in, -13               ; 2 uses
  %storemerge71.in = add nsw i64 %storemerge71.in.in, 1 ; 4 uses
  %i.y = icmp samesign ugt i64 %.138.in, 17
  br i1 %i.y, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %.peel.next62
  %i.z = mul nsw i64 %storemerge71.in, 12
  %i.aa = add nsw i64 %i.z, 17
  %i.ab = srem i64 %i.aa, 19                      ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 -7, i64 12
  %.not54 = icmp slt i64 %i.ab, %i.ad
  %i.ae = zext i1 %.not54 to i64
  %spec.select = add nuw nsw i64 %.138, %i.ae     ; 3 uses
  %i.af = icmp samesign ult i64 %spec.select, 13
  br i1 %i.af, label %.loopexit.sink.split, label %.peel.next62, !llvm.loop !6

bb.k:                                             ; preds = %bb.c
  %i.ag = icmp sgt i32 %i.d, 5
  %i.ah = sext i32 %2 to i64
  %i.ai = add nsw i64 %i.e, %i.ah                 ; 3 uses
  %i.aj = icmp slt i64 %i.ai, -234
  br i1 %i.aj, label %bb.l, label %.peel.begin

bb.l:                                             ; preds = %bb.k
  %.nonneg = sub nsw i64 0, %i.ai                 ; 2 uses
  %i.ak = udiv i64 %.nonneg, 235
  %i.al = urem i64 %.nonneg, 235
  %i.am = trunc nuw nsw i64 %i.ak to i32
  %i.an = mul nsw i32 %i.am, -19
  %i.ao = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.f, i32 noundef %i.an, ptr noundef nonnull %i.a) #7
  %.not45 = icmp eq i8 %i.ao, 0
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %3, align 4
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %.neg53 = sub nsw i64 0, %i.al
  %.promoted.pre = load i32, ptr %i.a, align 4
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.n, %bb.k
  %.promoted = phi i32 [ %.promoted.pre, %bb.n ], [ %i.f, %bb.k ]
  %.3 = phi i64 [ %.neg53, %bb.n ], [ %i.ai, %bb.k ] ; 3 uses
  %i.ap = sext i32 %.promoted to i64              ; 2 uses
  %i.aq = icmp slt i64 %.3, 6
  %or.cond3.peel = select i1 %i.ag, i1 %i.aq, i1 false
  br i1 %or.cond3.peel, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.peel.begin
  %i.ar = mul nsw i64 %i.ap, 12
  %i.as = add nsw i64 %i.ar, 17
  %i.at = srem i64 %i.as, 19                      ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  %i.av = select i1 %i.au, i64 -7, i64 12
  %.not.peel = icmp slt i64 %i.at, %i.av
  %i.aw = sext i1 %.not.peel to i64
  %spec.select49.peel = add nsw i64 %.3, %i.aw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.peel.begin
  %.5.peel = phi i64 [ %spec.select49.peel, %bb.o ], [ %.3, %.peel.begin ] ; 3 uses
  %i.ax = icmp sgt i64 %.5.peel, -1
  br i1 %i.ax, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.p, %bb.q
  %storemerge.in.in = phi i64 [ %storemerge.in, %bb.q ], [ %i.ap, %bb.p ]
  %.4.in = phi i64 [ %spec.select49, %bb.q ], [ %.5.peel, %bb.p ] ; 2 uses
  %.4 = add nsw i64 %.4.in, 13                    ; 2 uses
  %storemerge.in = add nsw i64 %storemerge.in.in, -1 ; 4 uses
  %i.ay = icmp samesign ult i64 %.4.in, -7
  br i1 %i.ay, label %bb.q, label %.loopexit.sink.split

bb.q:                                             ; preds = %.peel.next
  %i.az = mul nsw i64 %storemerge.in, 12
  %i.ba = add nsw i64 %i.az, 17
  %i.bb = srem i64 %i.ba, 19                      ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 -7, i64 12
  %.not = icmp slt i64 %i.bb, %i.bd
  %i.be = sext i1 %.not to i64
  %spec.select49 = add nsw i64 %.4, %i.be         ; 3 uses
  %i.bf = icmp sgt i64 %spec.select49, -1
  br i1 %i.bf, label %.loopexit.sink.split, label %.peel.next, !llvm.loop !9

.loopexit.sink.split:                             ; preds = %.peel.next, %bb.q, %.peel.next62, %bb.j
  %storemerge.lcssa.sink.in = phi i64 [ %storemerge71.in, %.peel.next62 ], [ %storemerge71.in, %bb.j ], [ %storemerge.in, %bb.q ], [ %storemerge.in, %.peel.next ]
  %.6.ph79 = phi i64 [ %.138, %.peel.next62 ], [ %spec.select, %bb.j ], [ %.4, %.peel.next ], [ %spec.select49, %bb.q ]
  %storemerge.lcssa.sink = trunc i64 %storemerge.lcssa.sink.in to i32
  store i32 %storemerge.lcssa.sink, ptr %i.a, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.p, %bb.i
  %.6 = phi i64 [ %.5.peel, %bb.p ], [ %.2.peel, %bb.i ], [ %.6.ph79, %.loopexit.sink.split ]
  %i.bg = trunc nsw i64 %.6 to i32
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 2, i32 noundef %i.bg) #7
  %i.bh = load i32, ptr %i.a, align 4
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 1, i32 noundef %i.bh) #7
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 408
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.m, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.t

bb.s:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.r, %bb.s
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare signext i8 @uprv_add32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7814HebrewCalendar10isLeapYearEi(i32 noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = mul nsw i64 %i.a, 12
  %i.c = add nsw i64 %i.b, 17
  %i.d = srem i64 %i.c, 19                        ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  %i.f = select i1 %i.e, i64 -7, i64 12
  %i.g = icmp sge i64 %i.d, %i.f
  %i.h = zext i1 %i.g to i8
  ret i8 %i.h
}

declare void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814HebrewCalendar3addENS_8Calendar11EDateFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814HebrewCalendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 2, label %bb.c
    i32 23, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7 ; 3 uses
  %i.d = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.e = sext i32 %i.d to i64
  %i.f = mul nsw i64 %i.e, 12
  %i.g = add nsw i64 %i.f, 17
  %i.h = srem i64 %i.g, 19                        ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = select i1 %i.i, i64 -7, i64 12
  %.not = icmp slt i64 %i.h, %i.j                 ; 2 uses
  %4 = srem i32 %2, 12
  %i.k = srem i32 %2, 13
  %5 = select i1 %.not, i32 %4, i32 %i.k
  %i.l = add nsw i32 %5, %i.c                     ; 5 uses
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %2, 0
  %i.n = icmp slt i32 %i.c, 5
  %or.cond = and i1 %i.m, %i.n
  %i.o = icmp sgt i32 %i.l, 4
  %or.cond3 = select i1 %or.cond, i1 %i.o, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i32 %i.l, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = icmp slt i32 %2, 0
  %i.r = icmp sgt i32 %i.c, 5
  %or.cond5 = and i1 %i.q, %i.r
  %i.s = icmp slt i32 %i.l, 6
  %or.cond7 = select i1 %or.cond5, i1 %i.s, i1 false
  %i.t = sext i1 %or.cond7 to i32
  %spec.select = add nsw i32 %i.l, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.p, %bb.e ], [ %spec.select, %bb.f ]
  %i.u = add nsw i32 %.0, 13
  %i.v = srem i32 %i.u, 13
  tail call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 2, i32 noundef %i.v) #7
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788Calendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g
  ret void
}

declare void @_ZN6icu_788Calendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814HebrewCalendar4rollENS_8Calendar11EDateFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK6icu_7814HebrewCalendar14handleGetLimitE19UCalendarDateFieldsNS_8Calendar10ELimitTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZL6LIMITS, i64 %i.a
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -128, 128) i32 @_ZNK6icu_7814HebrewCalendar20handleGetMonthLengthEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader20, label %_ZN6icu_7812_GLOBAL__N_18yearTypeEiR10UErrorCode.exit

.preheader20:                                     ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader20
  %i.d = sext i32 %1 to i64
  br label %.lr.ph

.preheader.thread:                                ; preds = %.lr.ph
  %i.e = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader20
  %i.f = icmp samesign ugt i32 %2, 12
  br i1 %i.f, label %.lr.ph26.preheader, label %._crit_edge

.lr.ph26.preheader:                               ; preds = %.preheader
  %i.g = sext i32 %1 to i64
  br label %.lr.ph26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.01621 = phi i32 [ %2, %.lr.ph.preheader ], [ %i.n, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.h = mul nsw i64 %indvars.iv.next, 12
  %i.i = add nsw i64 %i.h, 17
  %i.j = srem i64 %i.i, 19                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = select i1 %i.k, i64 -7, i64 12
  %.not1.i = icmp slt i64 %i.j, %i.l
  %i.m = select i1 %.not1.i, i32 12, i32 13
  %i.n = add nsw i32 %i.m, %.01621                ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.preheader.thread, !llvm.loop !10

.lr.ph26:                                         ; preds = %.lr.ph26.preheader, %.lr.ph26
  %indvars.iv33 = phi i64 [ %i.g, %.lr.ph26.preheader ], [ %indvars.iv.next34, %.lr.ph26 ] ; 2 uses
  %.11724 = phi i32 [ %2, %.lr.ph26.preheader ], [ %i.u, %.lr.ph26 ]
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.p = mul nsw i64 %indvars.iv33, 12
  %i.q = add nsw i64 %i.p, 17
  %i.r = srem i64 %i.q, 19                        ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %i.t = select i1 %i.s, i64 -7, i64 12
  %.not1.i19 = icmp slt i64 %i.r, %i.t
  %.neg = select i1 %.not1.i19, i32 -12, i32 -13
  %i.u = add i32 %.neg, %.11724                   ; 3 uses
  %i.v = icmp samesign ugt i32 %i.u, 12
  br i1 %i.v, label %.lr.ph26, label %._crit_edge.loopexit, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph26
  %i.w = trunc nsw i64 %indvars.iv.next34 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.thread, %._crit_edge.loopexit, %.preheader
  %.117.lcssa = phi i32 [ %2, %.preheader ], [ %i.u, %._crit_edge.loopexit ], [ %i.n, %.preheader.thread ] ; 3 uses
  %.115.lcssa = phi i32 [ %1, %.preheader ], [ %i.w, %._crit_edge.loopexit ], [ %i.e, %.preheader.thread ] ; 2 uses
  %.117.off = add nsw i32 %.117.lcssa, -1
  %switch = icmp ult i32 %.117.off, 2
  br i1 %switch, label %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit.i, label %bb.c

_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit.i: ; preds = %._crit_edge
  %i.x = add nsw i32 %.115.lcssa, 1
  %i.y = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111startOfYearEiR10UErrorCode(i32 noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111startOfYearEiR10UErrorCode(i32 noundef %.115.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.aa = load i32, ptr %3, align 4
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_18yearTypeEiR10UErrorCode.exit

bb.b:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit.i
  %i.ac = sub nsw i32 %i.y, %i.z                  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 380
  %i.ae = add nsw i32 %i.ac, -30
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 %i.ac ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %spec.select.i, 355
  %switch.select.i = select i1 %switch.selectcmp.i, i64 2, i64 1
  %switch.selectcmp13.i = icmp eq i32 %spec.select.i, 353
  %switch.select14.i = select i1 %switch.selectcmp13.i, i64 0, i64 %switch.select.i
  %i.af = zext nneg i32 %.117.lcssa to i64
  %i.ag = getelementptr inbounds nuw [3 x i8], ptr @_ZL12MONTH_LENGTH, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %switch.select14.i
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  br label %_ZN6icu_7812_GLOBAL__N_18yearTypeEiR10UErrorCode.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ak = zext nneg i32 %.117.lcssa to i64
  %i.al = getelementptr inbounds nuw [3 x i8], ptr @_ZL12MONTH_LENGTH, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.am to i32
  br label %_ZN6icu_7812_GLOBAL__N_18yearTypeEiR10UErrorCode.exit

_ZN6icu_7812_GLOBAL__N_18yearTypeEiR10UErrorCode.exit: ; preds = %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit.i, %bb.b, %bb.a, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ %i.an, %bb.c ], [ %i.aj, %bb.b ], [ 0, %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZN6icu_7812_GLOBAL__N_18yearTypeEiR10UErrorCode(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit, label %bb.c

_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit: ; preds = %bb.a
  %i.c = add nsw i32 %0, 1
  %i.d = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111startOfYearEiR10UErrorCode(i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.e = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111startOfYearEiR10UErrorCode(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit
  %i.h = sub nsw i32 %i.d, %i.e                   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 380
  %i.j = add nsw i32 %i.h, -30
  %spec.select = select i1 %i.i, i32 %i.j, i32 %i.h ; 2 uses
  %switch.selectcmp = icmp eq i32 %spec.select, 355
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 1
  %switch.selectcmp13 = icmp eq i32 %spec.select, 353
  %switch.select14 = select i1 %switch.selectcmp13, i32 0, i32 %switch.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6icu_7812_GLOBAL__N_110daysInYearEiR10UErrorCode.exit ], [ %switch.select14, %bb.b ]
  ret i32 %.1
}
end_hunk_0
