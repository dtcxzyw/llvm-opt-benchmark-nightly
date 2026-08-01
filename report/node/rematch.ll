inline.NumInlined: 355
inline.NumDeleted: 28
begin_hunk_0_@_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode:bb.a
  %.391345 = phi ptr [ %.39.ph, %.thread1341 ], [ %.0724, %bb.zh ]
  %i.dvp = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.391345, ptr %i.dvp, align 8
  br label %bb.zj

bb.zj:                                            ; preds = %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1574, %bb.zi, %bb.a
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
  br i1 %i.b, label %bb.b, label %bb.oi

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
  %i.u = load ptr, ptr %i.t, align 8              ; 64 uses
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
  br i1 %i.at, label %.preheader.i, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1608

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
  br i1 %i.bg, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread, label %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1608

_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread1608: ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i, %_ZN6icu_7812RegexMatcher10resetStackEv.exit
  %i.bh = phi i32 [ %.pre, %_ZN6icu_7812RegexMatcher10resetStackEv.exit ], [ %i.as, %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i ]
  store i32 %i.bh, ptr %3, align 4
  br label %bb.oi

_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread: ; preds = %.preheader.i, %_ZN6icu_7812RegexMatcher10resetStackEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 0, ptr %i.bi, align 8
  %i.bj = sext i32 %1 to i64                      ; 2 uses
  store i64 %i.bj, ptr %.0.i.i, align 8
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 132
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %.preheader1425

.lr.ph:                                           ; preds = %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.g

.preheader1425:                                   ; preds = %bb.g, %_ZN6icu_7812RegexMatcher10resetStackEv.exit.thread
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
  br i1 %i.cp, label %bb.g, label %.preheader1425, !llvm.loop !49

bb.h:                                             ; preds = %.preheader1425, %.critedge1077
  %.0809 = phi ptr [ %.37.ph, %.critedge1077 ], [ %.0.i.i, %.preheader1425 ] ; 231 uses
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
  switch i8 %trunc, label %.thread1415.sink.split [
    i8 7, label %.critedge1077
    i8 1, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.r
    i8 6, label %bb.y
    i8 2, label %bb.af
    i8 8, label %bb.ai
    i8 9, label %bb.aj
    i8 24, label %bb.ak
    i8 54, label %bb.bb
    i8 42, label %bb.bh
    i8 55, label %bb.bn
    i8 23, label %bb.br
    i8 43, label %bb.bt
    i8 30, label %bb.bx
    i8 16, label %bb.ca
    i8 53, label %bb.cc
    i8 22, label %bb.cj
    i8 17, label %bb.cr
    i8 56, label %bb.cv
    i8 57, label %bb.dd
    i8 58, label %bb.dt
    i8 19, label %bb.ed
    i8 20, label %bb.ek
    i8 10, label %bb.en
    i8 49, label %bb.ex
    i8 11, label %bb.fg
    i8 12, label %bb.fp
    i8 21, label %bb.fx
    i8 27, label %bb.gk
    i8 13, label %bb.gs
    i8 14, label %.thread1415
    i8 15, label %bb.gt
    i8 18, label %bb.hb
    i8 25, label %bb.hk
    i8 28, label %bb.hv
    i8 26, label %bb.ie
    i8 29, label %bb.ii
    i8 32, label %bb.iq
    i8 33, label %bb.ir
    i8 34, label %bb.is
    i8 41, label %bb.jb
    i8 35, label %bb.jj
    i8 36, label %bb.jk
    i8 37, label %bb.jn
    i8 38, label %bb.jo
    i8 39, label %bb.jr
    i8 40, label %bb.jz
    i8 44, label %bb.kk
    i8 45, label %bb.kl
    i8 46, label %bb.le
    i8 47, label %bb.lh
    i8 48, label %bb.ma
end_hunk_0
begin_hunk_1_@_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode:bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = sub nsw i32 %i.fs, %i.fq
  %spec.select.i1103 = call i32 @llvm.smax.i32(i32 %i.ft, i32 0) ; 2 uses
  store i32 %spec.select.i1103, ptr %i.fr, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = zext nneg i32 %spec.select.i1103 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = sext i32 %i.fq to i64
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fz
  br label %.critedge1077

bb.y:                                             ; preds = %bb.h
  %i.gb = and i64 %i.ct, 16777215
  %i.gc = load i32, ptr %3, align 4
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %bb.z, label %.thread1415

bb.z:                                             ; preds = %bb.y
  %i.ge = load ptr, ptr %i.y, align 8             ; 4 uses
  %i.gf = load i32, ptr %i.x, align 8             ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.gf                ; 4 uses
  %i.gj = icmp slt i32 %i.gi, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gl = load i32, ptr %i.gk, align 4
  %.not.i.i.i1104 = icmp slt i32 %i.gl, %i.gi
  %or.cond.i.i.i1105 = select i1 %i.gj, i1 true, i1 %.not.i.i.i1104
  br i1 %or.cond.i.i.i1105, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1111, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1106

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1111: ; preds = %bb.z
  %i.gm = call noundef signext i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i32 noundef %i.gi, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1108, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1112

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1112: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1111
  %.pre.i.i1113 = load i32, ptr %i.gg, align 8    ; 2 uses
  %.pre6.i.i1114 = add nsw i32 %.pre.i.i1113, %i.gf
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1106

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1106: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1112, %bb.z
  %.pre-phi.i.i1107 = phi i32 [ %.pre6.i.i1114, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1112 ], [ %i.gi, %bb.z ]
  %i.go = phi i32 [ %.pre.i.i1113, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i1112 ], [ %i.gh, %bb.z ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = sext i32 %i.go to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gr
  store i32 %.pre-phi.i.i1107, ptr %i.gg, align 8
  br label %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1108

_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1108: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1106, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1111
  %.0.i.i1109 = phi ptr [ %i.gs, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i1106 ], [ null, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i1111 ] ; 6 uses
  %i.gt = load i32, ptr %3, align 4
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %bb.aa, label %.thread1415.sink.split

bb.aa:                                            ; preds = %_ZN6icu_789UVector6412reserveBlockEiR10UErrorCode.exit.i1108
  %i.gv = load i32, ptr %i.x, align 8
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0.i.i1109, i64 %i.gx ; 4 uses
  %i.gz = add nsw i64 %i.gw, 2305843009213693951
  %i.ha = and i64 %i.gz, 2305843009213693951      ; 2 uses
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ha, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.aa
  %n.vec = and i64 %i.hb, 4611686018427387900     ; 3 uses
  %i.hc = shl i64 %n.vec, 3                       ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gy, i64 %i.hc
  %i.he = getelementptr i8, ptr %.0.i.i1109, i64 %i.hc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gy, i64 %i.hf ; 2 uses
  %next.gep1647 = getelementptr i8, ptr %.0.i.i1109, i64 %i.hf ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load1648 = load <2 x i64>, ptr %i.hg, align 8
  %i.hh = getelementptr i8, ptr %next.gep1647, i64 16
  store <2 x i64> %wide.load, ptr %next.gep1647, align 8
  store <2 x i64> %wide.load1648, ptr %i.hh, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit1778.a, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.aa, %middle.block
  %.018.i.ph = phi ptr [ %i.gy, %bb.aa ], [ %i.hd, %middle.block ]
  %.0.i1110.ph = phi ptr [ %.0.i.i1109, %bb.aa ], [ %i.he, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018.i = phi ptr [ %i.hj, %scalar.ph ], [ %.018.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i1110 = phi ptr [ %i.hl, %scalar.ph ], [ %.0.i1110.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.hk = load i64, ptr %.018.i, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 8
  store i64 %i.hk, ptr %.0.i1110, align 8
  %i.hm = icmp eq ptr %i.hj, %.0.i.i1109
  br i1 %i.hm, label %.loopexit1778.a, label %scalar.ph, !llvm.loop !52

.loopexit1778.a:                                  ; preds = %scalar.ph, %middle.block
  %i.hn = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.ho = add nsw i32 %i.hn, -1
  store i32 %i.ho, ptr %i.bp, align 8
  %i.hp = icmp slt i32 %i.hn, 2
  br i1 %i.hp, label %bb.ab, label %_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i

bb.ab:                                            ; preds = %.loopexit1778.a
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

_ZN6icu_7812RegexMatcher13IncrementTimeER10UErrorCode.exit.i: ; preds = %.sink.split.i.i, %bb.ae, %bb.ad, %.loopexit1778.a
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.gb, ptr %i.hz, align 8
  br label %.critedge1077

bb.af:                                            ; preds = %bb.h
  br i1 %.not1062, label %bb.og, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ia = load i64, ptr %.0809, align 8
  %i.ib = load i64, ptr %i.bu, align 8
  %.not1063 = icmp eq i64 %i.ia, %i.ib
  br i1 %.not1063, label %bb.og, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.id = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = sub nsw i32 %i.if, %i.id
  %spec.select.i1115 = call i32 @llvm.smax.i32(i32 %i.ig, i32 0) ; 2 uses
  store i32 %spec.select.i1115, ptr %i.ie, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = zext nneg i32 %spec.select.i1115 to i64
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
  %i.iz = load i64, ptr %.0809, align 8           ; 6 uses
  %i.ja = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.jb = add nsw i64 %i.ja, -2
  %i.jc = icmp slt i64 %i.iz, %i.jb
  br i1 %i.jc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.je = load i32, ptr %i.x, align 8             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = sub nsw i32 %i.jg, %i.je
  %spec.select.i1116 = call i32 @llvm.smax.i32(i32 %i.jh, i32 0) ; 2 uses
  store i32 %spec.select.i1116, ptr %i.jf, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = zext nneg i32 %spec.select.i1116 to i64
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
  %i.jq = icmp eq i64 %i.iz, %i.jp
  %7 = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.iz ; 4 uses
  %8 = load i16, ptr %7, align 2                  ; 2 uses
  br i1 %i.jq, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.jr = zext i16 %8 to i32                      ; 5 uses
  %i.js = and i32 %i.jr, 64512
  %or.cond1461.not = icmp eq i32 %i.js, 56320
  br i1 %or.cond1461.not, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.jt = load i64, ptr %i.ci, align 8
  %i.ju = icmp sgt i64 %i.iz, %i.jt
  br i1 %i.ju, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jv = getelementptr i8, ptr %7, i64 -2
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = and i32 %i.jx, 64512
  %i.jz = icmp eq i32 %i.jy, 55296
  br i1 %i.jz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ka = shl nuw nsw i32 %i.jx, 10
  %i.kb = add nuw nsw i32 %i.jr, -56613888
  %i.kc = add nsw i32 %i.kb, %i.ka
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1840 = phi i32 [ %i.jr, %bb.ap ], [ %i.jr, %bb.ar ], [ %i.jr, %bb.aq ], [ %i.kc, %bb.as ] ; 2 uses
  %i.kd = call fastcc noundef signext i8 @_ZN6icu_78L16isLineTerminatorEi(i32 noundef %.1840)
  %.not1061 = icmp eq i8 %i.kd, 0
  br i1 %.not1061, label %.thread1329, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ke = icmp eq i32 %.1840, 10
  br i1 %i.ke, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kf = load i64, ptr %i.ci, align 8
  %i.kg = icmp sgt i64 %i.iz, %i.kf
  br i1 %i.kg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kh = getelementptr i8, ptr %7, i64 -2
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = icmp eq i16 %i.ki, 13
  br i1 %i.kj, label %.thread1329, label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.ay:                                            ; preds = %bb.ao
  %i.kk = icmp eq i16 %8, 13
  br i1 %i.kk, label %bb.az, label %.thread1329

bb.az:                                            ; preds = %bb.ay
  %i.kl = getelementptr i8, ptr %7, i64 2
  %i.km = load i16, ptr %i.kl, align 2
  %i.kn = icmp eq i16 %i.km, 10
  br i1 %i.kn, label %bb.ba, label %.thread1329

bb.ba:                                            ; preds = %bb.az
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

.thread1329:                                      ; preds = %bb.at, %bb.aw, %bb.ay, %bb.az
  %i.ko = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.kp = load i32, ptr %i.x, align 8             ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8
  %i.ks = sub nsw i32 %i.kr, %i.kp
  %spec.select.i1117 = call i32 @llvm.smax.i32(i32 %i.ks, i32 0) ; 2 uses
  store i32 %spec.select.i1117, ptr %i.kq, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = zext nneg i32 %spec.select.i1117 to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kv
  %i.kx = sext i32 %i.kp to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.ky
  br label %.critedge1077

bb.bb:                                            ; preds = %bb.h
  %i.la = load i64, ptr %.0809, align 8           ; 3 uses
  %i.lb = load i64, ptr %i.cc, align 8
  %i.lc = add nsw i64 %i.lb, -1                   ; 2 uses
  %.not1058 = icmp slt i64 %i.la, %i.lc
  br i1 %.not1058, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ld = icmp eq i64 %i.la, %i.lc
  br i1 %i.ld, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.le = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.la
  %i.lf = load i16, ptr %i.le, align 2
  %i.lg = icmp eq i16 %i.lf, 10
  br i1 %i.lg, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bf:                                            ; preds = %bb.bc
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bg:                                            ; preds = %bb.bd, %bb.bb
  %i.lh = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.li = load i32, ptr %i.x, align 8             ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8
  %i.ll = sub nsw i32 %i.lk, %i.li
  %spec.select.i1118 = call i32 @llvm.smax.i32(i32 %i.ll, i32 0) ; 2 uses
  store i32 %spec.select.i1118, ptr %i.lj, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = zext nneg i32 %spec.select.i1118 to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = sext i32 %i.li to i64
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lr
  br label %.critedge1077

bb.bh:                                            ; preds = %bb.h
  %i.lt = load i64, ptr %.0809, align 8           ; 3 uses
  %i.lu = load i64, ptr %i.cc, align 8
  %.not1056 = icmp slt i64 %i.lt, %i.lu
  br i1 %.not1056, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bj:                                            ; preds = %bb.bh
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.lt ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 2            ; 2 uses
  %i.lx = and i16 %i.lw, -8368
  %.not.i1119 = icmp eq i16 %i.lx, 0
  br i1 %.not.i1119, label %bb.bk, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread

bb.bk:                                            ; preds = %bb.bj
  switch i16 %i.lw, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread [
    i16 10, label %bb.bl
    i16 11, label %.critedge1077
    i16 12, label %.critedge1077
    i16 13, label %.critedge1077
    i16 133, label %.critedge1077
    i16 8232, label %.critedge1077
    i16 8233, label %.critedge1077
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ly = load i64, ptr %i.ci, align 8
  %i.lz = icmp sgt i64 %i.lt, %i.ly
  br i1 %i.lz, label %bb.bm, label %.critedge1077

bb.bm:                                            ; preds = %bb.bl
  %i.ma = getelementptr i8, ptr %i.lv, i64 -2
  %i.mb = load i16, ptr %i.ma, align 2
  %i.mc = icmp eq i16 %i.mb, 13
  br i1 %i.mc, label %_ZN6icu_78L16isLineTerminatorEi.exit.thread, label %.critedge1077

_ZN6icu_78L16isLineTerminatorEi.exit.thread:      ; preds = %bb.bk, %bb.bj, %bb.bm
  %i.md = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.me = load i32, ptr %i.x, align 8             ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8
  %i.mh = sub nsw i32 %i.mg, %i.me
  %spec.select.i1121 = call i32 @llvm.smax.i32(i32 %i.mh, i32 0) ; 2 uses
  store i32 %spec.select.i1121, ptr %i.mf, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = zext nneg i32 %spec.select.i1121 to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mk
  %i.mm = sext i32 %i.me to i64
  %i.mn = sub nsw i64 0, %i.mm
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %i.mn
  br label %.critedge1077

bb.bn:                                            ; preds = %bb.h
  %i.mp = load i64, ptr %.0809, align 8           ; 2 uses
  %i.mq = load i64, ptr %i.cc, align 8
  %.not1054 = icmp slt i64 %i.mp, %i.mq
  br i1 %.not1054, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.bv, align 8
  store i8 1, ptr %i.cd, align 1
  br label %.critedge1077

bb.bp:                                            ; preds = %bb.bn
  %i.mr = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.mp
  %i.ms = load i16, ptr %i.mr, align 2
  %.not1055 = icmp eq i16 %i.ms, 10
  br i1 %.not1055, label %.critedge1077, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mt = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.mu = load i32, ptr %i.x, align 8             ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 8
  %i.mx = sub nsw i32 %i.mw, %i.mu
  %spec.select.i1122 = call i32 @llvm.smax.i32(i32 %i.mx, i32 0) ; 2 uses
  store i32 %spec.select.i1122, ptr %i.mv, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = zext nneg i32 %spec.select.i1122 to i64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.na
  %i.nc = sext i32 %i.mu to i64
  %i.nd = sub nsw i64 0, %i.nc
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.nd
  br label %.critedge1077

bb.br:                                            ; preds = %bb.h
  %i.nf = load i64, ptr %.0809, align 8
  %i.ng = load i64, ptr %i.ci, align 8
  %.not1053 = icmp eq i64 %i.nf, %i.ng
  br i1 %.not1053, label %.critedge1077, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nh = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ni = load i32, ptr %i.x, align 8             ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 8
  %i.nl = sub nsw i32 %i.nk, %i.ni
  %spec.select.i1123 = call i32 @llvm.smax.i32(i32 %i.nl, i32 0) ; 2 uses
  store i32 %spec.select.i1123, ptr %i.nj, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = zext nneg i32 %spec.select.i1123 to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.no
  %i.nq = sext i32 %i.ni to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.nr
  br label %.critedge1077

bb.bt:                                            ; preds = %bb.h
  %i.nt = load i64, ptr %.0809, align 8           ; 3 uses
  %i.nu = load i64, ptr %i.ci, align 8
  %i.nv = icmp eq i64 %i.nt, %i.nu
  br i1 %i.nv, label %.critedge1077, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nw = load i64, ptr %i.cc, align 8
  %i.nx = icmp slt i64 %i.nt, %i.nw
  br i1 %i.nx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ny = getelementptr [2 x i8], ptr %i.u, i64 %i.nt
  %i.nz = getelementptr i8, ptr %i.ny, i64 -2
  %i.oa = load i16, ptr %i.nz, align 2
  %i.ob = zext i16 %i.oa to i32
  %i.oc = call fastcc noundef signext i8 @_ZN6icu_78L16isLineTerminatorEi(i32 noundef %i.ob)
  %.not1052 = icmp eq i8 %i.oc, 0
  br i1 %.not1052, label %bb.bw, label %.critedge1077

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.od = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.oe = load i32, ptr %i.x, align 8             ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 2 uses
  %i.og = load i32, ptr %i.of, align 8
  %i.oh = sub nsw i32 %i.og, %i.oe
end_hunk_1
