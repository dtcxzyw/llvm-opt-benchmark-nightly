Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/double-conversion-string-to-double?download=true
inline.NumInlined: 162
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7817double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb:.peel.begin
_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58: ; preds = %bb.x
  br i1 %i.cx, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, %1
  br i1 %i.cz, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !22  ; 2 uses
  %i.db = sext i8 %i.da to i32
  %i.dc = icmp eq i32 %i.db, %i.c
  br i1 %i.dc, label %bb.aa, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i8, ptr %i.cy, align 1, !tbaa !22  ; 3 uses
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48
  %or.cond.i25.i59 = icmp ult i32 %i.df, 10
  %i.dg = icmp ult i8 %i.dd, 64
  %or.cond19.i26.i60 = and i1 %i.dg, %or.cond.i25.i59
  %i.dh = freeze i1 %or.cond19.i26.i60
  br i1 %i.dh, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63, label %switch.early.test134

switch.early.test134:                             ; preds = %bb.aa
  switch i8 %i.dd, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63: ; preds = %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %bb.aa
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64: ; preds = %bb.x
  br i1 %i.cx, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64, %.split113, %bb.y, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63, %switch.early.test134
  %.ph250 = phi ptr [ %i.cw, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64 ], [ %i.ct, %.split113 ], [ %i.cw, %bb.y ], [ %i.cy, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63 ], [ %i.cw, %switch.early.test134 ] ; 2 uses
  %.pr = load i8, ptr %.ph250, align 1, !tbaa !22
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split, %bb.z
  %i.di = phi i8 [ %.pr, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split ], [ %i.da, %bb.z ]
  %i.dj = phi ptr [ %.ph250, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.threadthread-pre-split ], [ %i.cw, %bb.z ] ; 2 uses
  switch i8 %i.di, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread [
    i8 43, label %bb.ab
    i8 45, label %bb.ab
  ]

bb.ab:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !15
  %i.dl = icmp eq ptr %i.dk, %1
  br i1 %i.dl, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread: ; preds = %bb.ab, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread
  %i.dm = phi ptr [ %i.dk, %bb.ab ], [ %i.dj, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64.thread ]
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !22  ; 2 uses
  %i.do = sext i8 %i.dn to i32
  %i.dp = add nsw i32 %i.do, -48
  %or.cond.i78 = icmp ult i32 %i.dp, 10
  %i.dq = icmp ult i8 %i.dn, 58
  %or.cond19.i79 = and i1 %i.dq, %or.cond.i78
  br i1 %or.cond19.i79, label %bb.ac, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82

bb.ac:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread
  %i.dr = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %2, i32 noundef 16, ptr %1)
  br i1 %i.dr, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %.promoted156 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 4 uses
  %i.ds = load i8, ptr %.promoted156, align 1, !tbaa !22 ; 2 uses
  %i.dt = sext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48
  %or.cond.i83158 = icmp ult i32 %i.du, 10
  %i.dv = icmp ult i8 %i.ds, 58
  %or.cond19.i84159 = and i1 %i.dv, %or.cond.i83158
  br i1 %or.cond19.i84159, label %.lr.ph, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.b, label %.split119.us.preheader, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94

.split119.us.preheader:                           ; preds = %.lr.ph
  %i.dw = getelementptr inbounds nuw i8, ptr %.promoted156, i64 1 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %1
  br i1 %i.dx, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.backedge.us

.split119.us:                                     ; preds = %.backedge.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %1
  br i1 %i.dz, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.backedge.us, !llvm.loop !50

.backedge.us:                                     ; preds = %.split119.us.preheader, %.split119.us
  %i.ea = phi ptr [ %i.dy, %.split119.us ], [ %i.dw, %.split119.us.preheader ] ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22  ; 2 uses
  %i.ec = sext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48
  %or.cond.i83.us = icmp ult i32 %i.ed, 10
  %i.ee = icmp ult i8 %i.eb, 58
  %or.cond19.i84.us = and i1 %i.ee, %or.cond.i83.us
  br i1 %or.cond19.i84.us, label %.split119.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87, !llvm.loop !50

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
  br i1 %or.cond19.i84, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87, !llvm.loop !50

bb.ad:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 2 ; 15 uses
  %i.em = icmp ne ptr %i.el, %1
  %.pre.pre = load i8, ptr %i.eg, align 1, !tbaa !22 ; 2 uses
  %.pre195 = sext i8 %.pre.pre to i32             ; 2 uses
  %i.en = icmp eq i32 %.pre195, %i.c
  %or.cond269 = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond269, label %bb.ae, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit100

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !22  ; 4 uses
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
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !22
  %i.ev = sext i8 %i.eu to i32
  %i.ew = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ev) ; 3 uses
  br i1 %i.ew, label %bb.af, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82

bb.af:                                            ; preds = %.lr.ph.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 3 uses
  store ptr %i.ex, ptr %i.a, align 8, !tbaa !15
  %.not.not.i = icmp eq ptr %i.ex, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.lr.ph.i, !llvm.loop !0

_ZN6icu_7817double_conversionL7isDigitEii.exit82: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %.split, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45, %.split109, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94, %.split119.us, %bb.af, %.lr.ph.i, %.split119.us.preheader, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i.peel, %.split.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45.peel, %.split109.peel, %bb.ab, %.loopexit, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread, %.split113, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread105, %.split104, %_ZN6icu_7817double_conversionL7isDigitEii.exit87, %bb.ac, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64, %bb.v, %bb.u, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit33
  %.010 = phi i1 [ false, %.loopexit ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45.peel ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit33 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit64 ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit77.thread ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i.peel ], [ true, %_ZN6icu_7817double_conversionL7isDigitEii.exit87 ], [ false, %.split113 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread105 ], [ true, %.split119.us ], [ false, %.split104 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %.split.peel ], [ true, %.split119.us.preheader ], [ false, %.split109.peel ], [ %i.ew, %bb.af ], [ true, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i94 ], [ %i.ew, %.lr.ph.i ], [ false, %.split109 ], [ false, %.split ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !29
  %.promoted = load ptr, ptr %0, align 8, !tbaa !15 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !22 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  %i.c = zext i16 %3 to i32                       ; 5 uses
  br i1 %i.b, label %.lr.ph, label %.preheader358

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread, label %.backedge360.us

.split.us:                                        ; preds = %.backedge360.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread, label %.backedge360.us, !llvm.loop !51

.backedge360.us:                                  ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader358, !llvm.loop !51

.preheader358:                                    ; preds = %.backedge360, %.backedge360.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge360.us ], [ %i.a, %bb.a ], [ %i.r, %.backedge360 ]
  %.promoted385 = phi ptr [ %i.i, %.backedge360.us ], [ %.promoted, %bb.a ], [ %i.s, %.backedge360 ]
  %i.m = icmp eq i16 %3, 0                        ; 4 uses
  %i.n = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.e

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge360
  %i.o = phi ptr [ %i.s, %.backedge360 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 6 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !15
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread, label %bb.b

.backedge360thread-pre-split:                     ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %bb.b
  %.ph = phi ptr [ %i.p, %bb.b ], [ %i.p, %switch.early.test ], [ %i.u, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !22
  br label %.backedge360

.backedge360:                                     ; preds = %.backedge360thread-pre-split, %bb.c
  %i.r = phi i8 [ %.pr, %.backedge360thread-pre-split ], [ %i.w, %bb.c ] ; 2 uses
  %i.s = phi ptr [ %.ph, %.backedge360thread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = icmp eq i8 %i.r, 48
  br i1 %i.t, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, label %.preheader358, !llvm.loop !51

bb.b:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 4 uses
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %.backedge360thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.p, align 1, !tbaa !22    ; 2 uses
  %i.x = sext i8 %i.w to i32
  %i.y = icmp eq i32 %i.x, %i.c
  br i1 %i.y, label %bb.d, label %.backedge360

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.u, align 1, !tbaa !22    ; 3 uses
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
  store ptr %i.u, ptr %0, align 8, !tbaa !15
  br label %.backedge360thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %.split.us, %.split.us.preheader
  store i8 0, ptr %8, align 1, !tbaa !29
  %i.ae = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.e:                                             ; preds = %.preheader358, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175
  %i.af = phi i8 [ %.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ %i.l, %.preheader358 ] ; 13 uses
  %.promoted389 = phi ptr [ %9, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ %.promoted385, %.preheader358 ] ; 9 uses
  %.0134 = phi i64 [ %.5139, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ 0, %.preheader358 ] ; 5 uses
  %.0128 = phi i32 [ %.7, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ 0, %.preheader358 ] ; 6 uses
  %.0123 = phi i8 [ %.5, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 ], [ 0, %.preheader358 ] ; 20 uses
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48
  %or.cond.i160 = icmp ult i32 %i.ah, 10          ; 2 uses
  %i.ai = icmp slt i8 %i.af, 64
  %i.aj = and i1 %i.ai, %or.cond.i160
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = sext i8 %i.af to i64
  %i.al = add nsw i64 %i.ak, -48
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp slt i8 %i.af, 97
  br i1 %.not.i, label %bb.i, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.g
  %i.am = icmp samesign ult i8 %i.af, 103
  br i1 %i.am, label %bb.h, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.h:                                             ; preds = %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit
  %i.an = zext nneg i8 %i.af to i64
  %i.ao = add nsw i64 %i.an, -87
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ap = add i8 %i.af, -65
  %or.cond325 = icmp ult i8 %i.ap, 6
  br i1 %or.cond325, label %bb.j, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.j:                                             ; preds = %bb.i
  %i.aq = zext nneg i8 %i.af to i64
  %i.ar = add nsw i64 %i.aq, -55
  br label %bb.n

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282: ; preds = %bb.i, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  switch i8 %i.af, label %.critedge [
    i8 46, label %bb.l
    i8 112, label %.thread317
    i8 80, label %.thread317
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.promoted389, i64 1
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split, !llvm.loop !52

.critedge:                                        ; preds = %bb.k, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  %.not6.not.i = icmp eq ptr %.promoted389, %1
  %or.cond326 = or i1 %5, %.not6.not.i
  br i1 %or.cond326, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.m
  %i.at = phi ptr [ %i.ax, %bb.m ], [ %.promoted389, %.critedge ] ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = sext i8 %i.au to i32
  %i.aw = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.av)
  br i1 %i.aw, label %bb.m, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.m:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !15
  %.not.not.i = icmp eq ptr %i.ax, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.f
  %.0119 = phi i64 [ %i.ao, %bb.h ], [ %i.ar, %bb.j ], [ %i.al, %bb.f ]
  %i.ay = trunc nuw i8 %.0123 to i1
  %i.az = add nsw i32 %.0128, -4
  %spec.select148 = select i1 %i.ay, i32 %i.az, i32 %.0128 ; 22 uses
  %i.ba = shl nsw i64 %.0134, 4
  %i.bb = add nsw i64 %.0119, %i.ba               ; 24 uses
  %i.bc = ashr i64 %i.bb, %i.n
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %.lr.ph388, label %._crit_edge

.lr.ph388:                                        ; preds = %.preheader, %.lr.ph388
  %.0117387 = phi i32 [ %i.bf, %.lr.ph388 ], [ 1, %.preheader ]
  %.0118386 = phi i32 [ %i.bg, %.lr.ph388 ], [ %i.bd, %.preheader ] ; 2 uses
  %i.bf = add nuw nsw i32 %.0117387, 1            ; 2 uses
  %i.bg = lshr i32 %.0118386, 1
  %i.bh = icmp samesign ugt i32 %.0118386, 3
  br i1 %i.bh, label %.lr.ph388, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph388, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.bf, %.lr.ph388 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.bi = xor i32 %notmask, -1
  %i.bj = trunc i64 %i.bb to i32
  %i.bk = and i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = zext nneg i32 %.0117.lcssa to i64
  %i.bm = ashr i64 %i.bb, %i.bl                   ; 4 uses
  %i.bn = add nsw i32 %.0117.lcssa, %spec.select148
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %i.bo = phi i8 [ %i.af, %._crit_edge ], [ %i.co, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %i.bp = phi ptr [ %.promoted389, %._crit_edge ], [ %i.cp, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.bn, %._crit_edge ], [ %spec.select149, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select328, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.m, label %.split289, label %bb.p

.split289:                                        ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 4 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !15
  %i.br = icmp eq ptr %i.bq, %1
  br i1 %i.br, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

bb.p:                                             ; preds = %bb.o
  %i.bs = sext i8 %i.bo to i32
  %i.bt = add nsw i32 %i.bs, -48
  %or.cond.i.i176 = icmp ult i32 %i.bt, 10
  %i.bu = icmp ult i8 %i.bo, 64
  %or.cond19.i.i177 = and i1 %i.bu, %or.cond.i.i176
  %i.bv = freeze i1 %or.cond19.i.i177
  br i1 %i.bv, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182, label %switch.early.test350

switch.early.test350:                             ; preds = %bb.p
  switch i8 %i.bo, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188 [
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

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182: ; preds = %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 7 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !15
  %i.bx = icmp eq ptr %i.bw, %1
  br i1 %i.bx, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 4 uses
  %i.bz = icmp eq ptr %i.by, %1
  br i1 %i.bz, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !22
  %i.cb = sext i8 %i.ca to i32
  %i.cc = icmp eq i32 %i.c, %i.cb
  br i1 %i.cc, label %bb.s, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

bb.s:                                             ; preds = %bb.r
  %i.cd = load i8, ptr %i.by, align 1, !tbaa !22  ; 3 uses
  %i.ce = sext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48
  %or.cond.i25.i183 = icmp ult i32 %i.cf, 10
  %i.cg = icmp ult i8 %i.cd, 64
  %or.cond19.i26.i184 = and i1 %i.cg, %or.cond.i25.i183
  %i.ch = freeze i1 %or.cond19.i26.i184
  br i1 %i.ch, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187, label %switch.early.test351

switch.early.test351:                             ; preds = %bb.s
  switch i8 %i.cd, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread [
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

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187: ; preds = %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %bb.s
  store ptr %i.by, ptr %0, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188: ; preds = %switch.early.test350
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 4 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !15
  %i.cj = icmp eq ptr %i.ci, %1
  br i1 %i.cj, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread: ; preds = %switch.early.test351, %bb.r, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187, %bb.q, %.split289, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188
  %i.ck = phi ptr [ %i.bw, %switch.early.test351 ], [ %i.bw, %bb.r ], [ %i.by, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i187 ], [ %i.bw, %bb.q ], [ %i.bq, %.split289 ], [ %i.ci, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188 ] ; 4 uses
  br i1 %4, label %bb.t, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split

bb.t:                                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !22  ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 46
  br i1 %i.cm, label %bb.u, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split: ; preds = %bb.u, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread
  %.ph470 = phi ptr [ %i.ck, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread ], [ %i.cn, %bb.u ] ; 2 uses
  %.2125.ph = phi i8 [ %.1124, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread ], [ 1, %bb.u ]
  %.pr471 = load i8, ptr %.ph470, align 1, !tbaa !22
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split, %bb.t
  %i.co = phi i8 [ %.pr471, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split ], [ %i.cl, %bb.t ] ; 5 uses
  %i.cp = phi ptr [ %.ph470, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split ], [ %i.ck, %bb.t ] ; 2 uses
  %.2125 = phi i8 [ %.2125.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201thread-pre-split ], [ %.1124, %bb.t ] ; 2 uses
  %i.cq = sext i8 %i.co to i32
  %i.cr = add nsw i32 %i.cq, -48
  %or.cond.i202 = icmp ult i32 %i.cr, 10
  %i.cs = icmp ult i8 %i.co, 64
  %or.cond19.i = and i1 %i.cs, %or.cond.i202
  %i.ct = freeze i1 %or.cond19.i
  br i1 %i.ct, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %switch.early.test352

switch.early.test352:                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit201
  switch i8 %i.co, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287 [
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
  %i.cu = icmp eq i8 %i.co, 48
  %spec.select328 = and i1 %.0116, %i.cu
  %i.cv = trunc nuw i8 %.2125 to i1
  %i.cw = add nsw i32 %.2130, 4
  %spec.select149 = select i1 %i.cv, i32 %.2130, i32 %i.cw
  br label %bb.o, !llvm.loop !54

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287: ; preds = %switch.early.test352, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182, %.split289, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188
  %.promoted.i204 = phi ptr [ %i.cp, %switch.early.test352 ], [ %i.bw, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i182 ], [ %i.bq, %.split289 ], [ %i.ci, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188 ] ; 3 uses
  %.not6.not.i205 = icmp eq ptr %.promoted.i204, %1
  %i.cx = or i1 %5, %.not6.not.i205
  %or.cond514 = or i1 %i.cx, %4
  br i1 %or.cond514, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287, %bb.v
  %i.cy = phi ptr [ %i.dc, %bb.v ], [ %.promoted.i204, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287 ] ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !22
  %i.da = sext i8 %i.cz to i32
  %i.db = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.da)
  br i1 %i.db, label %bb.v, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.thread311

bb.v:                                             ; preds = %.lr.ph.i206
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 4 uses
  store ptr %i.dc, ptr %0, align 8, !tbaa !15
  %.not.not.i210 = icmp eq ptr %i.dc, %1
  br i1 %.not.not.i210, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211, label %.lr.ph.i206, !llvm.loop !0

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211: ; preds = %bb.v, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287
  %i.dd = phi ptr [ %.promoted.i204, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit188.thread287 ], [ %i.dc, %bb.v ]
  %i.de = add nsw i32 %.0117.lcssa, -1
  %i.df = shl nuw i32 1, %i.de                    ; 2 uses
  %i.dg = icmp sgt i32 %i.bk, %i.df
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211
  %i.dh = add nsw i64 %i.bm, 1
  br label %bb.z

bb.x:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit211
  %i.di = icmp eq i32 %i.bk, %i.df
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dj = and i64 %i.bm, 1
  %i.dk = icmp eq i64 %i.dj, 0
  %or.cond3 = select i1 %i.dk, i1 %.0116, i1 false
  %not.or.cond3 = xor i1 %or.cond3, true
  %i.dl = zext i1 %not.or.cond3 to i64
  %spec.select150 = add nsw i64 %i.bm, %i.dl
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.1135 = phi i64 [ %i.dh, %bb.w ], [ %spec.select150, %bb.y ], [ %i.bm, %bb.x ] ; 2 uses
  %i.dm = shl nuw nsw i64 1, %i.n
  %i.dn = and i64 %.1135, %i.dm
  %.not146 = icmp ne i64 %i.dn, 0                 ; 2 uses
  %i.do = zext i1 %.not146 to i64
  %.2136 = ashr i64 %.1135, %i.do
  %i.dp = zext i1 %.not146 to i32
  %.4132 = add nsw i32 %.2130, %i.dp
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread

bb.aa:                                            ; preds = %bb.n
  br i1 %i.m, label %.split299, label %bb.ab

.split299:                                        ; preds = %bb.aa
  %i.dq = getelementptr i8, ptr %.promoted389, i64 1 ; 4 uses
  store ptr %i.dq, ptr %0, align 8, !tbaa !15
  %i.dr = icmp eq ptr %i.dq, %1
  br i1 %i.dr, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175

bb.ab:                                            ; preds = %bb.aa
  %i.ds = icmp ult i8 %i.af, 64
  %or.cond19.i.i213 = and i1 %i.ds, %or.cond.i160
  %i.dt = icmp sgt i8 %i.af, 96
  %or.cond329 = or i1 %i.dt, %or.cond19.i.i213
  %i.du = add i8 %i.af, -65
  %or.cond.i215 = icmp ult i8 %i.du, 6
  %or.cond340 = or i1 %or.cond.i215, %or.cond329
  %i.dv = getelementptr i8, ptr %.promoted389, i64 1 ; 9 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !15
  %i.dw = icmp eq ptr %i.dv, %1                   ; 2 uses
  br i1 %or.cond340, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218: ; preds = %bb.ab
  br i1 %i.dw, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218
  %i.dx = getelementptr inbounds nuw i8, ptr %.promoted389, i64 2 ; 15 uses
  %i.dy = icmp eq ptr %i.dx, %1
  br i1 %i.dy, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !22
  %i.ea = sext i8 %i.dz to i32
  %i.eb = icmp eq i32 %i.c, %i.ea
  br i1 %i.eb, label %bb.ae, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load i8, ptr %i.dx, align 1, !tbaa !22  ; 3 uses
  %i.ed = sext i8 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, -48
  %or.cond.i25.i219 = icmp ult i32 %i.ee, 10
  %i.ef = icmp ult i8 %i.ec, 64
  %or.cond19.i26.i220 = and i1 %i.ef, %or.cond.i25.i219
  %i.eg = freeze i1 %or.cond19.i26.i220
  br i1 %i.eg, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split, label %switch.early.test353

switch.early.test353:                             ; preds = %bb.ae
  switch i8 %i.ec, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175 [
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
  ]

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224: ; preds = %bb.ab
  br i1 %i.dw, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split: ; preds = %bb.ae, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %bb.l
  %.sink = phi ptr [ %i.as, %bb.l ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %switch.early.test353 ], [ %i.dx, %bb.ae ] ; 2 uses
  %.5139.ph511 = phi i64 [ %.0134, %bb.l ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %switch.early.test353 ], [ %i.bb, %bb.ae ]
  %.7.ph512 = phi i32 [ %.0128, %bb.l ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %bb.ae ]
  %.5.ph = phi i8 [ 1, %bb.l ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %bb.ae ]
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split, %switch.early.test353, %bb.ad, %bb.ac, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224, %.split299
  %9 = phi ptr [ %i.dv, %switch.early.test353 ], [ %i.dv, %bb.ac ], [ %i.dv, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ], [ %i.dq, %.split299 ], [ %i.dv, %bb.ad ], [ %.sink, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split ] ; 2 uses
  %.5139 = phi i64 [ %i.bb, %switch.early.test353 ], [ %i.bb, %bb.ac ], [ %i.bb, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ], [ %i.bb, %.split299 ], [ %i.bb, %bb.ad ], [ %.5139.ph511, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split ]
  %.7 = phi i32 [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %bb.ac ], [ %spec.select148, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ], [ %spec.select148, %.split299 ], [ %spec.select148, %bb.ad ], [ %.7.ph512, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split ]
  %.5 = phi i8 [ %.0123, %switch.early.test353 ], [ %.0123, %bb.ac ], [ %.0123, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ], [ %.0123, %.split299 ], [ %.0123, %bb.ad ], [ %.5.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit175.sink.split ]
  %.pre = load i8, ptr %9, align 1, !tbaa !22
  br label %bb.e

.thread317:                                       ; preds = %bb.k, %bb.k
  store i8 0, ptr %8, align 1, !tbaa !29
  br label %bb.af

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224, %.split299, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218, %bb.m, %.critedge, %bb.z
  %i.eh = phi ptr [ %.promoted389, %.critedge ], [ %i.ax, %bb.m ], [ %i.dd, %bb.z ], [ %i.dq, %.split299 ], [ %i.dv, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218 ], [ %i.dv, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ]
  %.5139.ph = phi i64 [ %.0134, %.critedge ], [ %.0134, %bb.m ], [ %.2136, %bb.z ], [ %i.bb, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218 ], [ %i.bb, %.split299 ], [ %i.bb, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ] ; 2 uses
  %.7.ph = phi i32 [ %.0128, %.critedge ], [ %.0128, %bb.m ], [ %.4132, %bb.z ], [ %spec.select148, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i218 ], [ %spec.select148, %.split299 ], [ %spec.select148, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit224 ] ; 2 uses
  store i8 0, ptr %8, align 1, !tbaa !29
  br i1 %4, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %.thread317, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread
  %i.ei = phi ptr [ %.promoted389, %.thread317 ], [ %i.eh, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread ] ; 5 uses
  %.7.ph322 = phi i32 [ %.0128, %.thread317 ], [ %.7.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread ]
  %.5139.ph321 = phi i64 [ %.0134, %.thread317 ], [ %.5139.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit.thread ]
  br i1 %i.m, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !22  ; 3 uses
  %i.el = sext i8 %i.ek to i32
  %i.em = add nsw i32 %i.el, -48
  %or.cond.i.i225 = icmp ult i32 %i.em, 10
  %i.en = icmp ult i8 %i.ek, 64
  %or.cond19.i.i226 = and i1 %i.en, %or.cond.i.i225
  %i.eo = freeze i1 %or.cond19.i.i226
  br i1 %i.eo, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231, label %switch.early.test354

switch.early.test354:                             ; preds = %bb.ah
  switch i8 %i.ek, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i229 [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i229: ; preds = %switch.early.test354
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231: ; preds = %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 7 uses
  store ptr %i.eq, ptr %0, align 8, !tbaa !15
  %i.er = icmp eq ptr %i.eq, %1
  br i1 %i.er, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split, label %bb.ai

bb.ai:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 2 ; 15 uses
  %i.et = icmp eq ptr %i.es, %1
  br i1 %i.et, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !22  ; 2 uses
  %i.ev = sext i8 %i.eu to i32
  %i.ew = icmp eq i32 %i.c, %i.ev
  br i1 %i.ew, label %bb.ak, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !22  ; 3 uses
  %i.ey = sext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -48
  %or.cond.i25.i232 = icmp ult i32 %i.ez, 10
  %i.fa = icmp ult i8 %i.ex, 64
  %or.cond19.i26.i233 = and i1 %i.fa, %or.cond.i25.i232
  %i.fb = freeze i1 %or.cond19.i26.i233
  br i1 %i.fb, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split, label %switch.early.test355

switch.early.test355:                             ; preds = %bb.ak
  switch i8 %i.ex, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split [
    i8 102, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 101, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 100, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 99, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 98, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 97, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 70, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 69, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 68, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 67, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 66, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
    i8 65, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split
  ]

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split: ; preds = %bb.ak, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %bb.ag, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i229
  %.sink518 = phi ptr [ %i.ej, %bb.ag ], [ %i.ep, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i229 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %switch.early.test355 ], [ %i.es, %bb.ak ] ; 2 uses
  store ptr %.sink518, ptr %0, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split, %bb.ai, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231, %switch.early.test355
  %.ph472 = phi ptr [ %i.eq, %switch.early.test355 ], [ %i.eq, %bb.ai ], [ %i.eq, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i231 ], [ %.sink518, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split.sink.split ] ; 2 uses
  %.pr473 = load i8, ptr %.ph472, align 1, !tbaa !22
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split, %bb.aj
  %i.fc = phi i8 [ %.pr473, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split ], [ %i.eu, %bb.aj ]
  %i.fd = phi ptr [ %.ph472, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237thread-pre-split ], [ %i.eq, %bb.aj ] ; 2 uses
  switch i8 %i.fc, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250 [
    i8 43, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250.sink.split
    i8 45, label %bb.al
  ]

bb.al:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250.sink.split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250.sink.split: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237, %bb.al
  %.0115.ph = phi i1 [ true, %bb.al ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 2 uses
  store ptr %i.fe, ptr %0, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250.sink.split, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237
  %.promoted390 = phi ptr [ %i.fd, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237 ], [ %i.fe, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250.sink.split ] ; 2 uses
  %.0115 = phi i1 [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit237 ], [ %.0115.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250.sink.split ]
  %i.ff = load i8, ptr %.promoted390, align 1, !tbaa !22
  %i.fg = sext i8 %i.ff to i32                    ; 2 uses
  %i.fh = add nsw i32 %i.fg, -48
  %or.cond.i264391 = icmp ult i32 %i.fh, 10
  br i1 %or.cond.i264391, label %.lr.ph393, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread

.lr.ph393:                                        ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250, %.backedge
  %i.fi = phi i32 [ %i.ft, %.backedge ], [ %i.fg, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250 ]
  %.0111392 = phi i32 [ %.1112, %.backedge ], [ 0, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250 ] ; 3 uses
  %i.fj = phi ptr [ %i.fr, %.backedge ], [ %.promoted390, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit250 ] ; 2 uses
  %i.fk = add i32 %.0111392, 97200
  %i.fl = icmp ult i32 %i.fk, 194401
  %i.fm = mul nsw i32 %.0111392, 10
  %i.fn = add i32 %i.fm, -48
  %i.fo = add i32 %i.fn, %i.fi
  %.1112 = select i1 %i.fl, i32 %i.fo, i32 %.0111392 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 7 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !15
  %i.fq = icmp eq ptr %i.fp, %1                   ; 2 uses
  br i1 %i.m, label %.split324, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i271

.split324:                                        ; preds = %.lr.ph393
  br i1 %i.fq, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread, label %.backedge

.backedge:                                        ; preds = %bb.an, %bb.am, %switch.early.test356, %.split324, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
  %i.fr = phi ptr [ %i.fp, %.split324 ], [ %i.fv, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276 ], [ %i.fp, %switch.early.test356 ], [ %i.fp, %bb.am ], [ %i.fp, %bb.an ] ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !22
  %i.ft = sext i8 %i.fs to i32                    ; 2 uses
  %i.fu = add nsw i32 %i.ft, -48
  %or.cond.i264 = icmp ult i32 %i.fu, 10
  br i1 %or.cond.i264, label %.lr.ph393, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread, !llvm.loop !55

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i271: ; preds = %.lr.ph393
  br i1 %i.fq, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit277.thread, label %bb.am

bb.am:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i271
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 2 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, %1
  br i1 %i.fw, label %.backedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = load i8, ptr %i.fp, align 1, !tbaa !22
  %i.fy = sext i8 %i.fx to i32
  %i.fz = icmp eq i32 %i.c, %i.fy
  br i1 %i.fz, label %bb.ao, label %.backedge

bb.ao:                                            ; preds = %bb.an
  %i.ga = load i8, ptr %i.fv, align 1, !tbaa !22  ; 3 uses
  %i.gb = sext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, -48
  %or.cond.i25.i272 = icmp ult i32 %i.gc, 10
  %i.gd = icmp ult i8 %i.ga, 64
  %or.cond19.i26.i273 = and i1 %i.gd, %or.cond.i25.i272
  %i.ge = freeze i1 %or.cond19.i26.i273
  br i1 %i.ge, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276, label %switch.early.test356

switch.early.test356:                             ; preds = %bb.ao
  switch i8 %i.ga, label %.backedge [
    i8 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
    i8 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i276: ; preds = %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %bb.ao
  store ptr %i.fv, ptr %0, align 8, !tbaa !15
end_hunk_0
