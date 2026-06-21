inline.NumInlined: 824
inline.NumDeleted: 152
begin_hunk_0_@ures_getByIndex_78

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %5, align 4
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i16 2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.g, i8 0, i64 65, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.i, i8 0, i64 65, i1 false)
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 112
  %. = select i1 %i.j, ptr %1, ptr %2
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(137) %7)
  %i.n = load i16, ptr %i.f, align 8              ; 2 uses
  %i.o = and i16 %i.n, 1
  %.not.i.i38 = icmp eq i16 %i.o, 0
  %i.p = and i16 %i.n, 30
  %storemerge.i.i39 = select i1 %.not.i.i38, i16 %i.p, i16 2
  store i16 %storemerge.i.i39, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr @_ZNK6icu_7810PatternMap25getPatternFromBasePatternERKNS_13UnicodeStringERa(ptr noundef nonnull align 8 dereferenceable(425) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.a, align 1
  %.not32 = icmp ne i8 %i.u, 0
  %i.v = icmp ne i8 %3, 0
  %or.cond = or i1 %i.j, %i.v
  %or.cond37 = and i1 %or.cond, %.not32
  br i1 %or.cond37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.t) #25 ; 0 uses
  %.not33 = icmp eq i8 %3, 0
  br i1 %.not33, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8
  %i.x = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.y = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.x, ptr noundef nonnull align 8 dereferenceable(137) %7, ptr noundef nonnull %i.b) ; 2 uses
  %.not34 = icmp eq ptr %i.y, null
  br i1 %.not34, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.y) #25 ; 0 uses
  %.not35 = icmp eq i8 %3, 0
  br i1 %.not35, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ne ptr %2, null
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = icmp ne ptr %i.ab, null
  %or.cond3 = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond3, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %bb.f ]
  %.1 = phi i32 [ 2, %._crit_edge ], [ %.0, %bb.f ]
  %i.ae = icmp ne ptr %2, null
  %i.af = zext i1 %i.ae to i8
  call void @_ZN6icu_7810PatternMap3addERKNS_13UnicodeStringERKNS_11PtnSkeletonES3_aR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(425) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(137) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %i.af, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ag = load i32, ptr %5, align 4
  %.inv = icmp sgt i32 %i.ag, 0
  %..1 = select i1 %.inv, i32 %.1, i32 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h
  %.026 = phi i32 [ 2, %bb.g ], [ %..1, %bb.i ], [ 2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j
  %.127 = phi i32 [ %.026, %bb.j ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %.127, %bb.k ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3208 ; 4 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.t, %bb.c ]   ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(3216) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0.i, ptr noundef nonnull %i.a) #25, !inline_history !33
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.m = load i32, ptr %i.a, align 4
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0.i, i32 noundef %i.m) #25
  %i.n = load i32, ptr %i.f, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.f, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [64 x i8], ptr %i.g, i64 %i.p
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %3) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.s = load i32, ptr %i.a, align 4
  %i.t = add nsw i32 %i.s, %.0.i
  %i.u = load i32, ptr %i.f, align 8
  %i.v = icmp slt i32 %i.u, 50
  br i1 %i.v, label %bb.b, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit, !llvm.loop !34

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4
  %i.x = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3208
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %i.ah = phi ptr [ %i.x, %.lr.ph ], [ %i.cm, %bb.p ]
  %.056 = phi i8 [ 0, %.lr.ph ], [ %.4.ph, %bb.p ] ; 3 uses
  %storemerge55 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %bb.p ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = sext i32 %storemerge55 to i64
  %i.ak = getelementptr inbounds [64 x i8], ptr %i.ai, i64 %i.aj
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.ak) #25
  %i.al = load i16, ptr %i.ab, align 8            ; 4 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.ac, align 4
  %i.aq = select i1 %i.am, i32 %i.ap, i32 %i.ao   ; 6 uses
  %.not.i = icmp eq i32 %i.aq, 0                  ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.d
  %i.ar = and i16 %i.al, 2
  %.not.i.i.i.i = icmp eq i16 %i.ar, 0
  %i.as = load ptr, ptr %i.ae, align 8
  %i.at = select i1 %.not.i.i.i.i, ptr %i.as, ptr %i.ad ; 2 uses
  %i.au = load i16, ptr %i.at, align 2
  %.not = icmp eq i16 %i.au, 39
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %.not31 = icmp eq i8 %.056, 0
  br i1 %.not31, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  store i16 2, ptr %i.af, align 8
  %i.av = load ptr, ptr %i.d, align 8
  call void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b)
  %i.aw = load i16, ptr %i.af, align 8            ; 2 uses
  %i.ax = icmp slt i16 %i.aw, 0
  %i.ay = ashr i16 %i.aw, 5
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i32, ptr %i.ag, align 4
  %i.bb = select i1 %i.ax, i32 %i.ba, i32 %i.az
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bb) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.p

bb.g:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bd = icmp sgt i32 %i.aq, 0
  br i1 %i.bd, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.g
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %wide.trip.count.i = zext nneg i32 %i.aq to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.bh = load i16, ptr %i.bg, align 2
  switch i16 %i.bh, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %indvars.iv.i ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i16, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp slt i16 %i.bk, 0
  %i.bm = ashr i16 %i.bk, 5
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = select i1 %i.bl, i32 %i.bp, i32 %i.bn
  %.not.i33 = icmp eq i32 %i.bq, 0
  br i1 %.not.i33, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.br = and i16 %i.bk, 2
  %.not.i.i.i39.i = icmp eq i16 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = select i1 %.not.i.i.i39.i, ptr %i.bu, ptr %i.bs
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = icmp eq i16 %i.bw, 46
  br i1 %i.bx, label %.thread.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread

.thread.i:                                        ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !47

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.by = icmp ne i8 %.056, 0
  br label %bb.j

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit: ; preds = %.thread.i, %bb.d, %bb.g
  %.not50 = icmp eq i8 %.056, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.aq) #25 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.ca = phi i1 [ %i.by, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread ], [ false, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit ] ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.j
  %i.cb = and i16 %i.al, 2
  %.not.i.i.i = icmp eq i16 %i.cb, 0
  %i.cc = load ptr, ptr %i.ae, align 8
  %i.cd = select i1 %.not.i.i.i, ptr %i.cc, ptr %i.ad
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  switch i16 %i.ce, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 109, label %bb.k
    i16 115, label %bb.l
  ]

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.cf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.aq) #25 ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  br i1 %i.ca, label %bb.m, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.aq) #25 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ci, ptr %2, align 4
  br label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit

bb.o:                                             ; preds = %bb.m
  %i.ck = call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  br label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i39 = phi i16 [ %i.ce, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.j ]
  br i1 %i.ca, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  switch i16 %.0.i.i39, label %bb.p [
    i16 122, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
    i16 118, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
    i16 90, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
    i16 86, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
  ]

_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.l, %bb.n, %bb.o
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit

bb.p:                                             ; preds = %bb.f, %bb.i, %bb.e, %switch.early.test, %bb.k
  %8 = phi i32 [ %storemerge55, %switch.early.test ], [ %storemerge55, %bb.k ], [ %storemerge55, %bb.e ], [ %.pre, %bb.f ], [ %storemerge55, %bb.i ]
  %.4.ph = phi i8 [ 0, %switch.early.test ], [ 1, %bb.k ], [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %bb.i ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cl = add nsw i32 %8, 1                       ; 3 uses
  store i32 %i.cl, ptr %i.b, align 4
  %i.cm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3208
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = icmp slt i32 %i.cl, %i.co
  br i1 %i.cp, label %bb.d, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %bb.p, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit, %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(3216) initializes((3208, 3212)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 4 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.c ]     ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, ptr noundef nonnull %i.a) #25
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = load i32, ptr %i.a, align 4
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, i32 noundef %i.i) #25
  %i.j = load i32, ptr %i.b, align 8              ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [64 x i8], ptr %i.c, i64 %i.l
  %i.n = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.o = load i32, ptr %i.a, align 4
  %i.p = add nsw i32 %i.o, %.0
  %i.q = load i32, ptr %i.b, align 8
  %i.r = icmp slt i32 %i.q, 50
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !34

.critedge:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 39
  %i.p = zext i1 %i.o to i8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i8 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = and i16 %i.c, 1
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = and i16 %i.c, 30
  %storemerge.i = select i1 %.not.i, i16 %i.e, i16 2
  store i16 %storemerge.i, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.q = and i16 %i.j, 2
  %.not.i.i.i = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.r
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, 39
  br i1 %i.w, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.p) #25 ; 0 uses
  %i.y = add nsw i32 %i.a, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.a, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0 = phi i32 [ %i.y, %bb.b ], [ %i.a, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp slt i32 %.0, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.backedge
  %i.ac = phi i32 [ %i.bw, %.backedge ], [ %i.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ]
  %.136 = phi i32 [ %.1.be, %.backedge ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ] ; 5 uses
  %i.ad = sext i32 %.136 to i64
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i16, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = ashr i16 %i.ag, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = select i1 %i.ah, i32 %i.al, i32 %i.aj   ; 4 uses
  %.not31 = icmp eq i32 %i.am, 0
  br i1 %.not31, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24

_ZNK6icu_7813UnicodeString6charAtEi.exit24:       ; preds = %.lr.ph
  %i.an = and i16 %i.ag, 2
  %.not.i.i.i23 = icmp eq i16 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %.not.i.i.i23, ptr %i.aq, ptr %i.ao
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = icmp eq i16 %i.as, 39
  br i1 %i.at, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit24
  %i.au = add nsw i32 %.136, 1                    ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.ac
  br i1 %i.av, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.d:                                             ; preds = %bb.c
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8            ; 3 uses
  %i.ba = icmp slt i16 %i.az, 0
  %i.bb = ashr i16 %i.az, 5
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = select i1 %i.ba, i32 %i.be, i32 %i.bc
  %.not32 = icmp eq i32 %i.bf, 0
  br i1 %.not32, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27

_ZNK6icu_7813UnicodeString6charAtEi.exit27:       ; preds = %bb.d
  %i.bg = and i16 %i.az, 2
  %.not.i.i.i26 = icmp eq i16 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %.not.i.i.i26, ptr %i.bj, ptr %i.bh
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = icmp eq i16 %i.bl, 39
  br i1 %i.bm, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit27
end_hunk_0
begin_hunk_1_@_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE:bb.a
  br i1 %i.ck, label %.thread.i45, label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i42
  %i.cm = load i32, ptr %i.cl, align 4            ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i42
  %i.co = load i32, ptr %i.cn, align 4            ; 3 uses
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.q, label %bb.m

.thread.i45:                                      ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i42
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.q, label %.thread25.i

bb.m:                                             ; preds = %bb.l
  %i.ct = icmp eq i32 %i.cm, 0
  br i1 %i.ct, label %.thread25.i, label %bb.n

.thread25.i:                                      ; preds = %bb.m, %.thread.i45
  %i.cu = add nuw nsw i32 %.028.i, 65536
  %i.cv = or i32 %i.cg, %i.ci                     ; 2 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp eq i32 %i.co, 0
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = add nuw nsw i32 %.028.i, 4096
  %i.cy = or i32 %i.cf, %i.ci                     ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 %i.cm, %i.co
  %i.da = call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = add nuw nsw i32 %i.da, %.028.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread25.i, %.thread.i45, %bb.l
  %.sroa.3.1 = phi i32 [ %.sroa.3.0, %.thread.i45 ], [ %.sroa.3.0, %.thread25.i ], [ %.sroa.3.0, %bb.l ], [ %i.cy, %bb.o ], [ %.sroa.3.0, %bb.p ] ; 4 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %.thread.i45 ], [ %i.cv, %.thread25.i ], [ %.sroa.8.0, %bb.l ], [ %.sroa.8.0, %bb.o ], [ %.sroa.8.0, %bb.p ] ; 2 uses
  %i.dc = phi i32 [ %i.cg, %.thread.i45 ], [ %i.cv, %.thread25.i ], [ %i.cg, %bb.l ], [ %i.cg, %bb.o ], [ %i.cg, %bb.p ]
  %i.dd = phi i32 [ %i.cf, %.thread.i45 ], [ %i.cf, %.thread25.i ], [ %i.cf, %bb.l ], [ %i.cy, %bb.o ], [ %i.cf, %bb.p ]
  %.2.i = phi i32 [ %.028.i, %.thread.i45 ], [ %i.cu, %.thread25.i ], [ %.028.i, %bb.l ], [ %i.cx, %bb.o ], [ %i.db, %bb.p ] ; 5 uses
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 16
  br i1 %exitcond.not.i44, label %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread, !llvm.loop !61

_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit: ; preds = %bb.q
  %i.de = icmp slt i32 %.2.i, %.02676132
  br i1 %i.de, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit
  %i.df = icmp eq i32 %.2.i, %.02676132
  %i.dg = icmp slt i32 %.02277131, %.sroa.3.1
  %or.cond38 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond38, label %bb.s, label %.preheader.i

bb.s:                                             ; preds = %bb.r, %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit
  %i.dh = load ptr, ptr %i.m, align 8
  %i.di = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.dh, ptr noundef nonnull align 8 dereferenceable(137) %i.w, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %.sroa.3.1, ptr %i.af, align 8
  store i32 %.sroa.8.1, ptr %i.ag, align 4
  %i.dj = icmp eq i32 %.2.i, 0
  br i1 %i.dj, label %.thread63, label %.preheader.i

.thread63:                                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

.preheader.i:                                     ; preds = %bb.s, %bb.r, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit
  %.329 = phi i32 [ %.02676132, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ], [ %.2.i, %bb.s ], [ %.02676132, %bb.r ]
  %.325 = phi i32 [ %.02277131, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ], [ %.sroa.3.1, %bb.s ], [ %.02277131, %bb.r ]
  %.3 = phi ptr [ %.02078130, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ], [ %i.di, %bb.s ], [ %.02078130, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dk = icmp slt i32 %.sroa.4.5, 52
  br i1 %i.dk, label %.lr.ph.preheader.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread: ; preds = %.preheader.i, %.backedge.peel.i, %.backedge.i, %.thread63
  %.4 = phi ptr [ %i.di, %.thread63 ], [ %.02078130, %.backedge.i ], [ %.02078130, %.backedge.peel.i ], [ %.3, %.preheader.i ] ; 3 uses
  %i.dl = icmp ne ptr %.4, null
  %i.dm = icmp ne ptr %5, null
  %or.cond = and i1 %i.dm, %i.dl
  br i1 %or.cond, label %bb.t, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

bb.t:                                             ; preds = %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread
  %i.dn = load ptr, ptr %i.a, align 8
  store ptr %i.dn, ptr %5, align 8
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread: ; preds = %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread103, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, %bb.t
  %.0 = phi ptr [ %.4, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread ], [ %.4, %bb.t ], [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread103 ] ; 2 uses
  %i.do = icmp eq ptr %.sroa.15.0105, null
  br i1 %i.do, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread
  %i.dp = load ptr, ptr %.sroa.15.0105, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.15.0105) #25, !inline_history !62
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorD2Ev.exit:          ; preds = %bb.a, %bb.d, %.thread.i, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread, %bb.u
  %.0110 = phi ptr [ %.0, %bb.u ], [ %.0, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread ], [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ null, %.thread.i ], [ null, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0110
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3208 ; 4 uses
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.v, %bb.c ]   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(3216) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, ptr noundef nonnull %i.c) #25, !inline_history !33
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.o = load i32, ptr %i.c, align 4
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, i32 noundef %i.o) #25
  %i.p = load i32, ptr %i.h, align 8              ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.h, align 8
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.r
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %6) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.u = load i32, ptr %i.c, align 4
  %i.v = add nsw i32 %i.u, %.0.i
  %i.w = load i32, ptr %i.h, align 8
  %i.x = icmp slt i32 %i.w, 50
  br i1 %i.x, label %bb.b, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit, !llvm.loop !34

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4
  %i.y = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3208
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph120, label %._crit_edge

.lr.ph120:                                        ; preds = %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ag = trunc i32 %4 to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = and i32 %5, 2048
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = and i32 %5, 4096
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = and i32 %5, 8192
  %i.an = icmp eq i32 %i.am, 0
  %.not113 = icmp eq ptr %3, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4576
  %i.aq = and i32 %4, 2
  %.not87 = icmp ne i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4440
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4444
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  ret void

bb.d:                                             ; preds = %.lr.ph120, %bb.z
  %i.aw = phi ptr [ %i.y, %.lr.ph120 ], [ %i.gk, %bb.z ]
  %storemerge119 = phi i32 [ 0, %.lr.ph120 ], [ %i.gj, %bb.z ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = sext i32 %storemerge119 to i64
  %i.az = getelementptr inbounds [64 x i8], ptr %i.ax, i64 %i.ay
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.az) #25
  %i.ba = load i16, ptr %i.ac, align 8            ; 5 uses
  %i.bb = icmp slt i16 %i.ba, 0
  %i.bc = ashr i16 %i.ba, 5
  %i.bd = sext i16 %i.bc to i32
  %i.be = load i32, ptr %i.ad, align 4
  %i.bf = select i1 %i.bb, i32 %i.be, i32 %i.bd   ; 9 uses
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %.thread, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.d
  %i.bg = and i16 %i.ba, 2
  %.not.i.i.i.i = icmp eq i16 %i.bg, 0
  %i.bh = load ptr, ptr %i.af, align 8
  %i.bi = select i1 %.not.i.i.i.i, ptr %i.bh, ptr %i.ae ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 2            ; 5 uses
  %.not = icmp eq i16 %i.bj, 39
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8
  store i16 2, ptr %i.au, align 8
  %i.bk = load ptr, ptr %i.f, align 8
  call void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.d)
  %i.bl = load i16, ptr %i.au, align 8            ; 2 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.av, align 4
  %i.bq = select i1 %i.bm, i32 %i.bp, i32 %i.bo
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.bq) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.z

bb.f:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bs = icmp sgt i32 %i.bf, 0
  br i1 %i.bs, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.f
  %i.bt = load ptr, ptr %i.f, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %wide.trip.count.i = zext nneg i32 %i.bf to i64 ; 2 uses
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bw = load i16, ptr %i.bv, align 2
  switch i16 %i.bw, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bu, i64 %indvars.iv.i ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i16, ptr %i.by, align 8            ; 3 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = ashr i16 %i.bz, 5
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = select i1 %i.ca, i32 %i.ce, i32 %i.cc
  %.not.i105 = icmp eq i32 %i.cf, 0
  br i1 %.not.i105, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.cg = and i16 %i.bz, 2
  %.not.i.i.i39.i = icmp eq i16 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = select i1 %.not.i.i.i39.i, ptr %i.cj, ptr %i.ch
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = icmp eq i16 %i.cl, 46
  br i1 %i.cm, label %.thread.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i

.thread.i:                                        ; preds = %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !47

.thread:                                          ; preds = %.thread.i, %bb.d, %bb.f
  %i.cn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bf) #25 ; 0 uses
  br label %bb.z

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i:     ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.g
  %.not3043.i.i.not = icmp eq i32 %i.bf, 1
  br i1 %.not3043.i.i.not, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i

.critedge.outer.i.i.preheader:                    ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  br label %.critedge.outer.i.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, !llvm.loop !35

_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i:   ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.cp = load i16, ptr %i.co, align 2
  %.not.i.i = icmp eq i16 %i.bj, %i.cp
  br i1 %.not.i.i, label %bb.h, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.critedge.i.i
  %indvars.iv56.i.i = phi i64 [ %i.da, %.lr.ph.preheader.i.i ], [ %indvars.iv.next57.i.i, %.critedge.i.i ] ; 6 uses
  %.in.i.i = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56.i.i
  %i.cq = load i16, ptr %.in.i.i, align 16
  %.not33.i.i = icmp eq i16 %i.cq, %i.bj
  br i1 %.not33.i.i, label %bb.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %i.cr = and i64 %indvars.iv.next57.i.i, 4294967295
  %exitcond59.i.i = icmp eq i64 %i.cr, 86
  br i1 %exitcond59.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.cs = trunc nsw i64 %indvars.iv56.i.i to i32  ; 7 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.cu ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 16
  %.not34.i.i = icmp eq i16 %i.bj, %i.cw
  br i1 %.not34.i.i, label %bb.j, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit

bb.j:                                             ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = sext i16 %i.cy to i32
  %.not35.i.i = icmp slt i32 %i.bf, %i.cz
  br i1 %.not35.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, label %.critedge.outer.i.i, !llvm.loop !36

.critedge.outer.i.i:                              ; preds = %.critedge.outer.i.i.preheader, %bb.j
  %.024.ph.i.i = phi i32 [ %i.ct, %bb.j ], [ 0, %.critedge.outer.i.i.preheader ] ; 2 uses
  %.not3145.i.i = icmp eq i32 %.024.ph.i.i, 86
  br i1 %.not3145.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.outer.i.i
  %i.da = sext i32 %.024.ph.i.i to i64
  br label %.lr.ph.i.i

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit: ; preds = %bb.i, %bb.j
  %i.db = icmp sgt i64 %indvars.iv56.i.i, -1
  br i1 %i.db, label %bb.k, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, %.critedge.outer.i.i, %.critedge.i.i, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.dc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bf) #25 ; 0 uses
  br label %bb.z

bb.k:                                             ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.dd = and i64 %indvars.iv56.i.i, 4294967295
  %i.de = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.dd ; 2 uses
  %i.df = and i32 %i.cs, 2147483646
  %i.dg = icmp eq i32 %i.df, 64                   ; 2 uses
  %or.cond = and i1 %i.dg, %i.ag
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dh = load i16, ptr %i.as, align 8            ; 2 uses
  %i.di = icmp slt i16 %i.dh, 0
  %i.dj = ashr i16 %i.dh, 5
  %i.dk = sext i16 %i.dj to i32
  %i.dl = load i32, ptr %i.at, align 4
  %i.dm = select i1 %i.di, i32 %i.dl, i32 %i.dk
  %i.dn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef 0, i32 noundef %i.dm) #25 ; 0 uses
  %i.do = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 94
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = sext i8 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 110
  %i.dt = load i8, ptr %i.ds, align 1             ; 2 uses
  %i.du = sext i8 %i.dt to i32
  %i.dv = icmp sgt i8 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.08.i = phi i32 [ %i.dx, %.lr.ph.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.dr, ptr %i.b, align 2
  %i.dw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dx = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i106 = icmp eq i32 %i.dx, %i.du
  br i1 %exitcond.not.i106, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %.lr.ph.i, !llvm.loop !63

bb.m:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = sext i32 %i.dz to i64                   ; 4 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %.not84 = icmp eq i32 %i.ee, 0
  br i1 %.not84, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.ec
  %i.eh = load i8, ptr %i.eg, align 1             ; 8 uses
  %i.ei = sext i8 %i.eh to i16                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ec
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = sext i8 %i.el to i32                    ; 2 uses
  %i.en = icmp eq i8 %i.eh, 69
  %i.eo = call i32 @llvm.smax.i32(i32 %i.em, i32 3)
  %spec.store.select = select i1 %i.en, i32 %i.eo, i32 %i.em ; 5 uses
  %i.ep = add nsw i32 %i.cs, -56
  %i.eq = icmp ult i32 %i.ep, 7                   ; 2 uses
  %or.cond89 = and i1 %i.aj, %i.eq
  %i.er = icmp eq i64 %indvars.iv56.i.i, 63
  %or.cond91 = and i1 %i.al, %i.er
  %or.cond121 = or i1 %or.cond89, %or.cond91
  %or.cond93 = and i1 %i.an, %i.dg
  %or.cond122 = or i1 %or.cond121, %or.cond93     ; 2 uses
  %brmerge = or i1 %or.cond122, %.not113
  %.mux = select i1 %or.cond122, i32 %i.bf, i32 %spec.store.select
  br i1 %brmerge, label %bb.p, label %switch.early.test

switch.early.test:                                ; preds = %bb.n
  switch i8 %i.eh, label %bb.o [
    i8 101, label %bb.p
    i8 99, label %bb.p
  ]

bb.o:                                             ; preds = %switch.early.test
  %i.es = getelementptr inbounds i8, ptr %i.ao, i64 %i.ec
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = sext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ew = load i16, ptr %i.ev, align 8
  %i.ex = icmp slt i16 %i.ew, 1                   ; 2 uses
  %i.ey = icmp sgt i32 %i.ee, 0                   ; 2 uses
  %i.ez = icmp ne i32 %spec.store.select, %i.eu
  %or.cond11 = or i1 %i.ey, %i.ex
  %or.cond94 = select i1 %i.ez, i1 %or.cond11, i1 false
  %or.cond94.not = xor i1 %or.cond94, true
  %or.cond13.not = select i1 %i.ey, i1 %i.ex, i1 false
  %or.cond95 = select i1 %or.cond94.not, i1 true, i1 %or.cond13.not
  %spec.select112 = select i1 %or.cond95, i32 %i.bf, i32 %spec.store.select
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %switch.early.test, %switch.early.test
  %.1 = phi i32 [ %spec.select112, %bb.o ], [ %spec.store.select, %switch.early.test ], [ %spec.store.select, %switch.early.test ], [ %.mux, %bb.n ] ; 3 uses
  %i.fa = add nsw i32 %i.cs, -63
  %i.fb = icmp ult i32 %i.fa, -7
  %i.fc = add nsw i32 %i.cs, -27
  %i.fd = icmp ult i32 %i.fc, -9
  %or.cond15 = select i1 %i.fb, i1 %i.fd, i1 false
  %i.fe = add nsw i32 %i.cs, -43
  %i.ff = icmp ult i32 %i.fe, -14
  %or.cond17 = select i1 %or.cond15, i1 %i.ff, i1 false
  br i1 %or.cond17, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fg = add nsw i32 %i.cs, -10
  %i.fh = icmp ult i32 %i.fg, -7
  %i.fi = icmp eq i8 %i.eh, 89
  %or.cond20 = or i1 %i.fh, %i.fi
  br i1 %or.cond20, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.r, %bb.q
  %i.fj = phi i16 [ %i.ei, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %i.fk = icmp eq i16 %i.fj, 69
  %i.fl = icmp slt i32 %.1, 3
  %or.cond22 = and i1 %i.fl, %i.fk
  %spec.store.select23 = select i1 %or.cond22, i16 101, i16 %i.fj ; 3 uses
  br i1 %i.eq, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.fm = load i16, ptr %i.ap, align 8            ; 7 uses
  %.not86 = icmp eq i16 %i.fm, 0
  br i1 %.not86, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fn = icmp eq i16 %i.fm, %i.ei
  %or.cond96 = or i1 %.not87, %i.fn
  br i1 %or.cond96, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = icmp eq i8 %i.eh, 104
  %i.fp = icmp eq i16 %i.fm, 75
  %or.cond97 = and i1 %i.fo, %i.fp
  br i1 %or.cond97, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = icmp eq i8 %i.eh, 72
  %i.fr = icmp eq i16 %i.fm, 107
  %or.cond99 = and i1 %i.fq, %i.fr
  br i1 %or.cond99, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = icmp eq i8 %i.eh, 107
  %i.ft = icmp eq i16 %i.fm, 72
  %or.cond101 = and i1 %i.fs, %i.ft
  br i1 %or.cond101, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fu = icmp eq i8 %i.eh, 75
  %i.fv = icmp eq i16 %i.fm, 104
  %or.cond103 = and i1 %i.fu, %i.fv
  %spec.select = select i1 %or.cond103, i16 104, i16 %spec.store.select23
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.075 = phi i16 [ %spec.select, %bb.x ], [ %spec.store.select23, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 75, %bb.u ], [ 107, %bb.v ], [ %spec.store.select23, %bb.s ], [ 72, %bb.w ], [ %i.fm, %bb.t ]
  %i.fw = and i16 %i.ba, 1
  %.not.i107 = icmp eq i16 %i.fw, 0
  %i.fx = and i16 %i.ba, 30
  %storemerge.i = select i1 %.not.i107, i16 %i.fx, i16 2
  store i16 %storemerge.i, ptr %i.ac, align 8
  %i.fy = icmp sgt i32 %.1, 0
  br i1 %i.fy, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.0118 = phi i32 [ %i.ga, %.lr.ph ], [ %.1, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.075, ptr %i.a, align 2
  %i.fz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ga = add nsw i32 %.0118, -1
  %i.gb = icmp samesign ugt i32 %.0118, 1
  br i1 %i.gb, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, !llvm.loop !64

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit: ; preds = %.lr.ph, %.lr.ph.i, %bb.y, %bb.l, %bb.m
  %i.gc = load i16, ptr %i.ac, align 8            ; 2 uses
  %i.gd = icmp slt i16 %i.gc, 0
  %i.ge = ashr i16 %i.gc, 5
  %i.gf = sext i16 %i.ge to i32
  %i.gg = load i32, ptr %i.ad, align 4
  %i.gh = select i1 %i.gd, i32 %i.gg, i32 %i.gf
  %i.gi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.gh) #25 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, %bb.e, %.thread
  %9 = phi i32 [ %storemerge119, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread ], [ %storemerge119, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit ], [ %.pre, %bb.e ], [ %storemerge119, %.thread ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.gj = add nsw i32 %9, 1                       ; 3 uses
  store i32 %i.gj, ptr %i.d, align 4
  %i.gk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3208
  %i.gm = load i32, ptr %i.gl, align 8
  %i.gn = icmp slt i32 %i.gj, %i.gm
  br i1 %i.gn, label %bb.d, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZNK6icu_7815DateTimeMatcher12getFieldMaskEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <16 x i32>, ptr %i.a, align 8
  %i.c = icmp ne <16 x i32> %i.b, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16
  %i.e = zext i16 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator16getBestAppendingEiiR10UErrorCode28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %13 = alloca %"class.icu_78::SimpleFormatter", align 8 ; 7 uses
  %i.e = load i32, ptr %4, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.i, align 8
  %.not31 = icmp eq i32 %2, 0
  br i1 %.not31, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.j, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %8) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %2, ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.c)
  %i.q = load i32, ptr %4, align 4
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.s, align 8
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.p) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.u, i32 noundef %3, i32 noundef %5)
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %9) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.w = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.f
  %i.aa = and i32 %2, 24576
  %i.ab = icmp eq i32 %i.aa, 24576
  %i.ac = or i32 %3, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ak = and i32 %i.y, 24576
  %i.al = icmp eq i32 %i.ak, 16384
  %or.cond50 = and i1 %i.ab, %i.al
  br i1 %or.cond50, label %.lr.ph45, label %.split

bb.g:                                             ; preds = %bb.f
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  br label %.critedge

bb.h:                                             ; preds = %.lr.ph45
  %i.am = and i32 %i.av, 24576
  %i.an = icmp eq i32 %i.am, 16384
  br i1 %i.an, label %.lr.ph45, label %.split, !llvm.loop !66

.lr.ph45:                                         ; preds = %.lr.ph.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.u, i32 noundef %i.ac, i32 noundef %5)
  %i.ao = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %10) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ap = load ptr, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, -16385
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.outer._crit_edge, label %bb.h, !llvm.loop !66

.split:                                           ; preds = %bb.h, %.lr.ph.lr.ph
  %.us-phi = phi ptr [ %i.w, %.lr.ph.lr.ph ], [ %i.at, %bb.h ]
  %.us-phi44 = phi i32 [ %i.y, %.lr.ph.lr.ph ], [ %i.av, %bb.h ] ; 2 uses
  %i.ax = load ptr, ptr %i.l, align 8
  %i.ay = call noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.ax, i32 noundef %.us-phi44, ptr noundef nonnull %.us-phi, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.c)
  %i.az = load i32, ptr %4, align 4
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.i, label %.thread

.thread:                                          ; preds = %.split
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.bb, align 8
  br label %.critedge

bb.i:                                             ; preds = %.split
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ay) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bd = load ptr, ptr %i.c, align 8
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.bd, i32 noundef %3, i32 noundef %5)
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %11) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.bf = load ptr, ptr %i.n, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = xor i32 %i.bh, -1
  %i.bj = and i32 %.us-phi44, %i.bi               ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.012.i = phi i32 [ %i.bm, %.preheader.i ], [ 0, %bb.i ]
  %.0711.i = phi i32 [ %i.bl, %.preheader.i ], [ %i.bj, %bb.i ]
  %i.bl = ashr i32 %.0711.i, 1                    ; 2 uses
  %i.bm = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i, !llvm.loop !67

bb.j:                                             ; preds = %.preheader.i
  %i.bn = call i32 @llvm.umin.i32(i32 %i.bm, i32 16)
  %.08.i = add nsw i32 %i.bn, -1
  %i.bo = zext nneg i32 %.08.i to i64
  br label %_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit

_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit: ; preds = %bb.i, %bb.j
  %.1.i = phi i64 [ %i.bo, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.1.i ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i16, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp slt i16 %i.br, 0
  %i.bt = ashr i16 %i.br, 5
  %i.bu = sext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = select i1 %i.bs, i32 %i.bw, i32 %i.bu
  %.not35 = icmp eq i32 %i.bx, 0
  br i1 %.not35, label %.outer._crit_edge, label %bb.k

end_hunk_1
