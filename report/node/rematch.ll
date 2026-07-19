inline.NumInlined: 355
inline.NumDeleted: 28
begin_hunk_0_@_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode:bb.a
  %.391349 = phi ptr [ %.39.ph, %.thread1345 ], [ %.0724, %bb.zh ]
  %i.dvp = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.391349, ptr %i.dvp, align 8
  br label %bb.zj

bb.zj:                                            ; preds = %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1578, %bb.zi, %bb.a
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
  br i1 %i.b, label %bb.b, label %bb.oj

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
  %i.u = load ptr, ptr %i.t, align 8              ; 65 uses
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
  br i1 %i.at, label %.preheader.i, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1610

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
  br i1 %i.bg, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1610

_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1610: ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i, %_ZN6icu_7812RegexMatcher10resetStackEv.exit
  %i.bh = phi i32 [ %.pre, %_ZN6icu_7812RegexMatcher10resetStackEv.exit ], [ %i.as, %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i ]
  store i32 %i.bh, ptr %3, align 4
  br label %bb.oj

_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread: ; preds = %.preheader.i, %_ZN6icu_7812RegexMatcher10resetStackEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 0, ptr %i.bi, align 8
  %i.bj = sext i32 %1 to i64                      ; 2 uses
  store i64 %i.bj, ptr %.0.i.i, align 8
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 132
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %.preheader1428

.lr.ph:                                           ; preds = %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.g

.preheader1428:                                   ; preds = %bb.g, %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 31 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 27 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 50 uses
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
  br i1 %i.cp, label %bb.g, label %.preheader1428, !llvm.loop !49

bb.h:                                             ; preds = %.preheader1428, %.critedge1077
  %.0809 = phi ptr [ %.37.ph, %.critedge1077 ], [ %.0.i.i, %.preheader1428 ] ; 231 uses
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
  switch i8 %trunc, label %.thread1418.sink.split [
    i8 7, label %.critedge1077
    i8 1, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.r
    i8 6, label %bb.y
    i8 2, label %bb.af
    i8 8, label %bb.ai
    i8 9, label %bb.aj
    i8 24, label %bb.ak
    i8 54, label %bb.bc
    i8 42, label %bb.bi
    i8 55, label %bb.bo
    i8 23, label %bb.bs
    i8 43, label %bb.bu
    i8 30, label %bb.by
    i8 16, label %bb.cb
    i8 53, label %bb.cd
    i8 22, label %bb.ck
    i8 17, label %bb.cs
    i8 56, label %bb.cw
    i8 57, label %bb.de
    i8 58, label %bb.du
    i8 19, label %bb.ee
    i8 20, label %bb.el
    i8 10, label %bb.eo
    i8 49, label %bb.ey
    i8 11, label %bb.fh
    i8 12, label %bb.fq
    i8 21, label %bb.fy
    i8 27, label %bb.gl
    i8 13, label %bb.gt
    i8 14, label %.thread1418
    i8 15, label %bb.gu
    i8 18, label %bb.hc
    i8 25, label %bb.hl
    i8 28, label %bb.hw
    i8 26, label %bb.if
    i8 29, label %bb.ij
    i8 32, label %bb.ir
    i8 33, label %bb.is
    i8 34, label %bb.it
    i8 41, label %bb.jc
    i8 35, label %bb.jk
    i8 36, label %bb.jl
    i8 37, label %bb.jo
    i8 38, label %bb.jp
    i8 39, label %bb.js
    i8 40, label %bb.ka
    i8 44, label %bb.kl
    i8 45, label %bb.km
    i8 46, label %bb.lf
    i8 47, label %bb.li
    i8 48, label %bb.mb
end_hunk_0
begin_hunk_1_@_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode:bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = sub nsw i32 %i.fs, %i.fq
  %spec.select.i1106 = call i32 @llvm.smax.i32(i32 %i.ft, i32 0) ; 2 uses
  store i32 %spec.select.i1106, ptr %i.fr, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = zext nneg i32 %spec.select.i1106 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = sext i32 %i.fq to i64
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fz
  br label %.critedge1077

bb.y:                                             ; preds = %bb.h
  %i.gb = and i64 %i.ct, 16777215
  %i.gc = load i32, ptr %3, align 4
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %bb.z, label %.thread1418

bb.z:                                             ; preds = %bb.y
  %i.ge = load ptr, ptr %i.y, align 8             ; 4 uses
  %i.gf = load i32, ptr %i.x, align 8             ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.gf                ; 4 uses
  %i.gj = icmp slt i32 %i.gi, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gl = load i32, ptr %i.gk, align 4
  %.not.i.i.i1107 = icmp slt i32 %i.gl, %i.gi
  %or.cond.i.i.i1108 = select i1 %i.gj, i1 true, i1 %.not.i.i.i1107
  br i1 %or.cond.i.i.i1108, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1114, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1109

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1114: ; preds = %bb.z
  %i.gm = call noundef signext i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i32 noundef %i.gi, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1111, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1115

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1115: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1114
  %.pre.i.i1116 = load i32, ptr %i.gg, align 8    ; 2 uses
  %.pre6.i.i1117 = add nsw i32 %.pre.i.i1116, %i.gf
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1109

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1109: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1115, %bb.z
  %.pre-phi.i.i1110 = phi i32 [ %.pre6.i.i1117, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1115 ], [ %i.gi, %bb.z ]
  %i.go = phi i32 [ %.pre.i.i1116, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1115 ], [ %i.gh, %bb.z ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = sext i32 %i.go to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gr
  store i32 %.pre-phi.i.i1110, ptr %i.gg, align 8
  br label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1111

_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1111: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1109, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1114
  %.0.i.i1112 = phi ptr [ %i.gs, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1109 ], [ null, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1114 ] ; 6 uses
  %i.gt = load i32, ptr %3, align 4
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %bb.aa, label %.thread1418.sink.split

bb.aa:                                            ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1111
  %i.gv = load i32, ptr %i.x, align 8
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0.i.i1112, i64 %i.gx ; 4 uses
  %i.gz = add nsw i64 %i.gw, 2305843009213693951
  %i.ha = and i64 %i.gz, 2305843009213693951      ; 2 uses
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ha, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.aa
  %n.vec = and i64 %i.hb, 4611686018427387900     ; 3 uses
  %i.hc = shl i64 %n.vec, 3                       ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gy, i64 %i.hc
  %i.he = getelementptr i8, ptr %.0.i.i1112, i64 %i.hc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gy, i64 %i.hf ; 2 uses
  %next.gep1649 = getelementptr i8, ptr %.0.i.i1112, i64 %i.hf ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load1650 = load <2 x i64>, ptr %i.hg, align 8
  %i.hh = getelementptr i8, ptr %next.gep1649, i64 16
  store <2 x i64> %wide.load, ptr %next.gep1649, align 8
  store <2 x i64> %wide.load1650, ptr %i.hh, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit1780, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.aa, %middle.block
  %.018.i.ph = phi ptr [ %i.gy, %bb.aa ], [ %i.hd, %middle.block ]
  %.0.i1113.ph = phi ptr [ %.0.i.i1112, %bb.aa ], [ %i.he, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018.i = phi ptr [ %i.hj, %scalar.ph ], [ %.018.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i1113 = phi ptr [ %i.hl, %scalar.ph ], [ %.0.i1113.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.hk = load i64, ptr %.018.i, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i1113, i64 8
  store i64 %i.hk, ptr %.0.i1113, align 8
  %i.hm = icmp eq ptr %i.hj, %.0.i.i1112
  br i1 %i.hm, label %.loopexit1780, label %scalar.ph, !llvm.loop !52

.loopexit1780:                                    ; preds = %scalar.ph, %middle.block
  %i.hn = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.ho = add nsw i32 %i.hn, -1
  store i32 %i.ho, ptr %i.bp, align 8
  %i.hp = icmp slt i32 %i.hn, 2
  br i1 %i.hp, label %bb.ab, label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i

bb.ab:                                            ; preds = %.loopexit1780
  store i32 10000, ptr %i.bp, align 8
  %i.hq = load i32, ptr %i.bq, align 4
  %i.hr = add nsw i32 %i.hq, 1                    ; 2 uses
  store i32 %i.hr, ptr %i.bq, align 4
  %i.hs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ht = load ptr, ptr %i.bs, align 8
  %i.hu = call noundef signext i8 %i.hs(ptr noundef %i.ht, i32 noundef %i.hr) #17, !inline_history !26
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %.sink.split.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hw = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.ae, label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.hy = load i32, ptr %i.bq, align 4
  %.not4.i.i = icmp slt i32 %i.hy, %i.hw
  br i1 %.not4.i.i, label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.ac
  %.sink.i.i = phi i32 [ 66323, %bb.ac ], [ 66322, %bb.ae ]
  store i32 %.sink.i.i, ptr %3, align 4
  br label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i

_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i: ; preds = %.sink.split.i.i, %bb.ae, %bb.ad, %.loopexit1780
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.gb, ptr %i.hz, align 8
  br label %.critedge1077

bb.af:                                            ; preds = %bb.h
  br i1 %.not1062, label %bb.oh, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ia = load i64, ptr %.0809, align 8
  %i.ib = load i64, ptr %i.bu, align 8
  %.not1063 = icmp eq i64 %i.ia, %i.ib
  br i1 %.not1063, label %bb.oh, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.id = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = sub nsw i32 %i.if, %i.id
  %spec.select.i1118 = call i32 @llvm.smax.i32(i32 %i.ig, i32 0) ; 2 uses
  store i32 %spec.select.i1118, ptr %i.ie, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = zext nneg i32 %spec.select.i1118 to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ij
  %i.il = sext i32 %i.id to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.im
  br label %.critedge1077

bb.ai:                                            ; preds = %bb.h
  %i.io = load i64, ptr %.0809, align 8
  %i.ip = and i64 %i.ct, 16777215
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.0809, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store i64 %i.io, ptr %i.ir, align 8
  br label %.critedge1077

bb.aj:                                            ; preds = %bb.h
  %i.is = getelementptr inbounds nuw i8, ptr %.0809, i64 16
  %i.it = and i64 %i.ct, 16777215
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load i64, ptr %i.iv, align 8
  store i64 %i.iw, ptr %i.iu, align 8
  %i.ix = load i64, ptr %.0809, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i64 %i.ix, ptr %i.iy, align 8
  br label %.critedge1077

bb.ak:                                            ; preds = %bb.h
  %i.iz = load i64, ptr %.0809, align 8           ; 8 uses
  %i.ja = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.jb = add nsw i64 %i.ja, -2                   ; 2 uses
  %i.jc = icmp slt i64 %i.iz, %i.jb
  br i1 %i.jc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.je = load i32, ptr %i.x, align 8             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = sub nsw i32 %i.jg, %i.je
  %spec.select.i1119 = call i32 @llvm.smax.i32(i32 %i.jh, i32 0) ; 2 uses
  store i32 %spec.select.i1119, ptr %i.jf, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = zext nneg i32 %spec.select.i1119 to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = sext i32 %i.je to i64
  %i.jn = sub nsw i64 0, %i.jm
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.jn
  br label %.critedge1077

bb.am:                                            ; preds = %bb.ak
  %.not1059 = icmp slt i64 %i.iz, %i.ja
  br i1 %.not1059, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.ao:                                            ; preds = %bb.am
  %i.jp = add nsw i64 %i.ja, -1
  %.not1060 = icmp eq i64 %i.iz, %i.jp
  br i1 %.not1060, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.jq = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.iz ; 3 uses
  %i.jr = load i16, ptr %i.jq, align 2
  %i.js = zext i16 %i.jr to i32                   ; 5 uses
  %i.jt = and i32 %i.js, 64512
  %i.ju = icmp eq i32 %i.jt, 56320
  br i1 %i.ju, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.jv = load i64, ptr %i.ci, align 8
  %i.jw = icmp sgt i64 %i.iz, %i.jv
  br i1 %i.jw, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jx = getelementptr i8, ptr %i.jq, i64 -2
  %i.jy = load i16, ptr %i.jx, align 2
  %i.jz = zext i16 %i.jy to i32                   ; 2 uses
  %i.ka = and i32 %i.jz, 64512
  %i.kb = icmp eq i32 %i.ka, 55296
  br i1 %i.kb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kc = shl nuw nsw i32 %i.jz, 10
  %i.kd = add nuw nsw i32 %i.js, -56613888
  %i.ke = add nsw i32 %i.kd, %i.kc
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1840 = phi i32 [ %i.js, %bb.ap ], [ %i.js, %bb.ar ], [ %i.js, %bb.aq ], [ %i.ke, %bb.as ] ; 2 uses
  %i.kf = call fastcc noundef signext i8 @_ZN6icu_78L16isLineTerminatorEi(i32 noundef %.1840)
  %.not1061 = icmp eq i8 %i.kf, 0
  br i1 %.not1061, label %.thread1332, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kg = icmp eq i32 %.1840, 10
  br i1 %i.kg, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kh = load i64, ptr %i.ci, align 8
  %i.ki = icmp sgt i64 %i.iz, %i.kh
  br i1 %i.ki, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kj = getelementptr i8, ptr %i.jq, i64 -2
  %i.kk = load i16, ptr %i.kj, align 2
  %i.kl = icmp eq i16 %i.kk, 13
  br i1 %i.kl, label %.thread1332, label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.ay:                                            ; preds = %bb.ao
  %i.km = icmp eq i64 %i.iz, %i.jb
  br i1 %i.km, label %bb.az, label %.thread1332

bb.az:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.iz ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 2
  %i.kp = icmp eq i16 %i.ko, 13
  br i1 %i.kp, label %bb.ba, label %.thread1332

bb.ba:                                            ; preds = %bb.az
  %i.kq = getelementptr i8, ptr %i.kn, i64 2
  %i.kr = load i16, ptr %i.kq, align 2
  %i.ks = icmp eq i16 %i.kr, 10
  br i1 %i.ks, label %bb.bb, label %.thread1332

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

.thread1332:                                      ; preds = %bb.at, %bb.aw, %bb.ay, %bb.az, %bb.ba
  %i.kt = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ku = load i32, ptr %i.x, align 8             ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 8
  %i.kx = sub nsw i32 %i.kw, %i.ku
  %spec.select.i1120 = call i32 @llvm.smax.i32(i32 %i.kx, i32 0) ; 2 uses
  store i32 %spec.select.i1120, ptr %i.kv, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = zext nneg i32 %spec.select.i1120 to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.la
  %i.lc = sext i32 %i.ku to i64
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.ld
  br label %.critedge1077

bb.bc:                                            ; preds = %bb.h
  %i.lf = load i64, ptr %.0809, align 8           ; 3 uses
  %i.lg = load i64, ptr %i.cc, align 8
  %i.lh = add nsw i64 %i.lg, -1                   ; 2 uses
  %.not1058 = icmp slt i64 %i.lf, %i.lh
  br i1 %.not1058, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.li = icmp eq i64 %i.lf, %i.lh
  br i1 %i.li, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.lf
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = icmp eq i16 %i.lk, 10
  br i1 %i.ll, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bg:                                            ; preds = %bb.bd
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bh:                                            ; preds = %bb.be, %bb.bc
  %i.lm = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ln = load i32, ptr %i.x, align 8             ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 8
  %i.lq = sub nsw i32 %i.lp, %i.ln
  %spec.select.i1121 = call i32 @llvm.smax.i32(i32 %i.lq, i32 0) ; 2 uses
  store i32 %spec.select.i1121, ptr %i.lo, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = zext nneg i32 %spec.select.i1121 to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = sext i32 %i.ln to i64
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.lw
  br label %.critedge1077

bb.bi:                                            ; preds = %bb.h
  %i.ly = load i64, ptr %.0809, align 8           ; 3 uses
  %i.lz = load i64, ptr %i.cc, align 8
  %.not1056 = icmp slt i64 %i.ly, %i.lz
  br i1 %.not1056, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bk:                                            ; preds = %bb.bi
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.ly ; 2 uses
  %i.mb = load i16, ptr %i.ma, align 2            ; 2 uses
  %i.mc = and i16 %i.mb, -8368
  %.not.i1122 = icmp eq i16 %i.mc, 0
  br i1 %.not.i1122, label %bb.bl, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread

bb.bl:                                            ; preds = %bb.bk
  switch i16 %i.mb, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread [
    i16 10, label %bb.bm
    i16 11, label %.critedge1077
    i16 12, label %.critedge1077
    i16 13, label %.critedge1077
    i16 133, label %.critedge1077
    i16 8232, label %.critedge1077
    i16 8233, label %.critedge1077
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.md = load i64, ptr %i.ci, align 8
  %i.me = icmp sgt i64 %i.ly, %i.md
  br i1 %i.me, label %bb.bn, label %.critedge1077

bb.bn:                                            ; preds = %bb.bm
  %i.mf = getelementptr i8, ptr %i.ma, i64 -2
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = icmp eq i16 %i.mg, 13
  br i1 %i.mh, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread, label %.critedge1077

_ZN6icu_78L16isLineTerminatorEi.exit.thread:      ; preds = %bb.bl, %bb.bk, %bb.bn
  %i.mi = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.mj = load i32, ptr %i.x, align 8             ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 8
  %i.mm = sub nsw i32 %i.ml, %i.mj
  %spec.select.i1124 = call i32 @llvm.smax.i32(i32 %i.mm, i32 0) ; 2 uses
  store i32 %spec.select.i1124, ptr %i.mk, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = zext nneg i32 %spec.select.i1124 to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = sext i32 %i.mj to i64
  %i.ms = sub nsw i64 0, %i.mr
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.ms
  br label %.critedge1077

bb.bo:                                            ; preds = %bb.h
  %i.mu = load i64, ptr %.0809, align 8           ; 2 uses
  %i.mv = load i64, ptr %i.cc, align 8
  %.not1054 = icmp slt i64 %i.mu, %i.mv
  br i1 %.not1054, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bq:                                            ; preds = %bb.bo
  %i.mw = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.mu
  %i.mx = load i16, ptr %i.mw, align 2
  %.not1055 = icmp eq i16 %i.mx, 10
  br i1 %.not1055, label %.critedge1077, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.my = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.mz = load i32, ptr %i.x, align 8             ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 8
  %i.nc = sub nsw i32 %i.nb, %i.mz
  %spec.select.i1125 = call i32 @llvm.smax.i32(i32 %i.nc, i32 0) ; 2 uses
  store i32 %spec.select.i1125, ptr %i.na, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = zext nneg i32 %spec.select.i1125 to i64
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nf
  %i.nh = sext i32 %i.mz to i64
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.ni
  br label %.critedge1077

bb.bs:                                            ; preds = %bb.h
  %i.nk = load i64, ptr %.0809, align 8
  %i.nl = load i64, ptr %i.ci, align 8
  %.not1053 = icmp eq i64 %i.nk, %i.nl
  br i1 %.not1053, label %.critedge1077, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nm = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.nn = load i32, ptr %i.x, align 8             ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8
  %i.nq = sub nsw i32 %i.np, %i.nn
  %spec.select.i1126 = call i32 @llvm.smax.i32(i32 %i.nq, i32 0) ; 2 uses
  store i32 %spec.select.i1126, ptr %i.no, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = zext nneg i32 %spec.select.i1126 to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nt
  %i.nv = sext i32 %i.nn to i64
  %i.nw = sub nsw i64 0, %i.nv
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nu, i64 %i.nw
  br label %.critedge1077

bb.bu:                                            ; preds = %bb.h
  %i.ny = load i64, ptr %.0809, align 8           ; 3 uses
  %i.nz = load i64, ptr %i.ci, align 8
  %i.oa = icmp eq i64 %i.ny, %i.nz
  br i1 %i.oa, label %.critedge1077, label %bb.bv
end_hunk_1
