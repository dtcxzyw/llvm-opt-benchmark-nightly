inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKtEEbT_S4_tb:bb.a
  br i1 %or.cond19.i26.i96, label %.backedge, label %switch.early.test130

switch.early.test130:                             ; preds = %bb.ad
  switch i16 %.fr182, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100 [
    i16 102, label %.backedge
    i16 101, label %.backedge
    i16 100, label %.backedge
    i16 99, label %.backedge
    i16 98, label %.backedge
    i16 97, label %.backedge
    i16 70, label %.backedge
    i16 69, label %.backedge
    i16 68, label %.backedge
    i16 67, label %.backedge
    i16 66, label %.backedge
    i16 65, label %.backedge
  ]

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100: ; preds = %switch.early.test130, %bb.ab, %bb.ac
  br label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit87: ; preds = %.backedge, %.backedge.us, %.preheader
  %.promoted171 = phi ptr [ %.promoted164, %.preheader ], [ %i.dg, %.backedge.us ], [ %i.dn, %.backedge ] ; 4 uses
  store ptr %.promoted171, ptr %i.a, align 8
  %.not6.not.i = icmp eq ptr %.promoted171, %1
  %or.cond = or i1 %3, %.not6.not.i
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit82, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit87
  %i.dw = load i16, ptr %.promoted171, align 2, !tbaa !41
  %i.dx = zext i16 %i.dw to i32
  %i.dy = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.dx)
  br i1 %i.dy, label %.lr.ph172, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit82

.lr.ph.i:                                         ; preds = %.lr.ph172
  %i.dz = load i16, ptr %i.ed, align 2, !tbaa !41
  %i.ea = zext i16 %i.dz to i32
  %i.eb = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ea)
  br i1 %i.eb, label %.lr.ph172, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit82, !llvm.loop !42

.lr.ph172:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ec = phi ptr [ %i.ed, %.lr.ph.i ], [ %.promoted171, %.lr.ph.i.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2 ; 3 uses
  %.not.not.i = icmp eq ptr %i.ed, %1
  br i1 %.not.not.i, label %._ZN14arrow_vendored17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !42

._ZN14arrow_vendored17double_conversionL7isDigitEii.exit82.loopexit_crit_edge: ; preds = %.lr.ph172
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit82, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit82: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.us, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i43, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i45, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit38.thread.us, %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.i, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.us.peel, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i.peel, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i.peel, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit38.thread.us.peel, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i45.peel, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i43.peel, %.lr.ph.i.preheader, %._ZN14arrow_vendored17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, %bb.y, %switch.early.test.us.peel, %switch.early.test.peel, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i58, %bb.z, %bb.t, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit38.thread103, %bb.h, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit87, %bb.aa, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64, %bb.r, %.loopexit, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit33
  %.010 = phi i1 [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i.peel ], [ false, %switch.early.test.peel ], [ false, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit33 ], [ false, %.loopexit ], [ false, %bb.r ], [ false, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64 ], [ false, %bb.y ], [ true, %bb.aa ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %switch.early.test.us.peel ], [ true, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit87 ], [ false, %bb.z ], [ false, %bb.t ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit38.thread103 ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit38.thread.us ], [ false, %bb.h ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit38.thread.us.peel ], [ false, %.lr.ph.i.preheader ], [ true, %._ZN14arrow_vendored17double_conversionL7isDigitEii.exit82.loopexit_crit_edge ], [ true, %.lr.ph.split ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.us.peel ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i.peel ], [ false, %.lr.ph.i ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.us ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i43.peel ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i45.peel ], [ true, %.lr.ph.split.us ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i43 ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i ], [ false, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !30
  %.promoted = load ptr, ptr %0, align 8, !tbaa !39 ; 4 uses
  %i.a = load i16, ptr %.promoted, align 2, !tbaa !41 ; 2 uses
  %i.b = icmp eq i16 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader356

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %.lr.ph.split.us, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge358.us
  %i.d = phi ptr [ %i.e, %.backedge358.us ], [ %.promoted, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 5 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread, label %.backedge358.us

.backedge358.us:                                  ; preds = %.lr.ph.split.us
  %i.g = load i16, ptr %i.e, align 2, !tbaa !41   ; 2 uses
  %i.h = icmp eq i16 %i.g, 48
  br i1 %i.h, label %.lr.ph.split.us, label %.preheader356.sink.split, !llvm.loop !72

.preheader356.sink.split:                         ; preds = %.backedge358, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.backedge358.us
  %.sink = phi ptr [ %i.e, %.backedge358.us ], [ %i.p, %.backedge358 ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ] ; 2 uses
  %.ph528 = phi i16 [ %i.g, %.backedge358.us ], [ %i.o, %.backedge358 ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ], [ %.fr401, %switch.early.test ]
  store ptr %.sink, ptr %0, align 8, !tbaa !39
  br label %.preheader356

.preheader356:                                    ; preds = %.preheader356.sink.split, %bb.a
  %i.i = phi i16 [ %i.a, %bb.a ], [ %.ph528, %.preheader356.sink.split ]
  %.promoted387 = phi ptr [ %.promoted, %bb.a ], [ %.sink, %.preheader356.sink.split ]
  %i.j = icmp eq i16 %3, 0                        ; 4 uses
  %i.k = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.d

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge358
  %i.l = phi ptr [ %i.p, %.backedge358 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 5 uses
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread, label %bb.b

.backedge358:                                     ; preds = %bb.b, %switch.early.test, %bb.c
  %i.o = phi i16 [ %.fr401, %bb.c ], [ %.pre.pre, %switch.early.test ], [ %.pre.pre, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.r, %bb.c ], [ %i.m, %switch.early.test ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = icmp eq i16 %i.o, 48
  br i1 %i.q, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, label %.preheader356.sink.split, !llvm.loop !72

bb.b:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 15 uses
  %i.s = icmp ne ptr %i.r, %1
  %.pre.pre = load i16, ptr %i.m, align 2, !tbaa !41 ; 3 uses
  %i.t = icmp eq i16 %.pre.pre, %3
  %or.cond529 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond529, label %bb.c, label %.backedge358

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr %i.r, align 2, !tbaa !41
  %.fr401 = freeze i16 %i.u                       ; 15 uses
  %i.v = add i16 %.fr401, -48
  %or.cond19.i26.i = icmp ult i16 %i.v, 10
  br i1 %or.cond19.i26.i, label %.backedge358, label %switch.early.test

switch.early.test:                                ; preds = %bb.c
  switch i16 %.fr401, label %.backedge358 [
    i16 102, label %.preheader356.sink.split
    i16 101, label %.preheader356.sink.split
    i16 100, label %.preheader356.sink.split
    i16 99, label %.preheader356.sink.split
    i16 98, label %.preheader356.sink.split
    i16 97, label %.preheader356.sink.split
    i16 70, label %.preheader356.sink.split
    i16 69, label %.preheader356.sink.split
    i16 68, label %.preheader356.sink.split
    i16 67, label %.preheader356.sink.split
    i16 66, label %.preheader356.sink.split
    i16 65, label %.preheader356.sink.split
  ]

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %.lr.ph.split.us
  %storemerge = phi ptr [ %i.e, %.lr.ph.split.us ], [ %i.m, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !39
  store i8 0, ptr %8, align 1, !tbaa !30
  %i.w = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread311

bb.d:                                             ; preds = %.preheader356, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177
  %i.x = phi i16 [ %.pre440, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ %i.i, %.preheader356 ]
  %.promoted391 = phi ptr [ %i.dd, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ %.promoted387, %.preheader356 ] ; 9 uses
  %.0129 = phi i8 [ %.5134, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader356 ] ; 20 uses
  %.0122 = phi i32 [ %.7, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader356 ] ; 6 uses
  %.0116 = phi i64 [ %.5, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader356 ] ; 5 uses
  %i.y = freeze i16 %i.x                          ; 9 uses
  %i.z = zext i16 %i.y to i64
  %i.aa = add i16 %i.y, -48
  %i.ab = icmp ult i16 %i.aa, 10                  ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i16 %i.y, 97
  br i1 %.not.i, label %bb.f, label %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.e
  %i.ac = icmp ult i16 %i.y, 103
  br i1 %i.ac, label %bb.j, label %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i16 %i.y, -65
  %or.cond324 = icmp ult i16 %i.ad, 6
  br i1 %or.cond324, label %bb.j, label %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284: ; preds = %bb.f, %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  switch i16 %i.y, label %.critedge [
    i16 46, label %bb.h
    i16 112, label %.thread317
    i16 80, label %.thread317
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted391, i64 2
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split, !llvm.loop !73

.critedge:                                        ; preds = %bb.g, %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  %.not6.not.i = icmp eq ptr %.promoted391, %1
  %or.cond325 = or i1 %5, %.not6.not.i
  br i1 %or.cond325, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.i
  %i.af = phi ptr [ %i.aj, %bb.i ], [ %.promoted391, %.critedge ] ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !41
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ah)
  br i1 %i.ai, label %bb.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread311

bb.i:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !39
  %.not.not.i = icmp eq ptr %i.aj, %1
  br i1 %.not.not.i, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !42

bb.j:                                             ; preds = %bb.f, %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.d
  %.sink532 = phi i64 [ -87, %_ZN14arrow_vendored17double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ -48, %bb.d ], [ -55, %bb.f ]
  %i.ak = add nsw i64 %.sink532, %i.z
  %i.al = trunc nuw i8 %.0129 to i1
  %i.am = add nsw i32 %.0122, -4
  %spec.select150 = select i1 %i.al, i32 %i.am, i32 %.0122 ; 22 uses
  %i.an = shl nsw i64 %.0116, 4
  %i.ao = add nsw i64 %i.an, %i.ak                ; 24 uses
  %i.ap = ashr i64 %i.ao, %i.k
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph390, label %._crit_edge

.lr.ph390:                                        ; preds = %.preheader, %.lr.ph390
  %.0135389 = phi i32 [ %i.as, %.lr.ph390 ], [ 1, %.preheader ]
  %.0136388 = phi i32 [ %i.at, %.lr.ph390 ], [ %i.aq, %.preheader ] ; 2 uses
  %i.as = add nuw nsw i32 %.0135389, 1            ; 2 uses
  %i.at = lshr i32 %.0136388, 1
  %i.au = icmp samesign ugt i32 %.0136388, 3
  br i1 %i.au, label %.lr.ph390, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph390, %.preheader
  %.0135.lcssa = phi i32 [ 1, %.preheader ], [ %i.as, %.lr.ph390 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0135.lcssa
  %i.av = xor i32 %notmask, -1
  %i.aw = trunc i64 %i.ao to i32
  %i.ax = and i32 %i.av, %i.aw                    ; 2 uses
  %i.ay = zext nneg i32 %.0135.lcssa to i64
  %i.az = ashr i64 %i.ao, %i.ay                   ; 4 uses
  %i.ba = add nsw i32 %.0135.lcssa, %spec.select150
  br label %bb.k

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %.fr402 = phi i16 [ %i.y, %._crit_edge ], [ %.fr404, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %i.bb = phi ptr [ %.promoted391, %._crit_edge ], [ %i.bt, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.1130 = phi i8 [ %.0129, %._crit_edge ], [ %.2131, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.2124 = phi i32 [ %i.ba, %._crit_edge ], [ %spec.select151, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.0121 = phi i1 [ true, %._crit_edge ], [ %spec.select327, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.j, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 4 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !39
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

bb.m:                                             ; preds = %bb.k
  %or.cond19.i.i179 = icmp slt i16 %.fr402, 58
  br i1 %or.cond19.i.i179, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184, label %switch.early.test348

switch.early.test348:                             ; preds = %bb.m
  switch i16 %.fr402, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 [
    i16 102, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 101, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 100, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 99, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 98, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 97, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 70, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 69, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 68, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 67, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 66, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
    i16 65, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
  ]

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184: ; preds = %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %switch.early.test348, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 7 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !39
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, %1
  br i1 %i.bh, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i16, ptr %i.be, align 2, !tbaa !41
  %i.bj = icmp eq i16 %i.bi, %3
  br i1 %i.bj, label %bb.p, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

bb.p:                                             ; preds = %bb.o
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !41
  %.fr403 = freeze i16 %i.bk                      ; 2 uses
  %i.bl = add i16 %.fr403, -48
  %or.cond19.i26.i186 = icmp ult i16 %i.bl, 10
  br i1 %or.cond19.i26.i186, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189, label %switch.early.test349

switch.early.test349:                             ; preds = %bb.p
  switch i16 %.fr403, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread [
    i16 102, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 101, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 100, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 99, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 98, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 97, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 70, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 69, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 68, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 67, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 66, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
    i16 65, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189
  ]

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189: ; preds = %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %bb.p
  store ptr %i.bg, ptr %0, align 8, !tbaa !39
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190: ; preds = %switch.early.test348
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 4 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !39
  %i.bn = icmp eq ptr %i.bm, %1
  br i1 %i.bn, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread: ; preds = %switch.early.test349, %bb.o, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189, %bb.n, %bb.l, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190
  %i.bo = phi ptr [ %i.be, %switch.early.test349 ], [ %i.be, %bb.o ], [ %i.bg, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i189 ], [ %i.be, %bb.n ], [ %i.bc, %bb.l ], [ %i.bm, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 ] ; 4 uses
  br i1 %4, label %bb.q, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split

bb.q:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !41 ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 46
  br i1 %i.bq, label %bb.r, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !39
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split: ; preds = %bb.r, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread
  %.ph = phi ptr [ %i.bo, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread ], [ %i.br, %bb.r ] ; 2 uses
  %.2131.ph = phi i8 [ %.1130, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread ], [ 1, %bb.r ]
  %.pr = load i16, ptr %.ph, align 2, !tbaa !41
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split, %bb.q
  %i.bs = phi i16 [ %.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %i.bp, %bb.q ]
  %i.bt = phi ptr [ %.ph, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %i.bo, %bb.q ] ; 2 uses
  %.2131 = phi i8 [ %.2131.ph, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %.1130, %bb.q ] ; 2 uses
  %.fr404 = freeze i16 %i.bs                      ; 4 uses
  %i.bu = add i16 %.fr404, -48
  %or.cond19.i = icmp ult i16 %i.bu, 10
  br i1 %or.cond19.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test350

switch.early.test350:                             ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203
  switch i16 %.fr404, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289 [
    i16 102, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 101, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 100, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 99, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 98, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 97, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 70, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 69, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 68, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 67, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 66, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
    i16 65, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  ]

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203
  %i.bv = icmp eq i16 %.fr404, 48
  %spec.select327 = and i1 %.0121, %i.bv
  %i.bw = trunc nuw i8 %.2131 to i1
  %i.bx = add nsw i32 %.2124, 4
  %spec.select151 = select i1 %i.bw, i32 %.2124, i32 %i.bx
  br label %bb.k, !llvm.loop !75

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289: ; preds = %switch.early.test350, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184, %bb.l, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190
  %.promoted.i206 = phi ptr [ %i.bt, %switch.early.test350 ], [ %i.be, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i184 ], [ %i.bc, %bb.l ], [ %i.bm, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 ] ; 3 uses
  %.not6.not.i207 = icmp eq ptr %.promoted.i206, %1
  %i.by = or i1 %5, %.not6.not.i207
  %or.cond533 = or i1 %i.by, %4
  br i1 %or.cond533, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, %bb.s
  %i.bz = phi ptr [ %i.cd, %bb.s ], [ %.promoted.i206, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289 ] ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !41
  %i.cb = zext i16 %i.ca to i32
  %i.cc = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.cb)
  br i1 %i.cc, label %bb.s, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread311

bb.s:                                             ; preds = %.lr.ph.i208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 4 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !39
  %.not.not.i212 = icmp eq ptr %i.cd, %1
  br i1 %.not.not.i212, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213, label %.lr.ph.i208, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213: ; preds = %bb.s, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289
  %i.ce = phi ptr [ %.promoted.i206, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289 ], [ %i.cd, %bb.s ]
  %i.cf = add nsw i32 %.0135.lcssa, -1
  %i.cg = shl nuw i32 1, %i.cf                    ; 2 uses
  %i.ch = icmp sgt i32 %i.ax, %i.cg
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213
  %i.ci = add nsw i64 %i.az, 1
  br label %bb.w

bb.u:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit213
  %i.cj = icmp eq i32 %i.ax, %i.cg
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_0
