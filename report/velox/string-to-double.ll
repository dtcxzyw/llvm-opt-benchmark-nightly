inline.NumInlined: 160
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi = comdat any

$_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi = comdat any

@_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType = internal unnamed_addr global ptr null, align 8
@_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType = internal global i64 0, align 8

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 16 uses
  %i.b = alloca ptr, align 8                      ; 34 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [782 x i8], align 16              ; 11 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %1, ptr %i.b, align 8, !tbaa !7
  %i.g = sext i32 %2 to i64                       ; 9 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 40 uses
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.i = load i32, ptr %0, align 8, !tbaa !10     ; 9 uses
  %i.j = and i32 %i.i, 4
  %i.k = icmp ne i32 %i.j, 0                      ; 11 uses
  %i.l = and i32 %i.i, 8
  %.not212.not = icmp eq i32 %i.l, 0
  %i.m = and i32 %i.i, 16
  %.not223 = icmp eq i32 %i.m, 0                  ; 2 uses
  %i.n = and i32 %i.i, 32
  %.not211 = icmp ne i32 %i.n, 0
  %i.o = and i32 %i.i, 64
  %i.p = icmp ne i32 %i.o, 0                      ; 4 uses
  %i.q = icmp eq i32 %2, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !14
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.t = and i32 %i.i, 24
  %or.cond.not = icmp eq i32 %i.t, 0
  %.pre = load i8, ptr %1, align 1, !tbaa !15     ; 3 uses
  br i1 %or.cond.not, label %._crit_edge542, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = sext i8 %.pre to i32
  %i.v = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.u)
  br i1 %i.v, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i680 = icmp eq i32 %2, 1
  br i1 %.not.not.i680, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !16

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i, !llvm.loop !16

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.b, align 8
  br label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph.i.lr.ph ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15    ; 2 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.z)
  br i1 %i.aa, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.not.i, label %.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !16

.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit: ; preds = %.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.x, ptr %i.b, align 8
  br i1 %.not212.not, label %bb.d, label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i._crit_edge._crit_edge:                   ; preds = %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %.lcssa426606 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ] ; 2 uses
  %i.ae = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.y, %.lr.ph.i._crit_edge ]
  %.pre559 = ptrtoint ptr %.lcssa426606 to i64
  br label %._crit_edge542

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  br label %.thread

._crit_edge542:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi560 = phi i64 [ %.pre559, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %i.ah = phi i8 [ %i.ae, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %.lcssa426606, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %i.ah, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge542, %._crit_edge542
  %i.aj = icmp eq i8 %i.ah, 45
  %.ptr402 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %.ptr402, ptr %i.b, align 8, !tbaa !7
  %.not6.not.i238 = icmp eq ptr %.ptr402, %i.h
  br i1 %.not6.not.i238, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.ak = add i64 %i.a, %i.g
  %i.al = sub i64 %i.ak, %.pre-phi560
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0338.idx
  %i.am = load i8, ptr %.0338.ptr, align 1, !tbaa !15
  %i.an = sext i8 %i.am to i32
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.an)
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw i64 %.0338.idx, 1          ; 2 uses
  %exitcond = icmp eq i64 %.0338.add, %i.al
  br i1 %exitcond, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 1
  %or.cond392 = or i1 %.not211, %.not214
  br i1 %or.cond392, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.b, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge542
  %i.at = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ai, %._crit_edge542 ] ; 2 uses
  %.0180 = phi i1 [ %i.aj, %bb.i ], [ false, %._crit_edge542 ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %.not215 = icmp eq ptr %i.av, null
  br i1 %.not215, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !15  ; 2 uses
  br i1 %i.p, label %bb.l, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.az = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bb = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bb, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

common.resume:                                    ; preds = %bb.ae, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.co, %bb.ae ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.bd = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef signext i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(570) %i.bd, i8 noundef signext %i.aw), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bh, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.aw, %bb.k ]
  %i.bi = load i8, ptr %i.av, align 1, !tbaa !15
  %i.bj = icmp eq i8 %.sink.i, %i.bi
  br i1 %i.bj, label %bb.r, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

bb.au:                                            ; preds = %bb.as
  br i1 %.not218, label %.thread358, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.es = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.h, i16 noundef zeroext %i.dw, i1 noundef zeroext %i.k)
  br i1 %i.es, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.au, %bb.av
  %i.et = load i8, ptr %i.eo, align 1, !tbaa !15  ; 3 uses
  %i.eu = sext i8 %i.et to i32
  %i.ev = add nsw i32 %i.eu, -48
  %or.cond.i = icmp ult i32 %i.ev, 10
  %i.ew = icmp ult i8 %i.et, 64
  %or.cond19.i = and i1 %i.ew, %or.cond.i
  %i.ex = freeze i1 %or.cond19.i
  br i1 %i.ex, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.et, -65            ; 2 uses
  %i.ey = icmp ult i8 %switch.tableidx, 38
  br i1 %i.ey, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !18
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.av
  %i.fb = phi i1 [ false, %.thread358 ], [ true, %bb.av ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.fc = load i16, ptr %i.dv, align 8, !tbaa !29
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18
  %i.ff = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.fc, i1 noundef zeroext %i.fb, i1 noundef zeroext %i.k, double noundef %i.fe, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.fg = load i8, ptr %i.c, align 1, !tbaa !30, !range !32, !noundef !23
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.b, align 8   ; 6 uses
  %.promoted.i265532 = ptrtoint ptr %.promoted.i265 to i64 ; 2 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.h
  %or.cond398 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond398, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.aw
  %i.fi = load i8, ptr %.promoted.i265, align 1, !tbaa !15
  %i.fj = sext i8 %i.fi to i32
  %i.fk = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fj)
  br i1 %i.fk, label %.lr.ph440.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit

.lr.ph440.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.fl = add i64 %i.a, %i.g
  %i.fm = sub i64 %i.fl, %.promoted.i265532
  %scevgep533 = getelementptr i8, ptr %.promoted.i265, i64 %i.fm
  %i.fn = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 2 uses
  %.not.not.i271683 = icmp eq ptr %i.fn, %i.h
  br i1 %.not.not.i271683, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, label %.lr.ph.i267.lr.ph, !llvm.loop !16

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph440.preheader
  br label %.lr.ph.i267, !llvm.loop !16

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.lr.ph, %.lr.ph440
  %i.fo = phi ptr [ %i.fn, %.lr.ph.i267.lr.ph ], [ %i.fs, %.lr.ph440 ] ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = sext i8 %i.fp to i32
  %i.fr = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fq)
  br i1 %i.fr, label %.lr.ph440, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

.lr.ph440:                                        ; preds = %.lr.ph.i267
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  %.not.not.i271 = icmp eq ptr %i.fs, %i.h
  br i1 %.not.not.i271, label %.lr.ph440.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, label %.lr.ph.i267, !llvm.loop !16

.lr.ph440.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph440
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge: ; preds = %.lr.ph440.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, %.lr.ph440.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit: ; preds = %.lr.ph.i267, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, %.lr.ph.i267.preheader
  %i.ft = phi ptr [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %scevgep533, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge ], [ %i.fo, %.lr.ph.i267 ]
  %.pre554 = ptrtoint ptr %i.ft to i64
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, %bb.aw
  %.pre-phi = phi i64 [ %.pre554, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit ], [ %.promoted.i265532, %bb.aw ]
  %i.fu = sub i64 %.pre-phi, %i.a
  %i.fv = trunc i64 %i.fu to i32
  store i32 %i.fv, ptr %4, align 4, !tbaa !3
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

bb.ay:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.fw = icmp eq i8 %.pre545, 48
  br i1 %i.fw, label %.lr.ph445, label %._crit_edge

.lr.ph445:                                        ; preds = %bb.ar, %bb.ay
  br i1 %i.dy, label %.lr.ph445.split.us.preheader, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph445.split.us.preheader:                     ; preds = %.lr.ph445
  %i.fx = add i64 %i.a, %i.g                      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.promoted443, i64 1 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.h
  br i1 %i.fz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge410.us

.lr.ph445.split.us:                               ; preds = %.backedge410.us
  %i.ga = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.h
  br i1 %i.gb, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge410.us, !llvm.loop !33

.backedge410.us:                                  ; preds = %.lr.ph445.split.us.preheader, %.lr.ph445.split.us
  %i.gc = phi ptr [ %i.ga, %.lr.ph445.split.us ], [ %i.fy, %.lr.ph445.split.us.preheader ] ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15
  %i.ge = icmp eq i8 %i.gd, 48
  br i1 %i.ge, label %.lr.ph445.split.us, label %._crit_edge, !llvm.loop !33

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph445, %.backedge410
  %i.gf = phi ptr [ %i.gj, %.backedge410 ], [ %.promoted443, %.lr.ph445 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, %i.h
  br i1 %i.gh, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649, label %bb.az

.backedge410:                                     ; preds = %bb.ba, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281
  %i.gi = phi i8 [ %.pre546.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gp, %bb.ba ]
  %i.gj = phi ptr [ %i.gg, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gl, %bb.ba ] ; 2 uses
  %i.gk = icmp eq i8 %i.gi, 48
  br i1 %i.gk, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !33

bb.az:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 3 uses
  %i.gm = icmp ne ptr %i.gl, %i.h
  %.pre546.pre = load i8, ptr %i.gg, align 1, !tbaa !15 ; 2 uses
  %i.gn = sext i8 %.pre546.pre to i32
  %i.go = icmp eq i32 %i.gn, %i.dx
  %or.cond647 = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond647, label %bb.ba, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

bb.ba:                                            ; preds = %bb.az
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !15  ; 3 uses
  %i.gq = sext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -48
  %or.cond.i25.i278 = icmp ult i32 %i.gr, 10
  %i.gs = icmp ult i8 %i.gp, 58
  %or.cond19.i26.i279 = and i1 %i.gs, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge410, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281: ; preds = %bb.ba, %bb.az
  br label %.backedge410

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gt = ptrtoint ptr %i.gg to i64
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %.lr.ph445.split.us, %.lr.ph445.split.us.preheader, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649
  %.us-phi = phi i64 [ %i.gt, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649 ], [ %i.fx, %.lr.ph445.split.us.preheader ], [ %i.fx, %.lr.ph445.split.us ]
  %i.gu = sub i64 %.us-phi, %i.a
  %i.gv = trunc i64 %i.gu to i32
  store i32 %i.gv, ptr %4, align 4, !tbaa !3
  %i.gw = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge410, %.backedge410.us, %bb.ar, %bb.ay
  %.lcssa444 = phi ptr [ %.promoted443, %bb.ay ], [ %.promoted443, %bb.ar ], [ %i.gc, %.backedge410.us ], [ %i.gj, %.backedge410 ] ; 3 uses
  store ptr %.lcssa444, ptr %i.b, align 8
  %i.gx = trunc i32 %i.el to i8
  %i.gy = lshr i8 %i.gx, 1
  %.pre548 = load i8, ptr %.lcssa444, align 1, !tbaa !15
  br label %.critedge227

.critedge227:                                     ; preds = %bb.al, %._crit_edge
  %i.gz = phi i8 [ %i.dt, %bb.al ], [ %.pre548, %._crit_edge ] ; 3 uses
  %.promoted450 = phi ptr [ %i.ds, %bb.al ], [ %.lcssa444, %._crit_edge ] ; 2 uses
  %i.ha = phi i8 [ 0, %bb.al ], [ %i.gy, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.hb = add i8 %i.gz, -48
  %or.cond228452 = icmp ult i8 %i.hb, 10
  br i1 %or.cond228452, label %.lr.ph458, label %.critedge

.lr.ph458:                                        ; preds = %.critedge227
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hd = load i16, ptr %i.hc, align 8, !tbaa !29 ; 2 uses
  %i.he = zext i16 %i.hd to i32
  %i.hf = icmp eq i16 %i.hd, 0
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph458, %.backedge409
  %i.hg = phi i8 [ %i.gz, %.lr.ph458 ], [ %i.hx, %.backedge409 ] ; 2 uses
  %.0165457 = phi i32 [ 0, %.lr.ph458 ], [ %.1166, %.backedge409 ] ; 3 uses
  %.0170456 = phi i32 [ 0, %.lr.ph458 ], [ %.1171, %.backedge409 ] ; 2 uses
  %.0173455 = phi i8 [ 0, %.lr.ph458 ], [ %.1174, %.backedge409 ] ; 2 uses
  %.0182454 = phi i8 [ %i.ha, %.lr.ph458 ], [ %i.ht, %.backedge409 ]
  %.0185453 = phi i32 [ 0, %.lr.ph458 ], [ %.1186, %.backedge409 ] ; 3 uses
  %i.hh = phi ptr [ %.promoted450, %.lr.ph458 ], [ %i.hw, %.backedge409 ] ; 5 uses
  %i.hi = icmp slt i32 %.0165457, 772
  br i1 %i.hi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hj = add nsw i32 %.0185453, 1
  %i.hk = sext i32 %.0185453 to i64
  %i.hl = getelementptr inbounds i8, ptr %i.d, i64 %i.hk
  store i8 %i.hg, ptr %i.hl, align 1, !tbaa !15
  %i.hm = add nsw i32 %.0165457, 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.hn = add nsw i32 %.0170456, 1
  %5 = trunc nuw i8 %.0173455 to i1
  %i.ho = icmp ne i8 %i.hg, 48
  %narrow403 = or i1 %i.ho, %5
  %6 = zext i1 %narrow403 to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1186 = phi i32 [ %i.hj, %bb.bc ], [ %.0185453, %bb.bd ] ; 5 uses
  %.1174 = phi i8 [ %.0173455, %bb.bc ], [ %6, %bb.bd ] ; 5 uses
  %.1171 = phi i32 [ %.0170456, %bb.bc ], [ %i.hn, %bb.bd ] ; 5 uses
  %.1166 = phi i32 [ %i.hm, %bb.bc ], [ %.0165457, %bb.bd ] ; 2 uses
  %i.hp = trunc i8 %.0182454 to i1
  br i1 %i.hp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hq = load i8, ptr %i.hh, align 1, !tbaa !15
  %i.hr = icmp slt i8 %i.hq, 56
  %i.hs = zext i1 %i.hr to i8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ht = phi i8 [ 0, %bb.be ], [ %i.hs, %bb.bf ] ; 5 uses
  br i1 %i.hf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, %i.h
  br i1 %i.hv, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge409

.backedge409:                                     ; preds = %bb.bm, %bb.bh, %bb.bj, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290
  %i.hw = phi ptr [ %i.hu, %bb.bh ], [ %i.id, %bb.bj ], [ %i.id, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290 ], [ %i.if, %bb.bm ] ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !15  ; 3 uses
  %i.hy = add i8 %i.hx, -48
  %or.cond228 = icmp ult i8 %i.hy, 10
  br i1 %or.cond228, label %bb.bb, label %.critedge, !llvm.loop !34

bb.bi:                                            ; preds = %bb.bg
  %i.hz = load i8, ptr %i.hh, align 1, !tbaa !15  ; 2 uses
  %i.ia = sext i8 %i.hz to i32
  %i.ib = add nsw i32 %i.ia, -48
  %or.cond.i.i282 = icmp ult i32 %i.ib, 10
  %i.ic = icmp ult i8 %i.hz, 58
  %or.cond19.i.i283 = and i1 %i.ic, %or.cond.i.i282
  %i.id = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 6 uses
  %i.ie = icmp eq ptr %i.id, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ie, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge409

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bi
  br i1 %i.ie, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %bb.bk

bb.bk:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.if = getelementptr inbounds nuw i8, ptr %i.hh, i64 2 ; 3 uses
  %i.ig = icmp eq ptr %i.if, %i.h
  br i1 %i.ig, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ih = load i8, ptr %i.id, align 1, !tbaa !15
  %i.ii = sext i8 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, %i.he
  br i1 %i.ij, label %bb.bm, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

bb.bm:                                            ; preds = %bb.bl
  %i.ik = load i8, ptr %i.if, align 1, !tbaa !15  ; 2 uses
  %i.il = sext i8 %i.ik to i32
  %i.im = add nsw i32 %i.il, -48
  %or.cond.i25.i287 = icmp ult i32 %i.im, 10
  %i.in = icmp ult i8 %i.ik, 58
  %or.cond19.i26.i288 = and i1 %i.in, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge409, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290: ; preds = %bb.bm, %bb.bk, %bb.bl
  br label %.backedge409

.critedge:                                        ; preds = %.backedge409, %.critedge227
  %.lcssa451 = phi ptr [ %.promoted450, %.critedge227 ], [ %i.hw, %.backedge409 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge409 ] ; 5 uses
  %.0182.lcssa = phi i8 [ %i.ha, %.critedge227 ], [ %i.ht, %.backedge409 ]
  %.0173.lcssa = phi i8 [ 0, %.critedge227 ], [ %.1174, %.backedge409 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge409 ] ; 6 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge409 ] ; 5 uses
  %.lcssa = phi i8 [ %i.gz, %.critedge227 ], [ %i.hx, %.backedge409 ]
  store ptr %.lcssa451, ptr %i.b, align 8
  %i.io = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.io, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.ip = icmp eq i8 %.lcssa, 46
  br i1 %i.ip, label %bb.bn, label %.critedge11

bb.bn:                                            ; preds = %.critedge
  %i.iq = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.iq, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.is = load double, ptr %i.ir, align 8, !tbaa !18
  br label %.thread364

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.iq, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iu = load i16, ptr %i.it, align 8, !tbaa !29 ; 4 uses
  %i.iv = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.iu, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.iv, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.iw = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.du, %i.iw
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !18
  br label %.thread364

bb.bt:                                            ; preds = %bb.bq
  %.promoted469.pre = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.iz = load i8, ptr %.promoted469.pre, align 1, !tbaa !15 ; 2 uses
  %i.ja = icmp eq i8 %i.iz, 48
  %or.cond648 = select i1 %i.io, i1 %i.ja, i1 false
  br i1 %or.cond648, label %.lr.ph467, label %.loopexit

.lr.ph467:                                        ; preds = %bb.bt, %bb.bv
  %.0156466 = phi i32 [ %i.jh, %bb.bv ], [ 0, %bb.bt ]
  %i.jb = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.iu, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph467
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = sub i64 %i.jd, %i.a
  %i.jf = trunc i64 %i.je to i32
  store i32 %i.jf, ptr %4, align 4, !tbaa !3
  %i.jg = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread364

bb.bv:                                            ; preds = %.lr.ph467
  %i.jh = add nsw i32 %.0156466, -1               ; 2 uses
  %i.ji = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !15  ; 2 uses
  %i.jk = icmp eq i8 %i.jj, 48
  br i1 %i.jk, label %.lr.ph467, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.bv, %bb.bt
  %i.jl = phi i8 [ %i.iz, %bb.bt ], [ %i.jj, %bb.bv ] ; 2 uses
  %.promoted469 = phi ptr [ %.promoted469.pre, %bb.bt ], [ %i.ji, %bb.bv ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.bt ], [ %i.jh, %bb.bv ] ; 2 uses
  %i.jm = add i8 %i.jl, -48
  %or.cond229471 = icmp ult i8 %i.jm, 10
  br i1 %or.cond229471, label %.lr.ph477, label %.critedge11.loopexit

.lr.ph477:                                        ; preds = %.loopexit
  %i.jn = zext i16 %i.iu to i32
  %i.jo = icmp eq i16 %i.iu, 0
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph477, %.backedge
  %i.jp = phi i8 [ %i.jl, %.lr.ph477 ], [ %i.kb, %.backedge ] ; 2 uses
  %.2158475 = phi i32 [ %.1157, %.lr.ph477 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167474 = phi i32 [ %.0165.lcssa, %.lr.ph477 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175473 = phi i8 [ %.0173.lcssa, %.lr.ph477 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187472 = phi i32 [ %.0185.lcssa, %.lr.ph477 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jq = phi ptr [ %.promoted469, %.lr.ph477 ], [ %i.ka, %.backedge ] ; 4 uses
  %i.jr = icmp slt i32 %.2167474, 772
  br i1 %i.jr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.js = add nsw i32 %.2187472, 1
  %i.jt = sext i32 %.2187472 to i64
  %i.ju = getelementptr inbounds i8, ptr %i.d, i64 %i.jt
  store i8 %i.jp, ptr %i.ju, align 1, !tbaa !15
  %i.jv = add nsw i32 %.2167474, 1
  %i.jw = add nsw i32 %.2158475, -1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %7 = trunc nuw i8 %.2175473 to i1
  %i.jx = icmp ne i8 %i.jp, 48
  %narrow = or i1 %i.jx, %7
  %8 = zext i1 %narrow to i8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.3188 = phi i32 [ %i.js, %bb.bx ], [ %.2187472, %bb.by ] ; 3 uses
  %.3176 = phi i8 [ %.2175473, %bb.bx ], [ %8, %bb.by ] ; 3 uses
  %.3168 = phi i32 [ %i.jv, %bb.bx ], [ %.2167474, %bb.by ] ; 2 uses
  %.3159 = phi i32 [ %i.jw, %bb.bx ], [ %.2158475, %bb.by ] ; 3 uses
  br i1 %i.jo, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, %i.h
  br i1 %i.jz, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607, label %.backedge

.backedge:                                        ; preds = %bb.cf, %bb.ca, %bb.cc, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299
  %i.ka = phi ptr [ %i.jy, %bb.ca ], [ %i.kh, %bb.cc ], [ %i.kh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299 ], [ %i.kj, %bb.cf ] ; 3 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !15  ; 2 uses
  %i.kc = add i8 %i.kb, -48
  %or.cond229 = icmp ult i8 %i.kc, 10
  br i1 %or.cond229, label %bb.bw, label %.critedge11.loopexit, !llvm.loop !36

bb.cb:                                            ; preds = %bb.bz
  %i.kd = load i8, ptr %i.jq, align 1, !tbaa !15  ; 2 uses
  %i.ke = sext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.ke, -48
  %or.cond.i.i291 = icmp ult i32 %i.kf, 10
  %i.kg = icmp ult i8 %i.kd, 58
  %or.cond19.i.i292 = and i1 %i.kg, %or.cond.i.i291
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 6 uses
  %i.ki = icmp eq ptr %i.kh, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.ki, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607, label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.cb
  br i1 %i.ki, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607, label %bb.cd

bb.cd:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jq, i64 2 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, %i.h
  br i1 %i.kk, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kl = load i8, ptr %i.kh, align 1, !tbaa !15
  %i.km = sext i8 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, %i.jn
  br i1 %i.kn, label %bb.cf, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

bb.cf:                                            ; preds = %bb.ce
  %i.ko = load i8, ptr %i.kj, align 1, !tbaa !15  ; 2 uses
  %i.kp = sext i8 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -48
  %or.cond.i25.i296 = icmp ult i32 %i.kq, 10
  %i.kr = icmp ult i8 %i.ko, 58
  %or.cond19.i26.i297 = and i1 %i.kr, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299: ; preds = %bb.cf, %bb.cd, %bb.ce
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa470 = phi ptr [ %.promoted469, %.loopexit ], [ %i.ka, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2175.lcssa = phi i8 [ %.0173.lcssa, %.loopexit ], [ %.3176, %.backedge ]
  %.2167.lcssa = phi i32 [ %.0165.lcssa, %.loopexit ], [ %.3168, %.backedge ]
  %.2158.lcssa = phi i32 [ %.1157, %.loopexit ], [ %.3159, %.backedge ]
  store ptr %.lcssa470, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.ks = phi ptr [ %.lcssa451, %.critedge ], [ %.lcssa470, %.critedge11.loopexit ] ; 6 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.4177 = phi i8 [ %.0173.lcssa, %.critedge ], [ %.2175.lcssa, %.critedge11.loopexit ] ; 5 uses
  %.4169 = phi i32 [ %.0165.lcssa, %.critedge ], [ %.2167.lcssa, %.critedge11.loopexit ]
  %.4160 = phi i32 [ 0, %.critedge ], [ %.2158.lcssa, %.critedge11.loopexit ] ; 4 uses
  %.not12 = xor i1 %i.du, true
  %i.kt = icmp eq i32 %.4160, 0
  %or.cond14 = select i1 %.not12, i1 %i.kt, i1 false
  %i.ku = icmp eq i32 %.4169, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.ku, i1 false
  br i1 %or.cond16, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge11
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !18
  br label %.thread364

bb.ch:                                            ; preds = %.critedge11
  %i.kx = load i8, ptr %i.ks, align 1, !tbaa !15
  switch i8 %i.kx, label %bb.dc [
    i8 101, label %bb.ci
    i8 69, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch
  %i.ky = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.ky, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.la = load double, ptr %i.kz, align 8, !tbaa !18
  br label %.thread364

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.ky, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 4 uses
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !7
  %i.lc = icmp eq ptr %i.lb, %i.h
  br i1 %i.lc, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.k, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.le = load double, ptr %i.ld, align 8, !tbaa !18
  br label %.thread364

bb.co:                                            ; preds = %bb.cl
  %i.lf = load i8, ptr %i.lb, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.lf, label %bb.cs [
    i8 43, label %bb.cp
    i8 45, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co, %bb.co
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 3 uses
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !7
  %i.lh = icmp eq ptr %i.lg, %i.h
  br i1 %i.lh, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.k, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lj = load double, ptr %i.li, align 8, !tbaa !18
  br label %.thread364

bb.cs:                                            ; preds = %bb.co, %bb.cp
  %.promoted483 = phi ptr [ %i.lg, %bb.cp ], [ %i.lb, %bb.co ] ; 5 uses
  %.0192 = phi i8 [ %i.lf, %bb.cp ], [ 43, %bb.co ]
  %i.lk = icmp eq ptr %.promoted483, %i.h
  br i1 %i.lk, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ll = load i8, ptr %.promoted483, align 1, !tbaa !15 ; 2 uses
  %i.lm = add i8 %i.ll, -58
  %or.cond230 = icmp ult i8 %i.lm, -10
  br i1 %or.cond230, label %bb.cu, label %.preheader

.preheader:                                       ; preds = %bb.ct
  %i.ln = add i64 %i.a, %i.g
  %.promoted483536 = ptrtoint ptr %.promoted483 to i64
  %i.lo = sub i64 %i.ln, %.promoted483536
  %scevgep537 = getelementptr i8, ptr %.promoted483, i64 %i.lo
  br label %bb.cw

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %i.k, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !18
  br label %.thread364

bb.cw:                                            ; preds = %.preheader, %bb.da
  %i.lr = phi i8 [ %i.mb, %bb.da ], [ %i.ll, %.preheader ] ; 2 uses
  %i.ls = phi ptr [ %i.ma, %bb.da ], [ %.promoted483, %.preheader ]
  %.0193 = phi i32 [ %.1194, %bb.da ], [ 0, %.preheader ] ; 3 uses
  %i.lt = zext nneg i8 %i.lr to i32
  %i.lu = icmp sgt i32 %.0193, 107374181
  br i1 %i.lu, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.lv = icmp eq i32 %.0193, 107374182
  %i.lw = icmp samesign ult i8 %i.lr, 52
  %or.cond21 = and i1 %i.lv, %i.lw
  br i1 %or.cond21, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.lx = mul nsw i32 %.0193, 10
  %i.ly = add i32 %i.lx, -48
  %i.lz = add i32 %i.ly, %i.lt
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %.1194 = phi i32 [ %i.lz, %bb.cy ], [ 1073741823, %bb.cx ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.ma, %i.h
  br i1 %.not219, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !15  ; 2 uses
  %i.mc = add i8 %i.mb, -48
  %or.cond231 = icmp ult i8 %i.mc, 10
  br i1 %or.cond231, label %bb.cw, label %bb.db, !llvm.loop !37

bb.db:                                            ; preds = %bb.cz, %bb.da
  %.lcssa500 = phi ptr [ %scevgep537, %bb.cz ], [ %i.ma, %bb.da ] ; 2 uses
  store ptr %.lcssa500, ptr %i.b, align 8, !tbaa !7
  %i.md = icmp eq i8 %.0192, 45
  %i.me = sub nsw i32 0, %.1194
  %i.mf = select i1 %i.md, i32 %i.me, i32 %.1194
  %i.mg = add nsw i32 %i.mf, %.4160
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ch
  %.promoted485 = phi ptr [ %.lcssa500, %bb.db ], [ %i.ks, %bb.ch ] ; 6 uses
  %.7163 = phi i32 [ %i.mg, %bb.db ], [ %.4160, %bb.ch ] ; 4 uses
  %i.mh = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.mh, 0
  %.not220 = icmp eq ptr %.promoted485, %i.h      ; 2 uses
  %or.cond399 = or i1 %or.cond25.not, %.not220
  br i1 %or.cond399, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !18
  br label %.thread364

bb.de:                                            ; preds = %bb.dc
  %.promoted.i300538 = ptrtoint ptr %.promoted485 to i64 ; 2 uses
  %or.cond400 = or i1 %i.k, %.not220
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.de
  %i.mk = load i8, ptr %.promoted485, align 1, !tbaa !15
  %i.ml = sext i8 %i.mk to i32
  %i.mm = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ml)
  br i1 %i.mm, label %.lr.ph488.preheader, label %.lr.ph.i302._crit_edge

.lr.ph488.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.mn = add i64 %i.a, %i.g                      ; 2 uses
  %i.mo = sub i64 %i.mn, %.promoted.i300538
  %scevgep539 = getelementptr i8, ptr %.promoted485, i64 %i.mo ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.promoted485, i64 1 ; 2 uses
  %.not.not.i306684 = icmp eq ptr %i.mp, %i.h
  br i1 %.not.not.i306684, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !16

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph488.preheader
  br label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph488
  %i.mq = phi ptr [ %i.mp, %.lr.ph.i302.lr.ph ], [ %i.mu, %.lr.ph488 ] ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !15
  %i.ms = sext i8 %i.mr to i32
  %i.mt = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ms)
  br i1 %i.mt, label %.lr.ph488, label %.lr.ph.i302._crit_edge, !llvm.loop !16

.lr.ph488:                                        ; preds = %.lr.ph.i302
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.mu, %i.h
  br i1 %.not.not.i306, label %.lr.ph488._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !18
  br label %.thread364

.lr.ph488._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge: ; preds = %.lr.ph488
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit: ; preds = %.lr.ph488._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, %.lr.ph488.preheader
  store ptr %scevgep539, ptr %i.b, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, %bb.de
  %.promoted.i308540.pre-phi = phi i64 [ %i.mn, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted.i300538, %bb.de ]
  %.promoted490 = phi ptr [ %scevgep539, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted485, %bb.de ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted490, %i.h
  %or.cond401 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond401, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.mx = load i8, ptr %.promoted490, align 1, !tbaa !15
  %i.my = sext i8 %i.mx to i32
  %i.mz = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.my)
  br i1 %i.mz, label %.lr.ph491.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split

.lr.ph491.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.na = add i64 %i.a, %i.g
  %i.nb = sub i64 %i.na, %.promoted.i308540.pre-phi
  %scevgep541 = getelementptr i8, ptr %.promoted490, i64 %i.nb
  %i.nc = getelementptr inbounds nuw i8, ptr %.promoted490, i64 1 ; 2 uses
  %.not.not.i314685 = icmp eq ptr %i.nc, %i.h
  br i1 %.not.not.i314685, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !16

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph491.preheader
  br label %.lr.ph.i310, !llvm.loop !16

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph491
  %i.nd = phi ptr [ %i.nc, %.lr.ph.i310.lr.ph ], [ %i.nh, %.lr.ph491 ] ; 3 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !15
  %i.nf = sext i8 %i.ne to i32
  %i.ng = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.nf)
  br i1 %i.ng, label %.lr.ph491, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

.lr.ph491:                                        ; preds = %.lr.ph.i310
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nh, %i.h
  br i1 %.not.not.i314, label %.lr.ph491.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split: ; preds = %bb.cu, %bb.cq, %bb.cm
  store ptr %i.ks, ptr %i.b, align 8, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split, %bb.br
  %.5190.ph383 = phi i32 [ %.0185.lcssa, %bb.br ], [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split ]
  %.5178.ph = phi i8 [ %.0173.lcssa, %bb.br ], [ %.4177, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split ]
  %.8164.ph = phi i32 [ 0, %bb.br ], [ %.4160, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split ]
  %9 = add nsw i32 %.8164.ph, %.0170.lcssa
  br label %bb.df

.lr.ph491.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph491
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge: ; preds = %.lr.ph491.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph491.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, %bb.cc, %bb.ca
  %i.ni = phi ptr [ %i.jy, %bb.ca ], [ %i.kh, %bb.cc ], [ %i.kh, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.ni, ptr %i.b, align 8
  %i.nj = add nsw i32 %.3159, %.0170.lcssa
  br label %bb.df

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, %bb.bj, %bb.bh, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.nd, %.lr.ph.i310 ], [ %.promoted490, %.lr.ph.i310.preheader ], [ %scevgep541, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.id, %bb.bj ], [ %i.hu, %bb.bh ], [ %i.id, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1186, %bb.bh ], [ %.1186, %bb.bj ], [ %.1186, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.ht, %bb.bh ], [ %i.ht, %bb.bj ], [ %i.ht, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5178.ph691 = phi i8 [ %.4177, %.lr.ph.i310 ], [ %.4177, %.lr.ph.i310.preheader ], [ %.4177, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1174, %bb.bh ], [ %.1174, %bb.bj ], [ %.1174, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2172.ph = phi i32 [ %.0170.lcssa, %.lr.ph.i310 ], [ %.0170.lcssa, %.lr.ph.i310.preheader ], [ %.0170.lcssa, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1171, %bb.bh ], [ %.1171, %bb.bj ], [ %.1171, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8164.ph692 = phi i32 [ %.7163, %.lr.ph.i310 ], [ %.7163, %.lr.ph.i310.preheader ], [ %.7163, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.nk = phi ptr [ %.promoted490, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.sink, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5190.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ] ; 2 uses
  %.2184 = phi i8 [ %spec.select, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2184.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5178 = phi i8 [ %.4177, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5178.ph691, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.2172 = phi i32 [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2172.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.8164 = phi i32 [ %.7163, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.8164.ph692, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %10 = add nsw i32 %.8164, %.2172
  %i.nl = trunc i8 %.2184 to i1
  br i1 %i.nl, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.df

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread: ; preds = %bb.ck, %bb.bp, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.nm = phi ptr [ %i.nk, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %i.ks, %bb.ck ], [ %.lcssa451, %bb.bp ]
  %.5190381 = phi i32 [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %.4189, %bb.ck ], [ %.0185.lcssa, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !7
  %i.nn = sext i32 %.5190381 to i64
  %i.no = getelementptr inbounds i8, ptr %i.d, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nq = load i16, ptr %i.np, align 8, !tbaa !29
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !18
  %i.nt = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.f, ptr noundef %i.no, i1 noundef zeroext %.0180, i16 noundef zeroext %i.nq, i1 noundef zeroext %i.k, double noundef %i.ns, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.nu = ptrtoint ptr %i.nm to i64
  %i.nv = sub i64 %i.nu, %i.a
  %i.nw = trunc i64 %i.nv to i32
  store i32 %i.nw, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread364

bb.df:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %11 = phi i32 [ %9, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %10, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %i.nj, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607 ] ; 2 uses
  %.5178391 = phi i8 [ %.5178.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %.5178, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %.3176, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607 ]
  %.5190390 = phi i32 [ %.5190.ph383, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread607 ] ; 3 uses
  %12 = trunc nuw i8 %.5178391 to i1
  br i1 %12, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.nx = add nsw i32 %.5190390, 1
  %i.ny = sext i32 %.5190390 to i64
  %i.nz = getelementptr inbounds i8, ptr %i.d, i64 %i.ny
  store i8 49, ptr %i.nz, align 1, !tbaa !15
  %i.oa = add nsw i32 %11, -1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.6191 = phi i32 [ %i.nx, %bb.dg ], [ %.5190390, %bb.df ] ; 5 uses
  %.9 = phi i32 [ %i.oa, %bb.dg ], [ %11, %bb.df ]
  %i.ob = sext i32 %.6191 to i64
  %i.oc = getelementptr inbounds i8, ptr %i.d, i64 %i.ob
  store i8 0, ptr %i.oc, align 1, !tbaa !15
  %i.od = icmp sgt i32 %.6191, 0
  br i1 %i.od, label %.lr.ph688, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph688:                                        ; preds = %bb.dh
  %i.oe = zext nneg i32 %.6191 to i64
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %i.of = trunc nuw i64 %i.oi to i32              ; 2 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %bb.dj, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

bb.dj:                                            ; preds = %.lr.ph688, %bb.di
  %i.oh = phi i32 [ %.6191, %.lr.ph688 ], [ %i.of, %bb.di ]
  %indvars.iv.i686 = phi i64 [ %i.oe, %.lr.ph688 ], [ %i.oi, %bb.di ]
  %i.oi = add nsw i64 %indvars.iv.i686, -1        ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.ok, 48
  br i1 %.not.i, label %bb.di, label %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689, !llvm.loop !38

._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689: ; preds = %bb.dj
  br label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.di, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689, %bb.dh
  %.sroa.3.1.i = phi i32 [ 0, %bb.dh ], [ %i.oh, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689 ], [ 0, %bb.di ] ; 3 uses
  %i.ol = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.om = add nsw i32 %i.ol, %.9                  ; 2 uses
  br i1 %3, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.on = call noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.om)
  br label %bb.dm

bb.dl:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.oo = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.om)
  %i.op = fpext float %i.oo to double
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0179 = phi double [ %i.on, %bb.dk ], [ %i.op, %bb.dl ] ; 2 uses
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = sub i64 %i.or, %i.a
  %i.ot = trunc i64 %i.os to i32
  store i32 %i.ot, ptr %4, align 4, !tbaa !3
  %i.ou = fneg double %.0179
  %i.ov = select i1 %.0180, double %i.ou, double %.0179
  br label %.thread364

.thread364:                                       ; preds = %bb.cv, %bb.cr, %bb.cn, %bb.dm, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.dd, %bb.cj, %bb.cg, %bb.bu, %bb.bs, %bb.bo
  %.5 = phi double [ %i.nt, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread ], [ %i.ov, %bb.dm ], [ %i.iy, %bb.bs ], [ %i.jg, %bb.bu ], [ %i.kw, %bb.cg ], [ %i.is, %bb.bo ], [ %i.mw, %.lr.ph.i302._crit_edge ], [ %i.mj, %bb.dd ], [ %i.la, %bb.cj ], [ %i.lq, %bb.cv ], [ %i.lj, %bb.cr ], [ %i.le, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, %bb.h, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.ag, %bb.ai, %.lr.ph.i259._crit_edge, %bb.w, %bb.ak, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359, %bb.ax, %.thread364, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, %bb.at, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, %bb.d, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit ], [ %i.ag, %bb.d ], [ -qnan, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264 ], [ %i.cd, %.lr.ph.i247._crit_edge ], [ %i.br, %bb.u ], [ %i.bn, %bb.s ], [ +inf, %bb.w ], [ %i.dp, %.lr.ph.i259._crit_edge ], [ %i.dd, %bb.ai ], [ %i.cz, %bb.ag ], [ +qnan, %bb.ak ], [ %i.fa, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252 ], [ %i.ek, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356 ], [ %i.er, %bb.at ], [ %.5, %.thread364 ], [ %i.gw, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread ], [ %i.ff, %bb.ax ], [ %i.aq, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244 ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret double %.8
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 29 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 8, !tbaa !39
  %i.f = sext i32 %2 to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr i8, ptr %1, i64 %.idx      ; 37 uses
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.h = load i32, ptr %0, align 8, !tbaa !10     ; 9 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp ne i32 %i.i, 0                      ; 11 uses
  %i.k = and i32 %i.h, 8
  %.not212.not = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.h, 16
  %.not223 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.m = and i32 %i.h, 32
  %.not211 = icmp ne i32 %i.m, 0
  %i.n = and i32 %i.h, 64
  %i.o = icmp ne i32 %i.n, 0                      ; 4 uses
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !14
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.s = and i32 %i.h, 24
  %or.cond.not = icmp eq i32 %i.s, 0
  %.pre = load i16, ptr %1, align 2, !tbaa !41    ; 3 uses
  br i1 %or.cond.not, label %._crit_edge530, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = zext i16 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i677 = icmp eq i32 %2, 1
  br i1 %.not.not.i677, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !42

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.lr.ph.i, !llvm.loop !42

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge530

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !41   ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, %i.g
  br i1 %.not.not.i, label %.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !42

.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit: ; preds = %.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %._crit_edge530

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  br label %.thread

._crit_edge530:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.af = phi i16 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i16 %i.af, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge530, %._crit_edge530
  %i.ah = icmp eq i16 %i.af, 45
  %.ptr402 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.not6.not.i238 = icmp eq ptr %.ptr402, %i.g
  br i1 %.not6.not.i238, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 2, %bb.e ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx
  %i.ai = load i16, ptr %.0338.ptr, align 2, !tbaa !41 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.aj)
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw nsw i64 %.0338.idx, 2      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.add
  %.not.not.i243 = icmp eq ptr %.ptr, %i.g
  br i1 %.not.not.i243, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 2
  %or.cond392 = or i1 %.not211, %.not214
  br i1 %or.cond392, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.a, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge530
  %i.ap = phi i16 [ %i.ai, %bb.i ], [ %i.af, %._crit_edge530 ]
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ag, %._crit_edge530 ]
  %.0180 = phi i1 [ %i.ah, %bb.i ], [ false, %._crit_edge530 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = trunc i16 %i.ap to i8                   ; 2 uses
  br i1 %i.o, label %bb.l, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.au = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.m, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ay, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

common.resume:                                    ; preds = %bb.ae, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.co, %bb.ae ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.ba = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext %i.at), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.be, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.at, %bb.k ]
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !15
  %i.bg = icmp eq i8 %.sink.i, %i.bf
  br i1 %i.bg, label %bb.r, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre532.pre = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.x

bb.r:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.bi = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bh, i1 noundef zeroext %i.o)
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %bb.an, %bb.ao, %bb.aq
  %.pre533.pr = load i16, ptr %i.ea, align 2, !tbaa !41
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread: ; preds = %bb.aq, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.ap
  %.pre533 = phi i16 [ %.pre533.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ee, %bb.ap ], [ %i.eg, %bb.aq ] ; 2 uses
  %.promoted443 = phi ptr [ %i.ea, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ea, %bb.ap ], [ %i.ec, %bb.aq ] ; 5 uses
  %i.ej = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.ek = and i32 %i.ej, 128
  %.not218 = icmp eq i32 %i.ek, 0
  %i.el = and i32 %i.ej, 129
  %or.cond225 = icmp eq i32 %i.el, 0
  br i1 %or.cond225, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  switch i16 %.pre533, label %._crit_edge [
    i16 120, label %bb.as
    i16 88, label %bb.as
    i16 48, label %.lr.ph445
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %.promoted443, i64 2 ; 4 uses
  store ptr %i.em, ptr %i.a, align 8, !tbaa !39
  %i.en = icmp eq ptr %i.em, %i.g
  br i1 %i.en, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !18
  br label %.thread

bb.au:                                            ; preds = %bb.as
  br i1 %.not218, label %.thread358, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKtEEbT_S4_tb(ptr noundef nonnull %i.em, ptr noundef nonnull %i.g, i16 noundef zeroext %i.dy, i1 noundef zeroext %i.j)
  br i1 %i.eq, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.au, %bb.av
  %i.er = load i16, ptr %i.em, align 2, !tbaa !41
  %.fr494 = freeze i16 %i.er                      ; 2 uses
  %i.es = add i16 %.fr494, -48
  %or.cond19.i = icmp ult i16 %i.es, 10
  br i1 %or.cond19.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i16 %.fr494, -65         ; 2 uses
  %i.et = icmp ult i16 %switch.tableidx, 38
  br i1 %i.et, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !18
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.av
  %i.ew = phi i1 [ false, %.thread358 ], [ true, %bb.av ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ex = load i16, ptr %i.dx, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !18
  %i.fa = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb(ptr noundef %i.a, ptr noundef nonnull %i.g, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ex, i1 noundef zeroext %i.ew, i1 noundef zeroext %i.j, double noundef %i.ez, i1 noundef zeroext %3, ptr noundef %i.b)
  %i.fb = load i8, ptr %i.b, align 1, !tbaa !30, !range !32, !noundef !23
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.a, align 8   ; 5 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.g
  %or.cond398 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond398, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.aw
  %i.fd = load i16, ptr %.promoted.i265, align 2, !tbaa !41
  %i.fe = zext i16 %i.fd to i32
  %i.ff = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fe)
  br i1 %i.ff, label %.lr.ph440, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272

.lr.ph.i267:                                      ; preds = %.lr.ph440
  %i.fg = load i16, ptr %i.fk, align 2, !tbaa !41
  %i.fh = zext i16 %i.fg to i32
  %i.fi = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fh)
  br i1 %i.fi, label %.lr.ph440, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, !llvm.loop !42

.lr.ph440:                                        ; preds = %.lr.ph.i267.preheader, %.lr.ph.i267
  %i.fj = phi ptr [ %i.fk, %.lr.ph.i267 ], [ %.promoted.i265, %.lr.ph.i267.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2 ; 5 uses
  %.not.not.i271 = icmp eq ptr %i.fk, %i.g
  br i1 %.not.not.i271, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge, label %.lr.ph.i267, !llvm.loop !42

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge: ; preds = %.lr.ph440
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge, %bb.aw
  %i.fl = phi ptr [ %.promoted.i265, %bb.aw ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %i.fk, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge ], [ %i.fk, %.lr.ph.i267 ]
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = lshr exact i64 %i.fo, 1
  %i.fq = trunc i64 %i.fp to i32
  store i32 %i.fq, ptr %4, align 4, !tbaa !3
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread

bb.ay:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  %i.fr = icmp eq i16 %.pre533, 48
  br i1 %i.fr, label %.lr.ph445, label %._crit_edge

.lr.ph445:                                        ; preds = %bb.ar, %bb.ay
  br i1 %i.dz, label %.lr.ph445.split.us, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph445.split.us:                               ; preds = %.lr.ph445, %.backedge410.us
  %i.fs = phi ptr [ %i.ft, %.backedge410.us ], [ %.promoted443, %.lr.ph445 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2 ; 5 uses
  %i.fu = icmp eq ptr %i.ft, %i.g
  br i1 %i.fu, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread, label %.backedge410.us

.backedge410.us:                                  ; preds = %.lr.ph445.split.us
  %i.fv = load i16, ptr %i.ft, align 2, !tbaa !41
  %i.fw = icmp eq i16 %i.fv, 48
  br i1 %i.fw, label %.lr.ph445.split.us, label %._crit_edge, !llvm.loop !43

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph445, %.backedge410
  %i.fx = phi ptr [ %i.gb, %.backedge410 ], [ %.promoted443, %.lr.ph445 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, %i.g
  br i1 %i.fz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread, label %bb.az

.backedge410:                                     ; preds = %bb.ba, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281
  %i.ga = phi i16 [ %.pre534.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281 ], [ %i.gg, %bb.ba ]
  %i.gb = phi ptr [ %i.fy, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281 ], [ %i.gd, %bb.ba ] ; 2 uses
  %i.gc = icmp eq i16 %i.ga, 48
  br i1 %i.gc, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !43

bb.az:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 3 uses
  %i.ge = icmp ne ptr %i.gd, %i.g
  %.pre534.pre = load i16, ptr %i.fy, align 2, !tbaa !41 ; 2 uses
  %i.gf = icmp eq i16 %.pre534.pre, %i.dy
  %or.cond639 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond639, label %bb.ba, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281

bb.ba:                                            ; preds = %bb.az
  %i.gg = load i16, ptr %i.gd, align 2, !tbaa !41 ; 2 uses
  %i.gh = add i16 %i.gg, -48
  %or.cond19.i26.i279 = icmp ult i16 %i.gh, 10
  br i1 %or.cond19.i26.i279, label %.backedge410, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281: ; preds = %bb.ba, %bb.az
  br label %.backedge410

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, %.lr.ph445.split.us
  %.us-phi = phi ptr [ %i.ft, %.lr.ph445.split.us ], [ %i.fy, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.gi = ptrtoint ptr %.us-phi to i64
  %i.gj = ptrtoint ptr %1 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 1
  %i.gm = trunc i64 %i.gl to i32
  store i32 %i.gm, ptr %4, align 4, !tbaa !3
  %i.gn = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge410, %.backedge410.us, %bb.ar, %bb.ay
  %.lcssa444 = phi ptr [ %.promoted443, %bb.ay ], [ %.promoted443, %bb.ar ], [ %i.ft, %.backedge410.us ], [ %i.gb, %.backedge410 ] ; 3 uses
  store ptr %.lcssa444, ptr %i.a, align 8
  %i.go = trunc i32 %i.ej to i8
  %i.gp = lshr i8 %i.go, 1
  %.pre536 = load i16, ptr %.lcssa444, align 2, !tbaa !41
  br label %.critedge227

.critedge227:                                     ; preds = %bb.al, %._crit_edge
  %i.gq = phi i16 [ %i.dv, %bb.al ], [ %.pre536, %._crit_edge ] ; 3 uses
  %.promoted450 = phi ptr [ %i.du, %bb.al ], [ %.lcssa444, %._crit_edge ] ; 2 uses
  %i.gr = phi i8 [ 0, %bb.al ], [ %i.gp, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gs = add i16 %i.gq, -48
  %or.cond228452 = icmp ult i16 %i.gs, 10
  br i1 %or.cond228452, label %.lr.ph458, label %.critedge

.lr.ph458:                                        ; preds = %.critedge227
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gu = load i16, ptr %i.gt, align 8, !tbaa !29 ; 2 uses
  %i.gv = icmp eq i16 %i.gu, 0
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph458, %.backedge409
  %i.gw = phi i16 [ %i.gq, %.lr.ph458 ], [ %i.ho, %.backedge409 ] ; 2 uses
  %.0165457 = phi i32 [ 0, %.lr.ph458 ], [ %.1166, %.backedge409 ] ; 3 uses
  %.0170456 = phi i32 [ 0, %.lr.ph458 ], [ %.1171, %.backedge409 ] ; 2 uses
  %.0173455 = phi i8 [ 0, %.lr.ph458 ], [ %.1174, %.backedge409 ] ; 2 uses
  %.0182454 = phi i8 [ %i.gr, %.lr.ph458 ], [ %i.hk, %.backedge409 ]
  %.0185453 = phi i32 [ 0, %.lr.ph458 ], [ %.1186, %.backedge409 ] ; 3 uses
  %i.gx = phi ptr [ %.promoted450, %.lr.ph458 ], [ %i.hn, %.backedge409 ] ; 5 uses
  %i.gy = icmp slt i32 %.0165457, 772
  br i1 %i.gy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gz = trunc nuw nsw i16 %i.gw to i8
  %i.ha = add nsw i32 %.0185453, 1
  %i.hb = sext i32 %.0185453 to i64
  %i.hc = getelementptr inbounds i8, ptr %i.c, i64 %i.hb
  store i8 %i.gz, ptr %i.hc, align 1, !tbaa !15
  %i.hd = add nsw i32 %.0165457, 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.he = add nsw i32 %.0170456, 1
  %5 = trunc nuw i8 %.0173455 to i1
  %i.hf = icmp ne i16 %i.gw, 48
  %narrow403 = or i1 %i.hf, %5
  %6 = zext i1 %narrow403 to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1186 = phi i32 [ %i.ha, %bb.bc ], [ %.0185453, %bb.bd ] ; 5 uses
  %.1174 = phi i8 [ %.0173455, %bb.bc ], [ %6, %bb.bd ] ; 5 uses
  %.1171 = phi i32 [ %.0170456, %bb.bc ], [ %i.he, %bb.bd ] ; 5 uses
  %.1166 = phi i32 [ %i.hd, %bb.bc ], [ %.0165457, %bb.bd ] ; 2 uses
  %i.hg = trunc i8 %.0182454 to i1
  br i1 %i.hg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hh = load i16, ptr %i.gx, align 2, !tbaa !41
  %i.hi = icmp ult i16 %i.hh, 56
  %i.hj = zext i1 %i.hi to i8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hk = phi i8 [ 0, %bb.be ], [ %i.hj, %bb.bf ] ; 5 uses
  br i1 %i.gv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 3 uses
  %i.hm = icmp eq ptr %i.hl, %i.g
  br i1 %i.hm, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %.backedge409

.backedge409:                                     ; preds = %bb.bm, %bb.bh, %bb.bj, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290
  %i.hn = phi ptr [ %i.hl, %bb.bh ], [ %i.hs, %bb.bj ], [ %i.hs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290 ], [ %i.hu, %bb.bm ] ; 3 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !41 ; 3 uses
  %i.hp = add i16 %i.ho, -48
  %or.cond228 = icmp ult i16 %i.hp, 10
  br i1 %or.cond228, label %bb.bb, label %.critedge, !llvm.loop !44

bb.bi:                                            ; preds = %bb.bg
  %i.hq = load i16, ptr %i.gx, align 2, !tbaa !41
  %i.hr = add i16 %i.hq, -48
  %or.cond19.i.i283 = icmp ult i16 %i.hr, 10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 6 uses
  %i.ht = icmp eq ptr %i.hs, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ht, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %.backedge409

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bi
  br i1 %i.ht, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %bb.bk

bb.bk:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, %i.g
  br i1 %i.hv, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = load i16, ptr %i.hs, align 2, !tbaa !41
  %i.hx = icmp eq i16 %i.hw, %i.gu
  br i1 %i.hx, label %bb.bm, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290

bb.bm:                                            ; preds = %bb.bl
  %i.hy = load i16, ptr %i.hu, align 2, !tbaa !41
  %i.hz = add i16 %i.hy, -48
  %or.cond19.i26.i288 = icmp ult i16 %i.hz, 10
  br i1 %or.cond19.i26.i288, label %.backedge409, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290: ; preds = %bb.bm, %bb.bk, %bb.bl
  br label %.backedge409

.critedge:                                        ; preds = %.backedge409, %.critedge227
  %.lcssa451 = phi ptr [ %.promoted450, %.critedge227 ], [ %i.hn, %.backedge409 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge409 ] ; 5 uses
  %.0182.lcssa = phi i8 [ %i.gr, %.critedge227 ], [ %i.hk, %.backedge409 ]
  %.0173.lcssa = phi i8 [ 0, %.critedge227 ], [ %.1174, %.backedge409 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge409 ] ; 6 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge409 ] ; 5 uses
  %.lcssa = phi i16 [ %i.gq, %.critedge227 ], [ %i.ho, %.backedge409 ]
  store ptr %.lcssa451, ptr %i.a, align 8
  %i.ia = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.ia, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.ib = icmp eq i16 %.lcssa, 46
  br i1 %i.ib, label %bb.bn, label %.critedge11

bb.bn:                                            ; preds = %.critedge
  %i.ic = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.ic, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond7, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  br label %.thread364

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.ic, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ig = load i16, ptr %i.if, align 8, !tbaa !29 ; 4 uses
  %i.ih = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ig, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ih, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.ii = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.dw, %i.ii
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !18
  br label %.thread364

bb.bt:                                            ; preds = %bb.bq
  %.promoted469.pre = load ptr, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %i.il = load i16, ptr %.promoted469.pre, align 2, !tbaa !41 ; 2 uses
  %i.im = icmp eq i16 %i.il, 48
  %or.cond640 = select i1 %i.ia, i1 %i.im, i1 false
  br i1 %or.cond640, label %.lr.ph467, label %.loopexit

.lr.ph467:                                        ; preds = %bb.bt, %bb.bv
  %.0156466 = phi i32 [ %i.iv, %bb.bv ], [ 0, %bb.bt ]
  %i.in = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ig, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.in, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph467
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %1 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = lshr exact i64 %i.ir, 1
  %i.it = trunc i64 %i.is to i32
  store i32 %i.it, ptr %4, align 4, !tbaa !3
  %i.iu = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread364

bb.bv:                                            ; preds = %.lr.ph467
  %i.iv = add nsw i32 %.0156466, -1               ; 2 uses
  %i.iw = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !41 ; 2 uses
  %i.iy = icmp eq i16 %i.ix, 48
  br i1 %i.iy, label %.lr.ph467, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bv, %bb.bt
  %i.iz = phi i16 [ %i.il, %bb.bt ], [ %i.ix, %bb.bv ] ; 2 uses
  %.promoted469 = phi ptr [ %.promoted469.pre, %bb.bt ], [ %i.iw, %bb.bv ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.bt ], [ %i.iv, %bb.bv ] ; 2 uses
  %i.ja = add i16 %i.iz, -48
  %or.cond229471 = icmp ult i16 %i.ja, 10
  br i1 %or.cond229471, label %.lr.ph477, label %.critedge11.loopexit

.lr.ph477:                                        ; preds = %.loopexit
  %i.jb = icmp eq i16 %i.ig, 0
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph477, %.backedge
  %i.jc = phi i16 [ %i.iz, %.lr.ph477 ], [ %i.jp, %.backedge ] ; 2 uses
  %.2158475 = phi i32 [ %.1157, %.lr.ph477 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167474 = phi i32 [ %.0165.lcssa, %.lr.ph477 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175473 = phi i8 [ %.0173.lcssa, %.lr.ph477 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187472 = phi i32 [ %.0185.lcssa, %.lr.ph477 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jd = phi ptr [ %.promoted469, %.lr.ph477 ], [ %i.jo, %.backedge ] ; 4 uses
  %i.je = icmp slt i32 %.2167474, 772
  br i1 %i.je, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jf = trunc nuw nsw i16 %i.jc to i8
  %i.jg = add nsw i32 %.2187472, 1
  %i.jh = sext i32 %.2187472 to i64
  %i.ji = getelementptr inbounds i8, ptr %i.c, i64 %i.jh
  store i8 %i.jf, ptr %i.ji, align 1, !tbaa !15
  %i.jj = add nsw i32 %.2167474, 1
  %i.jk = add nsw i32 %.2158475, -1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %7 = trunc nuw i8 %.2175473 to i1
  %i.jl = icmp ne i16 %i.jc, 48
  %narrow = or i1 %i.jl, %7
  %8 = zext i1 %narrow to i8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.3188 = phi i32 [ %i.jg, %bb.bx ], [ %.2187472, %bb.by ] ; 3 uses
  %.3176 = phi i8 [ %.2175473, %bb.bx ], [ %8, %bb.by ] ; 3 uses
  %.3168 = phi i32 [ %i.jj, %bb.bx ], [ %.2167474, %bb.by ] ; 2 uses
  %.3159 = phi i32 [ %i.jk, %bb.bx ], [ %.2158475, %bb.by ] ; 3 uses
  br i1 %i.jb, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 2 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, %i.g
  br i1 %i.jn, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595, label %.backedge

.backedge:                                        ; preds = %bb.cf, %bb.ca, %bb.cc, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299
  %i.jo = phi ptr [ %i.jm, %bb.ca ], [ %i.jt, %bb.cc ], [ %i.jt, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299 ], [ %i.jv, %bb.cf ] ; 3 uses
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !41 ; 2 uses
  %i.jq = add i16 %i.jp, -48
  %or.cond229 = icmp ult i16 %i.jq, 10
  br i1 %or.cond229, label %bb.bw, label %.critedge11.loopexit, !llvm.loop !46

bb.cb:                                            ; preds = %bb.bz
  %i.jr = load i16, ptr %i.jd, align 2, !tbaa !41
  %i.js = add i16 %i.jr, -48
  %or.cond19.i.i292 = icmp ult i16 %i.js, 10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 2 ; 6 uses
  %i.ju = icmp eq ptr %i.jt, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.ju, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595, label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.cb
  br i1 %i.ju, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595, label %bb.cd

bb.cd:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 3 uses
  %i.jw = icmp eq ptr %i.jv, %i.g
  br i1 %i.jw, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jx = load i16, ptr %i.jt, align 2, !tbaa !41
  %i.jy = icmp eq i16 %i.jx, %i.ig
  br i1 %i.jy, label %bb.cf, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299

bb.cf:                                            ; preds = %bb.ce
  %i.jz = load i16, ptr %i.jv, align 2, !tbaa !41
  %i.ka = add i16 %i.jz, -48
  %or.cond19.i26.i297 = icmp ult i16 %i.ka, 10
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299: ; preds = %bb.cf, %bb.cd, %bb.ce
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa470 = phi ptr [ %.promoted469, %.loopexit ], [ %i.jo, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2175.lcssa = phi i8 [ %.0173.lcssa, %.loopexit ], [ %.3176, %.backedge ]
  %.2167.lcssa = phi i32 [ %.0165.lcssa, %.loopexit ], [ %.3168, %.backedge ]
  %.2158.lcssa = phi i32 [ %.1157, %.loopexit ], [ %.3159, %.backedge ]
  store ptr %.lcssa470, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.kb = phi ptr [ %.lcssa451, %.critedge ], [ %.lcssa470, %.critedge11.loopexit ] ; 6 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.4177 = phi i8 [ %.0173.lcssa, %.critedge ], [ %.2175.lcssa, %.critedge11.loopexit ] ; 5 uses
  %.4169 = phi i32 [ %.0165.lcssa, %.critedge ], [ %.2167.lcssa, %.critedge11.loopexit ]
  %.4160 = phi i32 [ 0, %.critedge ], [ %.2158.lcssa, %.critedge11.loopexit ] ; 4 uses
  %.not12 = xor i1 %i.dw, true
  %i.kc = icmp eq i32 %.4160, 0
  %or.cond14 = select i1 %.not12, i1 %i.kc, i1 false
  %i.kd = icmp eq i32 %.4169, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.kd, i1 false
  br i1 %or.cond16, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge11
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !18
  br label %.thread364

bb.ch:                                            ; preds = %.critedge11
  %i.kg = load i16, ptr %i.kb, align 2, !tbaa !41
  switch i16 %i.kg, label %bb.db [
    i16 101, label %bb.ci
    i16 69, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch
  %i.kh = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kh, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !18
  br label %.thread364

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.kh, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, %i.g
  br i1 %i.kl, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.j, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kn = load double, ptr %i.km, align 8, !tbaa !18
  br label %.thread364

bb.co:                                            ; preds = %bb.cl
  %i.ko = load i16, ptr %i.kk, align 2, !tbaa !41 ; 2 uses
  switch i16 %i.ko, label %bb.cs [
    i16 43, label %bb.cp
    i16 45, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co, %bb.co
  %i.kp = zext nneg i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.g
  br i1 %i.kr, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.j, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !18
  br label %.thread364

bb.cs:                                            ; preds = %bb.co, %bb.cp
  %.promoted483 = phi ptr [ %i.kq, %bb.cp ], [ %i.kk, %bb.co ] ; 3 uses
  %.0192 = phi i32 [ %i.kp, %bb.cp ], [ 43, %bb.co ]
  %i.ku = icmp eq ptr %.promoted483, %i.g
  br i1 %i.ku, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kv = load i16, ptr %.promoted483, align 2, !tbaa !41 ; 2 uses
  %i.kw = add i16 %i.kv, -58
  %or.cond230 = icmp ult i16 %i.kw, -10
  br i1 %or.cond230, label %bb.cu, label %.preheader

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %i.j, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !18
  br label %.thread364

.preheader:                                       ; preds = %bb.ct, %bb.cz
  %i.kz = phi i16 [ %i.lj, %bb.cz ], [ %i.kv, %bb.ct ] ; 2 uses
  %i.la = phi ptr [ %i.li, %bb.cz ], [ %.promoted483, %bb.ct ]
  %.0193 = phi i32 [ %.1194, %bb.cz ], [ 0, %bb.ct ] ; 3 uses
  %i.lb = zext nneg i16 %i.kz to i32
  %i.lc = icmp sgt i32 %.0193, 107374181
  br i1 %i.lc, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.preheader
  %i.ld = icmp eq i32 %.0193, 107374182
  %i.le = icmp samesign ult i16 %i.kz, 52
  %or.cond21 = and i1 %i.ld, %i.le
  br i1 %or.cond21, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %.preheader
  %i.lf = mul nsw i32 %.0193, 10
  %i.lg = add i32 %i.lf, -48
  %i.lh = add i32 %i.lg, %i.lb
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %.1194 = phi i32 [ %i.lh, %bb.cx ], [ 1073741823, %bb.cw ] ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.la, i64 2 ; 5 uses
  %.not219 = icmp eq ptr %i.li, %i.g
  br i1 %.not219, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !41 ; 2 uses
  %i.lk = add i16 %i.lj, -48
  %or.cond231 = icmp ult i16 %i.lk, 10
  br i1 %or.cond231, label %.preheader, label %bb.da, !llvm.loop !47

bb.da:                                            ; preds = %bb.cy, %bb.cz
  store ptr %i.li, ptr %i.a, align 8, !tbaa !39
  %sext.mask = and i32 %.0192, 255
  %i.ll = icmp eq i32 %sext.mask, 45
  %i.lm = sub nsw i32 0, %.1194
  %i.ln = select i1 %i.ll, i32 %i.lm, i32 %.1194
  %i.lo = add nsw i32 %i.ln, %.4160
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.ch
  %.promoted485 = phi ptr [ %i.li, %bb.da ], [ %i.kb, %bb.ch ] ; 4 uses
  %.7163 = phi i32 [ %i.lo, %bb.da ], [ %.4160, %bb.ch ] ; 4 uses
  %i.lp = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.lp, 0
  %.not220 = icmp eq ptr %.promoted485, %i.g      ; 2 uses
  %or.cond399 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond399, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !18
  br label %.thread364

bb.dd:                                            ; preds = %bb.db
  %or.cond400 = select i1 %i.j, i1 true, i1 %.not220
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.dd
  %i.ls = load i16, ptr %.promoted485, align 2, !tbaa !41
  %i.lt = zext i16 %i.ls to i32
  %i.lu = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.lt)
  br i1 %i.lu, label %.lr.ph488, label %.lr.ph.i302._crit_edge

.lr.ph.i302:                                      ; preds = %.lr.ph488
  %i.lv = load i16, ptr %i.lz, align 2, !tbaa !41
  %i.lw = zext i16 %i.lv to i32
  %i.lx = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.lw)
  br i1 %i.lx, label %.lr.ph488, label %.lr.ph.i302._crit_edge, !llvm.loop !42

.lr.ph488:                                        ; preds = %.lr.ph.i302.preheader, %.lr.ph.i302
  %i.ly = phi ptr [ %i.lz, %.lr.ph.i302 ], [ %.promoted485, %.lr.ph.i302.preheader ]
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 2 ; 5 uses
  %.not.not.i306 = icmp eq ptr %i.lz, %i.g
  br i1 %.not.not.i306, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307.loopexit, label %.lr.ph.i302, !llvm.loop !42

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !18
  br label %.thread364

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307.loopexit: ; preds = %.lr.ph488
  store ptr %i.lz, ptr %i.a, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307.loopexit, %bb.dd
  %.promoted490 = phi ptr [ %i.lz, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307.loopexit ], [ %.promoted485, %bb.dd ] ; 5 uses
  %.not6.not.i309 = icmp eq ptr %.promoted490, %i.g
  %or.cond401 = select i1 %.not223, i1 true, i1 %.not6.not.i309
  br i1 %or.cond401, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307
  %i.mc = load i16, ptr %.promoted490, align 2, !tbaa !41
  %i.md = zext i16 %i.mc to i32
  %i.me = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.md)
  br i1 %i.me, label %.lr.ph491, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split

.lr.ph.i310:                                      ; preds = %.lr.ph491
  %i.mf = load i16, ptr %i.mj, align 2, !tbaa !41
  %i.mg = zext i16 %i.mf to i32
  %i.mh = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.mg)
  br i1 %i.mh, label %.lr.ph491, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, !llvm.loop !42

.lr.ph491:                                        ; preds = %.lr.ph.i310.preheader, %.lr.ph.i310
  %i.mi = phi ptr [ %i.mj, %.lr.ph.i310 ], [ %.promoted490, %.lr.ph.i310.preheader ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2 ; 5 uses
  %.not.not.i314 = icmp eq ptr %i.mj, %i.g
  br i1 %.not.not.i314, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge, label %.lr.ph.i310, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split: ; preds = %bb.cu, %bb.cq, %bb.cm
  store ptr %i.kb, ptr %i.a, align 8, !tbaa !39
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split, %bb.br
  %.5190.ph383 = phi i32 [ %.0185.lcssa, %bb.br ], [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split ]
  %.5178.ph = phi i8 [ %.0173.lcssa, %bb.br ], [ %.4177, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split ]
  %.8164.ph = phi i32 [ 0, %bb.br ], [ %.4160, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384.sink.split ]
  %9 = add nsw i32 %.8164.ph, %.0170.lcssa
  br label %bb.de

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge: ; preds = %.lr.ph491
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, %bb.cc, %bb.ca
  %i.mk = phi ptr [ %i.jm, %bb.ca ], [ %i.jt, %bb.cc ], [ %i.jt, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.mk, ptr %i.a, align 8
  %i.ml = add nsw i32 %.3159, %.0170.lcssa
  br label %bb.de

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, %bb.bj, %bb.bh, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.mj, %.lr.ph.i310 ], [ %.promoted490, %.lr.ph.i310.preheader ], [ %i.mj, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.hs, %bb.bj ], [ %i.hl, %bb.bh ], [ %i.hs, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1186, %bb.bh ], [ %.1186, %bb.bj ], [ %.1186, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.hk, %bb.bh ], [ %i.hk, %bb.bj ], [ %i.hk, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5178.ph683 = phi i8 [ %.4177, %.lr.ph.i310 ], [ %.4177, %.lr.ph.i310.preheader ], [ %.4177, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1174, %bb.bh ], [ %.1174, %bb.bj ], [ %.1174, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2172.ph = phi i32 [ %.0170.lcssa, %.lr.ph.i310 ], [ %.0170.lcssa, %.lr.ph.i310.preheader ], [ %.0170.lcssa, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1171, %bb.bh ], [ %.1171, %bb.bj ], [ %.1171, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8164.ph684 = phi i32 [ %.7163, %.lr.ph.i310 ], [ %.7163, %.lr.ph.i310.preheader ], [ %.7163, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.loopexit_crit_edge ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307
  %i.mm = phi ptr [ %.promoted490, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307 ], [ %.sink, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307 ], [ %.5190.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split ] ; 2 uses
  %.2184 = phi i8 [ %spec.select, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307 ], [ %.2184.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split ]
  %.5178 = phi i8 [ %.4177, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307 ], [ %.5178.ph683, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split ]
  %.2172 = phi i32 [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307 ], [ %.2172.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split ]
  %.8164 = phi i32 [ %.7163, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit307 ], [ %.8164.ph684, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split ]
  %10 = add nsw i32 %.8164, %.2172
  %i.mn = trunc i8 %.2184 to i1
  br i1 %i.mn, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, label %bb.de

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread: ; preds = %bb.ck, %bb.bp, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315
  %i.mo = phi ptr [ %i.mm, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315 ], [ %i.kb, %bb.ck ], [ %.lcssa451, %bb.bp ]
  %.5190381 = phi i32 [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315 ], [ %.4189, %bb.ck ], [ %.0185.lcssa, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !7
  %i.mp = sext i32 %.5190381 to i64
  %i.mq = getelementptr inbounds i8, ptr %i.c, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ms = load i16, ptr %i.mr, align 8, !tbaa !29
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !18
  %i.mv = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.e, ptr noundef %i.mq, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ms, i1 noundef zeroext %i.j, double noundef %i.mu, i1 noundef zeroext %3, ptr noundef %i.d)
  %i.mw = ptrtoint ptr %i.mo to i64
  %i.mx = ptrtoint ptr %1 to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = lshr exact i64 %i.my, 1
  %i.na = trunc i64 %i.mz to i32
  store i32 %i.na, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread364

bb.de:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315
  %11 = phi i32 [ %9, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384 ], [ %10, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315 ], [ %i.ml, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595 ] ; 2 uses
  %.5178391 = phi i8 [ %.5178.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384 ], [ %.5178, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315 ], [ %.3176, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595 ]
  %.5190390 = phi i32 [ %.5190.ph383, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384 ], [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315 ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread595 ] ; 3 uses
  %12 = trunc nuw i8 %.5178391 to i1
  br i1 %12, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.nb = add nsw i32 %.5190390, 1
  %i.nc = sext i32 %.5190390 to i64
  %i.nd = getelementptr inbounds i8, ptr %i.c, i64 %i.nc
  store i8 49, ptr %i.nd, align 1, !tbaa !15
  %i.ne = add nsw i32 %11, -1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.6191 = phi i32 [ %i.nb, %bb.df ], [ %.5190390, %bb.de ] ; 5 uses
  %.9 = phi i32 [ %i.ne, %bb.df ], [ %11, %bb.de ]
  %i.nf = sext i32 %.6191 to i64
  %i.ng = getelementptr inbounds i8, ptr %i.c, i64 %i.nf
  store i8 0, ptr %i.ng, align 1, !tbaa !15
  %i.nh = icmp sgt i32 %.6191, 0
  br i1 %i.nh, label %.lr.ph680, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph680:                                        ; preds = %bb.dg
  %i.ni = zext nneg i32 %.6191 to i64
  br label %bb.di

bb.dh:                                            ; preds = %bb.di
  %i.nj = trunc nuw i64 %i.nm to i32              ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %bb.di, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

bb.di:                                            ; preds = %.lr.ph680, %bb.dh
  %i.nl = phi i32 [ %.6191, %.lr.ph680 ], [ %i.nj, %bb.dh ]
  %indvars.iv.i678 = phi i64 [ %i.ni, %.lr.ph680 ], [ %i.nm, %bb.dh ]
  %i.nm = add nsw i64 %indvars.iv.i678, -1        ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.no, 48
  br i1 %.not.i, label %bb.dh, label %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge681, !llvm.loop !38

._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge681: ; preds = %bb.di
  br label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.dh, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge681, %bb.dg
  %.sroa.3.1.i = phi i32 [ 0, %bb.dg ], [ %i.nl, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge681 ], [ 0, %bb.dh ] ; 3 uses
  %i.np = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.nq = add nsw i32 %i.np, %.9                  ; 2 uses
  br i1 %3, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.nr = call noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nq)
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.ns = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nq)
  %i.nt = fpext float %i.ns to double
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.0179 = phi double [ %i.nr, %bb.dj ], [ %i.nt, %bb.dk ] ; 2 uses
  %i.nu = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %1 to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = lshr exact i64 %i.nx, 1
  %i.nz = trunc i64 %i.ny to i32
  store i32 %i.nz, ptr %4, align 4, !tbaa !3
  %i.oa = fneg double %.0179
  %i.ob = select i1 %.0180, double %i.oa, double %.0179
  br label %.thread364

.thread364:                                       ; preds = %bb.cv, %bb.cr, %bb.cn, %bb.dl, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.dc, %bb.cj, %bb.cg, %bb.bu, %bb.bs, %bb.bo
  %.5 = phi double [ %i.mv, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread ], [ %i.ob, %bb.dl ], [ %i.ik, %bb.bs ], [ %i.iu, %bb.bu ], [ %i.kf, %bb.cg ], [ %i.ie, %bb.bo ], [ %i.mb, %.lr.ph.i302._crit_edge ], [ %i.lr, %bb.dc ], [ %i.kj, %bb.cj ], [ %i.ky, %bb.cv ], [ %i.kt, %bb.cr ], [ %i.kn, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244, %bb.h, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit264, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.ag, %bb.ai, %.lr.ph.i259._crit_edge, %bb.w, %bb.ak, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359, %bb.ax, %.thread364, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread, %bb.at, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread356, %bb.d, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, %bb.b
  %.8 = phi double [ %i.r, %bb.b ], [ %i.ac, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit ], [ %i.ae, %bb.d ], [ -qnan, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit264 ], [ %i.by, %.lr.ph.i247._crit_edge ], [ %i.bo, %bb.u ], [ %i.bk, %bb.s ], [ +inf, %bb.w ], [ %i.dn, %.lr.ph.i259._crit_edge ], [ %i.dd, %bb.ai ], [ %i.cz, %bb.ag ], [ +qnan, %bb.ak ], [ %i.ev, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252 ], [ %i.ei, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread356 ], [ %i.ep, %bb.at ], [ %.5, %.thread364 ], [ %i.gn, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread ], [ %i.fa, %bb.ax ], [ %i.am, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit244 ], [ %i.ao, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret double %.8
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter13StringToFloatEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter13StringToFloatEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter8StringToIdEET_PKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter8StringToIfEET_PKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter8StringToIdEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter8StringToIfEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8, !tbaa !7
  br label %.preheader13

.preheader:                                       ; preds = %bb.a, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit
  %.pn.i = phi ptr [ %.011.i, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %2, %bb.a ]
  %.011.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.a = load i8, ptr %.011.i, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.a, 0                    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.c, %1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S7_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i8, ptr %i.c, align 1, !tbaa !15
  %i.f = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i12 = icmp eq i32 %i.h, 0
  br i1 %.not.i12, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.k

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit: ; preds = %bb.b, %bb.c, %bb.f
  %i.l = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext %i.e), !inline_history !48
  %i.q = load i8, ptr %.011.i, align 1, !tbaa !15
  %.not13.i = icmp eq i8 %i.p, %i.q
  br i1 %.not13.i, label %.preheader, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S7_S4_T0_.exit, !llvm.loop !49

.preheader13:                                     ; preds = %.preheader13.preheader, %bb.h
  %i.r = phi ptr [ %i.t, %bb.h ], [ %.promoted, %.preheader13.preheader ]
  %.pn.i7 = phi ptr [ %.011.i8, %bb.h ], [ %2, %.preheader13.preheader ]
  %.011.i8 = getelementptr inbounds nuw i8, ptr %.pn.i7, i64 1 ; 3 uses
  %i.s = load i8, ptr %.011.i8, align 1, !tbaa !15
  %.not.i9 = icmp eq i8 %i.s, 0                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !7
  %i.u = icmp eq ptr %i.t, %1
  %or.cond21 = select i1 %.not.i9, i1 true, i1 %i.u
  br i1 %or.cond21, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S7_S4_T0_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader13
  %i.v = load i8, ptr %i.t, align 1, !tbaa !15
  %i.w = load i8, ptr %.011.i8, align 1, !tbaa !15
  %.not13.i10 = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i10, label %.preheader13, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S7_S4_T0_.exit, !llvm.loop !49

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S7_S4_T0_.exit: ; preds = %bb.h, %.preheader13, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, %.preheader
  %.0 = phi i1 [ %.not.i, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %.not.i, %.preheader ], [ %.not.i9, %.preheader13 ], [ %.not.i9, %bb.h ]
  ret i1 %.0
end_hunk_2
