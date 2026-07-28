inline.NumInlined: 130
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7815RBBIRuleScanner10nextCharLLEv:bb.a
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIRuleScanner8nextCharERNS0_12RBBIRuleCharE(ptr noundef nonnull align 8 dereferenceable(3192) initializes((16, 20)) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(5) initializes((0, 5)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.b, ptr %i.c, align 8
  %i.d = tail call noundef i32 @_ZN6icu_7815RBBIRuleScanner10nextCharLLEv(ptr noundef nonnull align 8 dereferenceable(3192) %0) ; 3 uses
  store i32 %i.d, ptr %1, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  store i8 0, ptr %i.e, align 4
  %i.f = icmp eq i32 %i.d, 39
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6
  %i.k = load i32, ptr %i.a, align 4
  %i.l = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef %i.k) #10
  %i.m = icmp eq i32 %i.l, 39
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i32 @_ZN6icu_7815RBBIRuleScanner10nextCharLLEv(ptr noundef nonnull align 8 dereferenceable(3192) %0) ; 2 uses
  store i32 %i.n, ptr %1, align 4
  store i8 1, ptr %i.e, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %.not = icmp eq i8 %i.p, 0                      ; 2 uses
  %i.q = zext i1 %.not to i8
  store i8 %i.q, ptr %i.o, align 8
  %. = select i1 %.not, i32 40, i32 41
  store i32 %., ptr %1, align 4
  store i8 0, ptr %i.e, align 4
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.r = phi i32 [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i8, ptr %i.t, align 8
  %.not30 = icmp eq i8 %i.u, 0
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.e, align 4
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.r, 35
  br i1 %i.v, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.c, align 8              ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.x = tail call noundef i32 @_ZN6icu_7815RBBIRuleScanner10nextCharLLEv(ptr noundef nonnull align 8 dereferenceable(3192) %0) ; 3 uses
  store i32 %i.x, ptr %1, align 4
  switch i32 %i.x, label %bb.j [
    i32 -1, label %bb.k
    i32 13, label %bb.k
    i32 10, label %bb.k
    i32 133, label %bb.k
    i32 8232, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.y = load i32, ptr %i.a, align 4
  %i.z = add nsw i32 %i.y, -1
  %i.aa = icmp slt i32 %i.w, %i.z
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.031 = phi i32 [ %i.w, %.lr.ph ], [ %i.af, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i32 noundef %.031, i16 noundef zeroext 32) #10 ; 0 uses
  %i.af = add nsw i32 %.031, 1                    ; 2 uses
  %i.ag = load i32, ptr %i.a, align 4
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.l, label %.loopexit.loopexit, !llvm.loop !13

.loopexit.loopexit:                               ; preds = %bb.l
  %.pre = load i32, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k, %bb.h
  %i.aj = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.x, %bb.k ], [ %i.r, %bb.h ]
  %cond = icmp eq i32 %i.aj, 92
  br i1 %cond, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.loopexit
  store i8 1, ptr %i.e, align 4
  %i.ak = load i32, ptr %i.a, align 4             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !align !6
  %i.ap = tail call noundef i32 @_ZNK6icu_7813UnicodeString10unescapeAtERi(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #10
  store i32 %i.ap, ptr %1, align 4
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = icmp eq i32 %i.aq, %i.ak
  br i1 %i.ar, label %bb.n, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 66049, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.al, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not1.i = icmp eq ptr %i.az, null
  br i1 %.not1.i, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4
  store i32 %i.bb, ptr %i.az, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.al, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.bd, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.al, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i16 0, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.al, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i16 0, ptr %i.bp, align 4
  br label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit

_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bq = load i32, ptr %i.a, align 4
  %i.br = sub i32 %i.bq, %i.ak
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add nsw i32 %i.br, %i.bt
  store i32 %i.bu, ptr %i.bs, align 8
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit, %bb.e, %bb.g, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813UnicodeString10unescapeAtERi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIRuleScanner5parseEv(ptr noundef nonnull align 8 dereferenceable(3192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit38

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  tail call void @_ZN6icu_7815RBBIRuleScanner8nextCharERNS0_12RBBIRuleCharE(ptr noundef nonnull align 8 dereferenceable(3192) %0, ptr noundef nonnull align 4 dereferenceable(5) %i.g)
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ae
  %.02044 = phi i16 [ 1, %.lr.ph ], [ %.1, %bb.ae ]
  %i.s = zext i16 %.02044 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L20gRuleParseStateTableE, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %.thread41, %bb.c
  %.0 = phi ptr [ %i.t, %bb.c ], [ %i.am, %.thread41 ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.v = load i8, ptr %i.u, align 4               ; 5 uses
  %i.w = zext i8 %i.v to i32
  %i.x = icmp ult i8 %i.v, 127
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.m, align 4
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.g, align 8
  %i.ab = icmp eq i32 %i.aa, %i.w
  br i1 %i.ab, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  switch i8 %i.v, label %bb.l [
    i8 -1, label %bb.p
    i8 -2, label %bb.h
    i8 -3, label %bb.i
    i8 -4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.m, align 4
  %.not26 = icmp eq i8 %i.ac, 0
  br i1 %.not26, label %.thread41, label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.m, align 4
  %.not27 = icmp eq i8 %i.ad, 0
  br i1 %.not27, label %.thread41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.g, align 8
  switch i32 %i.ae, label %.thread41 [
    i32 80, label %bb.p
    i32 112, label %bb.p
  ]

bb.k:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.g, align 8
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.p, label %.thread41

bb.l:                                             ; preds = %bb.g
  %or.cond34 = icmp slt i8 %i.v, -16
  br i1 %or.cond34, label %bb.m, label %.thread41

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.m, align 4
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %.thread41

bb.n:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.g, align 8             ; 2 uses
  %.not28 = icmp eq i32 %i.aj, -1
  br i1 %.not28, label %.thread41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %1 = and i8 %i.v, 127
  %2 = zext nneg i8 %1 to i64
  %i.ak = getelementptr inbounds nuw [200 x i8], ptr %i.n, i64 %2
  %i.al = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ak, i32 noundef %i.aj) #10
  %.not29 = icmp eq i8 %i.al, 0
  br i1 %.not29, label %.thread41, label %bb.p

.thread41:                                        ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.o, %bb.n, %bb.m, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.d, !llvm.loop !14

bb.p:                                             ; preds = %bb.g, %bb.j, %bb.j, %bb.o, %bb.k, %bb.h, %bb.f
  %i.an = load i32, ptr %.0, align 4
  %i.ao = tail call noundef signext i8 @_ZN6icu_7815RBBIRuleScanner14doParseActionsEi(ptr noundef nonnull align 8 dereferenceable(3192) %0, i32 noundef %i.an)
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.._crit_edge.loopexit_crit_edge, label %bb.q

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.p
  %.pre.pre = load ptr, ptr %i.a, align 8         ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 16
  %.pre46.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8 ; 2 uses
  %.pre47.pre = load i32, ptr %.pre46.pre, align 4
  br label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.ar = load i8, ptr %i.aq, align 2             ; 2 uses
  %.not30 = icmp eq i8 %i.ar, 0
  br i1 %.not30, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr %i.o, align 8             ; 2 uses
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.at, ptr %i.o, align 8
  %i.au = icmp sgt i32 %i.as, 98
  br i1 %i.au, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 66048, ptr %i.ax, align 4
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not1.i = icmp eq ptr %i.bc, null
  br i1 %.not1.i, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = load i32, ptr %i.p, align 4
  store i32 %i.bd, ptr %i.bc, align 4
  %i.be = load i32, ptr %i.q, align 8
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.be, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i16 0, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i16 0, ptr %i.bq, align 4
  br label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit

_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.br = load i32, ptr %i.o, align 8
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.o, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit, %bb.r
  %i.bt = phi i32 [ %i.bs, %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit ], [ %i.at, %bb.r ]
  %i.bu = zext i8 %i.ar to i16
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.bv
  store i16 %i.bu, ptr %i.bw, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.by = load i8, ptr %i.bx, align 1
  %.not31 = icmp eq i8 %i.by, 0
  br i1 %.not31, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN6icu_7815RBBIRuleScanner8nextCharERNS0_12RBBIRuleCharE(ptr noundef nonnull align 8 dereferenceable(3192) %0, ptr noundef nonnull align 4 dereferenceable(5) %i.g)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.ca = load i8, ptr %i.bz, align 1             ; 2 uses
  %.not32 = icmp eq i8 %i.ca, -1
  br i1 %.not32, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = zext i8 %i.ca to i16
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cc = load i32, ptr %i.o, align 8             ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2            ; 2 uses
  %i.cg = add nsw i32 %i.cc, -1
  store i32 %i.cg, ptr %i.o, align 8
  %i.ch = icmp slt i32 %i.cc, 1
  br i1 %i.ch, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 66048, ptr %i.ck, align 4
  %i.cn = load ptr, ptr %i.a, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not1.i35 = icmp eq ptr %i.cp, null
  br i1 %.not1.i35, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit36, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load i32, ptr %i.p, align 4
  store i32 %i.cq, ptr %i.cp, align 4
  %i.cr = load i32, ptr %i.q, align 8
  %i.cs = load ptr, ptr %i.a, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.cr, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.a, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i16 0, ptr %i.cz, align 4
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i16 0, ptr %i.dd, align 4
  br label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit36

_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit36: ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.de = load i32, ptr %i.o, align 8
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.o, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit36, %bb.z
  %.1 = phi i16 [ %i.cb, %bb.z ], [ %i.cf, %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit36 ], [ %i.cf, %bb.aa ] ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  %i.dl = icmp eq i16 %.1, 0
  %or.cond = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond, label %._crit_edge, label %bb.c, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.ae, %.._crit_edge.loopexit_crit_edge
  %.pre47 = phi i32 [ %.pre47.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.dj, %bb.ae ]
  %.pre46 = phi ptr [ %.pre46.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.di, %bb.ae ]
  %.pre = phi ptr [ %.pre.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.dg, %bb.ae ]
  %i.dm = icmp sgt i32 %.pre47, 0
  br i1 %i.dm, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit38, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %i.do = load ptr, ptr %i.dn, align 8
  %.not = icmp eq ptr %i.do, null
  br i1 %.not, label %bb.ag, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit38

bb.ag:                                            ; preds = %bb.af
  store i32 66051, ptr %.pre46, align 4
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not1.i37 = icmp eq ptr %i.dr, null
  br i1 %.not1.i37, label %_ZN6icu_7815RBBIRuleScanner5errorE10UErrorCode.exit38, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  store i32 %i.dt, ptr %i.dr, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = load ptr, ptr %i.a, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
end_hunk_0
