Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/double-conversion-string-to-double?download=true
inline.NumInlined: 162
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7817double_conversionL16IsHexFloatStringIPKtEEbT_S4_tb:bb.a

bb.r:                                             ; preds = %bb.q, %bb.q
  br i1 %i.b, label %.split110, label %bb.s

.split110:                                        ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !34
  %i.cl = icmp eq ptr %i.ck, %1
  br i1 %i.cl, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split

bb.s:                                             ; preds = %bb.r
  %i.cm = add nsw i16 %i.cj, -97
  %or.cond21.i.i54 = icmp ult i16 %i.cm, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 7 uses
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !34
  %i.co = icmp eq ptr %i.cn, %1                   ; 2 uses
  br i1 %or.cond21.i.i54, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58: ; preds = %bb.s
  br i1 %i.co, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, %1
  br i1 %i.cq, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load i16, ptr %i.cn, align 2, !tbaa !32 ; 2 uses
  %i.cs = icmp eq i16 %i.cr, %2
  br i1 %i.cs, label %bb.v, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread

bb.v:                                             ; preds = %bb.u
  %i.ct = load i16, ptr %i.cp, align 2, !tbaa !32
  %.fr181 = freeze i16 %i.ct                      ; 2 uses
  %i.cu = add i16 %.fr181, -48
  %or.cond19.i26.i60 = icmp ult i16 %i.cu, 10
  br i1 %or.cond19.i26.i60, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63, label %switch.early.test134

switch.early.test134:                             ; preds = %bb.v
  switch i16 %.fr181, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63: ; preds = %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %bb.v
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64: ; preds = %bb.s
  br i1 %i.co, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64, %.split110, %bb.t, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63, %switch.early.test134
  %.ph = phi ptr [ %i.cn, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64 ], [ %i.ck, %.split110 ], [ %i.cn, %bb.t ], [ %i.cp, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i63 ], [ %i.cn, %switch.early.test134 ] ; 2 uses
  %.pr = load i16, ptr %.ph, align 2, !tbaa !32
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split, %bb.u
  %i.cv = phi i16 [ %.pr, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split ], [ %i.cr, %bb.u ]
  %i.cw = phi ptr [ %.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.threadthread-pre-split ], [ %i.cn, %bb.u ] ; 2 uses
  switch i16 %i.cv, label %bb.x [
    i16 43, label %bb.w
    i16 45, label %bb.w
  ]

bb.w:                                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2 ; 3 uses
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !34
  %i.cy = icmp eq ptr %i.cx, %1
  br i1 %i.cy, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread
  %i.cz = phi ptr [ %i.cx, %bb.w ], [ %i.cw, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64.thread ]
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !32
  %i.db = add i16 %i.da, -48
  %or.cond19.i79 = icmp ult i16 %i.db, 10
  br i1 %or.cond19.i79, label %bb.y, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82

bb.y:                                             ; preds = %bb.x
  %i.dc = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %2, i32 noundef 16, ptr %1)
  br i1 %i.dc, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.preheader

.preheader:                                       ; preds = %bb.y
  %.promoted170 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 4 uses
  %i.dd = load i16, ptr %.promoted170, align 2, !tbaa !32
  %i.de = add i16 %i.dd, -48
  %or.cond19.i84172 = icmp ult i16 %i.de, 10
  br i1 %or.cond19.i84172, label %.lr.ph, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.b, label %.split113.us, label %.lr.ph.split

.split113.us:                                     ; preds = %.lr.ph, %.backedge.us
  %i.df = phi ptr [ %i.dg, %.backedge.us ], [ %.promoted170, %.lr.ph ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, %1
  br i1 %i.dh, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.backedge.us

.backedge.us:                                     ; preds = %.split113.us
  %i.di = load i16, ptr %i.dg, align 2, !tbaa !32
  %i.dj = add i16 %i.di, -48
  %or.cond19.i84.us = icmp ult i16 %i.dj, 10
  br i1 %or.cond19.i84.us, label %.split113.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.dk = phi ptr [ %i.dn, %.backedge ], [ %.promoted170, %.lr.ph ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, %1
  br i1 %i.dm, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %bb.z

.backedge:                                        ; preds = %bb.ab, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100
  %i.dn = phi ptr [ %i.dl, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100 ], [ %i.dq, %bb.ab ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ] ; 3 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !32
  %i.dp = add i16 %i.do, -48
  %or.cond19.i84 = icmp ult i16 %i.dp, 10
  br i1 %or.cond19.i84, label %.lr.ph.split, label %_ZN6icu_7817double_conversionL7isDigitEii.exit87, !llvm.loop !64

bb.z:                                             ; preds = %.lr.ph.split
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 15 uses
  %i.dr = icmp eq ptr %i.dq, %1
  br i1 %i.dr, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = load i16, ptr %i.dl, align 2, !tbaa !32
  %i.dt = icmp eq i16 %i.ds, %2
  br i1 %i.dt, label %bb.ab, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100

bb.ab:                                            ; preds = %bb.aa
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !32
  %.fr182 = freeze i16 %i.du                      ; 2 uses
  %i.dv = add i16 %.fr182, -48
  %or.cond19.i26.i96 = icmp ult i16 %i.dv, 10
  br i1 %or.cond19.i26.i96, label %.backedge, label %switch.early.test135

switch.early.test135:                             ; preds = %bb.ab
  switch i16 %.fr182, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100 [
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

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit100: ; preds = %switch.early.test135, %bb.z, %bb.aa
  br label %.backedge

_ZN6icu_7817double_conversionL7isDigitEii.exit87: ; preds = %.backedge, %.backedge.us, %.preheader
  %.lcssa171 = phi ptr [ %.promoted170, %.preheader ], [ %i.dg, %.backedge.us ], [ %i.dn, %.backedge ] ; 3 uses
  store ptr %.lcssa171, ptr %i.a, align 8
  %.not6.not.i = icmp eq ptr %.lcssa171, %1
  %or.cond = or i1 %3, %.not6.not.i
  br i1 %or.cond, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit87, %.lr.ph.i
  %i.dw = phi ptr [ %i.ea, %.lr.ph.i ], [ %.lcssa171, %_ZN6icu_7817double_conversionL7isDigitEii.exit87 ] ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !32
  %i.dy = zext i16 %i.dx to i32
  %i.dz = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.dy) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  %.not.not.i = icmp ne ptr %i.ea, %1
  %or.cond360.not = select i1 %i.dz, i1 %.not.not.i, i1 false
  br i1 %or.cond360.not, label %.lr.ph.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit82, !llvm.loop !2

_ZN6icu_7817double_conversionL7isDigitEii.exit82: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.us, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i43, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread.us, %.lr.ph.split, %.split113.us, %.lr.ph.i, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.us.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread.us.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i43.peel, %bb.w, %switch.early.test.us.peel, %switch.early.test.peel, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58, %bb.x, %.split110, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread104, %.split103, %_ZN6icu_7817double_conversionL7isDigitEii.exit87, %bb.y, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64, %bb.q, %.loopexit, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit33
  %.010 = phi i1 [ false, %switch.early.test.peel ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread.us.peel ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit33 ], [ false, %.loopexit ], [ false, %bb.q ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit64 ], [ false, %bb.w ], [ true, %bb.y ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %switch.early.test.us.peel ], [ true, %_ZN6icu_7817double_conversionL7isDigitEii.exit87 ], [ false, %bb.x ], [ false, %.split110 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread104 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit38.thread.us ], [ false, %.split103 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.us.peel ], [ true, %.lr.ph.split ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i.peel ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i.peel ], [ %i.dz, %.lr.ph.i ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.us ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i43.peel ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45.peel ], [ true, %.split113.us ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i43 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i ], [ false, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !29
  %.promoted = load ptr, ptr %0, align 8, !tbaa !34 ; 4 uses
  %i.a = load i16, ptr %.promoted, align 2, !tbaa !32 ; 2 uses
  %i.b = icmp eq i16 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader359

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %.split.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i

.split.us:                                        ; preds = %.lr.ph, %.backedge361.us
  %i.d = phi ptr [ %i.e, %.backedge361.us ], [ %.promoted, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 6 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread.split.us, label %.backedge361.us

.backedge361.us:                                  ; preds = %.split.us
  %i.g = load i16, ptr %i.e, align 2, !tbaa !32   ; 2 uses
  %i.h = icmp eq i16 %i.g, 48
  br i1 %i.h, label %.split.us, label %..preheader359_crit_edge.split.us, !llvm.loop !65

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread.split.us: ; preds = %.split.us
  store ptr %i.e, ptr %0, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread

..preheader359_crit_edge.split.us:                ; preds = %.backedge361.us
  store ptr %i.e, ptr %0, align 8, !tbaa !34
  br label %.preheader359

.preheader359:                                    ; preds = %.backedge361, %..preheader359_crit_edge.split.us, %bb.a
  %9 = phi i16 [ %i.a, %bb.a ], [ %i.g, %..preheader359_crit_edge.split.us ], [ %10, %.backedge361 ]
  %.promoted388 = phi ptr [ %.promoted, %bb.a ], [ %i.e, %..preheader359_crit_edge.split.us ], [ %11, %.backedge361 ]
  %i.i = icmp eq i16 %3, 0                        ; 4 uses
  %i.j = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.d

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge361
  %i.k = phi ptr [ %11, %.backedge361 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 6 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !34
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread, label %12

.backedge361thread-pre-split:                     ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %12
  %.ph = phi ptr [ %i.l, %12 ], [ %i.l, %switch.early.test ], [ %13, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i16, ptr %.ph, align 2, !tbaa !32
  br label %.backedge361

.backedge361:                                     ; preds = %.backedge361thread-pre-split, %bb.b
  %10 = phi i16 [ %.pr, %.backedge361thread-pre-split ], [ %i.o, %bb.b ] ; 2 uses
  %11 = phi ptr [ %.ph, %.backedge361thread-pre-split ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = icmp eq i16 %10, 48
  br i1 %i.n, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, label %.preheader359, !llvm.loop !65

12:                                               ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i
  %13 = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %.backedge361thread-pre-split, label %bb.b

bb.b:                                             ; preds = %12
  %i.o = load i16, ptr %i.l, align 2, !tbaa !32   ; 2 uses
  %i.p = icmp eq i16 %i.o, %3
  br i1 %i.p, label %bb.c, label %.backedge361

bb.c:                                             ; preds = %bb.b
  %i.q = load i16, ptr %13, align 2, !tbaa !32
  %.fr401 = freeze i16 %i.q                       ; 2 uses
  %i.r = add i16 %.fr401, -48
  %or.cond19.i26.i = icmp ult i16 %i.r, 10
  br i1 %or.cond19.i26.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.c
  switch i16 %.fr401, label %.backedge361thread-pre-split [
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

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.c
  store ptr %13, ptr %0, align 8, !tbaa !34
  br label %.backedge361thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread.split.us
  store i8 0, ptr %8, align 1, !tbaa !29
  %i.s = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread313

bb.d:                                             ; preds = %.preheader359, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177
  %i.t = phi i16 [ %.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ %9, %.preheader359 ]
  %.promoted392 = phi ptr [ %i.cz, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ %.promoted388, %.preheader359 ] ; 9 uses
  %.0134 = phi i64 [ %.5139, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader359 ] ; 5 uses
  %.0128 = phi i32 [ %.7, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader359 ] ; 6 uses
  %.0123 = phi i8 [ %.5, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 ], [ 0, %.preheader359 ] ; 20 uses
  %i.u = freeze i16 %i.t                          ; 9 uses
  %i.v = zext i16 %i.u to i64
  %i.w = add i16 %i.u, -48
  %i.x = icmp ult i16 %i.w, 10                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i16 %i.u, 97
  br i1 %.not.i, label %bb.f, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.e
  %i.y = icmp ult i16 %i.u, 103
  br i1 %i.y, label %bb.j, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i16 %i.u, -65
  %or.cond327 = icmp ult i16 %i.z, 6
  br i1 %or.cond327, label %bb.j, label %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284: ; preds = %bb.f, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  switch i16 %i.u, label %.critedge [
    i16 46, label %bb.h
    i16 112, label %.thread319
    i16 80, label %.thread319
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted392, i64 2
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split, !llvm.loop !66

.critedge:                                        ; preds = %bb.g, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  %.not6.not.i = icmp eq ptr %.promoted392, %1
  %or.cond328 = or i1 %5, %.not6.not.i
  br i1 %or.cond328, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.i
  %i.ab = phi ptr [ %i.af, %bb.i ], [ %.promoted392, %.critedge ] ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !32
  %i.ad = zext i16 %i.ac to i32
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ad)
  br i1 %i.ae, label %bb.i, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread313

bb.i:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 4 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !34
  %.not.not.i = icmp eq ptr %i.af, %1
  br i1 %.not.not.i, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !2

bb.j:                                             ; preds = %bb.f, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.d
  %.sink.a = phi i64 [ -87, %_ZN6icu_7817double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ -48, %bb.d ], [ -55, %bb.f ]
  %i.ag = add nsw i64 %.sink.a, %i.v
  %i.ah = trunc nuw i8 %.0123 to i1
  %i.ai = add nsw i32 %.0128, -4
  %spec.select150 = select i1 %i.ah, i32 %i.ai, i32 %.0128 ; 22 uses
  %i.aj = shl nsw i64 %.0134, 4
  %i.ak = add nsw i64 %i.ag, %i.aj                ; 24 uses
  %i.al = ashr i64 %i.ak, %i.j
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph391, label %._crit_edge

.lr.ph391:                                        ; preds = %.preheader, %.lr.ph391
  %.0117390 = phi i32 [ %i.ao, %.lr.ph391 ], [ 1, %.preheader ]
  %.0118389 = phi i32 [ %i.ap, %.lr.ph391 ], [ %i.am, %.preheader ] ; 2 uses
  %i.ao = add nuw nsw i32 %.0117390, 1            ; 2 uses
  %i.ap = lshr i32 %.0118389, 1
  %i.aq = icmp samesign ugt i32 %.0118389, 3
  br i1 %i.aq, label %.lr.ph391, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph391, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.ao, %.lr.ph391 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.ar = xor i32 %notmask, -1
  %i.as = trunc i64 %i.ak to i32
  %i.at = and i32 %i.ar, %i.as                    ; 2 uses
  %i.au = zext nneg i32 %.0117.lcssa to i64
  %i.av = ashr i64 %i.ak, %i.au                   ; 4 uses
  %i.aw = add nsw i32 %.0117.lcssa, %spec.select150
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %.fr402 = phi i16 [ %i.u, %._crit_edge ], [ %.fr404, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %i.ax = phi ptr [ %.promoted392, %._crit_edge ], [ %i.bp, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.aw, %._crit_edge ], [ %spec.select151, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select330, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.i, label %.split291, label %bb.l

.split291:                                        ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 4 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !34
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

bb.l:                                             ; preds = %bb.k
  %or.cond19.i.i179 = icmp slt i16 %.fr402, 58
  br i1 %or.cond19.i.i179, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184, label %switch.early.test351

switch.early.test351:                             ; preds = %bb.l
  switch i16 %.fr402, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 [
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

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184: ; preds = %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 7 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !34
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i184
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i16, ptr %i.ba, align 2, !tbaa !32
  %i.bf = icmp eq i16 %i.be, %3
  br i1 %i.bf, label %bb.o, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

bb.o:                                             ; preds = %bb.n
  %i.bg = load i16, ptr %i.bc, align 2, !tbaa !32
  %.fr403 = freeze i16 %i.bg                      ; 2 uses
  %i.bh = add i16 %.fr403, -48
  %or.cond19.i26.i186 = icmp ult i16 %i.bh, 10
  br i1 %or.cond19.i26.i186, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189, label %switch.early.test352

switch.early.test352:                             ; preds = %bb.o
  switch i16 %.fr403, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread [
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

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189: ; preds = %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %bb.o
  store ptr %i.bc, ptr %0, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190: ; preds = %switch.early.test351
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 4 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !34
  %i.bj = icmp eq ptr %i.bi, %1
  br i1 %i.bj, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread289, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread: ; preds = %switch.early.test352, %bb.n, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189, %bb.m, %.split291, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190
  %i.bk = phi ptr [ %i.ba, %switch.early.test352 ], [ %i.ba, %bb.n ], [ %i.bc, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i189 ], [ %i.ba, %bb.m ], [ %i.ay, %.split291 ], [ %i.bi, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190 ] ; 4 uses
  br i1 %4, label %bb.p, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split

bb.p:                                             ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !32 ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 46
  br i1 %i.bm, label %bb.q, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 2 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split: ; preds = %bb.q, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread
  %.ph483 = phi ptr [ %i.bk, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread ], [ %i.bn, %bb.q ] ; 2 uses
  %.2125.ph = phi i8 [ %.1124, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit190.thread ], [ 1, %bb.q ]
  %.pr484 = load i16, ptr %.ph483, align 2, !tbaa !32
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split, %bb.p
  %i.bo = phi i16 [ %.pr484, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %i.bl, %bb.p ]
  %i.bp = phi ptr [ %.ph483, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %i.bk, %bb.p ] ; 2 uses
  %.2125 = phi i8 [ %.2125.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit203thread-pre-split ], [ %.1124, %bb.p ] ; 2 uses
  %.fr404 = freeze i16 %i.bo                      ; 4 uses
  %i.bq = add i16 %.fr404, -48
  %or.cond19.i = icmp ult i16 %i.bq, 10
end_hunk_0
begin_hunk_1_@_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb:bb.a
  br i1 %i.co, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177

bb.x:                                             ; preds = %bb.w
  %i.cp = icmp samesign ugt i16 %i.u, 96
  %or.cond331 = or i1 %i.cp, %i.x
  %i.cq = add nsw i16 %i.u, -65
  %or.cond.i217 = icmp ult i16 %i.cq, 6
  %or.cond342 = select i1 %or.cond331, i1 true, i1 %or.cond.i217
  %i.cr = getelementptr i8, ptr %.promoted392, i64 2 ; 9 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !34
  %i.cs = icmp eq ptr %i.cr, %1                   ; 2 uses
  br i1 %or.cond342, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220: ; preds = %bb.x
  br i1 %i.cs, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220
  %i.ct = getelementptr inbounds nuw i8, ptr %.promoted392, i64 4 ; 15 uses
  %i.cu = icmp eq ptr %i.ct, %1
  br i1 %i.cu, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = load i16, ptr %i.cr, align 2, !tbaa !32
  %i.cw = icmp eq i16 %i.cv, %3
  br i1 %i.cw, label %bb.aa, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177

bb.aa:                                            ; preds = %bb.z
  %i.cx = load i16, ptr %i.ct, align 2, !tbaa !32
  %.fr405 = freeze i16 %i.cx                      ; 2 uses
  %i.cy = add i16 %.fr405, -48
  %or.cond19.i26.i222 = icmp ult i16 %i.cy, 10
  br i1 %or.cond19.i26.i222, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split, label %switch.early.test354

switch.early.test354:                             ; preds = %bb.aa
  switch i16 %.fr405, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177 [
    i16 102, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 101, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 100, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 99, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 98, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 97, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 70, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 69, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 68, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 67, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 66, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
    i16 65, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split
  ]

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226: ; preds = %bb.x
  br i1 %i.cs, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split: ; preds = %bb.aa, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %bb.h
  %.sink528 = phi ptr [ %i.aa, %bb.h ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %switch.early.test354 ], [ %i.ct, %bb.aa ] ; 2 uses
  %.5139.ph526 = phi i64 [ %.0134, %bb.h ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %bb.aa ]
  %.7.ph527 = phi i32 [ %.0128, %bb.h ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %bb.aa ]
  %.5.ph = phi i8 [ 1, %bb.h ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %bb.aa ]
  store ptr %.sink528, ptr %0, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split, %switch.early.test354, %bb.z, %bb.y, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226, %.split301
  %i.cz = phi ptr [ %i.cr, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ], [ %i.cr, %switch.early.test354 ], [ %i.cr, %bb.z ], [ %i.cn, %.split301 ], [ %i.cr, %bb.y ], [ %.sink528, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split ] ; 2 uses
  %.5139 = phi i64 [ %i.ak, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ], [ %i.ak, %switch.early.test354 ], [ %i.ak, %bb.z ], [ %i.ak, %.split301 ], [ %i.ak, %bb.y ], [ %.5139.ph526, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split ]
  %.7 = phi i32 [ %spec.select150, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %bb.z ], [ %spec.select150, %.split301 ], [ %spec.select150, %bb.y ], [ %.7.ph527, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split ]
  %.5 = phi i8 [ %.0123, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ], [ %.0123, %switch.early.test354 ], [ %.0123, %bb.z ], [ %.0123, %.split301 ], [ %.0123, %bb.y ], [ %.5.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.sink.split ]
  %.pre = load i16, ptr %i.cz, align 2, !tbaa !32
  br label %bb.d

.thread319:                                       ; preds = %bb.g, %bb.g
  store i8 0, ptr %8, align 1, !tbaa !29
  br label %bb.ab

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226, %.split301, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220, %bb.i, %.critedge, %bb.v
  %i.da = phi ptr [ %.promoted392, %.critedge ], [ %i.af, %bb.i ], [ %i.ca, %bb.v ], [ %i.cn, %.split301 ], [ %i.cr, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220 ], [ %i.cr, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ]
  %.5139.ph = phi i64 [ %.0134, %.critedge ], [ %.0134, %bb.i ], [ %.2136, %bb.v ], [ %i.ak, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220 ], [ %i.ak, %.split301 ], [ %i.ak, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ] ; 2 uses
  %.7.ph = phi i32 [ %.0128, %.critedge ], [ %.0128, %bb.i ], [ %.4132, %bb.v ], [ %spec.select150, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i220 ], [ %spec.select150, %.split301 ], [ %spec.select150, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit226 ] ; 2 uses
  store i8 0, ptr %8, align 1, !tbaa !29
  br i1 %4, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %.thread319, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread
  %i.db = phi ptr [ %.promoted392, %.thread319 ], [ %i.da, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread ] ; 5 uses
  %.7.ph324 = phi i32 [ %.0128, %.thread319 ], [ %.7.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread ]
  %.5139.ph323 = phi i64 [ %.0134, %.thread319 ], [ %.5139.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread ]
  br i1 %i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.dd = load i16, ptr %i.db, align 2, !tbaa !32
  %.fr406 = freeze i16 %i.dd                      ; 2 uses
  %i.de = add i16 %.fr406, -48
  %or.cond19.i.i228 = icmp ult i16 %i.de, 10
  br i1 %or.cond19.i.i228, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233, label %switch.early.test355

switch.early.test355:                             ; preds = %bb.ad
  switch i16 %.fr406, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i231 [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i231: ; preds = %switch.early.test355
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233: ; preds = %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 2 ; 7 uses
  store ptr %i.dg, ptr %0, align 8, !tbaa !34
  %i.dh = icmp eq ptr %i.dg, %1
  br i1 %i.dh, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 15 uses
  %i.dj = icmp eq ptr %i.di, %1
  br i1 %i.dj, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !32 ; 2 uses
  %i.dl = icmp eq i16 %i.dk, %3
  br i1 %i.dl, label %bb.ag, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239

bb.ag:                                            ; preds = %bb.af
  %i.dm = load i16, ptr %i.di, align 2, !tbaa !32
  %.fr407 = freeze i16 %i.dm                      ; 2 uses
  %i.dn = add i16 %.fr407, -48
  %or.cond19.i26.i235 = icmp ult i16 %i.dn, 10
  br i1 %or.cond19.i26.i235, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split, label %switch.early.test356

switch.early.test356:                             ; preds = %bb.ag
  switch i16 %.fr407, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split [
    i16 102, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 101, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 100, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 99, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 98, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 97, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 70, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 69, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 68, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 67, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 66, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
    i16 65, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split
  ]

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split: ; preds = %bb.ag, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %bb.ac, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i231
  %.sink529 = phi ptr [ %i.dc, %bb.ac ], [ %i.df, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1.i231 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %switch.early.test356 ], [ %i.di, %bb.ag ] ; 2 uses
  store ptr %.sink529, ptr %0, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split, %bb.ae, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233, %switch.early.test356
  %.ph485 = phi ptr [ %i.dg, %switch.early.test356 ], [ %i.dg, %bb.ae ], [ %i.dg, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i233 ], [ %.sink529, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split.sink.split ] ; 2 uses
  %.pr486 = load i16, ptr %.ph485, align 2, !tbaa !32
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split, %bb.af
  %i.do = phi i16 [ %.pr486, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split ], [ %i.dk, %bb.af ]
  %i.dp = phi ptr [ %.ph485, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239thread-pre-split ], [ %i.dg, %bb.af ] ; 2 uses
  switch i16 %i.do, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252 [
    i16 43, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252.sink.split
    i16 45, label %bb.ah
  ]

bb.ah:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252.sink.split

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252.sink.split: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239, %bb.ah
  %.0115.ph = phi i1 [ true, %bb.ah ], [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 2 uses
  store ptr %i.dq, ptr %0, align 8, !tbaa !34
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252.sink.split, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239
  %.promoted393 = phi ptr [ %i.dp, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239 ], [ %i.dq, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252.sink.split ] ; 2 uses
  %.0115 = phi i1 [ false, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit239 ], [ %.0115.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252.sink.split ]
  %i.dr = load i16, ptr %.promoted393, align 2, !tbaa !32 ; 2 uses
  %i.ds = add i16 %i.dr, -48
  %or.cond.i266394 = icmp ult i16 %i.ds, 10
  br i1 %or.cond.i266394, label %.lr.ph396, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread

.lr.ph396:                                        ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252, %.backedge
  %i.dt = phi i16 [ %i.ee, %.backedge ], [ %i.dr, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252 ]
  %.0111395 = phi i32 [ %.1112, %.backedge ], [ 0, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252 ] ; 3 uses
  %i.du = phi ptr [ %i.ed, %.backedge ], [ %.promoted393, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252 ] ; 2 uses
  %i.dv = zext nneg i16 %i.dt to i32
  %i.dw = add i32 %.0111395, 97200
  %i.dx = icmp ult i32 %i.dw, 194401
  %i.dy = mul nsw i32 %.0111395, 10
  %i.dz = add i32 %i.dy, -48
  %i.ea = add i32 %i.dz, %i.dv
  %.1112 = select i1 %i.dx, i32 %i.ea, i32 %.0111395 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 7 uses
  store ptr %i.eb, ptr %0, align 8, !tbaa !34
  %i.ec = icmp eq ptr %i.eb, %1                   ; 2 uses
  br i1 %i.i, label %.split326, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i273

.split326:                                        ; preds = %.lr.ph396
  br i1 %i.ec, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread, label %.backedge

.backedge:                                        ; preds = %bb.aj, %bb.ai, %switch.early.test357, %.split326, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
  %i.ed = phi ptr [ %i.eb, %.split326 ], [ %i.eb, %bb.aj ], [ %i.eg, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a ], [ %i.eb, %switch.early.test357 ], [ %i.eb, %bb.ai ] ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !32 ; 2 uses
  %i.ef = add i16 %i.ee, -48
  %or.cond.i266 = icmp ult i16 %i.ef, 10
  br i1 %or.cond.i266, label %.lr.ph396, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread, !llvm.loop !69

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i273: ; preds = %.lr.ph396
  br i1 %i.ec, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i273
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, %1
  br i1 %i.eh, label %.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load i16, ptr %i.eb, align 2, !tbaa !32
  %i.ej = icmp eq i16 %i.ei, %3
  br i1 %i.ej, label %bb.ak, label %.backedge

bb.ak:                                            ; preds = %bb.aj
  %i.ek = load i16, ptr %i.eg, align 2, !tbaa !32
  %.fr408 = freeze i16 %i.ek                      ; 2 uses
  %i.el = add i16 %.fr408, -48
  %or.cond19.i26.i275 = icmp ult i16 %i.el, 10
  br i1 %or.cond19.i26.i275, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a, label %switch.early.test357

switch.early.test357:                             ; preds = %bb.ak
  switch i16 %.fr408, label %.backedge [
    i16 102, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 101, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 100, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 99, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 98, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 97, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 70, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 69, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 68, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 67, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 66, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
    i16 65, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a
  ]

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i278.a: ; preds = %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %switch.early.test357, %bb.ak
  store ptr %i.eg, ptr %0, align 8, !tbaa !34
  br label %.backedge

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread: ; preds = %.backedge, %.split326, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i273, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252
  %.2113 = phi i32 [ 0, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit252 ], [ %.1112, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i273 ], [ %.1112, %.split326 ], [ %.1112, %.backedge ] ; 2 uses
  %i.em = sub nsw i32 0, %.2113
  %spec.select153 = select i1 %.0115, i32 %i.em, i32 %.2113
  %i.en = add nsw i32 %spec.select153, %.7.ph324
  br label %bb.al

bb.al:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread
  %.5139.ph322 = phi i64 [ %.5139.ph323, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread ], [ %.5139.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread ] ; 6 uses
  %.8 = phi i32 [ %i.en, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit279.thread ], [ %.7.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit.thread ] ; 3 uses
  %i.eo = icmp eq i32 %.8, 0
  %i.ep = icmp eq i64 %.5139.ph322, 0             ; 2 uses
  %or.cond5 = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond5, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  br i1 %2, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  br i1 %i.ep, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread313, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = sub nsw i64 0, %.5139.ph322
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.6140 = phi i64 [ %i.eq, %bb.ao ], [ %.5139.ph322, %bb.am ]
  %i.er = sitofp i64 %.6140 to double
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread313

bb.aq:                                            ; preds = %bb.al
  %i.es = icmp ugt i64 %.5139.ph322, 9007199254740991
  br i1 %i.es, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.eu, %.lr.ph.i.i ], [ %.8, %bb.aq ]
  %.01620.i.i = phi i64 [ %i.et, %.lr.ph.i.i ], [ %.5139.ph322, %bb.aq ] ; 2 uses
  %i.et = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.eu = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.ev = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.ev, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.aq
  %.016.lcssa.i.i = phi i64 [ %.5139.ph322, %bb.aq ], [ %i.et, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.8, %bb.aq ], [ %i.eu, %.lr.ph.i.i ] ; 5 uses
  %i.ew = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.ew, label %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.ex = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.ex, label %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ar
  %i.ey = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.ez = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.fa = icmp eq i64 %i.ez, 0                    ; 2 uses
  %i.fb = and i1 %i.ey, %i.fa
  br i1 %i.fb, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.fd, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.fc, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.fc = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.fd = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.fe = icmp sgt i32 %.124.i.i, -1073
  %i.ff = and i64 %.11723.i.i, 2251799813685248
  %i.fg = icmp eq i64 %i.ff, 0                    ; 2 uses
  %i.fh = select i1 %i.fe, i1 %i.fg, i1 false
  br i1 %i.fh, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !4

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.fc, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.fd, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.fa, %.preheader.i.i ], [ %i.fg, %.lr.ph25.i.i ]
  %i.fi = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.fi, i1 %.lcssa.i.i, i1 false
  %i.fj = add nsw i32 %.1.lcssa.i.i, 1075
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.fl
  %i.fm = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.fn = or disjoint i64 %.0.i.i, %i.fm
  %i.fo = bitcast i64 %i.fn to double
  br label %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit

_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit: ; preds = %._crit_edge.i.i, %bb.ar, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.fo, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.fp = fneg double %.018.i.i
  %i.fq = select i1 %2, double %i.fp, double %.018.i.i
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread313

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit177.thread313: ; preds = %.lr.ph.i, %.lr.ph.i208, %bb.an, %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit, %bb.ap, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  %.4 = phi double [ %i.s, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread ], [ -0.000000e+00, %bb.an ], [ %i.fq, %_ZN6icu_7817double_conversion6DoubleC2ENS0_5DiyFpE.exit ], [ %i.er, %bb.ap ], [ %6, %.lr.ph.i208 ], [ %6, %.lr.ph.i ]
  ret double %.4
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23}
!3 = distinct !{!3, !23}
!4 = distinct !{!4, !23}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!"double", !9, i64 0}
!18 = !{!"short", !9, i64 0}
!19 = !{!"_ZTSN6icu_7817double_conversion23StringToDoubleConverterE", !10, i64 0, !17, i64 8, !17, i64 16, !14, i64 24, !14, i64 32, !18, i64 40}
!20 = !{!19, !10, i64 0}
!21 = !{!19, !17, i64 8}
!22 = !{!9, !9, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!19, !17, i64 16}
!25 = !{!19, !14, i64 24}
!26 = !{!19, !14, i64 32}
!27 = !{!19, !18, i64 40}
!28 = !{!"bool", !9, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!18, !18, i64 0}
!33 = !{!"p1 short", !13, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23, !35}
!49 = distinct !{!49, !23, !35}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23, !35}
!61 = distinct !{!61, !23, !35}
!62 = distinct !{!62, !23, !35}
!63 = distinct !{!63, !23, !35}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
end_hunk_1
