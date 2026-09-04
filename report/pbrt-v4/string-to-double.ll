Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17double_conversionL16IsHexFloatStringIPKtEEbT_S3_tb:bb.a

switch.early.test135:                             ; preds = %bb.ab
  switch i16 %.fr182, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit100 [
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

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit100: ; preds = %switch.early.test135, %bb.z, %bb.aa
  br label %.backedge

_ZN17double_conversionL7isDigitEii.exit87:        ; preds = %.backedge, %.backedge.us, %.preheader
  %.lcssa171 = phi ptr [ %.promoted170, %.preheader ], [ %i.dg, %.backedge.us ], [ %i.dn, %.backedge ] ; 3 uses
  store ptr %.lcssa171, ptr %i.a, align 8
  %.not6.not.i = icmp eq ptr %.lcssa171, %1
  %or.cond = or i1 %3, %.not6.not.i
  br i1 %or.cond, label %_ZN17double_conversionL7isDigitEii.exit82, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN17double_conversionL7isDigitEii.exit87, %.lr.ph.i
  %i.dw = phi ptr [ %i.ea, %.lr.ph.i ], [ %.lcssa171, %_ZN17double_conversionL7isDigitEii.exit87 ] ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !42
  %i.dy = zext i16 %i.dx to i32
  %i.dz = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dy) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  %.not.not.i = icmp ne ptr %i.ea, %1
  %or.cond360.not = select i1 %i.dz, i1 %.not.not.i, i1 false
  br i1 %or.cond360.not, label %.lr.ph.i, label %_ZN17double_conversionL7isDigitEii.exit82, !llvm.loop !3

_ZN17double_conversionL7isDigitEii.exit82:        ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread1.i, %_ZN17double_conversionL7isDigitEii.exit.thread.i, %_ZN17double_conversionL7isDigitEii.exit.thread.us, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43, %_ZN17double_conversionL7isDigitEii.exit.thread.i45, %_ZN17double_conversionL7isDigitEii.exit38.thread.us, %.lr.ph.split, %.split113.us, %.lr.ph.i, %_ZN17double_conversionL7isDigitEii.exit.thread.us.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel, %_ZN17double_conversionL7isDigitEii.exit.thread1.i.peel, %_ZN17double_conversionL7isDigitEii.exit38.thread.us.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43.peel, %bb.w, %switch.early.test.us.peel, %switch.early.test.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i58, %bb.x, %.split110, %_ZN17double_conversionL7isDigitEii.exit38.thread104, %.split103, %_ZN17double_conversionL7isDigitEii.exit87, %bb.y, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64, %bb.q, %.loopexit, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit33
  %.010 = phi i1 [ false, %switch.early.test.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread.us.peel ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit33 ], [ false, %.loopexit ], [ false, %bb.q ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64 ], [ false, %bb.w ], [ true, %bb.y ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %switch.early.test.us.peel ], [ true, %_ZN17double_conversionL7isDigitEii.exit87 ], [ false, %bb.x ], [ false, %.split110 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread104 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread.us ], [ false, %.split103 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.us.peel ], [ true, %.lr.ph.split ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i.peel ], [ %i.dz, %.lr.ph.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.us ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel ], [ true, %.split113.us ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S3_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !38
  %.promoted = load ptr, ptr %0, align 8, !tbaa !41 ; 4 uses
  %i.a = load i16, ptr %.promoted, align 2, !tbaa !42 ; 2 uses
  %i.b = icmp eq i16 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader359

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %.split.us, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split.us:                                        ; preds = %.lr.ph, %.backedge361.us
  %i.d = phi ptr [ %i.e, %.backedge361.us ], [ %.promoted, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 6 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread.split.us, label %.backedge361.us

.backedge361.us:                                  ; preds = %.split.us
  %i.g = load i16, ptr %i.e, align 2, !tbaa !42   ; 2 uses
  %i.h = icmp eq i16 %i.g, 48
  br i1 %i.h, label %.split.us, label %..preheader359_crit_edge.split.us, !llvm.loop !75

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread.split.us: ; preds = %.split.us
  store ptr %i.e, ptr %0, align 8, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread

..preheader359_crit_edge.split.us:                ; preds = %.backedge361.us
  store ptr %i.e, ptr %0, align 8, !tbaa !41
  br label %.preheader359

.preheader359:                                    ; preds = %.backedge361, %..preheader359_crit_edge.split.us, %bb.a
  %i.i = phi i16 [ %i.a, %bb.a ], [ %i.g, %..preheader359_crit_edge.split.us ], [ %i.o, %.backedge361 ]
  %.promoted388 = phi ptr [ %.promoted, %bb.a ], [ %i.e, %..preheader359_crit_edge.split.us ], [ %i.p, %.backedge361 ]
  %i.j = icmp eq i16 %3, 0                        ; 4 uses
  %i.k = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.e

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge361
  %i.l = phi ptr [ %i.p, %.backedge361 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 6 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !41
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread, label %bb.b

.backedge361thread-pre-split:                     ; preds = %_ZN17double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %bb.b
  %.ph = phi ptr [ %i.m, %bb.b ], [ %i.m, %switch.early.test ], [ %i.r, %_ZN17double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i16, ptr %.ph, align 2, !tbaa !42
  br label %.backedge361

.backedge361:                                     ; preds = %.backedge361thread-pre-split, %bb.c
  %i.o = phi i16 [ %.pr, %.backedge361thread-pre-split ], [ %i.t, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.ph, %.backedge361thread-pre-split ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = icmp eq i16 %i.o, 48
  br i1 %i.q, label %_ZN17double_conversionL7isDigitEii.exit.thread.i, label %.preheader359, !llvm.loop !75

bb.b:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 4 uses
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %.backedge361thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.m, align 2, !tbaa !42   ; 2 uses
  %i.u = icmp eq i16 %i.t, %3
  br i1 %i.u, label %bb.d, label %.backedge361

bb.d:                                             ; preds = %bb.c
  %i.v = load i16, ptr %i.r, align 2, !tbaa !42
  %.fr401 = freeze i16 %i.v                       ; 2 uses
  %i.w = add i16 %.fr401, -48
  %or.cond19.i26.i = icmp ult i16 %i.w, 10
  br i1 %or.cond19.i26.i, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i16 %.fr401, label %.backedge361thread-pre-split [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  store ptr %i.r, ptr %0, align 8, !tbaa !41
  br label %.backedge361thread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread.split.us
  store i8 0, ptr %8, align 1, !tbaa !38
  %i.x = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.e:                                             ; preds = %.preheader359, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177
  %i.y = phi i16 [ %.pre, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ %i.i, %.preheader359 ]
  %.promoted392 = phi ptr [ %i.de, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ %.promoted388, %.preheader359 ] ; 9 uses
  %.0134 = phi i64 [ %.5139, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 5 uses
  %.0128 = phi i32 [ %.7, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 6 uses
  %.0123 = phi i8 [ %.5, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 20 uses
  %i.z = freeze i16 %i.y                          ; 9 uses
  %i.aa = zext i16 %i.z to i64
  %i.ab = add i16 %i.z, -48
  %i.ac = icmp ult i16 %i.ab, 10                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i16 %i.z, 97
  br i1 %.not.i, label %bb.g, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.f
  %i.ad = icmp ult i16 %i.z, 103
  br i1 %i.ad, label %bb.k, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i16 %i.z, -65
  %or.cond327 = icmp ult i16 %i.ae, 6
  br i1 %or.cond327, label %bb.k, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284: ; preds = %bb.g, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  switch i16 %i.z, label %.critedge [
    i16 46, label %bb.i
    i16 112, label %.thread319
    i16 80, label %.thread319
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted392, i64 2
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split, !llvm.loop !76

.critedge:                                        ; preds = %bb.h, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  %.not6.not.i = icmp eq ptr %.promoted392, %1
  %or.cond328 = or i1 %5, %.not6.not.i
  br i1 %or.cond328, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.j
  %i.ag = phi ptr [ %i.ak, %bb.j ], [ %.promoted392, %.critedge ] ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !42
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ai)
  br i1 %i.aj, label %bb.j, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 4 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !41
  %.not.not.i = icmp eq ptr %i.ak, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %.lr.ph.i, !llvm.loop !3

bb.k:                                             ; preds = %bb.g, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.e
  %.sink = phi i64 [ -87, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ -48, %bb.e ], [ -55, %bb.g ]
  %i.al = add nsw i64 %.sink, %i.aa
  %i.am = trunc nuw i8 %.0123 to i1
  %i.an = add nsw i32 %.0128, -4
  %spec.select150 = select i1 %i.am, i32 %i.an, i32 %.0128 ; 22 uses
  %i.ao = shl nsw i64 %.0134, 4
  %i.ap = add nsw i64 %i.al, %i.ao                ; 24 uses
  %i.aq = ashr i64 %i.ap, %i.k
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph391, label %._crit_edge

.lr.ph391:                                        ; preds = %.preheader, %.lr.ph391
  %.0117390 = phi i32 [ %i.at, %.lr.ph391 ], [ 1, %.preheader ]
  %.0118389 = phi i32 [ %i.au, %.lr.ph391 ], [ %i.ar, %.preheader ] ; 2 uses
  %i.at = add nuw nsw i32 %.0117390, 1            ; 2 uses
  %i.au = lshr i32 %.0118389, 1
  %i.av = icmp samesign ugt i32 %.0118389, 3
  br i1 %i.av, label %.lr.ph391, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph391, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.at, %.lr.ph391 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.aw = xor i32 %notmask, -1
  %i.ax = trunc i64 %i.ap to i32
  %i.ay = and i32 %i.aw, %i.ax                    ; 2 uses
  %i.az = zext nneg i32 %.0117.lcssa to i64
  %i.ba = ashr i64 %i.ap, %i.az                   ; 4 uses
  %i.bb = add nsw i32 %.0117.lcssa, %spec.select150
  br label %bb.l

bb.l:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %.fr402 = phi i16 [ %i.z, %._crit_edge ], [ %.fr404, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %i.bc = phi ptr [ %.promoted392, %._crit_edge ], [ %i.bu, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.bb, %._crit_edge ], [ %spec.select151, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select330, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.j, label %.split291, label %bb.m

.split291:                                        ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 4 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !41
  %i.be = icmp eq ptr %i.bd, %1
  br i1 %i.be, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

bb.m:                                             ; preds = %bb.l
  %or.cond19.i.i179 = icmp slt i16 %.fr402, 58
  br i1 %or.cond19.i.i179, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184, label %switch.early.test351

switch.early.test351:                             ; preds = %bb.m
  switch i16 %.fr402, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190 [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
  ]

_ZN17double_conversionL7isDigitEii.exit.thread.i184: ; preds = %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 7 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !41
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %bb.n

bb.n:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i184
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, %1
  br i1 %i.bi, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i16, ptr %i.bf, align 2, !tbaa !42
  %i.bk = icmp eq i16 %i.bj, %3
  br i1 %i.bk, label %bb.p, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !42
  %.fr403 = freeze i16 %i.bl                      ; 2 uses
  %i.bm = add i16 %.fr403, -48
  %or.cond19.i26.i186 = icmp ult i16 %i.bm, 10
  br i1 %or.cond19.i26.i186, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189, label %switch.early.test352

switch.early.test352:                             ; preds = %bb.p
  switch i16 %.fr403, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i189: ; preds = %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %bb.p
  store ptr %i.bh, ptr %0, align 8, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190: ; preds = %switch.early.test351
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 4 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !41
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread: ; preds = %switch.early.test352, %bb.o, %_ZN17double_conversionL7isDigitEii.exit30.thread.i189, %bb.n, %.split291, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190
  %i.bp = phi ptr [ %i.bf, %switch.early.test352 ], [ %i.bf, %bb.o ], [ %i.bh, %_ZN17double_conversionL7isDigitEii.exit30.thread.i189 ], [ %i.bf, %bb.n ], [ %i.bd, %.split291 ], [ %i.bn, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190 ] ; 4 uses
  br i1 %4, label %bb.q, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split

bb.q:                                             ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !42 ; 2 uses
  %i.br = icmp eq i16 %i.bq, 46
  br i1 %i.br, label %bb.r, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split: ; preds = %bb.r, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread
  %.ph483 = phi ptr [ %i.bp, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread ], [ %i.bs, %bb.r ] ; 2 uses
  %.2125.ph = phi i8 [ %.1124, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread ], [ 1, %bb.r ]
  %.pr484 = load i16, ptr %.ph483, align 2, !tbaa !42
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split, %bb.q
  %i.bt = phi i16 [ %.pr484, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split ], [ %i.bq, %bb.q ]
  %i.bu = phi ptr [ %.ph483, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split ], [ %i.bp, %bb.q ] ; 2 uses
  %.2125 = phi i8 [ %.2125.ph, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split ], [ %.1124, %bb.q ] ; 2 uses
  %.fr404 = freeze i16 %i.bt                      ; 4 uses
  %i.bv = add i16 %.fr404, -48
  %or.cond19.i = icmp ult i16 %i.bv, 10
  br i1 %or.cond19.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test353

switch.early.test353:                             ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203
  switch i16 %.fr404, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289 [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit.thread
  ]

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203
  %i.bw = icmp eq i16 %.fr404, 48
  %spec.select330 = and i1 %.0116, %i.bw
  %i.bx = trunc nuw i8 %.2125 to i1
  %i.by = add nsw i32 %.2130, 4
  %spec.select151 = select i1 %i.bx, i32 %.2130, i32 %i.by
  br label %bb.l, !llvm.loop !78

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289: ; preds = %switch.early.test353, %_ZN17double_conversionL7isDigitEii.exit.thread.i184, %.split291, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190
  %.promoted.i206 = phi ptr [ %i.bu, %switch.early.test353 ], [ %i.bf, %_ZN17double_conversionL7isDigitEii.exit.thread.i184 ], [ %i.bd, %.split291 ], [ %i.bn, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190 ] ; 3 uses
  %.not6.not.i207 = icmp eq ptr %.promoted.i206, %1
  %i.bz = or i1 %5, %.not6.not.i207
  %or.cond524 = or i1 %i.bz, %4
  br i1 %or.cond524, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, %bb.s
  %i.ca = phi ptr [ %i.ce, %bb.s ], [ %.promoted.i206, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289 ] ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !42
  %i.cc = zext i16 %i.cb to i32
  %i.cd = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.cc)
  br i1 %i.cd, label %bb.s, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.s:                                             ; preds = %.lr.ph.i208
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 4 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !41
  %.not.not.i212 = icmp eq ptr %i.ce, %1
  br i1 %.not.not.i212, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213, label %.lr.ph.i208, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213: ; preds = %bb.s, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289
  %i.cf = phi ptr [ %.promoted.i206, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289 ], [ %i.ce, %bb.s ]
  %i.cg = add nsw i32 %.0117.lcssa, -1
  %i.ch = shl nuw i32 1, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i32 %i.ay, %i.ch
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213
  %i.cj = add nsw i64 %i.ba, 1
  br label %bb.w

bb.u:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213
  %i.ck = icmp eq i32 %i.ay, %i.ch
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_0
