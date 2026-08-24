Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/double-conversion-string-to-double?download=true
inline.NumInlined: 162
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7817double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb:.peel.begin

.split119.us:                                     ; preds = %.backedge.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %1
  br i1 %i.dz, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.backedge.us, !llvm.loop !48

.backedge.us:                                     ; preds = %.split119.us.preheader, %.split119.us
  %i.ea = phi ptr [ %i.dy, %.split119.us ], [ %i.dw, %.split119.us.preheader ] ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17  ; 2 uses
  %i.ec = sext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48
  %or.cond.i83.us = icmp ult i32 %i.ed, 10
  %i.ee = icmp ult i8 %i.eb, 58
  %or.cond19.i84.us = and i1 %i.ee, %or.cond.i83.us
  br i1 %or.cond19.i84.us, label %.split119.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87, !llvm.loop !48

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94: ; preds = %.lr.ph, %.backedge
  %i.ef = phi ptr [ %i.ej, %.backedge ], [ %.promoted156, %.lr.ph ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, %1
  br i1 %i.eh, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %bb.ad

.backedge:                                        ; preds = %bb.ae, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100
  %.pre-phi190 = phi i32 [ %i.eq, %bb.ae ], [ %.pre189, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100 ]
  %i.ei = phi i8 [ %i.eo, %bb.ae ], [ %.pre.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100 ]
  %i.ej = phi ptr [ %i.el, %bb.ae ], [ %i.eg, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100 ] ; 2 uses
  %or.cond.i83 = icmp ult i32 %.pre-phi190, 10
  %i.ek = icmp ult i8 %i.ei, 58
  %or.cond19.i84 = and i1 %i.ek, %or.cond.i83
  br i1 %or.cond19.i84, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87, !llvm.loop !48

bb.ad:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 2 ; 15 uses
  %i.em = icmp ne ptr %i.el, %1
  %.pre.pre = load i8, ptr %i.eg, align 1, !tbaa !17 ; 2 uses
  %.pre195 = sext i8 %.pre.pre to i32             ; 2 uses
  %i.en = icmp eq i32 %.pre195, %i.c
  %or.cond269 = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond269, label %bb.ae, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !17  ; 4 uses
  %i.ep = sext i8 %i.eo to i32
  %i.eq = add nsw i32 %i.ep, -48                  ; 2 uses
  %or.cond.i25.i95 = icmp ult i32 %i.eq, 10
  %i.er = icmp ult i8 %i.eo, 64
  %or.cond19.i26.i96 = and i1 %i.er, %or.cond.i25.i95
  %i.es = freeze i1 %or.cond19.i26.i96
  br i1 %i.es, label %.backedge, label %switch.early.test135

switch.early.test135:                             ; preds = %bb.ae
  switch i8 %i.eo, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100 [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87
  ]

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100: ; preds = %bb.ad, %switch.early.test135
  %.pre189 = add nsw i32 %.pre195, -48
  br label %.backedge

_ZN6icu_7817double_conversionL7isDigitEii.exit87: ; preds = %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %.backedge, %.backedge.us, %.preheader
  %.lcssa157 = phi ptr [ %.promoted156, %.preheader ], [ %i.ea, %.backedge.us ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.ej, %.backedge ], [ %i.el, %switch.early.test135 ] ; 3 uses
  store ptr %.lcssa157, ptr %i.a, align 8
  %.not6.not.i = icmp eq ptr %.lcssa157, %1
  %or.cond136 = or i1 %3, %.not6.not.i
  br i1 %or.cond136, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit87, %bb.af
  %i.et = phi ptr [ %i.ex, %bb.af ], [ %.lcssa157, %_ZN6icu_7817double_conversionL7isDigitEii.exit87 ] ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !17
  %i.ev = sext i8 %i.eu to i32
  %i.ew = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ev) ; 3 uses
  br i1 %i.ew, label %bb.af, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82

bb.af:                                            ; preds = %.lr.ph.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 3 uses
  store ptr %i.ex, ptr %i.a, align 8, !tbaa !8
  %.not.not.i = icmp eq ptr %i.ex, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.lr.ph.i, !llvm.loop !18

_ZN6icu_7817double_conversionL7isDigitEii.exit82: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %.split, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45, %.split109, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94, %.split119.us, %bb.af, %.lr.ph.i, %.split119.us.preheader, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i.peel, %.split.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45.peel, %.split109.peel, %bb.ab, %.loopexit, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread, %.split113, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread105, %.split104, %_ZN6icu_7817double_conversionL7isDigitEii.exit87, %bb.ac, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64, %bb.v, %bb.u, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit33
  %.010 = phi i1 [ false, %.loopexit ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45.peel ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit33 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64 ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i.peel ], [ true, %_ZN6icu_7817double_conversionL7isDigitEii.exit87 ], [ false, %.split113 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread105 ], [ true, %.split119.us ], [ false, %.split104 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %.split.peel ], [ true, %.split119.us.preheader ], [ false, %.split109.peel ], [ %i.ew, %bb.af ], [ true, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94 ], [ %i.ew, %.lr.ph.i ], [ false, %.split109 ], [ false, %.split ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !25
  %.promoted = load ptr, ptr %0, align 8, !tbaa !8 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !17 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  %i.c = zext i16 %3 to i32                       ; 6 uses
  br i1 %i.b, label %.lr.ph, label %.preheader358

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !8
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread, label %.backedge360.us

.split.us:                                        ; preds = %.backedge360.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread, label %.backedge360.us, !llvm.loop !49

.backedge360.us:                                  ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader358, !llvm.loop !49

.preheader358:                                    ; preds = %.backedge360, %.backedge360.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge360.us ], [ %i.a, %bb.a ], [ %i.r, %.backedge360 ]
  %.promoted385 = phi ptr [ %i.i, %.backedge360.us ], [ %.promoted, %bb.a ], [ %i.s, %.backedge360 ]
  %i.m = icmp eq i16 %3, 0                        ; 5 uses
  %i.n = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.e

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge360
  %i.o = phi ptr [ %i.s, %.backedge360 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 6 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !8
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread, label %bb.b

.backedge360thread-pre-split:                     ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %bb.b
  %.ph = phi ptr [ %i.p, %bb.b ], [ %i.p, %switch.early.test ], [ %i.u, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !17
  br label %.backedge360

.backedge360:                                     ; preds = %.backedge360thread-pre-split, %bb.c
  %i.r = phi i8 [ %.pr, %.backedge360thread-pre-split ], [ %i.w, %bb.c ] ; 2 uses
  %i.s = phi ptr [ %.ph, %.backedge360thread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = icmp eq i8 %i.r, 48
  br i1 %i.t, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, label %.preheader358, !llvm.loop !49

bb.b:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 4 uses
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %.backedge360thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.p, align 1, !tbaa !17    ; 2 uses
  %i.x = sext i8 %i.w to i32
  %i.y = icmp eq i32 %i.x, %i.c
  br i1 %i.y, label %bb.d, label %.backedge360

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.u, align 1, !tbaa !17    ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -48
  %or.cond.i25.i = icmp ult i32 %i.ab, 10
  %i.ac = icmp ult i8 %i.z, 64
  %or.cond19.i26.i = and i1 %i.ac, %or.cond.i25.i
  %i.ad = freeze i1 %or.cond19.i26.i
  br i1 %i.ad, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i8 %i.z, label %.backedge360thread-pre-split [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  br label %.backedge360thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %.split.us, %.split.us.preheader
  store i8 0, ptr %8, align 1, !tbaa !25
  %i.ae = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.e:                                             ; preds = %.preheader358, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175
  %i.af = phi i8 [ %.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ %i.l, %.preheader358 ] ; 11 uses
  %.promoted389 = phi ptr [ %i.em, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ %.promoted385, %.preheader358 ] ; 10 uses
  %.0134 = phi i64 [ %.5139, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ 0, %.preheader358 ] ; 22 uses
  %.0128 = phi i32 [ %.7, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ 0, %.preheader358 ] ; 23 uses
  %.0123 = phi i8 [ %.5, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ 0, %.preheader358 ] ; 20 uses
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48
  %or.cond.i160 = icmp ult i32 %i.ah, 10          ; 3 uses
  %i.ai = icmp slt i8 %i.af, 64
  %i.aj = and i1 %i.ai, %or.cond.i160
  br i1 %i.aj, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp slt i8 %i.af, 97
  br i1 %.not.i, label %bb.g, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.f
  %i.ak = icmp samesign ult i8 %i.af, 103
  br i1 %i.ak, label %bb.o, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.g:                                             ; preds = %bb.f
  %i.al = add i8 %i.af, -65
  %or.cond325 = icmp ult i8 %i.al, 6
  br i1 %or.cond325, label %bb.o, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282: ; preds = %bb.g, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  switch i8 %i.af, label %.critedge [
    i8 46, label %bb.i
    i8 112, label %.thread317
    i8 80, label %.thread317
  ]

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.promoted389, i64 1 ; 8 uses
  br i1 %i.m, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split, label %bb.j, !llvm.loop !50

bb.j:                                             ; preds = %bb.i
  store ptr %i.am, ptr %0, align 8, !tbaa !8
  %i.an = icmp ne ptr %i.am, %1
  %or.cond512.not = select i1 %or.cond.i160, i1 %i.an, i1 false
  br i1 %or.cond512.not, label %bb.k, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175, !llvm.loop !50

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted389, i64 2 ; 15 uses
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175, label %bb.l, !llvm.loop !50

bb.l:                                             ; preds = %bb.k
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !17
  %i.ar = sext i8 %i.aq to i32
  %i.as = icmp eq i32 %i.c, %i.ar
  br i1 %i.as, label %bb.m, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175, !llvm.loop !50

bb.m:                                             ; preds = %bb.l
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !17  ; 3 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %or.cond.i25.i170 = icmp ult i32 %i.av, 10
  %i.aw = icmp ult i8 %i.at, 64
  %or.cond19.i26.i171 = and i1 %i.aw, %or.cond.i25.i170
  %i.ax = freeze i1 %or.cond19.i26.i171
  br i1 %i.ax, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split, label %switch.early.test349, !llvm.loop !50

switch.early.test349:                             ; preds = %bb.m
  switch i8 %i.at, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 [
    i8 102, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 101, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 100, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 99, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 98, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 97, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 70, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 69, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 68, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 67, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 66, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
    i8 65, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split
  ], !llvm.loop !50

.critedge:                                        ; preds = %bb.h, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  %.not6.not.i = icmp eq ptr %.promoted389, %1
  %or.cond326 = or i1 %5, %.not6.not.i
  br i1 %or.cond326, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.n
  %i.ay = phi ptr [ %i.bc, %bb.n ], [ %.promoted389, %.critedge ] ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ba)
  br i1 %i.bb, label %bb.n, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.n:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 4 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !8
  %.not.not.i = icmp eq ptr %i.bc, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !18

bb.o:                                             ; preds = %bb.g, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.e
  %.0119 = phi i64 [ -87, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ -48, %bb.e ], [ -55, %bb.g ]
  %9 = zext nneg i8 %i.af to i64
  %10 = add nsw i64 %.0119, %9
  %i.bd = trunc nuw i8 %.0123 to i1
  %i.be = add nsw i32 %.0128, -4
  %spec.select148 = select i1 %i.bd, i32 %i.be, i32 %.0128 ; 22 uses
  %i.bf = shl nsw i64 %.0134, 4
  %i.bg = add nsw i64 %10, %i.bf                  ; 24 uses
  %i.bh = ashr i64 %i.bg, %i.n
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %.lr.ph388, label %._crit_edge

.lr.ph388:                                        ; preds = %.preheader, %.lr.ph388
  %.0117387 = phi i32 [ %i.bk, %.lr.ph388 ], [ 1, %.preheader ]
  %.0118386 = phi i32 [ %i.bl, %.lr.ph388 ], [ %i.bi, %.preheader ] ; 2 uses
  %i.bk = add nuw nsw i32 %.0117387, 1            ; 2 uses
  %i.bl = lshr i32 %.0118386, 1
  %i.bm = icmp samesign ugt i32 %.0118386, 3
  br i1 %i.bm, label %.lr.ph388, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph388, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.bk, %.lr.ph388 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.bn = xor i32 %notmask, -1
  %i.bo = trunc i64 %i.bg to i32
  %i.bp = and i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = zext nneg i32 %.0117.lcssa to i64
  %i.br = ashr i64 %i.bg, %i.bq                   ; 4 uses
  %i.bs = add nsw i32 %.0117.lcssa, %spec.select148
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %i.bt = phi i8 [ %i.af, %._crit_edge ], [ %i.ct, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %i.bu = phi ptr [ %.promoted389, %._crit_edge ], [ %i.cu, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.bs, %._crit_edge ], [ %spec.select149, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select328, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.m, label %.split289, label %bb.q

.split289:                                        ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 4 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !8
  %i.bw = icmp eq ptr %i.bv, %1
  br i1 %i.bw, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

bb.q:                                             ; preds = %bb.p
  %i.bx = sext i8 %i.bt to i32
  %i.by = add nsw i32 %i.bx, -48
  %or.cond.i.i176 = icmp ult i32 %i.by, 10
  %i.bz = icmp ult i8 %i.bt, 64
  %or.cond19.i.i177 = and i1 %i.bz, %or.cond.i.i176
  %i.ca = freeze i1 %or.cond19.i.i177
  br i1 %i.ca, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182, label %switch.early.test350

switch.early.test350:                             ; preds = %bb.q
  switch i8 %i.bt, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188 [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182: ; preds = %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 7 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !8
  %i.cc = icmp eq ptr %i.cb, %1
  br i1 %i.cc, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, %1
  br i1 %i.ce, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cg = sext i8 %i.cf to i32
  %i.ch = icmp eq i32 %i.c, %i.cg
  br i1 %i.ch, label %bb.t, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !17  ; 3 uses
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -48
  %or.cond.i25.i183 = icmp ult i32 %i.ck, 10
  %i.cl = icmp ult i8 %i.ci, 64
  %or.cond19.i26.i184 = and i1 %i.cl, %or.cond.i25.i183
  %i.cm = freeze i1 %or.cond19.i26.i184
  br i1 %i.cm, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187, label %switch.early.test351

switch.early.test351:                             ; preds = %bb.t
  switch i8 %i.ci, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187: ; preds = %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %bb.t
  store ptr %i.cd, ptr %0, align 8, !tbaa !8
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188: ; preds = %switch.early.test350
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 4 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !8
  %i.co = icmp eq ptr %i.cn, %1
  br i1 %i.co, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread: ; preds = %switch.early.test351, %bb.s, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187, %bb.r, %.split289, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188
  %i.cp = phi ptr [ %i.cb, %switch.early.test351 ], [ %i.cb, %bb.s ], [ %i.cd, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187 ], [ %i.cb, %bb.r ], [ %i.bv, %.split289 ], [ %i.cn, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188 ] ; 4 uses
  br i1 %4, label %bb.u, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split

bb.u:                                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17  ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 46
  br i1 %i.cr, label %bb.v, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !8
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split: ; preds = %bb.v, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread
  %.ph470 = phi ptr [ %i.cp, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread ], [ %i.cs, %bb.v ] ; 2 uses
  %.2125.ph = phi i8 [ %.1124, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread ], [ 1, %bb.v ]
  %.pr471 = load i8, ptr %.ph470, align 1, !tbaa !17
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split, %bb.u
  %i.ct = phi i8 [ %.pr471, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split ], [ %i.cq, %bb.u ] ; 5 uses
  %i.cu = phi ptr [ %.ph470, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split ], [ %i.cp, %bb.u ] ; 2 uses
  %.2125 = phi i8 [ %.2125.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split ], [ %.1124, %bb.u ] ; 2 uses
  %i.cv = sext i8 %i.ct to i32
  %i.cw = add nsw i32 %i.cv, -48
  %or.cond.i202 = icmp ult i32 %i.cw, 10
  %i.cx = icmp ult i8 %i.ct, 64
  %or.cond19.i = and i1 %i.cx, %or.cond.i202
  %i.cy = freeze i1 %or.cond19.i
  br i1 %i.cy, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %switch.early.test352

switch.early.test352:                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201
  switch i8 %i.ct, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287 [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread: ; preds = %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201
  %i.cz = icmp eq i8 %i.ct, 48
  %spec.select328 = and i1 %.0116, %i.cz
  %i.da = trunc nuw i8 %.2125 to i1
  %i.db = add nsw i32 %.2130, 4
  %spec.select149 = select i1 %i.da, i32 %.2130, i32 %i.db
  br label %bb.p, !llvm.loop !52

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287: ; preds = %switch.early.test352, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182, %.split289, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188
  %.promoted.i204 = phi ptr [ %i.cu, %switch.early.test352 ], [ %i.cb, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182 ], [ %i.bv, %.split289 ], [ %i.cn, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188 ] ; 3 uses
  %.not6.not.i205 = icmp eq ptr %.promoted.i204, %1
  %i.dc = or i1 %5, %.not6.not.i205
  %or.cond514 = or i1 %i.dc, %4
  br i1 %or.cond514, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, %bb.w
  %i.dd = phi ptr [ %i.dh, %bb.w ], [ %.promoted.i204, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287 ] ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17
  %i.df = sext i8 %i.de to i32
  %i.dg = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.df)
  br i1 %i.dg, label %bb.w, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.w:                                             ; preds = %.lr.ph.i206
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 4 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !8
  %.not.not.i210 = icmp eq ptr %i.dh, %1
  br i1 %.not.not.i210, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211, label %.lr.ph.i206, !llvm.loop !18

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211: ; preds = %bb.w, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287
  %i.di = phi ptr [ %.promoted.i204, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287 ], [ %i.dh, %bb.w ]
  %i.dj = add nsw i32 %.0117.lcssa, -1
  %i.dk = shl nuw i32 1, %i.dj                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb:bb.a
bb.ar:                                            ; preds = %bb.aq
  br i1 %2, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  br i1 %i.go, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gp = sub nsw i64 0, %.5139.ph320
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.6140 = phi i64 [ %i.gp, %bb.at ], [ %.5139.ph320, %bb.ar ]
  %i.gq = sitofp i64 %.6140 to double
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.av:                                            ; preds = %bb.aq
  %i.gr = icmp ugt i64 %.5139.ph320, 9007199254740991
  br i1 %i.gr, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.av, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.gt, %.lr.ph.i.i ], [ %.8, %bb.av ]
  %.01620.i.i = phi i64 [ %i.gs, %.lr.ph.i.i ], [ %.5139.ph320, %bb.av ] ; 2 uses
  %i.gs = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.gt = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.gu = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.gu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !54

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.av
  %.016.lcssa.i.i = phi i64 [ %.5139.ph320, %bb.av ], [ %i.gs, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.8, %bb.av ], [ %i.gt, %.lr.ph.i.i ] ; 5 uses
  %i.gv = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.gv, label %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i
  %i.gw = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.gw, label %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aw
  %i.gx = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.gy = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.gz = icmp eq i64 %i.gy, 0                    ; 2 uses
  %i.ha = and i1 %i.gx, %i.gz
  br i1 %i.ha, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.hc, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.hb, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.hb = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.hc = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.hd = icmp sgt i32 %.124.i.i, -1073
  %i.he = and i64 %.11723.i.i, 2251799813685248
  %i.hf = icmp eq i64 %i.he, 0                    ; 2 uses
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !55

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.hb, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.hc, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.gz, %.preheader.i.i ], [ %i.hf, %.lr.ph25.i.i ]
  %i.hh = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.hh, i1 %.lcssa.i.i, i1 false
  %i.hi = add nsw i32 %.1.lcssa.i.i, 1075
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.hk
  %i.hl = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.hm = or disjoint i64 %.0.i.i, %i.hl
  %i.hn = bitcast i64 %i.hm to double
  br label %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit

_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit: ; preds = %._crit_edge.i.i, %bb.aw, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.hn, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.aw ] ; 2 uses
  %i.ho = fneg double %.018.i.i
  %i.hp = select i1 %2, double %i.ho, double %.018.i.i
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311: ; preds = %.lr.ph.i, %.lr.ph.i206, %bb.as, %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit, %bb.au, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %.4 = phi double [ %i.ae, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread ], [ -0.000000e+00, %bb.as ], [ %i.hp, %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit ], [ %i.gq, %bb.au ], [ %6, %.lr.ph.i206 ], [ %6, %.lr.ph.i ]
  ret double %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, double noundef %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %7, align 1, !tbaa !25
  %.promoted = load ptr, ptr %0, align 8, !tbaa !8 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !17 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader208

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %3 to i32
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %.lr.ph.split

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !8
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit, label %.backedge.us

.split.us:                                        ; preds = %.backedge.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit, label %.backedge.us, !llvm.loop !56

.backedge.us:                                     ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader208, !llvm.loop !56

.preheader208:                                    ; preds = %.backedge, %.backedge.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge.us ], [ %i.a, %bb.a ], [ %i.w, %.backedge ] ; 3 uses
  %.promoted225 = phi ptr [ %i.i, %.backedge.us ], [ %.promoted, %bb.a ], [ %i.x, %.backedge ] ; 2 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48
  %or.cond.i226 = icmp ult i32 %i.n, 10
  %i.o = icmp slt i8 %i.l, 56
  %i.p = and i1 %i.o, %or.cond.i226
  br i1 %i.p, label %.lr.ph228, label %._crit_edge

.lr.ph228:                                        ; preds = %.preheader208
  %i.q = select i1 %6, i64 53, i64 24             ; 2 uses
  %i.r = zext i16 %3 to i32                       ; 2 uses
  %i.s = icmp eq i16 %3, 0                        ; 2 uses
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.t = phi ptr [ %i.x, %.backedge ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 6 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit, label %bb.b, !llvm.loop !56

.backedgethread-pre-split:                        ; preds = %.split178, %bb.b, %bb.d
  %.ph = phi ptr [ %i.u, %bb.d ], [ %i.u, %bb.b ], [ %i.z, %.split178 ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !17
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.c
  %i.w = phi i8 [ %.pr, %.backedgethread-pre-split ], [ %i.ab, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.ph, %.backedgethread-pre-split ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = icmp eq i8 %i.w, 48
  br i1 %i.y, label %.lr.ph.split, label %.preheader208, !llvm.loop !56

bb.b:                                             ; preds = %.lr.ph.split
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.backedgethread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !17   ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, %i.c
  br i1 %i.ad, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48
  %or.cond.i25.i = icmp ult i32 %i.ag, 10
  %i.ah = icmp ult i8 %i.ae, 56
  %or.cond19.i26.i = and i1 %i.ah, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %.split178, label %.backedgethread-pre-split

.split178:                                        ; preds = %bb.d
  store ptr %i.z, ptr %0, align 8, !tbaa !8
  br label %.backedgethread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit: ; preds = %.lr.ph.split, %.split.us, %.split.us.preheader
  store i8 0, ptr %7, align 1, !tbaa !25
  %i.ai = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

._crit_edge:                                      ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit, %.preheader208
  %.0134.lcssa = phi i64 [ 0, %.preheader208 ], [ %i.ar, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 2 uses
  %.lcssa214 = phi ptr [ %.promoted225, %.preheader208 ], [ %i.dh, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 2 uses
  %.not6.not.i = icmp eq ptr %.lcssa214, %1
  %or.cond = or i1 %4, %.not6.not.i
  br i1 %or.cond, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.e
  %i.aj = phi ptr [ %i.an, %bb.e ], [ %.lcssa214, %._crit_edge ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.al)
  br i1 %i.am, label %bb.e, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.e:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !8
  %.not.not.i = icmp eq ptr %i.an, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %.lr.ph.i, !llvm.loop !57

bb.f:                                             ; preds = %.lr.ph228, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit
  %i.ao = phi i8 [ %i.l, %.lr.ph228 ], [ %i.di, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 2 uses
  %.0134227 = phi i64 [ 0, %.lr.ph228 ], [ %i.ar, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ]
  %.promoted235 = phi ptr [ %.promoted225, %.lr.ph228 ], [ %i.dh, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit ] ; 4 uses
  %8 = zext nneg i8 %i.ao to i64
  %i.ap = shl nsw i64 %.0134227, 3
  %i.aq = add i64 %i.ap, -48
  %i.ar = add i64 %i.aq, %8                       ; 7 uses
  %i.as = ashr i64 %i.ar, %i.q
  %i.at = trunc i64 %i.as to i32                  ; 3 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %.preheader, %.lr.ph232
  %.0117231 = phi i32 [ %i.av, %.lr.ph232 ], [ 1, %.preheader ]
  %.0118230 = phi i32 [ %i.aw, %.lr.ph232 ], [ %i.at, %.preheader ] ; 2 uses
  %i.av = add nuw nsw i32 %.0117231, 1            ; 2 uses
  %i.aw = lshr i32 %.0118230, 1
  %i.ax = icmp samesign ugt i32 %.0118230, 3
  br i1 %i.ax, label %.lr.ph232, label %._crit_edge233, !llvm.loop !58

._crit_edge233:                                   ; preds = %.lr.ph232, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.av, %.lr.ph232 ] ; 6 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.ay = xor i32 %notmask, -1
  %i.az = trunc i64 %i.ar to i32
  %i.ba = and i32 %i.ay, %i.az                    ; 2 uses
  %i.bb = zext nneg i32 %.0117.lcssa to i64
  %i.bc = ashr i64 %i.ar, %i.bb                   ; 4 uses
  br i1 %i.s, label %.split.us236, label %.split

.split.us236:                                     ; preds = %._crit_edge233
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted235, i64 1 ; 4 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !8
  %i.be = icmp eq ptr %i.bd, %1
  br i1 %i.be, label %_ZN6icu_7817double_conversionL7isDigitEii.exit, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us

_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us: ; preds = %.split.us236, %.split183.us
  %i.bf = phi ptr [ %i.bm, %.split183.us ], [ %i.bd, %.split.us236 ] ; 3 uses
  %.0116.us239 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ] ; 2 uses
  %.2130.us238 = phi i32 [ %i.bl, %.split183.us ], [ %.0117.lcssa, %.split.us236 ] ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17  ; 3 uses
  %i.bh = sext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48
  %or.cond.i158.us = icmp ult i32 %i.bi, 10
  %i.bj = icmp ult i8 %i.bg, 56
  %or.cond19.i.us = and i1 %i.bj, %or.cond.i158.us
  br i1 %or.cond19.i.us, label %.split183.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit

.split183.us:                                     ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us
  %i.bk = icmp eq i8 %i.bg, 48
  %spec.select206.us = and i1 %.0116.us239, %i.bk ; 2 uses
  %i.bl = add nuw nsw i32 %.2130.us238, 3         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 4 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !8
  %i.bn = icmp eq ptr %i.bm, %1
  br i1 %i.bn, label %_ZN6icu_7817double_conversionL7isDigitEii.exit, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us, !llvm.loop !59

.split:                                           ; preds = %._crit_edge233, %bb.k
  %i.bo = phi i8 [ %i.cd, %bb.k ], [ %i.ao, %._crit_edge233 ]
  %i.bp = phi ptr [ %i.cc, %bb.k ], [ %.promoted235, %._crit_edge233 ] ; 2 uses
  %.2130 = phi i32 [ %i.ci, %bb.k ], [ %.0117.lcssa, %._crit_edge233 ] ; 3 uses
  %.0116 = phi i1 [ %spec.select206, %bb.k ], [ true, %._crit_edge233 ] ; 3 uses
  %i.bq = add i8 %i.bo, -56
  %or.cond19.i.not3.i150 = icmp ult i8 %i.bq, -8  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 8 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !8
  %i.bs = icmp eq ptr %i.br, %1                   ; 2 uses
  %brmerge.i151 = select i1 %or.cond19.i.not3.i150, i1 true, i1 %i.bs
  br i1 %brmerge.i151, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157, label %bb.g

bb.g:                                             ; preds = %.split
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, %1
  br i1 %i.bu, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bw = sext i8 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, %i.r
  br i1 %i.bx, label %bb.i, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

bb.i:                                             ; preds = %bb.h
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !17  ; 2 uses
  %i.bz = sext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48
  %or.cond.i25.i155 = icmp ult i32 %i.ca, 10
  %i.cb = icmp ult i8 %i.by, 56
  %or.cond19.i26.i156 = and i1 %i.cb, %or.cond.i25.i155
  br i1 %or.cond19.i26.i156, label %bb.j, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.bt, ptr %0, align 8, !tbaa !8
  br label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157: ; preds = %.split
  %not.or.cond19.i.not3.i152 = xor i1 %or.cond19.i.not3.i150, true
  %.mux.i153 = select i1 %not.or.cond19.i.not3.i152, i1 true, i1 %i.bs
  br i1 %.mux.i153, label %_ZN6icu_7817double_conversionL7isDigitEii.exit, label %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread: ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157
  %i.cc = phi ptr [ %i.bt, %bb.j ], [ %i.br, %bb.i ], [ %i.br, %bb.g ], [ %i.br, %bb.h ], [ %i.br, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ] ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17  ; 4 uses
  %i.ce = sext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48
  %or.cond.i158 = icmp ult i32 %i.cf, 10
  %i.cg = icmp ult i8 %i.cd, 56
  %or.cond19.i = and i1 %i.cg, %or.cond.i158
  br i1 %or.cond19.i, label %bb.k, label %_ZN6icu_7817double_conversionL7isDigitEii.exit

bb.k:                                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread
  %i.ch = icmp eq i8 %i.cd, 48
  %spec.select206 = and i1 %.0116, %i.ch
  %i.ci = add nuw nsw i32 %.2130, 3
  br label %.split, !llvm.loop !59

_ZN6icu_7817double_conversionL7isDigitEii.exit:   ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us, %.split183.us, %.split.us236
  %.promoted.i159 = phi ptr [ %i.bm, %.split183.us ], [ %i.bd, %.split.us236 ], [ %i.bf, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %i.br, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ], [ %i.cc, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ] ; 2 uses
  %.us-phi = phi i32 [ %i.bl, %.split183.us ], [ %.0117.lcssa, %.split.us236 ], [ %.2130.us238, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %.2130, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ], [ %.2130, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  %.us-phi237 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ], [ %.0116.us239, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %.0116, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ], [ %.0116, %_ZN6icu_7817double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  %.not6.not.i160 = icmp eq ptr %.promoted.i159, %1
  %or.cond323 = select i1 %4, i1 true, i1 %.not6.not.i160
  br i1 %or.cond323, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit, %bb.l
  %i.cj = phi ptr [ %i.cn, %bb.l ], [ %.promoted.i159, %_ZN6icu_7817double_conversionL7isDigitEii.exit ] ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = sext i8 %i.ck to i32
  %i.cm = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.cl)
  br i1 %i.cm, label %bb.l, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.l:                                             ; preds = %.lr.ph.i161
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 3 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !8
  %.not.not.i165 = icmp eq ptr %i.cn, %1
  br i1 %.not.not.i165, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166, label %.lr.ph.i161, !llvm.loop !57

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166: ; preds = %bb.l, %_ZN6icu_7817double_conversionL7isDigitEii.exit
  %i.co = add nsw i32 %.0117.lcssa, -1
  %i.cp = shl nuw i32 1, %i.co                    ; 2 uses
  %i.cq = icmp sgt i32 %i.ba, %i.cp
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166
  %i.cr = add nsw i64 %i.bc, 1
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.n:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166
  %i.cs = icmp eq i32 %i.ba, %i.cp
  br i1 %i.cs, label %bb.o, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ct = and i64 %i.bc, 1
  %i.cu = icmp eq i64 %i.ct, 0
  %or.cond3 = select i1 %i.cu, i1 %.us-phi237, i1 false
  %not.or.cond3 = xor i1 %or.cond3, true
  %i.cv = zext i1 %not.or.cond3 to i64
  %spec.select = add nsw i64 %i.bc, %i.cv
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.p:                                             ; preds = %bb.f
  %i.cw = getelementptr i8, ptr %.promoted235, i64 1 ; 7 uses
  store ptr %i.cw, ptr %0, align 8, !tbaa !8
  %i.cx = icmp eq ptr %i.cw, %1                   ; 2 uses
  br i1 %i.s, label %.split189, label %bb.q

.split189:                                        ; preds = %bb.p
  br i1 %i.cx, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.q:                                             ; preds = %bb.p
  br i1 %i.cx, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %.promoted235, i64 2 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, %1
  br i1 %i.cz, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.db = sext i8 %i.da to i32
  %i.dc = icmp eq i32 %i.db, %i.r
  br i1 %i.dc, label %bb.t, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.t:                                             ; preds = %bb.s
  %i.dd = load i8, ptr %i.cy, align 1, !tbaa !17  ; 2 uses
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48
  %or.cond.i25.i173 = icmp ult i32 %i.df, 10
  %i.dg = icmp ult i8 %i.dd, 56
  %or.cond19.i26.i174 = and i1 %i.dg, %or.cond.i25.i173
  br i1 %or.cond19.i26.i174, label %bb.u, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.u:                                             ; preds = %bb.t
  store ptr %i.cy, ptr %0, align 8, !tbaa !8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.s, %.split189
  %i.dh = phi ptr [ %i.cy, %bb.u ], [ %i.cw, %bb.t ], [ %i.cw, %bb.r ], [ %i.cw, %bb.s ], [ %i.cw, %.split189 ] ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !17  ; 3 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48
end_hunk_1
