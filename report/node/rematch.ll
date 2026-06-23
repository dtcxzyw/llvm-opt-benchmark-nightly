inline.NumInlined: 355
inline.NumDeleted: 28
begin_hunk_0_@_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode:bb.a
  %.391375 = phi ptr [ %.39.ph, %.thread1371 ], [ %.0724, %bb.yx ]
  %i.dvp = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.391375, ptr %i.dvp, align 8
  br label %bb.yz

bb.yz:                                            ; preds = %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1595, %bb.yy, %bb.a
  ret void
}

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L16isLineTerminatorEi(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = and i32 %0, -8368
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.c [
    i32 8232, label %bb.d
    i32 133, label %bb.d
    i32 13, label %bb.d
    i32 12, label %bb.d
    i32 11, label %bb.d
    i32 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %0, 8233
  %i.c = zext i1 %i.b to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.c, %bb.c ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZN6icu_7812RegexMatcher4findElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %2, align 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.h, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 0, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 10000, ptr %i.w, align 8
  %i.x = icmp slt i64 %1, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 8, ptr %2, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.y = icmp sgt i64 %1, %i.h
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 8, ptr %2, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %1, ptr %i.z, align 8
  %i.aa = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher4findER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.e, %bb.c
  %.1 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ %i.aa, %bb.h ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(336) initializes((64, 128), (130, 131), (136, 170), (268, 276)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.c, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 10000, ptr %i.r, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::CaseFoldingUCharIterator", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::CaseFoldingUCharIterator", align 8 ; 7 uses
  %6 = alloca %"class.icu_78::CaseFoldingUCharIterator", align 8 ; 8 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ni

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = and i16 %i.j, 17
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = and i16 %i.j, 2
  %.not2.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %i.m, %bb.d ], [ null, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8              ; 66 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 71 uses
  store i32 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 67 uses
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z) #17
  %i.aa = load ptr, ptr %i.y, align 8             ; 4 uses
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = add nsw i32 %i.ag, %i.ad                ; 4 uses
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ak = load i32, ptr %i.aj, align 4
  %.not.i.i.i = icmp slt i32 %i.ak, %i.ah
  %or.cond.i.i.i = select i1 %i.ai, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.al = tail call noundef signext i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.ae) #17
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i
  %.pre.i.i = load i32, ptr %i.af, align 8        ; 2 uses
  %.pre6.i.i = add nsw i32 %.pre.i.i, %i.ad
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.pre-phi.i.i = phi i32 [ %.pre6.i.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i ], [ %i.ah, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ]
  %i.an = phi i32 [ %.pre.i.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i ], [ %i.ag, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  store i32 %.pre-phi.i.i, ptr %i.af, align 8
  br label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i

_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i
  %.0.i.i = phi ptr [ %i.ar, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i ], [ null, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i ] ; 4 uses
  %i.as = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %.preheader.i, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1647

.preheader.i:                                     ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp sgt i32 %i.aw, 2
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i64 -1, ptr %i.az, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = add nsw i32 %i.bc, -2
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next.i, %i.be
  br i1 %i.bf, label %bb.f, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit, !llvm.loop !19

_ZN6icu_7812RegexMatcher10resetStackEv.exit:      ; preds = %bb.f
  %.pre = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.bg = icmp slt i32 %.pre, 1
  br i1 %i.bg, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1647

_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1647: ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i, %_ZN6icu_7812RegexMatcher10resetStackEv.exit
  %i.bh = phi i32 [ %.pre, %_ZN6icu_7812RegexMatcher10resetStackEv.exit ], [ %i.as, %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i ]
  store i32 %i.bh, ptr %3, align 4
  br label %bb.ni

_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread: ; preds = %.preheader.i, %_ZN6icu_7812RegexMatcher10resetStackEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 0, ptr %i.bi, align 8
  %i.bj = sext i32 %1 to i64                      ; 2 uses
  store i64 %i.bj, ptr %.0.i.i, align 8
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 132
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %.preheader1480

.lr.ph:                                           ; preds = %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.g

.preheader1480:                                   ; preds = %bb.g, %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 31 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 27 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 49 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 30 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 20 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %.not1062 = icmp eq i8 %2, 0
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.cj = load ptr, ptr %i.bo, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv
  store i64 0, ptr %i.ck, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load ptr, ptr %i.c, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 132
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %bb.g, label %.preheader1480, !llvm.loop !49

bb.h:                                             ; preds = %.preheader1480, %.critedge1078
  %.0809 = phi ptr [ %.37.ph, %.critedge1078 ], [ %.0.i.i, %.preheader1480 ] ; 221 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0809, i64 8 ; 22 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 13 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8            ; 33 uses
  %i.cu = trunc i64 %i.ct to i32                  ; 4 uses
  %i.cv = and i32 %i.cu, 16777215                 ; 12 uses
  %i.cw = add nsw i64 %i.cr, 1                    ; 12 uses
  store i64 %i.cw, ptr %i.cq, align 8
  %i.cx = lshr i64 %i.ct, 24
  %trunc = trunc i64 %i.cx to i8
  switch i8 %trunc, label %.thread1464.sink.split [
    i8 7, label %.critedge1078
    i8 1, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.q
    i8 6, label %bb.x
    i8 2, label %bb.ad
    i8 8, label %bb.ag
    i8 9, label %bb.ah
    i8 24, label %bb.ai
    i8 54, label %bb.az
    i8 42, label %bb.bf
    i8 55, label %bb.bk
    i8 23, label %bb.bo
    i8 43, label %bb.bq
    i8 30, label %bb.bu
    i8 16, label %bb.bx
    i8 53, label %bb.bz
    i8 22, label %bb.cg
    i8 17, label %bb.cn
    i8 56, label %bb.cr
    i8 57, label %bb.cy
    i8 58, label %bb.dm
    i8 19, label %bb.dv
    i8 20, label %bb.ec
    i8 10, label %bb.ef
    i8 49, label %bb.eo
    i8 11, label %bb.ew
    i8 12, label %bb.fe
    i8 21, label %bb.fl
    i8 27, label %bb.fv
    i8 13, label %bb.gc
    i8 14, label %.thread1464
    i8 15, label %bb.gd
    i8 18, label %bb.gk
    i8 25, label %bb.gs
    i8 28, label %bb.hc
    i8 26, label %bb.hl
    i8 29, label %bb.hp
    i8 32, label %bb.hx
    i8 33, label %bb.hy
    i8 34, label %bb.hz
    i8 41, label %bb.ih
    i8 35, label %bb.ip
    i8 36, label %bb.iq
    i8 37, label %bb.it
    i8 38, label %bb.iu
    i8 39, label %bb.ix
    i8 40, label %bb.je
    i8 44, label %bb.jp
    i8 45, label %bb.jq
    i8 46, label %bb.ki
    i8 47, label %bb.kl
    i8 48, label %bb.ld
end_hunk_0
begin_hunk_1_@_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode:bb.a
  %i.ft = sub nsw i32 %i.fs, %i.fq
  %spec.select.i1129 = call i32 @llvm.smax.i32(i32 %i.ft, i32 0) ; 2 uses
  store i32 %spec.select.i1129, ptr %i.fr, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = zext nneg i32 %spec.select.i1129 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = sext i32 %i.fq to i64
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fz
  br label %.critedge1078

bb.x:                                             ; preds = %bb.h
  %i.gb = and i64 %i.ct, 16777215
  %i.gc = load i32, ptr %3, align 4
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %bb.y, label %.thread1464

bb.y:                                             ; preds = %bb.x
  %i.ge = load ptr, ptr %i.y, align 8             ; 4 uses
  %i.gf = load i32, ptr %i.x, align 8             ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.gf                ; 4 uses
  %i.gj = icmp slt i32 %i.gi, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gl = load i32, ptr %i.gk, align 4
  %.not.i.i.i1130 = icmp slt i32 %i.gl, %i.gi
  %or.cond.i.i.i1131 = select i1 %i.gj, i1 true, i1 %.not.i.i.i1130
  br i1 %or.cond.i.i.i1131, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1137, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1132

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1137: ; preds = %bb.y
  %i.gm = call noundef signext i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i32 noundef %i.gi, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1134, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1138

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1138: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1137
  %.pre.i.i1139 = load i32, ptr %i.gg, align 8    ; 2 uses
  %.pre6.i.i1140 = add nsw i32 %.pre.i.i1139, %i.gf
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1132

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1132: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1138, %bb.y
  %.pre-phi.i.i1133 = phi i32 [ %.pre6.i.i1140, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1138 ], [ %i.gi, %bb.y ]
  %i.go = phi i32 [ %.pre.i.i1139, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1138 ], [ %i.gh, %bb.y ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = sext i32 %i.go to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gr
  store i32 %.pre-phi.i.i1133, ptr %i.gg, align 8
  br label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1134

_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1134: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1132, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1137
  %.0.i.i1135 = phi ptr [ %i.gs, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1132 ], [ null, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1137 ] ; 6 uses
  %i.gt = load i32, ptr %3, align 4
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %bb.z, label %.thread1464.sink.split

bb.z:                                             ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1134
  %i.gv = load i32, ptr %i.x, align 8
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0.i.i1135, i64 %i.gx ; 4 uses
  %i.gz = add nsw i64 %i.gw, 2305843009213693951
  %i.ha = and i64 %i.gz, 2305843009213693951      ; 2 uses
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ha, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.z
  %n.vec = and i64 %i.hb, 4611686018427387900     ; 3 uses
  %i.hc = shl i64 %n.vec, 3                       ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gy, i64 %i.hc
  %i.he = getelementptr i8, ptr %.0.i.i1135, i64 %i.hc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gy, i64 %i.hf ; 2 uses
  %next.gep1690 = getelementptr i8, ptr %.0.i.i1135, i64 %i.hf ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load1691 = load <2 x i64>, ptr %i.hg, align 8
  %i.hh = getelementptr i8, ptr %next.gep1690, i64 16
  store <2 x i64> %wide.load, ptr %next.gep1690, align 8
  store <2 x i64> %wide.load1691, ptr %i.hh, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit1821, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.z, %middle.block
  %.018.i.ph = phi ptr [ %i.gy, %bb.z ], [ %i.hd, %middle.block ]
  %.0.i1136.ph = phi ptr [ %.0.i.i1135, %bb.z ], [ %i.he, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018.i = phi ptr [ %i.hj, %scalar.ph ], [ %.018.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i1136 = phi ptr [ %i.hl, %scalar.ph ], [ %.0.i1136.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.hk = load i64, ptr %.018.i, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i1136, i64 8
  store i64 %i.hk, ptr %.0.i1136, align 8
  %i.hm = icmp eq ptr %i.hj, %.0.i.i1135
  br i1 %i.hm, label %.loopexit1821, label %scalar.ph, !llvm.loop !52

.loopexit1821:                                    ; preds = %scalar.ph, %middle.block
  %i.hn = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.ho = add nsw i32 %i.hn, -1
  store i32 %i.ho, ptr %i.bp, align 8
  %i.hp = icmp slt i32 %i.hn, 2
  br i1 %i.hp, label %bb.aa, label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i

bb.aa:                                            ; preds = %.loopexit1821
  store i32 10000, ptr %i.bp, align 8
  %i.hq = load i32, ptr %i.bq, align 4
  %i.hr = add nsw i32 %i.hq, 1                    ; 3 uses
  store i32 %i.hr, ptr %i.bq, align 4
  %i.hs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ht = load ptr, ptr %i.bs, align 8
  %i.hu = call noundef signext i8 %i.hs(ptr noundef %i.ht, i32 noundef %i.hr) #17, !inline_history !26
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %.sink.split.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ab
  %.pre.i22.i = load i32, ptr %i.bq, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i, %bb.aa
  %i.hw = phi i32 [ %.pre.i22.i, %._crit_edge.i.i ], [ %i.hr, %bb.aa ]
  %i.hx = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 1
  %.not4.i.i = icmp slt i32 %i.hw, %i.hx
  %or.cond.i.i = select i1 %i.hy, i1 true, i1 %.not4.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ac, %bb.ab
  %.sink.i.i = phi i32 [ 66323, %bb.ab ], [ 66322, %bb.ac ]
  store i32 %.sink.i.i, ptr %3, align 4
  br label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i

_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i: ; preds = %.sink.split.i.i, %bb.ac, %.loopexit1821
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.gb, ptr %i.hz, align 8
  br label %.critedge1078

bb.ad:                                            ; preds = %bb.h
  br i1 %.not1062, label %bb.ng, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = load i64, ptr %.0809, align 8
  %i.ib = load i64, ptr %i.bu, align 8
  %.not1063 = icmp eq i64 %i.ia, %i.ib
  br i1 %.not1063, label %bb.ng, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.id = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = sub nsw i32 %i.if, %i.id
  %spec.select.i1141 = call i32 @llvm.smax.i32(i32 %i.ig, i32 0) ; 2 uses
  store i32 %spec.select.i1141, ptr %i.ie, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = zext nneg i32 %spec.select.i1141 to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ij
  %i.il = sext i32 %i.id to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.im
  br label %.critedge1078

bb.ag:                                            ; preds = %bb.h
  %i.io = load i64, ptr %.0809, align 8
  %i.ip = and i64 %i.ct, 16777215
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.0809, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store i64 %i.io, ptr %i.ir, align 8
  br label %.critedge1078

bb.ah:                                            ; preds = %bb.h
  %i.is = getelementptr inbounds nuw i8, ptr %.0809, i64 16
  %i.it = and i64 %i.ct, 16777215
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load i64, ptr %i.iv, align 8
  store i64 %i.iw, ptr %i.iu, align 8
  %i.ix = load i64, ptr %.0809, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i64 %i.ix, ptr %i.iy, align 8
  br label %.critedge1078

bb.ai:                                            ; preds = %bb.h
  %i.iz = load i64, ptr %.0809, align 8           ; 9 uses
  %i.ja = load i64, ptr %i.cc, align 8            ; 4 uses
  %i.jb = add nsw i64 %i.ja, -2                   ; 2 uses
  %i.jc = icmp slt i64 %i.iz, %i.jb
  br i1 %i.jc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jd = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.je = load i32, ptr %i.x, align 8             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = sub nsw i32 %i.jg, %i.je
  %spec.select.i1142 = call i32 @llvm.smax.i32(i32 %i.jh, i32 0) ; 2 uses
  store i32 %spec.select.i1142, ptr %i.jf, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = zext nneg i32 %spec.select.i1142 to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = sext i32 %i.je to i64
  %i.jn = sub nsw i64 0, %i.jm
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.jn
  br label %.critedge1078

bb.ak:                                            ; preds = %bb.ai
  %.not1059 = icmp slt i64 %i.iz, %i.ja
  br i1 %.not1059, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

bb.am:                                            ; preds = %bb.ak
  %i.jp = add nsw i64 %i.ja, -1
  %i.jq = icmp eq i64 %i.iz, %i.jp
  br i1 %i.jq, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.iz ; 3 uses
  %i.js = load i16, ptr %i.jr, align 2
  %i.jt = zext i16 %i.js to i32                   ; 9 uses
  %i.ju = and i32 %i.jt, 63488
  %i.jv = icmp eq i32 %i.ju, 55296
  br i1 %i.jv, label %7, label %bb.ar

7:                                                ; preds = %bb.an
  %8 = and i32 %i.jt, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = add nsw i64 %i.iz, 1                      ; 2 uses
  %.not1060 = icmp eq i64 %11, %i.ja
  br i1 %.not1060, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %10
  %12 = getelementptr inbounds [2 x i8], ptr %i.u, i64 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32                       ; 2 uses
  %15 = and i32 %14, 64512
  %16 = icmp eq i32 %15, 56320
  br i1 %16, label %17, label %bb.ar

17:                                               ; preds = %bb.ao
  %18 = shl nuw nsw i32 %i.jt, 10
  %19 = add nsw i32 %18, -56613888
  %20 = add nuw nsw i32 %19, %14
  br label %bb.ar

21:                                               ; preds = %7
  %22 = load i64, ptr %i.ci, align 8
  %23 = icmp sgt i64 %i.iz, %22
  br i1 %23, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %21
  %i.jw = getelementptr i8, ptr %i.jr, i64 -2
  %i.jx = load i16, ptr %i.jw, align 2
  %i.jy = zext i16 %i.jx to i32                   ; 2 uses
  %i.jz = and i32 %i.jy, 64512
  %i.ka = icmp eq i32 %i.jz, 55296
  br i1 %i.ka, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kb = shl nuw nsw i32 %i.jy, 10
  %i.kc = add nuw nsw i32 %i.jt, -56613888
  %i.kd = add nsw i32 %i.kc, %i.kb
  br label %bb.ar

bb.ar:                                            ; preds = %17, %bb.ao, %10, %bb.aq, %bb.ap, %21, %bb.an
  %.1840 = phi i32 [ %i.jt, %bb.an ], [ %20, %17 ], [ %i.jt, %bb.ao ], [ %i.jt, %10 ], [ %i.kd, %bb.aq ], [ %i.jt, %bb.ap ], [ %i.jt, %21 ] ; 2 uses
  %i.ke = call fastcc noundef signext i8 @_ZN6icu_78L16isLineTerminatorEi(i32 noundef %.1840)
  %.not1061 = icmp eq i8 %i.ke, 0
  br i1 %.not1061, label %.thread1379, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kf = icmp eq i32 %.1840, 10
  %i.kg = load i64, ptr %i.ci, align 8
  %i.kh = icmp sgt i64 %i.iz, %i.kg
  %or.cond1471 = select i1 %i.kf, i1 %i.kh, i1 false
  br i1 %or.cond1471, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ki = getelementptr i8, ptr %i.jr, i64 -2
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = icmp eq i16 %i.kj, 13
  br i1 %i.kk, label %.thread1379, label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

bb.av:                                            ; preds = %bb.am
  %i.kl = icmp eq i64 %i.iz, %i.jb
  br i1 %i.kl, label %bb.aw, label %.thread1379

bb.aw:                                            ; preds = %bb.av
  %i.km = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.iz ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2
  %i.ko = icmp eq i16 %i.kn, 13
  br i1 %i.ko, label %bb.ax, label %.thread1379

bb.ax:                                            ; preds = %bb.aw
  %i.kp = getelementptr i8, ptr %i.km, i64 2
  %i.kq = load i16, ptr %i.kp, align 2
  %i.kr = icmp eq i16 %i.kq, 10
  br i1 %i.kr, label %bb.ay, label %.thread1379

bb.ay:                                            ; preds = %bb.ax
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

.thread1379:                                      ; preds = %bb.ar, %bb.at, %bb.av, %bb.aw, %bb.ax
  %i.ks = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.kt = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8
  %i.kw = sub nsw i32 %i.kv, %i.kt
  %spec.select.i1143 = call i32 @llvm.smax.i32(i32 %i.kw, i32 0) ; 2 uses
  store i32 %spec.select.i1143, ptr %i.ku, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = zext nneg i32 %spec.select.i1143 to i64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = sext i32 %i.kt to i64
  %i.lc = sub nsw i64 0, %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.lc
  br label %.critedge1078

bb.az:                                            ; preds = %bb.h
  %i.le = load i64, ptr %.0809, align 8           ; 3 uses
  %i.lf = load i64, ptr %i.cc, align 8
  %i.lg = add nsw i64 %i.lf, -1                   ; 2 uses
  %.not1058 = icmp slt i64 %i.le, %i.lg
  br i1 %.not1058, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lh = icmp eq i64 %i.le, %i.lg
  br i1 %i.lh, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.li = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.le
  %i.lj = load i16, ptr %i.li, align 2
  %i.lk = icmp eq i16 %i.lj, 10
  br i1 %i.lk, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

bb.bd:                                            ; preds = %bb.ba
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

bb.be:                                            ; preds = %bb.bb, %bb.az
  %i.ll = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.lm = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 8
  %i.lp = sub nsw i32 %i.lo, %i.lm
  %spec.select.i1144 = call i32 @llvm.smax.i32(i32 %i.lp, i32 0) ; 2 uses
  store i32 %spec.select.i1144, ptr %i.ln, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = zext nneg i32 %spec.select.i1144 to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = sext i32 %i.lm to i64
  %i.lv = sub nsw i64 0, %i.lu
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lv
  br label %.critedge1078

bb.bf:                                            ; preds = %bb.h
  %i.lx = load i64, ptr %.0809, align 8           ; 3 uses
  %i.ly = load i64, ptr %i.cc, align 8
  %.not1056 = icmp slt i64 %i.lx, %i.ly
  br i1 %.not1056, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

bb.bh:                                            ; preds = %bb.bf
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.lx ; 2 uses
  %i.ma = load i16, ptr %i.lz, align 2            ; 3 uses
  %i.mb = and i16 %i.ma, -8368
  %.not.i1145 = icmp eq i16 %i.mb, 0
  br i1 %.not.i1145, label %bb.bi, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread

bb.bi:                                            ; preds = %bb.bh
  switch i16 %i.ma, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread [
    i16 8232, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
    i16 133, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
    i16 13, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
    i16 12, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
    i16 11, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
    i16 10, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
    i16 8233, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
  ]

_ZN6icu_78L16isLineTerminatorEi.exit.thread1383:  ; preds = %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi
  %i.mc = icmp eq i16 %i.ma, 10
  %i.md = load i64, ptr %i.ci, align 8
  %i.me = icmp sgt i64 %i.lx, %i.md
  %or.cond1474 = select i1 %i.mc, i1 %i.me, i1 false
  br i1 %or.cond1474, label %bb.bj, label %.critedge1078

bb.bj:                                            ; preds = %_ZN6icu_78L16isLineTerminatorEi.exit.thread1383
  %i.mf = getelementptr i8, ptr %i.lz, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = icmp eq i16 %i.mg, 13
  br i1 %i.mh, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread, label %.critedge1078

_ZN6icu_78L16isLineTerminatorEi.exit.thread:      ; preds = %bb.bi, %bb.bh, %bb.bj
  %i.mi = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.mj = load i32, ptr %i.x, align 8             ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 8
  %i.mm = sub nsw i32 %i.ml, %i.mj
  %spec.select.i1147 = call i32 @llvm.smax.i32(i32 %i.mm, i32 0) ; 2 uses
  store i32 %spec.select.i1147, ptr %i.mk, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = zext nneg i32 %spec.select.i1147 to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = sext i32 %i.mj to i64
  %i.ms = sub nsw i64 0, %i.mr
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.ms
  br label %.critedge1078

bb.bk:                                            ; preds = %bb.h
  %i.mu = load i64, ptr %.0809, align 8           ; 2 uses
  %i.mv = load i64, ptr %i.cc, align 8
  %.not1054 = icmp slt i64 %i.mu, %i.mv
  br i1 %.not1054, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1078

bb.bm:                                            ; preds = %bb.bk
  %i.mw = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.mu
  %i.mx = load i16, ptr %i.mw, align 2
  %.not1055 = icmp eq i16 %i.mx, 10
  br i1 %.not1055, label %.critedge1078, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.my = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.mz = load i32, ptr %i.x, align 8             ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 8
  %i.nc = sub nsw i32 %i.nb, %i.mz
  %spec.select.i1148 = call i32 @llvm.smax.i32(i32 %i.nc, i32 0) ; 2 uses
  store i32 %spec.select.i1148, ptr %i.na, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = zext nneg i32 %spec.select.i1148 to i64
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nf
  %i.nh = sext i32 %i.mz to i64
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.ni
  br label %.critedge1078

bb.bo:                                            ; preds = %bb.h
  %i.nk = load i64, ptr %.0809, align 8
  %i.nl = load i64, ptr %i.ci, align 8
end_hunk_1
