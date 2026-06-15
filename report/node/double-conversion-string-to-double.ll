inline.NumInlined: 162
inline.NumDeleted: 32
begin_hunk_0_@_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb
define internal fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1
  %.promoted = load ptr, ptr %0, align 8          ; 4 uses
  %i.a = load i16, ptr %.promoted, align 2        ; 2 uses
  %i.b = icmp eq i16 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader356

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %.lr.ph.split.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge358.us
  %i.d = phi ptr [ %i.e, %.backedge358.us ], [ %.promoted, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 5 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread, label %.backedge358.us

.backedge358.us:                                  ; preds = %.lr.ph.split.us
  %i.g = load i16, ptr %i.e, align 2              ; 2 uses
  %i.h = icmp eq i16 %i.g, 48
  br i1 %i.h, label %.lr.ph.split.us, label %.preheader356, !llvm.loop !43

.preheader356:                                    ; preds = %.backedge358, %.backedge358.us, %bb.a
  %i.i = phi i16 [ %i.g, %.backedge358.us ], [ %i.a, %bb.a ], [ %i.o, %.backedge358 ]
  %.promoted383 = phi ptr [ %i.e, %.backedge358.us ], [ %.promoted, %bb.a ], [ %i.p, %.backedge358 ]
  %i.j = icmp eq i16 %3, 0                        ; 4 uses
  %i.k = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.e

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge358
  %i.l = phi ptr [ %i.p, %.backedge358 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 6 uses
  store ptr %i.m, ptr %0, align 8
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread, label %bb.b

.backedge358thread-pre-split:                     ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %bb.b
  %.ph = phi ptr [ %i.m, %bb.b ], [ %i.m, %switch.early.test ], [ %i.r, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i16, ptr %.ph, align 2
  br label %.backedge358

.backedge358:                                     ; preds = %.backedge358thread-pre-split, %bb.c
  %i.o = phi i16 [ %.pr, %.backedge358thread-pre-split ], [ %i.t, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.ph, %.backedge358thread-pre-split ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = icmp eq i16 %i.o, 48
  br i1 %i.q, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, label %.preheader356, !llvm.loop !43

bb.b:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 4 uses
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %.backedge358thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.m, align 2              ; 2 uses
  %i.u = icmp eq i16 %i.t, %3
  br i1 %i.u, label %bb.d, label %.backedge358

bb.d:                                             ; preds = %bb.c
  %i.v = load i16, ptr %i.r, align 2
  %.fr397 = freeze i16 %i.v                       ; 2 uses
  %i.w = add i16 %.fr397, -48
  %or.cond19.i26.i = icmp ult i16 %i.w, 10
  br i1 %or.cond19.i26.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i16 %.fr397, label %.backedge358thread-pre-split [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  store ptr %i.r, ptr %0, align 8
  br label %.backedge358thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %.lr.ph.split.us
  store i8 0, ptr %8, align 1
  %i.x = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread311

bb.e:                                             ; preds = %.preheader356, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177
  %i.y = phi i16 [ %.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ %i.i, %.preheader356 ]
  %.promoted387 = phi ptr [ %i.de, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ %.promoted383, %.preheader356 ] ; 7 uses
  %.0129 = phi i8 [ %.5134, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader356 ] ; 20 uses
  %.0122 = phi i32 [ %.7, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader356 ] ; 6 uses
  %.0116 = phi i64 [ %.5, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader356 ] ; 5 uses
  %i.z = freeze i16 %i.y                          ; 9 uses
  %i.aa = zext i16 %i.z to i64
  %i.ab = add i16 %i.z, -48
  %i.ac = icmp ult i16 %i.ab, 10                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i16 %i.z, 97
  br i1 %.not.i, label %bb.g, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.f
  %i.ad = icmp ult i16 %i.z, 103
  br i1 %i.ad, label %bb.k, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i16 %i.z, -65
  %or.cond324 = icmp ult i16 %i.ae, 6
  br i1 %or.cond324, label %bb.k, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284: ; preds = %bb.g, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  switch i16 %i.z, label %.critedge [
    i16 46, label %bb.i
    i16 112, label %.thread317
    i16 80, label %.thread317
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted387, i64 2
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split, !llvm.loop !44

.critedge:                                        ; preds = %bb.h, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  %.not6.not.i = icmp eq ptr %.promoted387, %1
  %or.cond325 = or i1 %5, %.not6.not.i
  br i1 %or.cond325, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.j
  %i.ag = phi ptr [ %i.ak, %bb.j ], [ %.promoted387, %.critedge ] ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ai)
  br i1 %i.aj, label %bb.j, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread311

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 3 uses
  store ptr %i.ak, ptr %0, align 8
  %.not.not.i = icmp eq ptr %i.ak, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !16

bb.k:                                             ; preds = %bb.g, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.e
  %.sink = phi i64 [ 4294967209, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ 4294967248, %bb.e ], [ 4294967241, %bb.g ]
  %i.al = add nuw nsw i64 %.sink, %i.aa
  %i.am = trunc nuw i8 %.0129 to i1
  %i.an = add nsw i32 %.0122, -4
  %spec.select150 = select i1 %i.am, i32 %i.an, i32 %.0122 ; 22 uses
  %i.ao = shl nsw i64 %.0116, 4
  %i.ap = and i64 %i.al, 4294967295
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 24 uses
  %i.ar = ashr i64 %i.aq, %i.k
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.lr.ph386, label %._crit_edge

.lr.ph386:                                        ; preds = %.preheader, %.lr.ph386
  %.0135385 = phi i32 [ %i.au, %.lr.ph386 ], [ 1, %.preheader ]
  %.0136384 = phi i32 [ %i.av, %.lr.ph386 ], [ %i.as, %.preheader ] ; 2 uses
  %i.au = add nuw nsw i32 %.0135385, 1            ; 2 uses
  %i.av = lshr i32 %.0136384, 1
  %i.aw = icmp samesign ugt i32 %.0136384, 3
  br i1 %i.aw, label %.lr.ph386, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph386, %.preheader
  %.0135.lcssa = phi i32 [ 1, %.preheader ], [ %i.au, %.lr.ph386 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0135.lcssa
  %i.ax = xor i32 %notmask, -1
  %i.ay = trunc i64 %i.aq to i32
  %i.az = and i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = zext nneg i32 %.0135.lcssa to i64
  %i.bb = ashr i64 %i.aq, %i.ba                   ; 4 uses
  %i.bc = add nsw i32 %.0135.lcssa, %spec.select150
  br label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %.fr398 = phi i16 [ %i.z, %._crit_edge ], [ %.fr400, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %i.bd = phi ptr [ %.promoted387, %._crit_edge ], [ %i.bv, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.1130 = phi i8 [ %.0129, %._crit_edge ], [ %.2131, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.2124 = phi i32 [ %i.bc, %._crit_edge ], [ %spec.select151, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.0121 = phi i1 [ true, %._crit_edge ], [ %spec.select327, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.j, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 4 uses
  store ptr %i.be, ptr %0, align 8
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

bb.n:                                             ; preds = %bb.l
  %or.cond19.i.i179 = icmp slt i16 %.fr398, 58
  br i1 %or.cond19.i.i179, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184, label %switch.early.test348

switch.early.test348:                             ; preds = %bb.n
  switch i16 %.fr398, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184: ; preds = %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 7 uses
  store ptr %i.bg, ptr %0, align 8
  %i.bh = icmp eq ptr %i.bg, %1
  br i1 %i.bh, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, %1
  br i1 %i.bj, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load i16, ptr %i.bg, align 2
  %i.bl = icmp eq i16 %i.bk, %3
  br i1 %i.bl, label %bb.q, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

bb.q:                                             ; preds = %bb.p
  %i.bm = load i16, ptr %i.bi, align 2
  %.fr399 = freeze i16 %i.bm                      ; 2 uses
  %i.bn = add i16 %.fr399, -48
  %or.cond19.i26.i186 = icmp ult i16 %i.bn, 10
  br i1 %or.cond19.i26.i186, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189, label %switch.early.test349

switch.early.test349:                             ; preds = %bb.q
  switch i16 %.fr399, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189: ; preds = %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %bb.q
  store ptr %i.bi, ptr %0, align 8
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190: ; preds = %switch.early.test348
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 4 uses
  store ptr %i.bo, ptr %0, align 8
  %i.bp = icmp eq ptr %i.bo, %1
  br i1 %i.bp, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread: ; preds = %switch.early.test349, %bb.p, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189, %bb.o, %bb.m, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190
  %i.bq = phi ptr [ %i.bg, %switch.early.test349 ], [ %i.bg, %bb.p ], [ %i.bi, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189 ], [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.bo, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 ] ; 4 uses
  br i1 %4, label %bb.r, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split

bb.r:                                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread
  %i.br = load i16, ptr %i.bq, align 2            ; 2 uses
  %i.bs = icmp eq i16 %i.br, 46
  br i1 %i.bs, label %bb.s, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  store ptr %i.bt, ptr %0, align 8
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split: ; preds = %bb.s, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread
  %.ph474 = phi ptr [ %i.bq, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread ], [ %i.bt, %bb.s ] ; 2 uses
  %.2131.ph = phi i8 [ %.1130, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread ], [ 1, %bb.s ]
  %.pr475 = load i16, ptr %.ph474, align 2
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split, %bb.r
  %i.bu = phi i16 [ %.pr475, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %i.br, %bb.r ]
  %i.bv = phi ptr [ %.ph474, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %i.bq, %bb.r ] ; 2 uses
  %.2131 = phi i8 [ %.2131.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %.1130, %bb.r ] ; 2 uses
  %.fr400 = freeze i16 %i.bu                      ; 4 uses
  %i.bw = add i16 %.fr400, -48
  %or.cond19.i = icmp ult i16 %i.bw, 10
  br i1 %or.cond19.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %switch.early.test350

switch.early.test350:                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203
  switch i16 %.fr400, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289 [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread: ; preds = %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203
  %i.bx = icmp eq i16 %.fr400, 48
  %spec.select327 = and i1 %.0121, %i.bx
  %i.by = trunc nuw i8 %.2131 to i1
  %i.bz = add nsw i32 %.2124, 4
  %spec.select151 = select i1 %i.by, i32 %.2124, i32 %i.bz
  br label %bb.l, !llvm.loop !46

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289: ; preds = %switch.early.test350, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184, %bb.m, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190
  %.promoted.i206 = phi ptr [ %i.bv, %switch.early.test350 ], [ %i.bg, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184 ], [ %i.be, %bb.m ], [ %i.bo, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 ] ; 2 uses
  %.not6.not.i207 = icmp eq ptr %.promoted.i206, %1
  %i.ca = or i1 %5, %.not6.not.i207
  %or.cond514 = or i1 %i.ca, %4
  br i1 %or.cond514, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, %bb.t
  %i.cb = phi ptr [ %i.cf, %bb.t ], [ %.promoted.i206, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289 ] ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32
  %i.ce = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.cd)
  br i1 %i.ce, label %bb.t, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread311

bb.t:                                             ; preds = %.lr.ph.i208
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 3 uses
  store ptr %i.cf, ptr %0, align 8
  %.not.not.i212 = icmp eq ptr %i.cf, %1
  br i1 %.not.not.i212, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213, label %.lr.ph.i208, !llvm.loop !16

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213: ; preds = %bb.t, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289
  %i.cg = add nsw i32 %.0135.lcssa, -1
  %i.ch = shl nuw i32 1, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i32 %i.az, %i.ch
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213
  %i.cj = add nsw i64 %i.bb, 1
  br label %bb.x

bb.v:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213
  %i.ck = icmp eq i32 %i.az, %i.ch
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = and i64 %i.bb, 1
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond3 = select i1 %i.cm, i1 %.0121, i1 false
  %not.or.cond3 = xor i1 %or.cond3, true
  %i.cn = zext i1 %not.or.cond3 to i64
  %spec.select152 = add nsw i64 %i.bb, %i.cn
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1117 = phi i64 [ %i.cj, %bb.u ], [ %spec.select152, %bb.w ], [ %i.bb, %bb.v ] ; 2 uses
  %i.co = shl nuw nsw i64 1, %i.k
  %i.cp = and i64 %.1117, %i.co
  %.not148 = icmp ne i64 %i.cp, 0                 ; 2 uses
  %i.cq = zext i1 %.not148 to i32
  %.4126 = add nsw i32 %.2124, %i.cq
  %i.cr = zext i1 %.not148 to i64
  %.2118 = ashr i64 %.1117, %i.cr
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread

bb.y:                                             ; preds = %bb.k
  br i1 %i.j, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr i8, ptr %.promoted387, i64 2 ; 3 uses
  store ptr %i.cs, ptr %0, align 8
  %i.ct = icmp eq ptr %i.cs, %1
  br i1 %i.ct, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177

bb.aa:                                            ; preds = %bb.y
  %i.cu = icmp samesign ugt i16 %i.z, 96
  %or.cond328 = or i1 %i.cu, %i.ac
  %i.cv = add nsw i16 %i.z, -65
  %or.cond.i217 = icmp ult i16 %i.cv, 6
  %or.cond339 = select i1 %or.cond328, i1 true, i1 %or.cond.i217
  %i.cw = getelementptr i8, ptr %.promoted387, i64 2 ; 7 uses
  store ptr %i.cw, ptr %0, align 8
  %i.cx = icmp eq ptr %i.cw, %1                   ; 2 uses
  br i1 %or.cond339, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220: ; preds = %bb.aa
  br i1 %i.cx, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220
  %i.cy = getelementptr inbounds nuw i8, ptr %.promoted387, i64 4 ; 15 uses
  %i.cz = icmp eq ptr %i.cy, %1
end_hunk_0
