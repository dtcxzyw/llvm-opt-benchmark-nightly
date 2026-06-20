inline.NumInlined: 162
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi = comdat any

$_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi = comdat any

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 16 uses
  %i.b = alloca ptr, align 8                      ; 30 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [782 x i8], align 16              ; 11 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %1, ptr %i.b, align 8
  %i.g = sext i32 %2 to i64                       ; 9 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 40 uses
  store i32 0, ptr %4, align 4
  %i.i = load i32, ptr %0, align 8                ; 12 uses
  %i.j = and i32 %i.i, 4
  %i.k = icmp ne i32 %i.j, 0                      ; 11 uses
  %i.l = and i32 %i.i, 8
  %.not212.not = icmp eq i32 %i.l, 0
  %i.m = and i32 %i.i, 16
  %.not223 = icmp eq i32 %i.m, 0                  ; 2 uses
  %i.n = and i32 %i.i, 32
  %.not211 = icmp ne i32 %i.n, 0
  %i.o = and i32 %i.i, 64
  %.not414 = icmp eq i32 %i.o, 0                  ; 2 uses
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.s = and i32 %i.i, 24
  %or.cond.not = icmp eq i32 %i.s, 0
  %.pre = load i8, ptr %1, align 1                ; 3 uses
  br i1 %or.cond.not, label %._crit_edge569, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = sext i8 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i722 = icmp eq i32 %2, 1
  br i1 %.not.not.i722, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !5

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i, !llvm.loop !5

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.b, align 8
  br label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !5

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.not.i, label %.lr.ph._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !5

.lr.ph._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, !llvm.loop !5

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit: ; preds = %.lr.ph._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load double, ptr %i.ab, align 8
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.b, align 8
  br i1 %.not212.not, label %bb.d, label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i._crit_edge._crit_edge:                   ; preds = %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %.lcssa439640 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.w, %.lr.ph.i._crit_edge ] ; 2 uses
  %i.ad = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ]
  %.pre586 = ptrtoint ptr %.lcssa439640 to i64
  br label %._crit_edge569

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8
  br label %.thread

._crit_edge569:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi587 = phi i64 [ %.pre586, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %i.ag = phi i8 [ %i.ad, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.ah = phi ptr [ %.lcssa439640, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %i.ag, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge569, %._crit_edge569
  %i.ai = icmp eq i8 %i.ag, 45
  %.ptr415 = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %.ptr415, ptr %i.b, align 8
  %.not6.not.i238 = icmp eq ptr %.ptr415, %i.h
  br i1 %.not6.not.i238, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.aj = add i64 %i.a, %i.g
  %i.ak = sub i64 %i.aj, %.pre-phi587
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0345.idx = phi i64 [ %.0345.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0345.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0345.idx
  %i.al = load i8, ptr %.0345.ptr, align 1
  %i.am = sext i8 %i.al to i32
  %i.an = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.am)
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0345.add = add nuw i64 %.0345.idx, 1          ; 2 uses
  %exitcond = icmp eq i64 %.0345.add, %i.ak
  br i1 %exitcond, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !5

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load double, ptr %i.ao, align 8
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0345.idx, 1
  %or.cond404 = or i1 %.not211, %.not214
  br i1 %or.cond404, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load double, ptr %i.aq, align 8
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0345.ptr.le = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0345.idx ; 2 uses
  store ptr %.0345.ptr.le, ptr %i.b, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge569
  %i.as = phi ptr [ %.0345.ptr.le, %bb.i ], [ %i.ah, %._crit_edge569 ] ; 8 uses
  %.0180 = phi i1 [ %i.ai, %bb.i ], [ false, %._crit_edge569 ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not215 = icmp eq ptr %i.au, null
  br i1 %.not215, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not414, label %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #8
  unreachable

_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k
  %i.av = load i8, ptr %i.as, align 1             ; 3 uses
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = icmp eq i8 %i.av, %i.aw
  br i1 %i.ax, label %.preheader.i.preheader, label %.thread360

.preheader.i.preheader:                           ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.ay = add i64 %i.a, %i.g                      ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.n
  %i.az = phi ptr [ %i.bb, %bb.n ], [ %i.as, %.preheader.i.preheader ] ; 2 uses
  %.pn.i7.i = phi ptr [ %.011.i8.i, %bb.n ], [ %i.au, %.preheader.i.preheader ]
  %.011.i8.i = getelementptr inbounds nuw i8, ptr %.pn.i7.i, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.011.i8.i, align 1        ; 2 uses
  %.not.i9.i = icmp eq i8 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 7 uses
  br i1 %.not.i9.i, label %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.bc = icmp eq ptr %i.bb, %i.h
  br i1 %i.bc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i8, ptr %i.bb, align 1
  %.not13.i10.i = icmp eq i8 %i.bd, %i.ba
  br i1 %.not13.i10.i, label %.preheader.i, label %bb.o, !llvm.loop !7

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load double, ptr %i.be, align 8
  br label %.thread

_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit: ; preds = %.preheader.i
  store ptr %i.bb, ptr %i.b, align 8
  %i.bg = and i32 %i.i, 20
  %or.cond3.not = icmp ne i32 %i.bg, 0
  %.not224 = icmp eq ptr %i.bb, %i.h              ; 2 uses
  %or.cond405 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond405, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load double, ptr %i.bh, align 8
end_hunk_0
begin_hunk_1_@_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not218, label %.thread370, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.h, i16 noundef zeroext %i.df, i1 noundef zeroext %i.k)
  br i1 %i.ea, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %.thread370

.thread370:                                       ; preds = %bb.ak, %bb.al
  %i.eb = load i8, ptr %i.dw, align 1             ; 3 uses
  %i.ec = sext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48
  %or.cond.i = icmp ult i32 %i.ed, 10
  %i.ee = icmp ult i8 %i.eb, 64
  %or.cond19.i = and i1 %i.ee, %or.cond.i
  %i.ef = freeze i1 %or.cond19.i
  br i1 %i.ef, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread370
  %switch.tableidx = add i8 %i.eb, -65            ; 2 uses
  %i.eg = icmp ult i8 %switch.tableidx, 38
  br i1 %i.eg, label %switch.hole_check, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371: ; preds = %switch.hole_check, %switch.early.test
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = load double, ptr %i.eh, align 8
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread370, %bb.al
  %i.ej = phi i1 [ false, %.thread370 ], [ true, %bb.al ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ek = load i16, ptr %i.de, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load double, ptr %i.el, align 8
  %i.en = call fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ek, i1 noundef zeroext %i.ej, i1 noundef zeroext %i.k, double noundef %i.em, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.eo = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  %.promoted.i272 = load ptr, ptr %i.b, align 8   ; 6 uses
  %.promoted.i272559 = ptrtoint ptr %.promoted.i272 to i64 ; 2 uses
  %.not6.not.i273 = icmp eq ptr %.promoted.i272, %i.h
  %or.cond410 = select i1 %.not223, i1 true, i1 %.not6.not.i273
  br i1 %or.cond410, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279, label %.lr.ph.i274.preheader

.lr.ph.i274.preheader:                            ; preds = %bb.am
  %i.eq = load i8, ptr %.promoted.i272, align 1
  %i.er = sext i8 %i.eq to i32
  %i.es = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.er)
  br i1 %i.es, label %.lr.ph459.preheader, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit

.lr.ph459.preheader:                              ; preds = %.lr.ph.i274.preheader
  %i.et = add i64 %i.a, %i.g
  %i.eu = sub i64 %i.et, %.promoted.i272559
  %scevgep560 = getelementptr i8, ptr %.promoted.i272, i64 %i.eu
  %i.ev = getelementptr inbounds nuw i8, ptr %.promoted.i272, i64 1 ; 2 uses
  %.not.not.i278725 = icmp eq ptr %i.ev, %i.h
  br i1 %.not.not.i278725, label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge, label %.lr.ph.i274.lr.ph, !llvm.loop !5

.lr.ph.i274.lr.ph:                                ; preds = %.lr.ph459.preheader
  br label %.lr.ph.i274, !llvm.loop !5

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.lr.ph, %.lr.ph459
  %i.ew = phi ptr [ %i.ev, %.lr.ph.i274.lr.ph ], [ %i.fa, %.lr.ph459 ] ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = sext i8 %i.ex to i32
  %i.ez = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ey)
  br i1 %i.ez, label %.lr.ph459, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit, !llvm.loop !5

.lr.ph459:                                        ; preds = %.lr.ph.i274
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 1 ; 2 uses
  %.not.not.i278 = icmp eq ptr %i.fa, %i.h
  br i1 %.not.not.i278, label %.lr.ph459.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge_crit_edge, label %.lr.ph.i274, !llvm.loop !5

.lr.ph459.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph459
  br label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge, !llvm.loop !5

._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge: ; preds = %.lr.ph459.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge_crit_edge, %.lr.ph459.preheader
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit, !llvm.loop !5

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit: ; preds = %.lr.ph.i274, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge, %.lr.ph.i274.preheader
  %i.fb = phi ptr [ %.promoted.i272, %.lr.ph.i274.preheader ], [ %scevgep560, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge ], [ %i.ew, %.lr.ph.i274 ]
  %.pre581 = ptrtoint ptr %i.fb to i64
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit, %bb.am
  %.pre-phi = phi i64 [ %.pre581, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit ], [ %.promoted.i272559, %bb.am ]
  %i.fc = sub i64 %.pre-phi, %i.a
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %4, align 4
  br label %bb.an

bb.an:                                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.thread

bb.ao:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.fe = icmp eq i8 %.pre573, 48
  br i1 %i.fe, label %.lr.ph464, label %._crit_edge

.lr.ph464:                                        ; preds = %bb.ah, %bb.ao
  br i1 %i.dh, label %.lr.ph464.split.us.preheader, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284

.lr.ph464.split.us.preheader:                     ; preds = %.lr.ph464
  %i.ff = add i64 %i.a, %i.g                      ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.promoted462, i64 1 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.h
  br i1 %i.fh, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread, label %.backedge423.us

.lr.ph464.split.us:                               ; preds = %.backedge423.us
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.h
  br i1 %i.fj, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread, label %.backedge423.us, !llvm.loop !10

.backedge423.us:                                  ; preds = %.lr.ph464.split.us.preheader, %.lr.ph464.split.us
  %i.fk = phi ptr [ %i.fi, %.lr.ph464.split.us ], [ %i.fg, %.lr.ph464.split.us.preheader ] ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = icmp eq i8 %i.fl, 48
  br i1 %i.fm, label %.lr.ph464.split.us, label %._crit_edge, !llvm.loop !10

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284: ; preds = %.lr.ph464, %.backedge423
  %i.fn = phi ptr [ %i.fr, %.backedge423 ], [ %.promoted462, %.lr.ph464 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 4 uses
  %i.fp = icmp eq ptr %i.fo, %i.h
  br i1 %i.fp, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit687, label %bb.ap

.backedge423:                                     ; preds = %bb.aq, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288
  %i.fq = phi i8 [ %.pre574.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288 ], [ %i.fx, %bb.aq ]
  %i.fr = phi ptr [ %i.fo, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288 ], [ %i.ft, %bb.aq ] ; 2 uses
  %i.fs = icmp eq i8 %i.fq, 48
  br i1 %i.fs, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284, label %._crit_edge, !llvm.loop !10

bb.ap:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 2 ; 3 uses
  %i.fu = icmp ne ptr %i.ft, %i.h
  %.pre574.pre = load i8, ptr %i.fo, align 1      ; 2 uses
  %i.fv = sext i8 %.pre574.pre to i32
  %i.fw = icmp eq i32 %i.fv, %i.dg
  %or.cond685 = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond685, label %bb.aq, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288

bb.aq:                                            ; preds = %bb.ap
  %i.fx = load i8, ptr %i.ft, align 1             ; 3 uses
  %i.fy = sext i8 %i.fx to i32
  %i.fz = add nsw i32 %i.fy, -48
  %or.cond.i25.i285 = icmp ult i32 %i.fz, 10
  %i.ga = icmp ult i8 %i.fx, 58
  %or.cond19.i26.i286 = and i1 %i.ga, %or.cond.i25.i285
  br i1 %or.cond19.i26.i286, label %.backedge423, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288: ; preds = %bb.aq, %bb.ap
  br label %.backedge423

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit687: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284
  %i.gb = ptrtoint ptr %i.fo to i64
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread: ; preds = %.lr.ph464.split.us, %.lr.ph464.split.us.preheader, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit687
  %.us-phi = phi i64 [ %i.gb, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit687 ], [ %i.ff, %.lr.ph464.split.us.preheader ], [ %i.ff, %.lr.ph464.split.us ]
  %i.gc = sub i64 %.us-phi, %i.a
  %i.gd = trunc i64 %i.gc to i32
  store i32 %i.gd, ptr %4, align 4
  %i.ge = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge423, %.backedge423.us, %bb.ah, %bb.ao
  %.lcssa463 = phi ptr [ %.promoted462, %bb.ao ], [ %.promoted462, %bb.ah ], [ %i.fk, %.backedge423.us ], [ %i.fr, %.backedge423 ] ; 3 uses
  store ptr %.lcssa463, ptr %i.b, align 8
  %i.gf = trunc i32 %i.i to i8
  %i.gg = lshr i8 %i.gf, 1
  %.pre576 = load i8, ptr %.lcssa463, align 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.ab, %._crit_edge
  %i.gh = phi i8 [ %i.dc, %bb.ab ], [ %.pre576, %._crit_edge ] ; 3 uses
  %.promoted469 = phi ptr [ %i.as, %bb.ab ], [ %.lcssa463, %._crit_edge ] ; 2 uses
  %i.gi = phi i8 [ 0, %bb.ab ], [ %i.gg, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.gj = add i8 %i.gh, -48
  %or.cond228471 = icmp ult i8 %i.gj, 10
  br i1 %or.cond228471, label %.lr.ph477, label %.critedge

.lr.ph477:                                        ; preds = %.critedge227
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gl = load i16, ptr %i.gk, align 8            ; 2 uses
  %i.gm = zext i16 %i.gl to i32
  %i.gn = icmp eq i16 %i.gl, 0
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph477, %.backedge422
  %i.go = phi i8 [ %i.gh, %.lr.ph477 ], [ %i.hf, %.backedge422 ] ; 2 uses
  %.0165476 = phi i32 [ 0, %.lr.ph477 ], [ %.1166, %.backedge422 ] ; 3 uses
  %.0170475 = phi i32 [ 0, %.lr.ph477 ], [ %.1171, %.backedge422 ] ; 2 uses
  %.0173474 = phi i8 [ 0, %.lr.ph477 ], [ %.1174, %.backedge422 ] ; 2 uses
  %.0182473 = phi i8 [ %i.gi, %.lr.ph477 ], [ %i.hb, %.backedge422 ]
  %.0185472 = phi i32 [ 0, %.lr.ph477 ], [ %.1186, %.backedge422 ] ; 3 uses
  %i.gp = phi ptr [ %.promoted469, %.lr.ph477 ], [ %i.he, %.backedge422 ] ; 5 uses
  %i.gq = icmp slt i32 %.0165476, 772
  br i1 %i.gq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gr = add nsw i32 %.0185472, 1
  %i.gs = sext i32 %.0185472 to i64
  %i.gt = getelementptr inbounds i8, ptr %i.d, i64 %i.gs
  store i8 %i.go, ptr %i.gt, align 1
  %i.gu = add nsw i32 %.0165476, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gv = add nsw i32 %.0170475, 1
  %5 = trunc nuw i8 %.0173474 to i1
  %i.gw = icmp ne i8 %i.go, 48
  %narrow416 = or i1 %i.gw, %5
  %6 = zext i1 %narrow416 to i8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1186 = phi i32 [ %i.gr, %bb.as ], [ %.0185472, %bb.at ] ; 5 uses
  %.1174 = phi i8 [ %.0173474, %bb.as ], [ %6, %bb.at ] ; 5 uses
  %.1171 = phi i32 [ %.0170475, %bb.as ], [ %i.gv, %bb.at ] ; 5 uses
  %.1166 = phi i32 [ %i.gu, %bb.as ], [ %.0165476, %bb.at ] ; 2 uses
  %i.gx = trunc i8 %.0182473 to i1
  br i1 %i.gx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gy = load i8, ptr %i.gp, align 1
  %i.gz = icmp slt i8 %i.gy, 56
  %i.ha = zext i1 %i.gz to i8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hb = phi i8 [ 0, %bb.au ], [ %i.ha, %bb.av ] ; 5 uses
  br i1 %i.gn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, %i.h
  br i1 %i.hd, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, label %.backedge422

.backedge422:                                     ; preds = %bb.bc, %bb.ax, %bb.az, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297
  %i.he = phi ptr [ %i.hc, %bb.ax ], [ %i.hl, %bb.az ], [ %i.hl, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297 ], [ %i.hn, %bb.bc ] ; 3 uses
  %i.hf = load i8, ptr %i.he, align 1             ; 3 uses
  %i.hg = add i8 %i.hf, -48
  %or.cond228 = icmp ult i8 %i.hg, 10
  br i1 %or.cond228, label %bb.ar, label %.critedge, !llvm.loop !11

bb.ay:                                            ; preds = %bb.aw
  %i.hh = load i8, ptr %i.gp, align 1             ; 2 uses
  %i.hi = sext i8 %i.hh to i32
  %i.hj = add nsw i32 %i.hi, -48
  %or.cond.i.i289 = icmp ult i32 %i.hj, 10
  %i.hk = icmp ult i8 %i.hh, 58
  %or.cond19.i.i290 = and i1 %i.hk, %or.cond.i.i289
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 6 uses
  %i.hm = icmp eq ptr %i.hl, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i290, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.hm, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, label %.backedge422

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293: ; preds = %bb.ay
  br i1 %i.hm, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, label %bb.ba

bb.ba:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gp, i64 2 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, %i.h
  br i1 %i.ho, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hp = load i8, ptr %i.hl, align 1
  %i.hq = sext i8 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, %i.gm
  br i1 %i.hr, label %bb.bc, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297

bb.bc:                                            ; preds = %bb.bb
  %i.hs = load i8, ptr %i.hn, align 1             ; 2 uses
  %i.ht = sext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48
  %or.cond.i25.i294 = icmp ult i32 %i.hu, 10
  %i.hv = icmp ult i8 %i.hs, 58
  %or.cond19.i26.i295 = and i1 %i.hv, %or.cond.i25.i294
  br i1 %or.cond19.i26.i295, label %.backedge422, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297: ; preds = %bb.bc, %bb.ba, %bb.bb
  br label %.backedge422

.critedge:                                        ; preds = %.backedge422, %.critedge227
  %.lcssa470 = phi ptr [ %.promoted469, %.critedge227 ], [ %i.he, %.backedge422 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge422 ] ; 5 uses
  %.0182.lcssa = phi i8 [ %i.gi, %.critedge227 ], [ %i.hb, %.backedge422 ]
  %.0173.lcssa = phi i8 [ 0, %.critedge227 ], [ %.1174, %.backedge422 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge422 ] ; 6 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge422 ] ; 5 uses
  %.lcssa = phi i8 [ %i.gh, %.critedge227 ], [ %i.hf, %.backedge422 ]
  store ptr %.lcssa470, ptr %i.b, align 8
  %i.hw = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.hw, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.hx = icmp eq i8 %.lcssa, 46
  br i1 %i.hx, label %bb.bd, label %.critedge11

bb.bd:                                            ; preds = %.critedge
  %i.hy = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.hy, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ia = load double, ptr %i.hz, align 8
  br label %.thread376

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.hy, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ic = load i16, ptr %i.ib, align 8            ; 4 uses
  %i.id = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.ic, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.id, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ie = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.dd, %i.ie
  br i1 %or.cond9, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ig = load double, ptr %i.if, align 8
  br label %.thread376

bb.bj:                                            ; preds = %bb.bg
  %.promoted488.pre = load ptr, ptr %i.b, align 8 ; 2 uses
  %i.ih = load i8, ptr %.promoted488.pre, align 1 ; 2 uses
  %i.ii = icmp eq i8 %i.ih, 48
  %or.cond686 = select i1 %i.hw, i1 %i.ii, i1 false
  br i1 %or.cond686, label %.lr.ph486, label %.loopexit

.lr.ph486:                                        ; preds = %bb.bj, %bb.bl
  %.0156485 = phi i32 [ %i.ip, %bb.bl ], [ 0, %bb.bj ]
  %i.ij = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.ic, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.ij, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph486
  %i.ik = load ptr, ptr %i.b, align 8
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = sub i64 %i.il, %i.a
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %4, align 4
  %i.io = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread376

bb.bl:                                            ; preds = %.lr.ph486
  %i.ip = add nsw i32 %.0156485, -1               ; 2 uses
  %i.iq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1             ; 2 uses
  %i.is = icmp eq i8 %i.ir, 48
  br i1 %i.is, label %.lr.ph486, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %bb.bl, %bb.bj
  %i.it = phi i8 [ %i.ih, %bb.bj ], [ %i.ir, %bb.bl ] ; 2 uses
  %.promoted488 = phi ptr [ %.promoted488.pre, %bb.bj ], [ %i.iq, %bb.bl ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.bj ], [ %i.ip, %bb.bl ] ; 2 uses
  %i.iu = add i8 %i.it, -48
  %or.cond229490 = icmp ult i8 %i.iu, 10
  br i1 %or.cond229490, label %.lr.ph496, label %.critedge11.loopexit

.lr.ph496:                                        ; preds = %.loopexit
  %i.iv = zext i16 %i.ic to i32
  %i.iw = icmp eq i16 %i.ic, 0
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph496, %.backedge
  %i.ix = phi i8 [ %i.it, %.lr.ph496 ], [ %i.jj, %.backedge ] ; 2 uses
  %.2158494 = phi i32 [ %.1157, %.lr.ph496 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167493 = phi i32 [ %.0165.lcssa, %.lr.ph496 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175492 = phi i8 [ %.0173.lcssa, %.lr.ph496 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187491 = phi i32 [ %.0185.lcssa, %.lr.ph496 ], [ %.3188, %.backedge ] ; 3 uses
  %i.iy = phi ptr [ %.promoted488, %.lr.ph496 ], [ %i.ji, %.backedge ] ; 4 uses
  %i.iz = icmp slt i32 %.2167493, 772
  br i1 %i.iz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ja = add nsw i32 %.2187491, 1
  %i.jb = sext i32 %.2187491 to i64
  %i.jc = getelementptr inbounds i8, ptr %i.d, i64 %i.jb
  store i8 %i.ix, ptr %i.jc, align 1
  %i.jd = add nsw i32 %.2167493, 1
  %i.je = add nsw i32 %.2158494, -1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %7 = trunc nuw i8 %.2175492 to i1
  %i.jf = icmp ne i8 %i.ix, 48
  %narrow = or i1 %i.jf, %7
  %8 = zext i1 %narrow to i8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.3188 = phi i32 [ %i.ja, %bb.bn ], [ %.2187491, %bb.bo ] ; 3 uses
  %.3176 = phi i8 [ %.2175492, %bb.bn ], [ %8, %bb.bo ] ; 3 uses
  %.3168 = phi i32 [ %i.jd, %bb.bn ], [ %.2167493, %bb.bo ] ; 2 uses
  %.3159 = phi i32 [ %i.je, %bb.bn ], [ %.2158494, %bb.bo ] ; 3 uses
  br i1 %i.iw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 1 ; 3 uses
  %i.jh = icmp eq ptr %i.jg, %i.h
  br i1 %i.jh, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641, label %.backedge

.backedge:                                        ; preds = %bb.bv, %bb.bq, %bb.bs, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit306
  %i.ji = phi ptr [ %i.jg, %bb.bq ], [ %i.jp, %bb.bs ], [ %i.jp, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit306 ], [ %i.jr, %bb.bv ] ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1             ; 2 uses
  %i.jk = add i8 %i.jj, -48
  %or.cond229 = icmp ult i8 %i.jk, 10
  br i1 %or.cond229, label %bb.bm, label %.critedge11.loopexit, !llvm.loop !13

bb.br:                                            ; preds = %bb.bp
  %i.jl = load i8, ptr %i.iy, align 1             ; 2 uses
  %i.jm = sext i8 %i.jl to i32
  %i.jn = add nsw i32 %i.jm, -48
  %or.cond.i.i298 = icmp ult i32 %i.jn, 10
  %i.jo = icmp ult i8 %i.jl, 58
  %or.cond19.i.i299 = and i1 %i.jo, %or.cond.i.i298
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iy, i64 1 ; 6 uses
  %i.jq = icmp eq ptr %i.jp, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i299, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.jq, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641, label %.backedge

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302: ; preds = %bb.br
  br i1 %i.jq, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641, label %bb.bt

bb.bt:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iy, i64 2 ; 3 uses
  %i.js = icmp eq ptr %i.jr, %i.h
  br i1 %i.js, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit306, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jt = load i8, ptr %i.jp, align 1
  %i.ju = sext i8 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, %i.iv
  br i1 %i.jv, label %bb.bv, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit306

bb.bv:                                            ; preds = %bb.bu
  %i.jw = load i8, ptr %i.jr, align 1             ; 2 uses
  %i.jx = sext i8 %i.jw to i32
  %i.jy = add nsw i32 %i.jx, -48
  %or.cond.i25.i303 = icmp ult i32 %i.jy, 10
  %i.jz = icmp ult i8 %i.jw, 58
  %or.cond19.i26.i304 = and i1 %i.jz, %or.cond.i25.i303
  br i1 %or.cond19.i26.i304, label %.backedge, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit306

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit306: ; preds = %bb.bv, %bb.bt, %bb.bu
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa489 = phi ptr [ %.promoted488, %.loopexit ], [ %i.ji, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2175.lcssa = phi i8 [ %.0173.lcssa, %.loopexit ], [ %.3176, %.backedge ]
  %.2167.lcssa = phi i32 [ %.0165.lcssa, %.loopexit ], [ %.3168, %.backedge ]
  %.2158.lcssa = phi i32 [ %.1157, %.loopexit ], [ %.3159, %.backedge ]
  store ptr %.lcssa489, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.ka = phi ptr [ %.lcssa470, %.critedge ], [ %.lcssa489, %.critedge11.loopexit ] ; 6 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.4177 = phi i8 [ %.0173.lcssa, %.critedge ], [ %.2175.lcssa, %.critedge11.loopexit ] ; 5 uses
  %.4169 = phi i32 [ %.0165.lcssa, %.critedge ], [ %.2167.lcssa, %.critedge11.loopexit ]
  %.4160 = phi i32 [ 0, %.critedge ], [ %.2158.lcssa, %.critedge11.loopexit ] ; 4 uses
  %.not12 = xor i1 %i.dd, true
  %i.kb = icmp eq i32 %.4160, 0
  %or.cond14 = select i1 %.not12, i1 %i.kb, i1 false
  %i.kc = icmp eq i32 %.4169, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.kc, i1 false
  br i1 %or.cond16, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.critedge11
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ke = load double, ptr %i.kd, align 8
  br label %.thread376

bb.bx:                                            ; preds = %.critedge11
  %i.kf = load i8, ptr %i.ka, align 1
  switch i8 %i.kf, label %bb.cs [
    i8 101, label %bb.by
    i8 69, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.kg = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kg, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ki = load double, ptr %i.kh, align 8
  br label %.thread376

bb.ca:                                            ; preds = %bb.by
  br i1 %i.kg, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 1 ; 4 uses
  store ptr %i.kj, ptr %i.b, align 8
  %i.kk = icmp eq ptr %i.kj, %i.h
  br i1 %i.kk, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.k, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.km = load double, ptr %i.kl, align 8
  br label %.thread376

bb.ce:                                            ; preds = %bb.cb
  %i.kn = load i8, ptr %i.kj, align 1             ; 2 uses
  switch i8 %i.kn, label %bb.ci [
    i8 43, label %bb.cf
    i8 45, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ka, i64 2 ; 3 uses
  store ptr %i.ko, ptr %i.b, align 8
  %i.kp = icmp eq ptr %i.ko, %i.h
  br i1 %i.kp, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.k, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kr = load double, ptr %i.kq, align 8
  br label %.thread376

bb.ci:                                            ; preds = %bb.ce, %bb.cf
  %.promoted502 = phi ptr [ %i.ko, %bb.cf ], [ %i.kj, %bb.ce ] ; 5 uses
  %.0192 = phi i8 [ %i.kn, %bb.cf ], [ 43, %bb.ce ]
  %i.ks = icmp eq ptr %.promoted502, %i.h
  br i1 %i.ks, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kt = load i8, ptr %.promoted502, align 1     ; 2 uses
  %i.ku = add i8 %i.kt, -58
  %or.cond230 = icmp ult i8 %i.ku, -10
  br i1 %or.cond230, label %bb.ck, label %.preheader

.preheader:                                       ; preds = %bb.cj
  %i.kv = add i64 %i.a, %i.g
  %.promoted502563 = ptrtoint ptr %.promoted502 to i64
  %i.kw = sub i64 %i.kv, %.promoted502563
  %scevgep564 = getelementptr i8, ptr %.promoted502, i64 %i.kw
  br label %bb.cm

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.k, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ky = load double, ptr %i.kx, align 8
  br label %.thread376

bb.cm:                                            ; preds = %.preheader, %bb.cq
  %i.kz = phi i8 [ %i.lj, %bb.cq ], [ %i.kt, %.preheader ] ; 2 uses
  %i.la = phi ptr [ %i.li, %bb.cq ], [ %.promoted502, %.preheader ]
  %.0193 = phi i32 [ %.1194, %bb.cq ], [ 0, %.preheader ] ; 3 uses
  %i.lb = zext nneg i8 %i.kz to i32
  %i.lc = icmp sgt i32 %.0193, 107374181
  br i1 %i.lc, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ld = icmp eq i32 %.0193, 107374182
  %i.le = icmp samesign ult i8 %i.kz, 52
  %or.cond21 = and i1 %i.ld, %i.le
  br i1 %or.cond21, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.lf = mul nsw i32 %.0193, 10
  %i.lg = add i32 %i.lf, -48
  %i.lh = add i32 %i.lg, %i.lb
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %.1194 = phi i32 [ %i.lh, %bb.co ], [ 1073741823, %bb.cn ] ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.la, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.li, %i.h
  br i1 %.not219, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lj = load i8, ptr %i.li, align 1             ; 2 uses
  %i.lk = add i8 %i.lj, -48
  %or.cond231 = icmp ult i8 %i.lk, 10
  br i1 %or.cond231, label %bb.cm, label %bb.cr, !llvm.loop !14

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %.lcssa519 = phi ptr [ %scevgep564, %bb.cp ], [ %i.li, %bb.cq ] ; 2 uses
  store ptr %.lcssa519, ptr %i.b, align 8
  %i.ll = icmp eq i8 %.0192, 45
  %i.lm = sub nsw i32 0, %.1194
  %i.ln = select i1 %i.ll, i32 %i.lm, i32 %.1194
  %i.lo = add nsw i32 %i.ln, %.4160
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.bx
  %.promoted504 = phi ptr [ %.lcssa519, %bb.cr ], [ %i.ka, %bb.bx ] ; 6 uses
  %.7163 = phi i32 [ %i.lo, %bb.cr ], [ %.4160, %bb.bx ] ; 4 uses
  %i.lp = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.lp, 0
  %.not220 = icmp eq ptr %.promoted504, %i.h      ; 2 uses
  %or.cond411 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond411, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lr = load double, ptr %i.lq, align 8
  br label %.thread376

bb.cu:                                            ; preds = %bb.cs
  %.promoted.i307565 = ptrtoint ptr %.promoted504 to i64 ; 2 uses
  %or.cond412 = select i1 %i.k, i1 true, i1 %.not220
  br i1 %or.cond412, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314, label %.lr.ph.i309.preheader

.lr.ph.i309.preheader:                            ; preds = %bb.cu
  %i.ls = load i8, ptr %.promoted504, align 1
  %i.lt = sext i8 %i.ls to i32
  %i.lu = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.lt)
  br i1 %i.lu, label %.lr.ph507.preheader, label %.lr.ph.i309._crit_edge

.lr.ph507.preheader:                              ; preds = %.lr.ph.i309.preheader
  %i.lv = add i64 %i.a, %i.g                      ; 2 uses
  %i.lw = sub i64 %i.lv, %.promoted.i307565
  %scevgep566 = getelementptr i8, ptr %.promoted504, i64 %i.lw ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.promoted504, i64 1 ; 2 uses
  %.not.not.i313726 = icmp eq ptr %i.lx, %i.h
  br i1 %.not.not.i313726, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit, label %.lr.ph.i309.lr.ph, !llvm.loop !5

.lr.ph.i309.lr.ph:                                ; preds = %.lr.ph507.preheader
  br label %.lr.ph.i309, !llvm.loop !5

.lr.ph.i309:                                      ; preds = %.lr.ph.i309.lr.ph, %.lr.ph507
  %i.ly = phi ptr [ %i.lx, %.lr.ph.i309.lr.ph ], [ %i.mc, %.lr.ph507 ] ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = sext i8 %i.lz to i32
  %i.mb = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ma)
  br i1 %i.mb, label %.lr.ph507, label %.lr.ph.i309._crit_edge, !llvm.loop !5

.lr.ph507:                                        ; preds = %.lr.ph.i309
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 1 ; 2 uses
  %.not.not.i313 = icmp eq ptr %i.mc, %i.h
  br i1 %.not.not.i313, label %.lr.ph507._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit_crit_edge, label %.lr.ph.i309, !llvm.loop !5

.lr.ph.i309._crit_edge:                           ; preds = %.lr.ph.i309, %.lr.ph.i309.preheader
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.me = load double, ptr %i.md, align 8
  br label %.thread376

.lr.ph507._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit_crit_edge: ; preds = %.lr.ph507
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit, !llvm.loop !5

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit: ; preds = %.lr.ph507._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit_crit_edge, %.lr.ph507.preheader
  store ptr %scevgep566, ptr %i.b, align 8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit, %bb.cu
  %.promoted.i315567.pre-phi = phi i64 [ %i.lv, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit ], [ %.promoted.i307565, %bb.cu ]
  %.promoted509 = phi ptr [ %scevgep566, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314.loopexit ], [ %.promoted504, %bb.cu ] ; 6 uses
  %.not6.not.i316 = icmp eq ptr %.promoted509, %i.h
  %or.cond413 = select i1 %.not223, i1 true, i1 %.not6.not.i316
  br i1 %or.cond413, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322, label %.lr.ph.i317.preheader

.lr.ph.i317.preheader:                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314
  %i.mf = load i8, ptr %.promoted509, align 1
  %i.mg = sext i8 %i.mf to i32
  %i.mh = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.mg)
  br i1 %i.mh, label %.lr.ph510.preheader, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split

.lr.ph510.preheader:                              ; preds = %.lr.ph.i317.preheader
  %i.mi = add i64 %i.a, %i.g
  %i.mj = sub i64 %i.mi, %.promoted.i315567.pre-phi
  %scevgep568 = getelementptr i8, ptr %.promoted509, i64 %i.mj
  %i.mk = getelementptr inbounds nuw i8, ptr %.promoted509, i64 1 ; 2 uses
  %.not.not.i321727 = icmp eq ptr %i.mk, %i.h
  br i1 %.not.not.i321727, label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge, label %.lr.ph.i317.lr.ph, !llvm.loop !5

.lr.ph.i317.lr.ph:                                ; preds = %.lr.ph510.preheader
  br label %.lr.ph.i317, !llvm.loop !5

.lr.ph.i317:                                      ; preds = %.lr.ph.i317.lr.ph, %.lr.ph510
  %i.ml = phi ptr [ %i.mk, %.lr.ph.i317.lr.ph ], [ %i.mp, %.lr.ph510 ] ; 3 uses
  %i.mm = load i8, ptr %i.ml, align 1
  %i.mn = sext i8 %i.mm to i32
  %i.mo = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.mn)
  br i1 %i.mo, label %.lr.ph510, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, !llvm.loop !5

.lr.ph510:                                        ; preds = %.lr.ph.i317
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 1 ; 2 uses
  %.not.not.i321 = icmp eq ptr %i.mp, %i.h
  br i1 %.not.not.i321, label %.lr.ph510.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge_crit_edge, label %.lr.ph.i317, !llvm.loop !5

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split: ; preds = %bb.ck, %bb.cg, %bb.cc
  store ptr %i.ka, ptr %i.b, align 8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split, %bb.bh
  %.5190.ph395 = phi i32 [ %.0185.lcssa, %bb.bh ], [ %.4189, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split ]
  %.5178.ph = phi i8 [ %.0173.lcssa, %bb.bh ], [ %.4177, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split ]
  %.8164.ph = phi i32 [ 0, %bb.bh ], [ %.4160, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396.sink.split ]
  %9 = add nsw i32 %.8164.ph, %.0170.lcssa
  br label %bb.cv

.lr.ph510.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph510
  br label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge, !llvm.loop !5

._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge: ; preds = %.lr.ph510.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge_crit_edge, %.lr.ph510.preheader
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, !llvm.loop !5

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302, %bb.bs, %bb.bq
  %i.mq = phi ptr [ %i.jg, %bb.bq ], [ %i.jp, %bb.bs ], [ %i.jp, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302 ]
  store ptr %i.mq, ptr %i.b, align 8
  %i.mr = add nsw i32 %.3159, %.0170.lcssa
  br label %bb.cv

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293, %bb.az, %bb.ax, %.lr.ph.i317, %.lr.ph.i317.preheader, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge
  %.sink = phi ptr [ %i.ml, %.lr.ph.i317 ], [ %.promoted509, %.lr.ph.i317.preheader ], [ %scevgep568, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge ], [ %i.hl, %bb.az ], [ %i.hc, %bb.ax ], [ %i.hl, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i317 ], [ %.4189, %.lr.ph.i317.preheader ], [ %.4189, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge ], [ %.1186, %bb.ax ], [ %.1186, %bb.az ], [ %.1186, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i317 ], [ %spec.select, %.lr.ph.i317.preheader ], [ %spec.select, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge ], [ %i.hb, %bb.ax ], [ %i.hb, %bb.az ], [ %i.hb, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.5178.ph733 = phi i8 [ %.4177, %.lr.ph.i317 ], [ %.4177, %.lr.ph.i317.preheader ], [ %.4177, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge ], [ %.1174, %bb.ax ], [ %.1174, %bb.az ], [ %.1174, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.2172.ph = phi i32 [ %.0170.lcssa, %.lr.ph.i317 ], [ %.0170.lcssa, %.lr.ph.i317.preheader ], [ %.0170.lcssa, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge ], [ %.1171, %bb.ax ], [ %.1171, %bb.az ], [ %.1171, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.8164.ph734 = phi i32 [ %.7163, %.lr.ph.i317 ], [ %.7163, %.lr.ph.i317.preheader ], [ %.7163, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.loopexit_crit_edge ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 0, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314
  %i.ms = phi ptr [ %.promoted509, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314 ], [ %.sink, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314 ], [ %.5190.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split ] ; 2 uses
  %.2184 = phi i8 [ %spec.select, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314 ], [ %.2184.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split ]
  %.5178 = phi i8 [ %.4177, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314 ], [ %.5178.ph733, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split ]
  %.2172 = phi i32 [ %.0170.lcssa, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314 ], [ %.2172.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split ]
  %.8164 = phi i32 [ %.7163, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit314 ], [ %.8164.ph734, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split ]
  %10 = add nsw i32 %.8164, %.2172
  %i.mt = trunc i8 %.2184 to i1
  br i1 %i.mt, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread, label %bb.cv

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread: ; preds = %bb.ca, %bb.bf, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322
  %i.mu = phi ptr [ %i.ms, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322 ], [ %i.ka, %bb.ca ], [ %.lcssa470, %bb.bf ]
  %.5190393 = phi i32 [ %.5190, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322 ], [ %.4189, %bb.ca ], [ %.0185.lcssa, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store ptr %i.d, ptr %i.f, align 8
  %i.mv = sext i32 %.5190393 to i64
  %i.mw = getelementptr inbounds i8, ptr %i.d, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.my = load i16, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.na = load double, ptr %i.mz, align 8
  %i.nb = call fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.f, ptr noundef %i.mw, i1 noundef zeroext %.0180, i16 noundef zeroext %i.my, i1 noundef zeroext %i.k, double noundef %i.na, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.nc = ptrtoint ptr %i.mu to i64
  %i.nd = sub i64 %i.nc, %i.a
  %i.ne = trunc i64 %i.nd to i32
  store i32 %i.ne, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.thread376

bb.cv:                                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322
  %11 = phi i32 [ %9, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396 ], [ %10, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322 ], [ %i.mr, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641 ] ; 2 uses
  %.5178403 = phi i8 [ %.5178.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396 ], [ %.5178, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322 ], [ %.3176, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641 ]
  %.5190402 = phi i32 [ %.5190.ph395, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread396 ], [ %.5190, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322 ], [ %.3188, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread641 ] ; 3 uses
  %12 = trunc nuw i8 %.5178403 to i1
  br i1 %12, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.nf = add nsw i32 %.5190402, 1
  %i.ng = sext i32 %.5190402 to i64
  %i.nh = getelementptr inbounds i8, ptr %i.d, i64 %i.ng
  store i8 49, ptr %i.nh, align 1
  %i.ni = add nsw i32 %11, -1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.6191 = phi i32 [ %i.nf, %bb.cw ], [ %.5190402, %bb.cv ] ; 5 uses
  %.9 = phi i32 [ %i.ni, %bb.cw ], [ %11, %bb.cv ]
  %i.nj = sext i32 %.6191 to i64
  %i.nk = getelementptr inbounds i8, ptr %i.d, i64 %i.nj
  store i8 0, ptr %i.nk, align 1
  %i.nl = icmp sgt i32 %.6191, 0
  br i1 %i.nl, label %.lr.ph730, label %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph730:                                        ; preds = %bb.cx
  %i.nm = zext nneg i32 %.6191 to i64
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cz
  %i.nn = trunc nuw i64 %i.nq to i32              ; 2 uses
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %bb.cz, label %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !15

bb.cz:                                            ; preds = %.lr.ph730, %bb.cy
  %i.np = phi i32 [ %.6191, %.lr.ph730 ], [ %i.nn, %bb.cy ]
  %indvars.iv.i728 = phi i64 [ %i.nm, %.lr.ph730 ], [ %i.nq, %bb.cy ]
  %i.nq = add nsw i64 %indvars.iv.i728, -1        ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1
  %.not.i = icmp eq i8 %i.ns, 48
  br i1 %.not.i, label %bb.cy, label %._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge731, !llvm.loop !15

._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge731: ; preds = %bb.cz
  br label %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !15

_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.cy, %._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge731, %bb.cx
  %.sroa.3.1.i = phi i32 [ 0, %bb.cx ], [ %i.np, %._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge731 ], [ 0, %bb.cy ] ; 3 uses
  %i.nt = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.nu = add nsw i32 %i.nt, %.9                  ; 2 uses
  br i1 %3, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.nv = call noundef double @_ZN6icu_7817double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.nu) #7
  br label %bb.dc

bb.db:                                            ; preds = %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.nw = call noundef float @_ZN6icu_7817double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.nu) #7
  %i.nx = fpext float %i.nw to double
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.0179 = phi double [ %i.nv, %bb.da ], [ %i.nx, %bb.db ] ; 2 uses
  %i.ny = load ptr, ptr %i.b, align 8
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = sub i64 %i.nz, %i.a
  %i.ob = trunc i64 %i.oa to i32
  store i32 %i.ob, ptr %4, align 4
  %i.oc = fneg double %.0179
  %i.od = select i1 %.0180, double %i.oc, double %.0179
  br label %.thread376

.thread376:                                       ; preds = %bb.cl, %bb.ch, %bb.cd, %bb.dc, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread, %.lr.ph.i309._crit_edge, %bb.ct, %bb.bz, %bb.bw, %bb.bk, %bb.bi, %bb.be
  %.5 = phi double [ %i.nb, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread ], [ %i.od, %bb.dc ], [ %i.ig, %bb.bi ], [ %i.io, %bb.bk ], [ %i.ke, %bb.bw ], [ %i.ia, %bb.be ], [ %i.me, %.lr.ph.i309._crit_edge ], [ %i.lr, %bb.ct ], [ %i.ki, %bb.bz ], [ %i.ky, %bb.cl ], [ %i.kr, %bb.ch ], [ %i.km, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.thread

.thread:                                          ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, %bb.h, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, %bb.o, %bb.p, %.lr.ph.i247._crit_edge, %bb.x, %bb.y, %.lr.ph.i265._crit_edge, %bb.r, %bb.aa, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371, %bb.an, %.thread376, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread, %bb.aj, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread368, %bb.d, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, %bb.b
  %.8 = phi double [ %i.r, %bb.b ], [ %i.ac, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit ], [ %i.af, %bb.d ], [ -qnan, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270 ], [ %i.bt, %.lr.ph.i247._crit_edge ], [ %i.bi, %bb.p ], [ %i.bf, %bb.o ], [ +inf, %bb.r ], [ %i.cz, %.lr.ph.i265._crit_edge ], [ %i.co, %bb.y ], [ %i.cl, %bb.x ], [ +qnan, %bb.aa ], [ %i.ei, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371 ], [ -inf, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252 ], [ %i.dt, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread368 ], [ %i.dz, %bb.aj ], [ %.5, %.thread376 ], [ %i.ge, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread ], [ %i.en, %bb.an ], [ %i.ap, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244 ], [ %i.ar, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret double %.8
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 30 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %1, ptr %i.a, align 8
  %i.f = sext i32 %2 to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr i8, ptr %1, i64 %.idx      ; 38 uses
  store i32 0, ptr %4, align 4
  %i.h = load i32, ptr %0, align 8                ; 12 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp ne i32 %i.i, 0                      ; 11 uses
  %i.k = and i32 %i.h, 8
  %.not212.not = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.h, 16
  %.not223 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.m = and i32 %i.h, 32
  %.not211 = icmp ne i32 %i.m, 0
  %i.n = and i32 %i.h, 64
  %.not414 = icmp eq i32 %i.n, 0                  ; 2 uses
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load double, ptr %i.p, align 8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.r = and i32 %i.h, 24
  %or.cond.not = icmp eq i32 %i.r, 0
  %.pre = load i16, ptr %1, align 2               ; 3 uses
  br i1 %or.cond.not, label %._crit_edge553, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.s = zext i16 %.pre to i32
  %i.t = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.s)
  br i1 %i.t, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i709 = icmp eq i32 %2, 1
  br i1 %.not.not.i709, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !16

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.lr.ph.i, !llvm.loop !16

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge553

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.v = phi ptr [ %i.u, %.lr.ph.i.lr.ph ], [ %i.z, %.lr.ph ] ; 4 uses
  %i.w = load i16, ptr %i.v, align 2              ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.x)
  br i1 %i.y, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.z, %i.g
  br i1 %.not.not.i, label %.lr.ph._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !16

.lr.ph._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, !llvm.loop !16

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit: ; preds = %.lr.ph._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load double, ptr %i.aa, align 8
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.v, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %._crit_edge553

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load double, ptr %i.ac, align 8
  br label %.thread

._crit_edge553:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.ae = phi i16 [ %i.w, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.af = phi ptr [ %i.v, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i16 %i.ae, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge553, %._crit_edge553
  %i.ag = icmp eq i16 %i.ae, 45
  %.ptr415 = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  store ptr %.ptr415, ptr %i.a, align 8
  %.not6.not.i238 = icmp eq ptr %.ptr415, %i.g
  br i1 %.not6.not.i238, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %bb.f
  %.0345.idx = phi i64 [ %.0345.add, %bb.f ], [ 2, %bb.e ] ; 4 uses
  %.0345.ptr = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0345.idx
  %i.ah = load i16, ptr %.0345.ptr, align 2
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ai)
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0345.add = add nuw nsw i64 %.0345.idx, 2      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0345.add
  %.not.not.i243 = icmp eq ptr %.ptr, %i.g
  br i1 %.not.not.i243, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !16

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load double, ptr %i.ak, align 8
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0345.idx, 2
  %or.cond404 = or i1 %.not211, %.not214
  br i1 %or.cond404, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load double, ptr %i.am, align 8
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0345.ptr.le = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0345.idx ; 2 uses
  store ptr %.0345.ptr.le, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge553
  %i.ao = phi ptr [ %.0345.ptr.le, %bb.i ], [ %i.af, %._crit_edge553 ] ; 8 uses
  %.0180 = phi i1 [ %i.ag, %bb.i ], [ false, %._crit_edge553 ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not215 = icmp eq ptr %i.aq, null
  br i1 %.not215, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not414, label %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #8
  unreachable

_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k
  %i.ar = load i16, ptr %i.ao, align 2            ; 3 uses
  %i.as = trunc i16 %i.ar to i8                   ; 2 uses
  %i.at = load i8, ptr %i.aq, align 1
  %i.au = icmp eq i8 %i.at, %i.as
  br i1 %i.au, label %.preheader.i, label %.thread360

.preheader.i:                                     ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit, %bb.n
  %i.av = phi ptr [ %i.ax, %bb.n ], [ %i.ao, %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit ]
  %.pn.i7.i = phi ptr [ %.011.i8.i, %bb.n ], [ %i.aq, %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit ]
  %.011.i8.i = getelementptr inbounds nuw i8, ptr %.pn.i7.i, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.011.i8.i, align 1        ; 2 uses
  %.not.i9.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 2 ; 8 uses
  br i1 %.not.i9.i, label %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.ay = icmp eq ptr %i.ax, %i.g
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i16, ptr %i.ax, align 2
  %i.ba = trunc i16 %i.az to i8
  %.not13.i10.i = icmp eq i8 %i.aw, %i.ba
  br i1 %.not13.i10.i, label %.preheader.i, label %bb.o, !llvm.loop !17

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load double, ptr %i.bb, align 8
  br label %.thread

_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb.exit: ; preds = %.preheader.i
  store ptr %i.ax, ptr %i.a, align 8
  %i.bd = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bd, 0
  %.not224 = icmp eq ptr %i.ax, %i.g              ; 2 uses
  %or.cond405 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond405, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load double, ptr %i.be, align 8
  br label %.thread

bb.q:                                             ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb.exit
  %or.cond406 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond406, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.q
  %i.bg = load i16, ptr %i.ax, align 2
  %i.bh = zext i16 %i.bg to i32
  %i.bi = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.bh)
  br i1 %i.bi, label %.lr.ph448, label %.lr.ph.i247._crit_edge

end_hunk_1
begin_hunk_2_@_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %bb.ad, %bb.ae, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, %bb.ag
  %.promoted462.ph = phi ptr [ %i.dj, %bb.ad ], [ %i.dj, %bb.ae ], [ %i.dl, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i ], [ %i.dj, %bb.ag ] ; 2 uses
  %.pre557.pr = load i16, ptr %.promoted462.ph, align 2
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.af
  %.pre557 = phi i16 [ %.pre557.pr, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.dn, %bb.af ] ; 2 uses
  %.promoted462 = phi ptr [ %.promoted462.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.dj, %bb.af ] ; 5 uses
  %i.ds = and i32 %i.h, 128
  %.not218 = icmp eq i32 %i.ds, 0
  %i.dt = and i32 %i.h, 129
  %or.cond225 = icmp eq i32 %i.dt, 0
  br i1 %or.cond225, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  switch i16 %.pre557, label %._crit_edge [
    i16 120, label %bb.ai
    i16 88, label %bb.ai
    i16 48, label %.lr.ph464
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %.promoted462, i64 2 ; 4 uses
  store ptr %i.du, ptr %i.a, align 8
  %i.dv = icmp eq ptr %i.du, %i.g
  br i1 %i.dv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = load double, ptr %i.dw, align 8
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not218, label %.thread370, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL16IsHexFloatStringIPKtEEbT_S4_tb(ptr noundef nonnull %i.du, ptr noundef nonnull %i.g, i16 noundef zeroext %i.dh, i1 noundef zeroext %i.j)
  br i1 %i.dy, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %.thread370

.thread370:                                       ; preds = %bb.ak, %bb.al
  %i.dz = load i16, ptr %i.du, align 2
  %.fr513 = freeze i16 %i.dz                      ; 2 uses
  %i.ea = add i16 %.fr513, -48
  %or.cond19.i = icmp ult i16 %i.ea, 10
  br i1 %or.cond19.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread370
  %switch.tableidx = add i16 %.fr513, -65         ; 2 uses
  %i.eb = icmp ult i16 %switch.tableidx, 38
  br i1 %i.eb, label %switch.hole_check, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371: ; preds = %switch.hole_check, %switch.early.test
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load double, ptr %i.ec, align 8
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread370, %bb.al
  %i.ee = phi i1 [ false, %.thread370 ], [ true, %bb.al ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ef = load i16, ptr %i.dg, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load double, ptr %i.eg, align 8
  %i.ei = call fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb(ptr noundef %i.a, ptr noundef nonnull %i.g, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ef, i1 noundef zeroext %i.ee, i1 noundef zeroext %i.j, double noundef %i.eh, i1 noundef zeroext %3, ptr noundef %i.b)
  %i.ej = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  %.promoted.i272 = load ptr, ptr %i.a, align 8   ; 5 uses
  %.not6.not.i273 = icmp eq ptr %.promoted.i272, %i.g
  %or.cond410 = select i1 %.not223, i1 true, i1 %.not6.not.i273
  br i1 %or.cond410, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279, label %.lr.ph.i274.preheader

.lr.ph.i274.preheader:                            ; preds = %bb.am
  %i.el = load i16, ptr %.promoted.i272, align 2
  %i.em = zext i16 %i.el to i32
  %i.en = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.em)
  br i1 %i.en, label %.lr.ph459, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279

.lr.ph.i274:                                      ; preds = %.lr.ph459
  %i.eo = load i16, ptr %i.es, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ep)
  br i1 %i.eq, label %.lr.ph459, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279, !llvm.loop !16

.lr.ph459:                                        ; preds = %.lr.ph.i274.preheader, %.lr.ph.i274
  %i.er = phi ptr [ %i.es, %.lr.ph.i274 ], [ %.promoted.i272, %.lr.ph.i274.preheader ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2 ; 5 uses
  %.not.not.i278 = icmp eq ptr %i.es, %i.g
  br i1 %.not.not.i278, label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279.loopexit_crit_edge, label %.lr.ph.i274, !llvm.loop !16

._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279.loopexit_crit_edge: ; preds = %.lr.ph459
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279, !llvm.loop !16

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279: ; preds = %.lr.ph.i274, %.lr.ph.i274.preheader, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279.loopexit_crit_edge, %bb.am
  %i.et = phi ptr [ %.promoted.i272, %bb.am ], [ %.promoted.i272, %.lr.ph.i274.preheader ], [ %i.es, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279.loopexit_crit_edge ], [ %i.es, %.lr.ph.i274 ]
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %1 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 1
  %i.ey = trunc i64 %i.ex to i32
  store i32 %i.ey, ptr %4, align 4
  br label %bb.an

bb.an:                                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit279, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread

bb.ao:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  %i.ez = icmp eq i16 %.pre557, 48
  br i1 %i.ez, label %.lr.ph464, label %._crit_edge

.lr.ph464:                                        ; preds = %bb.ah, %bb.ao
  br i1 %i.di, label %.lr.ph464.split.us, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284

.lr.ph464.split.us:                               ; preds = %.lr.ph464, %.backedge423.us
  %i.fa = phi ptr [ %i.fb, %.backedge423.us ], [ %.promoted462, %.lr.ph464 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2 ; 4 uses
  %i.fc = icmp eq ptr %i.fb, %i.g
  br i1 %i.fc, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288.thread, label %.backedge423.us

.backedge423.us:                                  ; preds = %.lr.ph464.split.us
  %i.fd = load i16, ptr %i.fb, align 2
  %i.fe = icmp eq i16 %i.fd, 48
  br i1 %i.fe, label %.lr.ph464.split.us, label %._crit_edge, !llvm.loop !18

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284: ; preds = %.lr.ph464, %.backedge423
  %i.ff = phi ptr [ %i.fj, %.backedge423 ], [ %.promoted462, %.lr.ph464 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2 ; 4 uses
  %i.fh = icmp eq ptr %i.fg, %i.g
  br i1 %i.fh, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288.thread, label %bb.ap

.backedge423:                                     ; preds = %bb.aq, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288
  %i.fi = phi i16 [ %.pre558.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288 ], [ %i.fo, %bb.aq ]
  %i.fj = phi ptr [ %i.fg, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288 ], [ %i.fl, %bb.aq ] ; 2 uses
  %i.fk = icmp eq i16 %i.fi, 48
  br i1 %i.fk, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284, label %._crit_edge, !llvm.loop !18

bb.ap:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 3 uses
  %i.fm = icmp ne ptr %i.fl, %i.g
  %.pre558.pre = load i16, ptr %i.fg, align 2     ; 2 uses
  %i.fn = icmp eq i16 %.pre558.pre, %i.dh
  %or.cond669 = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond669, label %bb.aq, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load i16, ptr %i.fl, align 2            ; 2 uses
  %i.fp = add i16 %i.fo, -48
  %or.cond19.i26.i286 = icmp ult i16 %i.fp, 10
  br i1 %or.cond19.i26.i286, label %.backedge423, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288: ; preds = %bb.aq, %bb.ap
  br label %.backedge423

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288.thread: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284, %.lr.ph464.split.us
  %.us-phi = phi ptr [ %i.g, %.lr.ph464.split.us ], [ %i.fg, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284 ]
  %i.fq = ptrtoint ptr %.us-phi to i64
  %i.fr = ptrtoint ptr %1 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = lshr exact i64 %i.fs, 1
  %i.fu = trunc i64 %i.ft to i32
  store i32 %i.fu, ptr %4, align 4
  %i.fv = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge423, %.backedge423.us, %bb.ah, %bb.ao
  %.lcssa463 = phi ptr [ %.promoted462, %bb.ao ], [ %.promoted462, %bb.ah ], [ %i.fb, %.backedge423.us ], [ %i.fj, %.backedge423 ] ; 3 uses
  store ptr %.lcssa463, ptr %i.a, align 8
  %i.fw = trunc i32 %i.h to i8
  %i.fx = lshr i8 %i.fw, 1
  %.pre560 = load i16, ptr %.lcssa463, align 2
  br label %.critedge227

.critedge227:                                     ; preds = %bb.ab, %._crit_edge
  %i.fy = phi i16 [ %i.de, %bb.ab ], [ %.pre560, %._crit_edge ] ; 3 uses
  %.promoted469 = phi ptr [ %i.ao, %bb.ab ], [ %.lcssa463, %._crit_edge ] ; 2 uses
  %i.fz = phi i8 [ 0, %bb.ab ], [ %i.fx, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ga = add i16 %i.fy, -48
  %or.cond228471 = icmp ult i16 %i.ga, 10
  br i1 %or.cond228471, label %.lr.ph477, label %.critedge

.lr.ph477:                                        ; preds = %.critedge227
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gc = load i16, ptr %i.gb, align 8            ; 2 uses
  %i.gd = icmp eq i16 %i.gc, 0
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph477, %.backedge422
  %i.ge = phi i16 [ %i.fy, %.lr.ph477 ], [ %i.gw, %.backedge422 ] ; 2 uses
  %.0165476 = phi i32 [ 0, %.lr.ph477 ], [ %.1166, %.backedge422 ] ; 3 uses
  %.0170475 = phi i32 [ 0, %.lr.ph477 ], [ %.1171, %.backedge422 ] ; 2 uses
  %.0173474 = phi i8 [ 0, %.lr.ph477 ], [ %.1174, %.backedge422 ] ; 2 uses
  %.0182473 = phi i8 [ %i.fz, %.lr.ph477 ], [ %i.gs, %.backedge422 ]
  %.0185472 = phi i32 [ 0, %.lr.ph477 ], [ %.1186, %.backedge422 ] ; 3 uses
  %i.gf = phi ptr [ %.promoted469, %.lr.ph477 ], [ %i.gv, %.backedge422 ] ; 5 uses
  %i.gg = icmp slt i32 %.0165476, 772
  br i1 %i.gg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gh = trunc nuw nsw i16 %i.ge to i8
  %i.gi = add nsw i32 %.0185472, 1
  %i.gj = sext i32 %.0185472 to i64
  %i.gk = getelementptr inbounds i8, ptr %i.c, i64 %i.gj
  store i8 %i.gh, ptr %i.gk, align 1
  %i.gl = add nsw i32 %.0165476, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gm = add nsw i32 %.0170475, 1
  %5 = trunc nuw i8 %.0173474 to i1
  %i.gn = icmp ne i16 %i.ge, 48
  %narrow416 = or i1 %i.gn, %5
  %6 = zext i1 %narrow416 to i8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1186 = phi i32 [ %i.gi, %bb.as ], [ %.0185472, %bb.at ] ; 5 uses
  %.1174 = phi i8 [ %.0173474, %bb.as ], [ %6, %bb.at ] ; 5 uses
  %.1171 = phi i32 [ %.0170475, %bb.as ], [ %i.gm, %bb.at ] ; 5 uses
  %.1166 = phi i32 [ %i.gl, %bb.as ], [ %.0165476, %bb.at ] ; 2 uses
  %i.go = trunc i8 %.0182473 to i1
  br i1 %i.go, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gp = load i16, ptr %i.gf, align 2
  %i.gq = icmp ult i16 %i.gp, 56
  %i.gr = zext i1 %i.gq to i8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gs = phi i8 [ 0, %bb.au ], [ %i.gr, %bb.av ] ; 5 uses
  br i1 %i.gd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, %i.g
  br i1 %i.gu, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split, label %.backedge422

.backedge422:                                     ; preds = %bb.bc, %bb.ax, %bb.az, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit297
  %i.gv = phi ptr [ %i.gt, %bb.ax ], [ %i.ha, %bb.az ], [ %i.ha, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit297 ], [ %i.hc, %bb.bc ] ; 3 uses
  %i.gw = load i16, ptr %i.gv, align 2            ; 3 uses
  %i.gx = add i16 %i.gw, -48
  %or.cond228 = icmp ult i16 %i.gx, 10
  br i1 %or.cond228, label %bb.ar, label %.critedge, !llvm.loop !19

bb.ay:                                            ; preds = %bb.aw
  %i.gy = load i16, ptr %i.gf, align 2
  %i.gz = add i16 %i.gy, -48
  %or.cond19.i.i290 = icmp ult i16 %i.gz, 10
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 6 uses
  %i.hb = icmp eq ptr %i.ha, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i290, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.hb, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split, label %.backedge422

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293: ; preds = %bb.ay
  br i1 %i.hb, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split, label %bb.ba

bb.ba:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, %i.g
  br i1 %i.hd, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit297, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.he = load i16, ptr %i.ha, align 2
  %i.hf = icmp eq i16 %i.he, %i.gc
  br i1 %i.hf, label %bb.bc, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit297

bb.bc:                                            ; preds = %bb.bb
  %i.hg = load i16, ptr %i.hc, align 2
  %i.hh = add i16 %i.hg, -48
  %or.cond19.i26.i295 = icmp ult i16 %i.hh, 10
  br i1 %or.cond19.i26.i295, label %.backedge422, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit297

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit297: ; preds = %bb.bc, %bb.ba, %bb.bb
  br label %.backedge422

.critedge:                                        ; preds = %.backedge422, %.critedge227
  %.lcssa470 = phi ptr [ %.promoted469, %.critedge227 ], [ %i.gv, %.backedge422 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge422 ] ; 5 uses
  %.0182.lcssa = phi i8 [ %i.fz, %.critedge227 ], [ %i.gs, %.backedge422 ]
  %.0173.lcssa = phi i8 [ 0, %.critedge227 ], [ %.1174, %.backedge422 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge422 ] ; 6 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge422 ] ; 5 uses
  %.lcssa = phi i16 [ %i.fy, %.critedge227 ], [ %i.gw, %.backedge422 ]
  store ptr %.lcssa470, ptr %i.a, align 8
  %i.hi = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.hi, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.hj = icmp eq i16 %.lcssa, 46
  br i1 %i.hj, label %bb.bd, label %.critedge11

bb.bd:                                            ; preds = %.critedge
  %i.hk = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.hk, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond7, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hm = load double, ptr %i.hl, align 8
  br label %.thread376

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.hk, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ho = load i16, ptr %i.hn, align 8            ; 4 uses
  %i.hp = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ho, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.hp, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hq = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.df, %i.hq
  br i1 %or.cond9, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hs = load double, ptr %i.hr, align 8
  br label %.thread376

bb.bj:                                            ; preds = %bb.bg
  %.promoted488.pre = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.ht = load i16, ptr %.promoted488.pre, align 2 ; 2 uses
  %i.hu = icmp eq i16 %i.ht, 48
  %or.cond670 = select i1 %i.hi, i1 %i.hu, i1 false
  br i1 %or.cond670, label %.lr.ph486, label %.loopexit

.lr.ph486:                                        ; preds = %bb.bj, %bb.bl
  %.0156485 = phi i32 [ %i.id, %bb.bl ], [ 0, %bb.bj ]
  %i.hv = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ho, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.hv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph486
  %i.hw = load ptr, ptr %i.a, align 8
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %1 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = lshr exact i64 %i.hz, 1
  %i.ib = trunc i64 %i.ia to i32
  store i32 %i.ib, ptr %4, align 4
  %i.ic = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread376

bb.bl:                                            ; preds = %.lr.ph486
  %i.id = add nsw i32 %.0156485, -1               ; 2 uses
  %i.ie = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2            ; 2 uses
  %i.ig = icmp eq i16 %i.if, 48
  br i1 %i.ig, label %.lr.ph486, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.bl, %bb.bj
  %i.ih = phi i16 [ %i.ht, %bb.bj ], [ %i.if, %bb.bl ] ; 2 uses
  %.promoted488 = phi ptr [ %.promoted488.pre, %bb.bj ], [ %i.ie, %bb.bl ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.bj ], [ %i.id, %bb.bl ] ; 2 uses
  %i.ii = add i16 %i.ih, -48
  %or.cond229490 = icmp ult i16 %i.ii, 10
  br i1 %or.cond229490, label %.lr.ph496, label %.critedge11.loopexit

.lr.ph496:                                        ; preds = %.loopexit
  %i.ij = icmp eq i16 %i.ho, 0
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph496, %.backedge
  %i.ik = phi i16 [ %i.ih, %.lr.ph496 ], [ %i.ix, %.backedge ] ; 2 uses
  %.2158494 = phi i32 [ %.1157, %.lr.ph496 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167493 = phi i32 [ %.0165.lcssa, %.lr.ph496 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175492 = phi i8 [ %.0173.lcssa, %.lr.ph496 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187491 = phi i32 [ %.0185.lcssa, %.lr.ph496 ], [ %.3188, %.backedge ] ; 3 uses
  %i.il = phi ptr [ %.promoted488, %.lr.ph496 ], [ %i.iw, %.backedge ] ; 4 uses
  %i.im = icmp slt i32 %.2167493, 772
  br i1 %i.im, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.in = trunc nuw nsw i16 %i.ik to i8
  %i.io = add nsw i32 %.2187491, 1
  %i.ip = sext i32 %.2187491 to i64
  %i.iq = getelementptr inbounds i8, ptr %i.c, i64 %i.ip
  store i8 %i.in, ptr %i.iq, align 1
  %i.ir = add nsw i32 %.2167493, 1
  %i.is = add nsw i32 %.2158494, -1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %7 = trunc nuw i8 %.2175492 to i1
  %i.it = icmp ne i16 %i.ik, 48
  %narrow = or i1 %i.it, %7
  %8 = zext i1 %narrow to i8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.3188 = phi i32 [ %i.io, %bb.bn ], [ %.2187491, %bb.bo ] ; 3 uses
  %.3176 = phi i8 [ %.2175492, %bb.bn ], [ %8, %bb.bo ] ; 3 uses
  %.3168 = phi i32 [ %i.ir, %bb.bn ], [ %.2167493, %bb.bo ] ; 2 uses
  %.3159 = phi i32 [ %i.is, %bb.bn ], [ %.2158494, %bb.bo ] ; 3 uses
  br i1 %i.ij, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 2 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, %i.g
  br i1 %i.iv, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623, label %.backedge

.backedge:                                        ; preds = %bb.bv, %bb.bq, %bb.bs, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit306
  %i.iw = phi ptr [ %i.iu, %bb.bq ], [ %i.jb, %bb.bs ], [ %i.jb, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit306 ], [ %i.jd, %bb.bv ] ; 3 uses
  %i.ix = load i16, ptr %i.iw, align 2            ; 2 uses
  %i.iy = add i16 %i.ix, -48
  %or.cond229 = icmp ult i16 %i.iy, 10
  br i1 %or.cond229, label %bb.bm, label %.critedge11.loopexit, !llvm.loop !21

bb.br:                                            ; preds = %bb.bp
  %i.iz = load i16, ptr %i.il, align 2
  %i.ja = add i16 %i.iz, -48
  %or.cond19.i.i299 = icmp ult i16 %i.ja, 10
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 2 ; 6 uses
  %i.jc = icmp eq ptr %i.jb, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i299, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.jc, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623, label %.backedge

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302: ; preds = %bb.br
  br i1 %i.jc, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623, label %bb.bt

bb.bt:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 3 uses
  %i.je = icmp eq ptr %i.jd, %i.g
  br i1 %i.je, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit306, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jf = load i16, ptr %i.jb, align 2
  %i.jg = icmp eq i16 %i.jf, %i.ho
  br i1 %i.jg, label %bb.bv, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit306

bb.bv:                                            ; preds = %bb.bu
  %i.jh = load i16, ptr %i.jd, align 2
  %i.ji = add i16 %i.jh, -48
  %or.cond19.i26.i304 = icmp ult i16 %i.ji, 10
  br i1 %or.cond19.i26.i304, label %.backedge, label %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit306

_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit306: ; preds = %bb.bv, %bb.bt, %bb.bu
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa489 = phi ptr [ %.promoted488, %.loopexit ], [ %i.iw, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2175.lcssa = phi i8 [ %.0173.lcssa, %.loopexit ], [ %.3176, %.backedge ]
  %.2167.lcssa = phi i32 [ %.0165.lcssa, %.loopexit ], [ %.3168, %.backedge ]
  %.2158.lcssa = phi i32 [ %.1157, %.loopexit ], [ %.3159, %.backedge ]
  store ptr %.lcssa489, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.jj = phi ptr [ %.lcssa470, %.critedge ], [ %.lcssa489, %.critedge11.loopexit ] ; 6 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.4177 = phi i8 [ %.0173.lcssa, %.critedge ], [ %.2175.lcssa, %.critedge11.loopexit ] ; 5 uses
  %.4169 = phi i32 [ %.0165.lcssa, %.critedge ], [ %.2167.lcssa, %.critedge11.loopexit ]
  %.4160 = phi i32 [ 0, %.critedge ], [ %.2158.lcssa, %.critedge11.loopexit ] ; 4 uses
  %.not12 = xor i1 %i.df, true
  %i.jk = icmp eq i32 %.4160, 0
  %or.cond14 = select i1 %.not12, i1 %i.jk, i1 false
  %i.jl = icmp eq i32 %.4169, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.jl, i1 false
  br i1 %or.cond16, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.critedge11
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jn = load double, ptr %i.jm, align 8
  br label %.thread376

bb.bx:                                            ; preds = %.critedge11
  %i.jo = load i16, ptr %i.jj, align 2
  switch i16 %i.jo, label %bb.cr [
    i16 101, label %bb.by
    i16 69, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.jp = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.jp, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jr = load double, ptr %i.jq, align 8
  br label %.thread376

bb.ca:                                            ; preds = %bb.by
  br i1 %i.jp, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 2 ; 4 uses
  store ptr %i.js, ptr %i.a, align 8
  %i.jt = icmp eq ptr %i.js, %i.g
  br i1 %i.jt, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.j, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jv = load double, ptr %i.ju, align 8
  br label %.thread376

bb.ce:                                            ; preds = %bb.cb
  %i.jw = load i16, ptr %i.js, align 2            ; 2 uses
  switch i16 %i.jw, label %bb.ci [
    i16 43, label %bb.cf
    i16 45, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.jx = zext nneg i16 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 3 uses
  store ptr %i.jy, ptr %i.a, align 8
  %i.jz = icmp eq ptr %i.jy, %i.g
  br i1 %i.jz, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.j, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kb = load double, ptr %i.ka, align 8
  br label %.thread376

bb.ci:                                            ; preds = %bb.ce, %bb.cf
  %.promoted502 = phi ptr [ %i.jy, %bb.cf ], [ %i.js, %bb.ce ] ; 3 uses
  %.0192 = phi i32 [ %i.jx, %bb.cf ], [ 43, %bb.ce ]
  %i.kc = icmp eq ptr %.promoted502, %i.g
  br i1 %i.kc, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kd = load i16, ptr %.promoted502, align 2    ; 2 uses
  %i.ke = add i16 %i.kd, -58
  %or.cond230 = icmp ult i16 %i.ke, -10
  br i1 %or.cond230, label %bb.ck, label %.preheader

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.j, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kg = load double, ptr %i.kf, align 8
  br label %.thread376

.preheader:                                       ; preds = %bb.cj, %bb.cp
  %i.kh = phi i16 [ %i.kr, %bb.cp ], [ %i.kd, %bb.cj ] ; 2 uses
  %i.ki = phi ptr [ %i.kq, %bb.cp ], [ %.promoted502, %bb.cj ]
  %.0193 = phi i32 [ %.1194, %bb.cp ], [ 0, %bb.cj ] ; 3 uses
  %i.kj = zext nneg i16 %i.kh to i32
  %i.kk = icmp sgt i32 %.0193, 107374181
  br i1 %i.kk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.preheader
  %i.kl = icmp eq i32 %.0193, 107374182
  %i.km = icmp samesign ult i16 %i.kh, 52
  %or.cond21 = and i1 %i.kl, %i.km
  br i1 %or.cond21, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %.preheader
  %i.kn = mul nsw i32 %.0193, 10
  %i.ko = add i32 %i.kn, -48
  %i.kp = add i32 %i.ko, %i.kj
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.1194 = phi i32 [ %i.kp, %bb.cn ], [ 1073741823, %bb.cm ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 2 ; 5 uses
  %.not219 = icmp eq ptr %i.kq, %i.g
  br i1 %.not219, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kr = load i16, ptr %i.kq, align 2            ; 2 uses
  %i.ks = add i16 %i.kr, -48
  %or.cond231 = icmp ult i16 %i.ks, 10
  br i1 %or.cond231, label %.preheader, label %bb.cq, !llvm.loop !22

bb.cq:                                            ; preds = %bb.co, %bb.cp
  store ptr %i.kq, ptr %i.a, align 8
  %sext.mask = and i32 %.0192, 255
  %i.kt = icmp eq i32 %sext.mask, 45
  %i.ku = sub nsw i32 0, %.1194
  %i.kv = select i1 %i.kt, i32 %i.ku, i32 %.1194
  %i.kw = add nsw i32 %i.kv, %.4160
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.bx
  %.promoted504 = phi ptr [ %i.kq, %bb.cq ], [ %i.jj, %bb.bx ] ; 4 uses
  %.7163 = phi i32 [ %i.kw, %bb.cq ], [ %.4160, %bb.bx ] ; 4 uses
  %i.kx = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.kx, 0
  %.not220 = icmp eq ptr %.promoted504, %i.g      ; 2 uses
  %or.cond411 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond411, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kz = load double, ptr %i.ky, align 8
  br label %.thread376

bb.ct:                                            ; preds = %bb.cr
  %or.cond412 = select i1 %i.j, i1 true, i1 %.not220
  br i1 %or.cond412, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314, label %.lr.ph.i309.preheader

.lr.ph.i309.preheader:                            ; preds = %bb.ct
  %i.la = load i16, ptr %.promoted504, align 2
  %i.lb = zext i16 %i.la to i32
  %i.lc = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.lb)
  br i1 %i.lc, label %.lr.ph507, label %.lr.ph.i309._crit_edge

.lr.ph.i309:                                      ; preds = %.lr.ph507
  %i.ld = load i16, ptr %i.lh, align 2
  %i.le = zext i16 %i.ld to i32
  %i.lf = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.le)
  br i1 %i.lf, label %.lr.ph507, label %.lr.ph.i309._crit_edge, !llvm.loop !16

.lr.ph507:                                        ; preds = %.lr.ph.i309.preheader, %.lr.ph.i309
  %i.lg = phi ptr [ %i.lh, %.lr.ph.i309 ], [ %.promoted504, %.lr.ph.i309.preheader ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2 ; 5 uses
  %.not.not.i313 = icmp eq ptr %i.lh, %i.g
  br i1 %.not.not.i313, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314.loopexit, label %.lr.ph.i309, !llvm.loop !16

.lr.ph.i309._crit_edge:                           ; preds = %.lr.ph.i309, %.lr.ph.i309.preheader
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lj = load double, ptr %i.li, align 8
  br label %.thread376

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314.loopexit: ; preds = %.lr.ph507
  store ptr %i.lh, ptr %i.a, align 8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314.loopexit, %bb.ct
  %.promoted509 = phi ptr [ %i.lh, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314.loopexit ], [ %.promoted504, %bb.ct ] ; 5 uses
  %.not6.not.i316 = icmp eq ptr %.promoted509, %i.g
  %or.cond413 = select i1 %.not223, i1 true, i1 %.not6.not.i316
  br i1 %or.cond413, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322, label %.lr.ph.i317.preheader

.lr.ph.i317.preheader:                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314
  %i.lk = load i16, ptr %.promoted509, align 2
  %i.ll = zext i16 %i.lk to i32
  %i.lm = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ll)
  br i1 %i.lm, label %.lr.ph510, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split

.lr.ph.i317:                                      ; preds = %.lr.ph510
  %i.ln = load i16, ptr %i.lr, align 2
  %i.lo = zext i16 %i.ln to i32
  %i.lp = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.lo)
  br i1 %i.lp, label %.lr.ph510, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split, !llvm.loop !16

.lr.ph510:                                        ; preds = %.lr.ph.i317.preheader, %.lr.ph.i317
  %i.lq = phi ptr [ %i.lr, %.lr.ph.i317 ], [ %.promoted509, %.lr.ph.i317.preheader ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 2 ; 5 uses
  %.not.not.i321 = icmp eq ptr %i.lr, %i.g
  br i1 %.not.not.i321, label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge, label %.lr.ph.i317, !llvm.loop !16

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split: ; preds = %bb.ck, %bb.cg, %bb.cc
  store ptr %i.jj, ptr %i.a, align 8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split, %bb.bh
  %.5190.ph395 = phi i32 [ %.0185.lcssa, %bb.bh ], [ %.4189, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split ]
  %.5178.ph = phi i8 [ %.0173.lcssa, %bb.bh ], [ %.4177, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split ]
  %.8164.ph = phi i32 [ 0, %bb.bh ], [ %.4160, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396.sink.split ]
  %9 = add nsw i32 %.8164.ph, %.0170.lcssa
  br label %bb.cu

._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge: ; preds = %.lr.ph510
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split, !llvm.loop !16

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302, %bb.bs, %bb.bq
  %i.ls = phi ptr [ %i.iu, %bb.bq ], [ %i.jb, %bb.bs ], [ %i.jb, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i302 ]
  store ptr %i.ls, ptr %i.a, align 8
  %i.lt = add nsw i32 %.3159, %.0170.lcssa
  br label %bb.cu

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293, %bb.az, %bb.ax, %.lr.ph.i317, %.lr.ph.i317.preheader, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge
  %.sink = phi ptr [ %i.lr, %.lr.ph.i317 ], [ %.promoted509, %.lr.ph.i317.preheader ], [ %i.lr, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge ], [ %i.ha, %bb.az ], [ %i.gt, %bb.ax ], [ %i.ha, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i317 ], [ %.4189, %.lr.ph.i317.preheader ], [ %.4189, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge ], [ %.1186, %bb.ax ], [ %.1186, %bb.az ], [ %.1186, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i317 ], [ %spec.select, %.lr.ph.i317.preheader ], [ %spec.select, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge ], [ %i.gs, %bb.ax ], [ %i.gs, %bb.az ], [ %i.gs, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.5178.ph715 = phi i8 [ %.4177, %.lr.ph.i317 ], [ %.4177, %.lr.ph.i317.preheader ], [ %.4177, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge ], [ %.1174, %bb.ax ], [ %.1174, %bb.az ], [ %.1174, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.2172.ph = phi i32 [ %.0170.lcssa, %.lr.ph.i317 ], [ %.0170.lcssa, %.lr.ph.i317.preheader ], [ %.0170.lcssa, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge ], [ %.1171, %bb.ax ], [ %.1171, %bb.az ], [ %.1171, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  %.8164.ph716 = phi i32 [ %.7163, %.lr.ph.i317 ], [ %.7163, %.lr.ph.i317.preheader ], [ %.7163, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.loopexit_crit_edge ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 0, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293 ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322: ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314
  %i.lu = phi ptr [ %.promoted509, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314 ], [ %.sink, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314 ], [ %.5190.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split ] ; 2 uses
  %.2184 = phi i8 [ %spec.select, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314 ], [ %.2184.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split ]
  %.5178 = phi i8 [ %.4177, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314 ], [ %.5178.ph715, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split ]
  %.2172 = phi i32 [ %.0170.lcssa, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314 ], [ %.2172.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split ]
  %.8164 = phi i32 [ %.7163, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit314 ], [ %.8164.ph716, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.sink.split ]
  %10 = add nsw i32 %.8164, %.2172
  %i.lv = trunc i8 %.2184 to i1
  br i1 %i.lv, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread, label %bb.cu

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread: ; preds = %bb.ca, %bb.bf, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322
  %i.lw = phi ptr [ %i.lu, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322 ], [ %i.jj, %bb.ca ], [ %.lcssa470, %bb.bf ]
  %.5190393 = phi i32 [ %.5190, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322 ], [ %.4189, %bb.ca ], [ %.0185.lcssa, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr %i.c, ptr %i.e, align 8
  %i.lx = sext i32 %.5190393 to i64
  %i.ly = getelementptr inbounds i8, ptr %i.c, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ma = load i16, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mc = load double, ptr %i.mb, align 8
  %i.md = call fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.e, ptr noundef %i.ly, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ma, i1 noundef zeroext %i.j, double noundef %i.mc, i1 noundef zeroext %3, ptr noundef %i.d)
  %i.me = ptrtoint ptr %i.lw to i64
  %i.mf = ptrtoint ptr %1 to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = lshr exact i64 %i.mg, 1
  %i.mi = trunc i64 %i.mh to i32
  store i32 %i.mi, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.thread376

bb.cu:                                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322
  %11 = phi i32 [ %9, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396 ], [ %10, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322 ], [ %i.lt, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623 ] ; 2 uses
  %.5178403 = phi i8 [ %.5178.ph, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396 ], [ %.5178, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322 ], [ %.3176, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623 ]
  %.5190402 = phi i32 [ %.5190.ph395, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread396 ], [ %.5190, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322 ], [ %.3188, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread623 ] ; 3 uses
  %12 = trunc nuw i8 %.5178403 to i1
  br i1 %12, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mj = add nsw i32 %.5190402, 1
  %i.mk = sext i32 %.5190402 to i64
  %i.ml = getelementptr inbounds i8, ptr %i.c, i64 %i.mk
  store i8 49, ptr %i.ml, align 1
  %i.mm = add nsw i32 %11, -1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.6191 = phi i32 [ %i.mj, %bb.cv ], [ %.5190402, %bb.cu ] ; 5 uses
  %.9 = phi i32 [ %i.mm, %bb.cv ], [ %11, %bb.cu ]
  %i.mn = sext i32 %.6191 to i64
  %i.mo = getelementptr inbounds i8, ptr %i.c, i64 %i.mn
  store i8 0, ptr %i.mo, align 1
  %i.mp = icmp sgt i32 %.6191, 0
  br i1 %i.mp, label %.lr.ph712, label %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph712:                                        ; preds = %bb.cw
  %i.mq = zext nneg i32 %.6191 to i64
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cy
  %i.mr = trunc nuw i64 %i.mu to i32              ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %bb.cy, label %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !15

bb.cy:                                            ; preds = %.lr.ph712, %bb.cx
  %i.mt = phi i32 [ %.6191, %.lr.ph712 ], [ %i.mr, %bb.cx ]
  %indvars.iv.i710 = phi i64 [ %i.mq, %.lr.ph712 ], [ %i.mu, %bb.cx ]
  %i.mu = add nsw i64 %indvars.iv.i710, -1        ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1
  %.not.i = icmp eq i8 %i.mw, 48
  br i1 %.not.i, label %bb.cx, label %._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge713, !llvm.loop !15

._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge713: ; preds = %bb.cy
  br label %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !15

_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.cx, %._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge713, %bb.cw
  %.sroa.3.1.i = phi i32 [ 0, %bb.cw ], [ %i.mt, %._ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge713 ], [ 0, %bb.cx ] ; 3 uses
  %i.mx = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.my = add nsw i32 %i.mx, %.9                  ; 2 uses
  br i1 %3, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.mz = call noundef double @_ZN6icu_7817double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.my) #7
  br label %bb.db

bb.da:                                            ; preds = %_ZN6icu_7817double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.na = call noundef float @_ZN6icu_7817double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.my) #7
  %i.nb = fpext float %i.na to double
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.0179 = phi double [ %i.mz, %bb.cz ], [ %i.nb, %bb.da ] ; 2 uses
  %i.nc = load ptr, ptr %i.a, align 8
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %1 to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = lshr exact i64 %i.nf, 1
  %i.nh = trunc i64 %i.ng to i32
  store i32 %i.nh, ptr %4, align 4
  %i.ni = fneg double %.0179
  %i.nj = select i1 %.0180, double %i.ni, double %.0179
  br label %.thread376

.thread376:                                       ; preds = %bb.cl, %bb.ch, %bb.cd, %bb.db, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread, %.lr.ph.i309._crit_edge, %bb.cs, %bb.bz, %bb.bw, %bb.bk, %bb.bi, %bb.be
  %.5 = phi double [ %i.md, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit322.thread ], [ %i.nj, %bb.db ], [ %i.hs, %bb.bi ], [ %i.ic, %bb.bk ], [ %i.jn, %bb.bw ], [ %i.hm, %bb.be ], [ %i.lj, %.lr.ph.i309._crit_edge ], [ %i.kz, %bb.cs ], [ %i.jr, %bb.bz ], [ %i.kg, %bb.cl ], [ %i.kb, %bb.ch ], [ %i.jv, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.thread

.thread:                                          ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244, %bb.h, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit270, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252, %bb.o, %bb.p, %.lr.ph.i247._crit_edge, %bb.x, %bb.y, %.lr.ph.i265._crit_edge, %bb.r, %bb.aa, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371, %bb.an, %.thread376, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288.thread, %bb.aj, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread368, %bb.d, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, %bb.b
  %.8 = phi double [ %i.q, %bb.b ], [ %i.ab, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit ], [ %i.ad, %bb.d ], [ -qnan, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit270 ], [ %i.bp, %.lr.ph.i247._crit_edge ], [ %i.bf, %bb.p ], [ %i.bc, %bb.o ], [ +inf, %bb.r ], [ %i.cx, %.lr.ph.i265._crit_edge ], [ %i.cn, %bb.y ], [ %i.ck, %bb.x ], [ +qnan, %bb.aa ], [ %i.ed, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371 ], [ -inf, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252 ], [ %i.dr, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread368 ], [ %i.dx, %bb.aj ], [ %.5, %.thread376 ], [ %i.fv, %_ZN6icu_7817double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit288.thread ], [ %i.ei, %bb.an ], [ %i.al, %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244 ], [ %i.an, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret double %.8
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZNK6icu_7817double_conversion23StringToDoubleConverter13StringToFloatEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZNK6icu_7817double_conversion23StringToDoubleConverter13StringToFloatEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter8StringToIdEET_PKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZNK6icu_7817double_conversion23StringToDoubleConverter8StringToIfEET_PKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter8StringToIdEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZNK6icu_7817double_conversion23StringToDoubleConverter8StringToIfEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i32 noundef range(i32 10, 17) %2, ptr nofree readnone captures(address) %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = icmp eq i16 %1, 0
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, %.0.val
  br label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread2

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1               ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 4 uses
  %i.h = add nsw i32 %i.g, -48
  %or.cond.i = icmp ult i32 %i.h, 10
  %i.i = add nuw nsw i32 %2, 48                   ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, %i.g
  %or.cond19.i = select i1 %or.cond.i, i1 %i.j, i1 false
  br i1 %or.cond19.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i32 %2, 10             ; 2 uses
  %i.l = icmp sgt i8 %i.f, 96
  %or.cond3.i = and i1 %i.k, %i.l
  %i.m = add nuw nsw i32 %2, 87
  %i.n = icmp samesign ugt i32 %i.m, %i.g
  %or.cond21.i = select i1 %or.cond3.i, i1 %i.n, i1 false
  br i1 %or.cond21.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i8 %i.f, 64
  %or.cond5.i = and i1 %i.k, %i.o
  %i.p = add nuw nsw i32 %2, 55
  %i.q = icmp samesign ugt i32 %i.p, %i.g
  %or.cond = select i1 %or.cond5.i, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread1: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.r, ptr %0, align 8
  %i.s = icmp eq ptr %i.r, %.0.val
  br label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread2

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread: ; preds = %bb.e, %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = icmp eq ptr %i.t, %.0.val
  br i1 %i.u, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread2, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.w = icmp eq ptr %i.v, %.0.val
  br i1 %i.w, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.t, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.y, %i.a
  br i1 %i.z, label %bb.h, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread2

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.v, align 1              ; 3 uses
  %i.ab = sext i8 %i.aa to i32                    ; 4 uses
  %i.ac = add nsw i32 %i.ab, -48
  %or.cond.i25 = icmp ult i32 %i.ac, 10
  %i.ad = icmp samesign ugt i32 %i.i, %i.ab
  %or.cond19.i26 = select i1 %or.cond.i25, i1 %i.ad, i1 false
  br i1 %or.cond19.i26, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp samesign ugt i32 %2, 10            ; 2 uses
  %i.af = icmp sgt i8 %i.aa, 96
  %or.cond3.i27 = and i1 %i.ae, %i.af
  %i.ag = add nuw nsw i32 %2, 87
  %i.ah = icmp samesign ugt i32 %i.ag, %i.ab
  %or.cond21.i28 = select i1 %or.cond3.i27, i1 %i.ah, i1 false
  br i1 %or.cond21.i28, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread, label %bb.j

end_hunk_2
