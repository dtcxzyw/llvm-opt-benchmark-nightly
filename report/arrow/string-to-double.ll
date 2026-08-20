inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.b = alloca ptr, align 8                      ; 35 uses
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
  br i1 %or.cond.not, label %._crit_edge549, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = sext i8 %.pre to i32
  %i.v = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.u)
  br i1 %i.v, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i683 = icmp eq i32 %2, 1
  br i1 %.not.not.i683, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !16

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
  %.lcssa433605 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ] ; 2 uses
  %i.ae = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.y, %.lr.ph.i._crit_edge ]
  %.pre560 = ptrtoaddr ptr %.lcssa433605 to i64
  br label %._crit_edge549

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  br label %.thread

._crit_edge549:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi = phi i64 [ %.pre560, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %i.ah = phi i8 [ %i.ae, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %.lcssa433605, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %i.ah, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge549, %._crit_edge549
  %i.aj = icmp eq i8 %i.ah, 45
  %.ptr410 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %.ptr410, ptr %i.b, align 8, !tbaa !7
  %.not6.not.i238 = icmp eq ptr %.ptr410, %i.h
  br i1 %.not6.not.i238, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.ak = add i64 %i.a, %i.g
  %i.al = sub i64 %i.ak, %.pre-phi
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
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.b, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge549
  %i.at = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ai, %._crit_edge549 ] ; 2 uses
  %.0180 = phi i1 [ %i.aj, %bb.i ], [ false, %._crit_edge549 ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %.not215 = icmp eq ptr %i.av, null
  br i1 %.not215, label %bb.w, label %bb.k

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

common.resume:                                    ; preds = %bb.ad, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.cs, %bb.ad ]
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
  %i.gx = sext i8 %.pre553.pre to i32
  %i.gy = icmp eq i32 %i.gx, %i.ef
  %or.cond650.a = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond650.a, label %bb.ax, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

bb.ax:                                            ; preds = %bb.aw
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !15  ; 3 uses
  %i.ha = sext i8 %i.gz to i32
  %i.hb = add nsw i32 %i.ha, -48
  %or.cond.i25.i278 = icmp ult i32 %i.hb, 10
  %i.hc = icmp ult i8 %i.gz, 58
  %or.cond19.i26.i279 = and i1 %i.hc, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge417, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281: ; preds = %bb.ax, %bb.aw
  br label %.backedge417

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit652: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.hd = ptrtoint ptr %i.gq to i64
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %.split361.us, %.split361.us.preheader, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit652
  %.us-phi = phi i64 [ %i.hd, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit652 ], [ %i.gh, %.split361.us.preheader ], [ %i.gh, %.split361.us ]
  %i.he = ptrtoint ptr %1 to i64
  %i.hf = sub i64 %.us-phi, %i.he
  %i.hg = trunc i64 %i.hf to i32
  store i32 %i.hg, ptr %4, align 4, !tbaa !3
  %i.hh = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge417, %.backedge417.us, %bb.ao, %bb.av
  %.lcssa451 = phi ptr [ %.promoted450, %bb.av ], [ %.promoted450, %bb.ao ], [ %i.gm, %.backedge417.us ], [ %i.gt, %.backedge417 ] ; 2 uses
  store ptr %.lcssa451, ptr %i.b, align 8
  %i.hi = trunc i32 %i.et to i8
  %i.hj = lshr i8 %i.hi, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %.promoted457 = phi ptr [ %i.ea, %bb.aj ], [ %.lcssa451, %._crit_edge ] ; 3 uses
  %i.hk = phi i8 [ 0, %bb.aj ], [ %i.hj, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.hl = load i8, ptr %.promoted457, align 1, !tbaa !15 ; 3 uses
  %i.hm = add i8 %i.hl, -48
  %or.cond228459 = icmp ult i8 %i.hm, 10
  br i1 %or.cond228459, label %.lr.ph465, label %.critedge

.lr.ph465:                                        ; preds = %.critedge227
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ho = load i16, ptr %i.hn, align 8, !tbaa !29 ; 2 uses
  %i.hp = zext i16 %i.ho to i32
  %i.hq = icmp eq i16 %i.ho, 0
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph465, %.backedge416
  %i.hr = phi i8 [ %i.hl, %.lr.ph465 ], [ %i.ij, %.backedge416 ] ; 2 uses
  %.0166464 = phi i32 [ 0, %.lr.ph465 ], [ %.1167, %.backedge416 ] ; 3 uses
  %.0171463 = phi i32 [ 0, %.lr.ph465 ], [ %.1172, %.backedge416 ] ; 2 uses
  %.0174462 = phi i1 [ false, %.lr.ph465 ], [ %.1175, %.backedge416 ] ; 2 uses
  %.0185461 = phi i32 [ 0, %.lr.ph465 ], [ %.1186, %.backedge416 ] ; 3 uses
  %.0192460 = phi i8 [ %i.hk, %.lr.ph465 ], [ %i.if, %.backedge416 ]
  %i.hs = phi ptr [ %.promoted457, %.lr.ph465 ], [ %i.ii, %.backedge416 ] ; 5 uses
  %i.ht = icmp slt i32 %.0166464, 772
  br i1 %i.ht, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hu = add nsw i32 %.0185461, 1
  %i.hv = sext i32 %.0185461 to i64
  %i.hw = getelementptr inbounds i8, ptr %i.d, i64 %i.hv
  store i8 %i.hr, ptr %i.hw, align 1, !tbaa !15
  %i.hx = add nsw i32 %.0166464, 1
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hy = add nsw i32 %.0171463, 1
  %i.hz = icmp ne i8 %i.hr, 48
  %i.ia = or i1 %.0174462, %i.hz
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1186 = phi i32 [ %i.hu, %bb.az ], [ %.0185461, %bb.ba ] ; 5 uses
  %.1175 = phi i1 [ %.0174462, %bb.az ], [ %i.ia, %bb.ba ] ; 5 uses
  %.1172 = phi i32 [ %.0171463, %bb.az ], [ %i.hy, %bb.ba ] ; 5 uses
  %.1167 = phi i32 [ %i.hx, %bb.az ], [ %.0166464, %bb.ba ] ; 2 uses
  %i.ib = trunc i8 %.0192460 to i1
  br i1 %i.ib, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ic = load i8, ptr %i.hs, align 1, !tbaa !15
  %i.id = icmp slt i8 %i.ic, 56
  %i.ie = zext i1 %i.id to i8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.if = phi i8 [ 0, %bb.bb ], [ %i.ie, %bb.bc ] ; 5 uses
  br i1 %i.hq, label %.split364, label %bb.be

.split364:                                        ; preds = %bb.bd
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hs, i64 1 ; 3 uses
  %i.ih = icmp eq ptr %i.ig, %i.h
  br i1 %i.ih, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge416

.backedge416:                                     ; preds = %bb.bh, %.split364, %.split365, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290
  %i.ii = phi ptr [ %i.ig, %.split364 ], [ %i.ip, %.split365 ], [ %i.ip, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290 ], [ %i.ir, %bb.bh ] ; 3 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !15  ; 3 uses
  %i.ik = add i8 %i.ij, -48
  %or.cond228 = icmp ult i8 %i.ik, 10
  br i1 %or.cond228, label %bb.ay, label %.critedge, !llvm.loop !34

bb.be:                                            ; preds = %bb.bd
  %i.il = load i8, ptr %i.hs, align 1, !tbaa !15  ; 2 uses
  %i.im = sext i8 %i.il to i32
  %i.in = add nsw i32 %i.im, -48
  %or.cond.i.i282 = icmp ult i32 %i.in, 10
  %i.io = icmp ult i8 %i.il, 58
  %or.cond19.i.i283 = and i1 %i.io, %or.cond.i.i282
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 1 ; 6 uses
  %i.iq = icmp eq ptr %i.ip, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %.split365

.split365:                                        ; preds = %bb.be
  br i1 %i.iq, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge416

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.be
  br i1 %i.iq, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %bb.bf

bb.bf:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hs, i64 2 ; 3 uses
  %i.is = icmp eq ptr %i.ir, %i.h
  br i1 %i.is, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.it = load i8, ptr %i.ip, align 1, !tbaa !15
  %i.iu = sext i8 %i.it to i32
  %i.iv = icmp eq i32 %i.iu, %i.hp
  br i1 %i.iv, label %bb.bh, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

bb.bh:                                            ; preds = %bb.bg
  %i.iw = load i8, ptr %i.ir, align 1, !tbaa !15  ; 2 uses
  %i.ix = sext i8 %i.iw to i32
  %i.iy = add nsw i32 %i.ix, -48
  %or.cond.i25.i287 = icmp ult i32 %i.iy, 10
  %i.iz = icmp ult i8 %i.iw, 58
  %or.cond19.i26.i288 = and i1 %i.iz, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge416, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290: ; preds = %bb.bh, %bb.bf, %bb.bg
  br label %.backedge416

.critedge:                                        ; preds = %.backedge416, %.critedge227
  %.lcssa458 = phi ptr [ %.promoted457, %.critedge227 ], [ %i.ii, %.backedge416 ] ; 3 uses
  %.0192.lcssa = phi i8 [ %i.hk, %.critedge227 ], [ %i.if, %.backedge416 ]
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge416 ] ; 6 uses
  %.0174.lcssa = phi i1 [ false, %.critedge227 ], [ %.1175, %.backedge416 ] ; 4 uses
  %.0171.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1172, %.backedge416 ] ; 10 uses
  %.0166.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1167, %.backedge416 ] ; 5 uses
  %.lcssa = phi i8 [ %i.hl, %.critedge227 ], [ %i.ij, %.backedge416 ]
  store ptr %.lcssa458, ptr %i.b, align 8
  %i.ja = icmp eq i32 %.0166.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.ja, i8 0, i8 %.0192.lcssa ; 6 uses
  %i.jb = icmp eq i8 %.lcssa, 46
  br i1 %i.jb, label %bb.bi, label %.critedge11

bb.bi:                                            ; preds = %.critedge
  %i.jc = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.jc, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.je = load double, ptr %i.jd, align 8, !tbaa !18
  br label %.thread370

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.jc, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jg = load i16, ptr %i.jf, align 8, !tbaa !29 ; 4 uses
  %i.jh = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.jg, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jh, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ji = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.ec, %i.ji
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !18
  br label %.thread370

bb.bo:                                            ; preds = %bb.bl
  %.promoted476.pre = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.jl = load i8, ptr %.promoted476.pre, align 1, !tbaa !15 ; 2 uses
  %i.jm = icmp eq i8 %i.jl, 48
  %or.cond651 = select i1 %i.ja, i1 %i.jm, i1 false
  br i1 %or.cond651, label %.lr.ph474, label %.loopexit

.lr.ph474:                                        ; preds = %bb.bo, %bb.bq
  %5 = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.jg, i32 noundef 10, ptr nonnull %i.h)
  %6 = load ptr, ptr %i.b, align 8, !tbaa !7      ; 3 uses
  br i1 %5, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph474
  %i.jn = ptrtoint ptr %6 to i64
  %i.jo = ptrtoint ptr %1 to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = trunc i64 %i.jp to i32
  store i32 %i.jq, ptr %4, align 4, !tbaa !3
  %i.jr = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bq:                                            ; preds = %.lr.ph474
  %i.js = load i8, ptr %6, align 1, !tbaa !15     ; 2 uses
  %i.jt = icmp eq i8 %i.js, 48
  br i1 %i.jt, label %.lr.ph474, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.bq, %bb.bo
  %i.ju = phi i8 [ %i.jl, %bb.bo ], [ %i.js, %bb.bq ] ; 2 uses
  %.promoted476 = phi ptr [ %.promoted476.pre, %bb.bo ], [ %6, %bb.bq ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bo ], [ -1, %bb.bq ]  ; 2 uses
  %i.jv = add i8 %i.ju, -48
  %or.cond229478 = icmp ult i8 %i.jv, 10
  br i1 %or.cond229478, label %.lr.ph484, label %.critedge11.loopexit

.lr.ph484:                                        ; preds = %.loopexit
  %i.jw = zext i16 %i.jg to i32
  %i.jx = icmp eq i16 %i.jg, 0
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph484, %.backedge
  %i.jy = phi i8 [ %i.ju, %.lr.ph484 ], [ %i.kl, %.backedge ] ; 2 uses
  %.2159482 = phi i32 [ %.1158, %.lr.ph484 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168481 = phi i32 [ %.0166.lcssa, %.lr.ph484 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176480 = phi i1 [ %.0174.lcssa, %.lr.ph484 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187479 = phi i32 [ %.0185.lcssa, %.lr.ph484 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jz = phi ptr [ %.promoted476, %.lr.ph484 ], [ %i.kk, %.backedge ] ; 4 uses
  %i.ka = icmp slt i32 %.2168481, 772
  br i1 %i.ka, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.kb = add nsw i32 %.2187479, 1
  %i.kc = sext i32 %.2187479 to i64
  %i.kd = getelementptr inbounds i8, ptr %i.d, i64 %i.kc
  store i8 %i.jy, ptr %i.kd, align 1, !tbaa !15
  %i.ke = add nsw i32 %.2168481, 1
  %i.kf = add nsw i32 %.2159482, -1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.kg = icmp ne i8 %i.jy, 48
  %i.kh = or i1 %.2176480, %i.kg
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.3188 = phi i32 [ %i.kb, %bb.bs ], [ %.2187479, %bb.bt ] ; 4 uses
  %.3177 = phi i1 [ %.2176480, %bb.bs ], [ %i.kh, %bb.bt ] ; 3 uses
  %.3169 = phi i32 [ %i.ke, %bb.bs ], [ %.2168481, %bb.bt ] ; 2 uses
  %.3160 = phi i32 [ %i.kf, %bb.bs ], [ %.2159482, %bb.bt ] ; 3 uses
  br i1 %i.jx, label %.split367, label %bb.bv

.split367:                                        ; preds = %bb.bu
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 1 ; 3 uses
  %i.kj = icmp eq ptr %i.ki, %i.h
  br i1 %i.kj, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, label %.backedge

.backedge:                                        ; preds = %bb.by, %.split367, %.split368, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299
  %i.kk = phi ptr [ %i.ki, %.split367 ], [ %i.kr, %.split368 ], [ %i.kr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299 ], [ %i.kt, %bb.by ] ; 3 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !15  ; 2 uses
  %i.km = add i8 %i.kl, -48
  %or.cond229 = icmp ult i8 %i.km, 10
  br i1 %or.cond229, label %bb.br, label %.critedge11.loopexit, !llvm.loop !36

bb.bv:                                            ; preds = %bb.bu
  %i.kn = load i8, ptr %i.jz, align 1, !tbaa !15  ; 2 uses
  %i.ko = sext i8 %i.kn to i32
  %i.kp = add nsw i32 %i.ko, -48
  %or.cond.i.i291 = icmp ult i32 %i.kp, 10
  %i.kq = icmp ult i8 %i.kn, 58
  %or.cond19.i.i292 = and i1 %i.kq, %or.cond.i.i291
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 1 ; 6 uses
  %i.ks = icmp eq ptr %i.kr, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bv
  br i1 %i.ks, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bv
  br i1 %i.ks, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, label %bb.bw

bb.bw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 2 ; 3 uses
  %i.ku = icmp eq ptr %i.kt, %i.h
  br i1 %i.ku, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kv = load i8, ptr %i.kr, align 1, !tbaa !15
  %i.kw = sext i8 %i.kv to i32
  %i.kx = icmp eq i32 %i.kw, %i.jw
  br i1 %i.kx, label %bb.by, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

bb.by:                                            ; preds = %bb.bx
  %i.ky = load i8, ptr %i.kt, align 1, !tbaa !15  ; 2 uses
  %i.kz = sext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kz, -48
  %or.cond.i25.i296 = icmp ult i32 %i.la, 10
  %i.lb = icmp ult i8 %i.ky, 58
  %or.cond19.i26.i297 = and i1 %i.lb, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299: ; preds = %bb.by, %bb.bw, %bb.bx
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa477 = phi ptr [ %.promoted476, %.loopexit ], [ %i.kk, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa477, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.lc = phi ptr [ %.lcssa458, %.critedge ], [ %.lcssa477, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.ec, true
  %i.ld = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.ld, i1 false
  %i.le = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.le, i1 false
  br i1 %or.cond16, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.critedge11
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !18
  br label %.thread370

bb.ca:                                            ; preds = %.critedge11
  %i.lh = load i8, ptr %i.lc, align 1, !tbaa !15
  switch i8 %i.lh, label %bb.cv [
    i8 101, label %bb.cb
    i8 69, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca
  %i.li = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.li, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !18
  br label %.thread370

bb.cd:                                            ; preds = %bb.cb
  br i1 %i.li, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 4 uses
  store ptr %i.ll, ptr %i.b, align 8, !tbaa !7
  %i.lm = icmp eq ptr %i.ll, %i.h
  br i1 %i.lm, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.k, label %.split613, label %bb.cg

.split613:                                        ; preds = %bb.cf
  store ptr %i.lc, ptr %i.b, align 8, !tbaa !7
  %i.ln = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.cg:                                            ; preds = %bb.cf
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !18
  br label %.thread370

bb.ch:                                            ; preds = %bb.ce
  %i.lq = load i8, ptr %i.ll, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.lq, label %bb.cl [
    i8 43, label %bb.ci
    i8 45, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 2 ; 3 uses
  store ptr %i.lr, ptr %i.b, align 8, !tbaa !7
  %i.ls = icmp eq ptr %i.lr, %i.h
  br i1 %i.ls, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.k, label %.split614, label %bb.ck

.split614:                                        ; preds = %bb.cj
  store ptr %i.lc, ptr %i.b, align 8, !tbaa !7
  %i.lt = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.ck:                                            ; preds = %bb.cj
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !18
  br label %.thread370

bb.cl:                                            ; preds = %bb.ch, %bb.ci
  %.promoted490 = phi ptr [ %i.lr, %bb.ci ], [ %i.ll, %bb.ch ] ; 5 uses
  %.0184 = phi i8 [ %i.lq, %bb.ci ], [ 43, %bb.ch ]
  %i.lw = icmp eq ptr %.promoted490, %i.h
  br i1 %i.lw, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lx = load i8, ptr %.promoted490, align 1, !tbaa !15 ; 2 uses
  %i.ly = add i8 %i.lx, -58
  %or.cond230 = icmp ult i8 %i.ly, -10
  br i1 %or.cond230, label %bb.cn, label %.preheader

.preheader:                                       ; preds = %bb.cm
  %i.lz = add i64 %i.a, %i.g
  %.promoted490543 = ptrtoaddr ptr %.promoted490 to i64
  %i.ma = sub i64 %i.lz, %.promoted490543
  %scevgep544 = getelementptr i8, ptr %.promoted490, i64 %i.ma
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  br i1 %i.k, label %.split615, label %bb.co

.split615:                                        ; preds = %bb.cn
  store ptr %i.lc, ptr %i.b, align 8, !tbaa !7
  %i.mb = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.co:                                            ; preds = %bb.cn
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load double, ptr %i.mc, align 8, !tbaa !18
  br label %.thread370

bb.cp:                                            ; preds = %.preheader, %bb.ct
  %i.me = phi i8 [ %i.mo, %bb.ct ], [ %i.lx, %.preheader ] ; 2 uses
  %i.mf = phi ptr [ %i.mn, %bb.ct ], [ %.promoted490, %.preheader ]
  %.0182 = phi i32 [ %.1183, %bb.ct ], [ 0, %.preheader ] ; 3 uses
  %i.mg = zext nneg i8 %i.me to i32
  %i.mh = icmp sgt i32 %.0182, 107374181
  br i1 %i.mh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.mi = icmp eq i32 %.0182, 107374182
  %i.mj = icmp samesign ult i8 %i.me, 52
  %or.cond21 = and i1 %i.mi, %i.mj
  br i1 %or.cond21, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.mk = mul nsw i32 %.0182, 10
  %i.ml = add i32 %i.mk, -48
  %i.mm = add i32 %i.ml, %i.mg
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %.1183 = phi i32 [ %i.mm, %bb.cr ], [ 1073741823, %bb.cq ] ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.mn, %i.h
  br i1 %.not219, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !15  ; 2 uses
  %i.mp = add i8 %i.mo, -48
  %or.cond231 = icmp ult i8 %i.mp, 10
  br i1 %or.cond231, label %bb.cp, label %bb.cu, !llvm.loop !37

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %.lcssa507 = phi ptr [ %scevgep544, %bb.cs ], [ %i.mn, %bb.ct ] ; 2 uses
  store ptr %.lcssa507, ptr %i.b, align 8, !tbaa !7
  %i.mq = icmp eq i8 %.0184, 45
  %i.mr = sub nsw i32 0, %.1183
  %i.ms = select i1 %i.mq, i32 %i.mr, i32 %.1183
  %i.mt = add nsw i32 %i.ms, %.4161
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ca
  %.promoted492 = phi ptr [ %.lcssa507, %bb.cu ], [ %i.lc, %bb.ca ] ; 6 uses
  %.7164 = phi i32 [ %i.mt, %bb.cu ], [ %.4161, %bb.ca ] ; 4 uses
  %i.mu = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.mu, 0
  %.not220 = icmp eq ptr %.promoted492, %i.h      ; 2 uses
  %or.cond407 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond407, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !18
  br label %.thread370

bb.cx:                                            ; preds = %bb.cv
  %.promoted.i300545 = ptrtoaddr ptr %.promoted492 to i64 ; 2 uses
  %or.cond408 = select i1 %i.k, i1 true, i1 %.not220
  br i1 %or.cond408, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cx
  %i.mx = load i8, ptr %.promoted492, align 1, !tbaa !15
  %i.my = sext i8 %i.mx to i32
  %i.mz = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.my)
  br i1 %i.mz, label %.lr.ph495.preheader, label %.lr.ph.i302._crit_edge

.lr.ph495.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.na = add i64 %i.a, %i.g                      ; 2 uses
  %i.nb = sub i64 %i.na, %.promoted.i300545
  %scevgep546 = getelementptr i8, ptr %.promoted492, i64 %i.nb ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.promoted492, i64 1 ; 2 uses
  %.not.not.i306687 = icmp eq ptr %i.nc, %i.h
  br i1 %.not.not.i306687, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !16

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph495.preheader
  br label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph495
  %i.nd = phi ptr [ %i.nc, %.lr.ph.i302.lr.ph ], [ %i.nh, %.lr.ph495 ] ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !15
  %i.nf = sext i8 %i.ne to i32
  %i.ng = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.nf)
  br i1 %i.ng, label %.lr.ph495, label %.lr.ph.i302._crit_edge, !llvm.loop !16

.lr.ph495:                                        ; preds = %.lr.ph.i302
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.nh, %i.h
  br i1 %.not.not.i306, label %.lr.ph495._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !18
  br label %.thread370

.lr.ph495._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge: ; preds = %.lr.ph495
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit: ; preds = %.lr.ph495._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, %.lr.ph495.preheader
  store ptr %scevgep546, ptr %i.b, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, %bb.cx
  %.promoted.i308547.pre-phi = phi i64 [ %i.na, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted.i300545, %bb.cx ]
  %.promoted497 = phi ptr [ %scevgep546, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted492, %bb.cx ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted497, %i.h
  %or.cond409 = select i1 %.not223, i1 true, i1 %.not6.not.i309
  br i1 %or.cond409, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.nk = load i8, ptr %.promoted497, align 1, !tbaa !15
  %i.nl = sext i8 %i.nk to i32
  %i.nm = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.nl)
  br i1 %i.nm, label %.lr.ph498.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split

.lr.ph498.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.nn = add i64 %i.a, %i.g
  %i.no = sub i64 %i.nn, %.promoted.i308547.pre-phi
  %scevgep548 = getelementptr i8, ptr %.promoted497, i64 %i.no
  %i.np = getelementptr inbounds nuw i8, ptr %.promoted497, i64 1 ; 2 uses
  %.not.not.i314688 = icmp eq ptr %i.np, %i.h
  br i1 %.not.not.i314688, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !16

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph498.preheader
  br label %.lr.ph.i310, !llvm.loop !16

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph498
  %i.nq = phi ptr [ %i.np, %.lr.ph.i310.lr.ph ], [ %i.nu, %.lr.ph498 ] ; 3 uses
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !15
  %i.ns = sext i8 %i.nr to i32
  %i.nt = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ns)
  br i1 %i.nt, label %.lr.ph498, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

.lr.ph498:                                        ; preds = %.lr.ph.i310
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nu, %i.h
  br i1 %.not.not.i314, label %.lr.ph498.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390: ; preds = %bb.bm
  br i1 %.0174.lcssa, label %bb.cz, label %bb.da

.lr.ph498.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph498
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge: ; preds = %.lr.ph498.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph498.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.nv = phi ptr [ %i.ki, %.split367 ], [ %i.kr, %.split368 ], [ %i.kr, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.nv, ptr %i.b, align 8
  %i.nw = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.cz, label %bb.da

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.nq, %.lr.ph.i310 ], [ %.promoted497, %.lr.ph.i310.preheader ], [ %scevgep548, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.ip, %.split365 ], [ %i.ig, %.split364 ], [ %i.ip, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.if, %.split364 ], [ %i.if, %.split365 ], [ %i.if, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.nx = phi ptr [ %.promoted497, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.sink, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2194.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5190.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5179.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2173.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.8165.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %i.ny = trunc i8 %.2194 to i1
  br i1 %i.ny, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.cy

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread: ; preds = %bb.cd, %bb.bk, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.nz = phi ptr [ %i.nx, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %i.lc, %bb.cd ], [ %.lcssa458, %bb.bk ]
  %.5190387 = phi i32 [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %.4189, %bb.cd ], [ %.0185.lcssa, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !7
  %i.oa = sext i32 %.5190387 to i64
  %i.ob = getelementptr inbounds i8, ptr %i.d, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.od = load i16, ptr %i.oc, align 8, !tbaa !29
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.of = load double, ptr %i.oe, align 8, !tbaa !18
  %i.og = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.f, ptr noundef %i.ob, i1 noundef zeroext %.0180, i16 noundef zeroext %i.od, i1 noundef zeroext %i.k, double noundef %i.of, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.oh = ptrtoint ptr %i.nz to i64
  %i.oi = ptrtoint ptr %1 to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = trunc i64 %i.oj to i32
  store i32 %i.ok, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread370

bb.cy:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.ol = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.split615, %.split614, %.split613, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390, %bb.cy
  %.5190396612 = phi i32 [ %.0185.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390 ], [ %.5190, %bb.cy ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ], [ %.4189, %.split615 ] ; 2 uses
  %i.om = phi i32 [ %.0171.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390 ], [ %i.ol, %bb.cy ], [ %i.nw, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %i.ln, %.split613 ], [ %i.lt, %.split614 ], [ %i.mb, %.split615 ]
  %i.on = add nsw i32 %.5190396612, 1
  %i.oo = sext i32 %.5190396612 to i64
  %i.op = getelementptr inbounds i8, ptr %i.d, i64 %i.oo
  store i8 49, ptr %i.op, align 1, !tbaa !15
  %i.oq = add nsw i32 %i.om, -1
  br label %bb.da

bb.da:                                            ; preds = %.split615, %.split614, %.split613, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390, %bb.cz, %bb.cy
  %.6191 = phi i32 [ %i.on, %bb.cz ], [ %.5190, %bb.cy ], [ %.0185.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390 ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ], [ %.4189, %.split615 ] ; 5 uses
  %.9 = phi i32 [ %i.oq, %bb.cz ], [ %i.ol, %bb.cy ], [ %.0171.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390 ], [ %i.nw, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %i.ln, %.split613 ], [ %i.lt, %.split614 ], [ %i.mb, %.split615 ]
  %i.or = sext i32 %.6191 to i64
  %i.os = getelementptr inbounds i8, ptr %i.d, i64 %i.or
  store i8 0, ptr %i.os, align 1, !tbaa !15
  %i.ot = icmp sgt i32 %.6191, 0
  br i1 %i.ot, label %.lr.ph691, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph691:                                        ; preds = %bb.da
  %i.ou = zext nneg i32 %.6191 to i64
  br label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %i.ov = trunc nuw i64 %i.oy to i32              ; 2 uses
  %i.ow = icmp sgt i32 %i.ov, 0
  br i1 %i.ow, label %bb.dc, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

bb.dc:                                            ; preds = %.lr.ph691, %bb.db
  %i.ox = phi i32 [ %.6191, %.lr.ph691 ], [ %i.ov, %bb.db ]
  %indvars.iv.i689 = phi i64 [ %i.ou, %.lr.ph691 ], [ %i.oy, %bb.db ]
  %i.oy = add nsw i64 %indvars.iv.i689, -1        ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.pa, 48
  br i1 %.not.i, label %bb.db, label %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge692, !llvm.loop !38

._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge692: ; preds = %bb.dc
  br label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.db, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge692, %bb.da
  %.sroa.3.1.i = phi i32 [ 0, %bb.da ], [ %i.ox, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge692 ], [ 0, %bb.db ] ; 3 uses
  %i.pb = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.pc = add nsw i32 %i.pb, %.9                  ; 2 uses
  br i1 %3, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.pd = call noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pc)
  br label %bb.df

bb.de:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.pe = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pc)
  %i.pf = fpext float %i.pe to double
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0153 = phi double [ %i.pd, %bb.dd ], [ %i.pf, %bb.de ] ; 2 uses
  %i.pg = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = ptrtoint ptr %1 to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = trunc i64 %i.pj to i32
  store i32 %i.pk, ptr %4, align 4, !tbaa !3
  %i.pl = fneg double %.0153
  %i.pm = select i1 %.0180, double %i.pl, double %.0153
  br label %.thread370

.thread370:                                       ; preds = %bb.co, %bb.ck, %bb.cg, %bb.df, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cw, %bb.cc, %bb.bz, %bb.bp, %bb.bn, %bb.bj
  %.5 = phi double [ %i.og, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread ], [ %i.pm, %bb.df ], [ %i.jk, %bb.bn ], [ %i.jr, %bb.bp ], [ %i.lg, %bb.bz ], [ %i.je, %bb.bj ], [ %i.nj, %.lr.ph.i302._crit_edge ], [ %i.mw, %bb.cw ], [ %i.lk, %bb.cc ], [ %i.md, %bb.co ], [ %i.lv, %bb.ck ], [ %i.lp, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, %bb.h, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.af, %bb.ah, %.lr.ph.i259._crit_edge, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359, %bb.au, %.thread370, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, %bb.aq, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, %bb.d, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit ], [ %i.ag, %bb.d ], [ %i.aq, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244 ], [ %i.ce, %.lr.ph.i247._crit_edge ], [ %i.br, %bb.u ], [ %i.bn, %bb.s ], [ %i.as, %bb.h ], [ %i.du, %.lr.ph.i259._crit_edge ], [ %i.dh, %bb.ah ], [ %i.dd, %bb.af ], [ %spec.select404, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264 ], [ %i.fi, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359 ], [ %spec.select401, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252 ], [ %i.es, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356 ], [ %i.ez, %bb.aq ], [ %.5, %.thread370 ], [ %i.hh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread ], [ %i.fn, %bb.au ]
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
  %i.a = alloca ptr, align 8                      ; 30 uses
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
  br i1 %or.cond.not, label %._crit_edge537, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = zext i16 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i686 = icmp eq i32 %2, 1
  br i1 %.not.not.i686, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !42

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.lr.ph.i, !llvm.loop !42

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge537

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
  br i1 %.not212.not, label %bb.d, label %._crit_edge537

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  br label %.thread

._crit_edge537:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.af = phi i16 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i16 %i.af, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge537, %._crit_edge537
  %i.ah = icmp eq i16 %i.af, 45
  %.ptr410 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.not6.not.i238 = icmp eq ptr %.ptr410, %i.g
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
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.a, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge537
  %i.ap = phi i16 [ %i.ai, %bb.i ], [ %i.af, %._crit_edge537 ]
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ag, %._crit_edge537 ]
  %.0180 = phi i1 [ %i.ah, %bb.i ], [ false, %._crit_edge537 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.w, label %bb.k

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

common.resume:                                    ; preds = %bb.ad, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.co, %bb.ad ]
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
  %.pre539.pre = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.w

bb.r:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.bi = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bh, i1 noundef zeroext %i.o)
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  %i.fz = icmp eq ptr %i.fy, %i.g
  br i1 %i.fz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread, label %bb.aw

.backedge417:                                     ; preds = %bb.ax, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281
  %i.ga = phi i16 [ %.pre541.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281 ], [ %i.gg, %bb.ax ]
  %i.gb = phi ptr [ %i.fy, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281 ], [ %i.gd, %bb.ax ] ; 2 uses
  %i.gc = icmp eq i16 %i.ga, 48
  br i1 %i.gc, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !43

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 3 uses
  %i.ge = icmp ne ptr %i.gd, %i.g
  %.pre541.pre = load i16, ptr %i.fy, align 2, !tbaa !41 ; 2 uses
  %i.gf = icmp eq i16 %.pre541.pre, %i.dy
  %or.cond648.a = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond648.a, label %bb.ax, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281

bb.ax:                                            ; preds = %bb.aw
  %i.gg = load i16, ptr %i.gd, align 2, !tbaa !41 ; 2 uses
  %i.gh = add i16 %i.gg, -48
  %or.cond19.i26.i279 = icmp ult i16 %i.gh, 10
  br i1 %or.cond19.i26.i279, label %.backedge417, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281: ; preds = %bb.ax, %bb.aw
  br label %.backedge417

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, %.split361.us
  %.us-phi = phi ptr [ %i.ft, %.split361.us ], [ %i.fy, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.gi = ptrtoint ptr %.us-phi to i64
  %i.gj = ptrtoint ptr %1 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 1
  %i.gm = trunc i64 %i.gl to i32
  store i32 %i.gm, ptr %4, align 4, !tbaa !3
  %i.gn = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge417, %.backedge417.us, %bb.ao, %bb.av
  %.lcssa451 = phi ptr [ %.promoted450, %bb.av ], [ %.promoted450, %bb.ao ], [ %i.ft, %.backedge417.us ], [ %i.gb, %.backedge417 ] ; 2 uses
  store ptr %.lcssa451, ptr %i.a, align 8
  %i.go = trunc i32 %i.ej to i8
  %i.gp = lshr i8 %i.go, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %.promoted457 = phi ptr [ %i.du, %bb.aj ], [ %.lcssa451, %._crit_edge ] ; 3 uses
  %i.gq = phi i8 [ 0, %bb.aj ], [ %i.gp, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gr = load i16, ptr %.promoted457, align 2, !tbaa !41 ; 3 uses
  %i.gs = add i16 %i.gr, -48
  %or.cond228459 = icmp ult i16 %i.gs, 10
  br i1 %or.cond228459, label %.lr.ph465, label %.critedge

.lr.ph465:                                        ; preds = %.critedge227
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gu = load i16, ptr %i.gt, align 8, !tbaa !29 ; 2 uses
  %i.gv = icmp eq i16 %i.gu, 0
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph465, %.backedge416
  %i.gw = phi i16 [ %i.gr, %.lr.ph465 ], [ %i.hp, %.backedge416 ] ; 2 uses
  %.0166464 = phi i32 [ 0, %.lr.ph465 ], [ %.1167, %.backedge416 ] ; 3 uses
  %.0171463 = phi i32 [ 0, %.lr.ph465 ], [ %.1172, %.backedge416 ] ; 2 uses
  %.0174462 = phi i1 [ false, %.lr.ph465 ], [ %.1175, %.backedge416 ] ; 2 uses
  %.0185461 = phi i32 [ 0, %.lr.ph465 ], [ %.1186, %.backedge416 ] ; 3 uses
  %.0192460 = phi i8 [ %i.gq, %.lr.ph465 ], [ %i.hl, %.backedge416 ]
  %i.gx = phi ptr [ %.promoted457, %.lr.ph465 ], [ %i.ho, %.backedge416 ] ; 5 uses
  %i.gy = icmp slt i32 %.0166464, 772
  br i1 %i.gy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gz = trunc nuw nsw i16 %i.gw to i8
  %i.ha = add nsw i32 %.0185461, 1
  %i.hb = sext i32 %.0185461 to i64
  %i.hc = getelementptr inbounds i8, ptr %i.c, i64 %i.hb
  store i8 %i.gz, ptr %i.hc, align 1, !tbaa !15
  %i.hd = add nsw i32 %.0166464, 1
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.he = add nsw i32 %.0171463, 1
  %i.hf = icmp ne i16 %i.gw, 48
  %i.hg = or i1 %.0174462, %i.hf
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1186 = phi i32 [ %i.ha, %bb.az ], [ %.0185461, %bb.ba ] ; 5 uses
  %.1175 = phi i1 [ %.0174462, %bb.az ], [ %i.hg, %bb.ba ] ; 5 uses
  %.1172 = phi i32 [ %.0171463, %bb.az ], [ %i.he, %bb.ba ] ; 5 uses
  %.1167 = phi i32 [ %i.hd, %bb.az ], [ %.0166464, %bb.ba ] ; 2 uses
  %i.hh = trunc i8 %.0192460 to i1
  br i1 %i.hh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hi = load i16, ptr %i.gx, align 2, !tbaa !41
  %i.hj = icmp ult i16 %i.hi, 56
  %i.hk = zext i1 %i.hj to i8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hl = phi i8 [ 0, %bb.bb ], [ %i.hk, %bb.bc ] ; 5 uses
  br i1 %i.gv, label %.split364, label %bb.be

.split364:                                        ; preds = %bb.bd
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, %i.g
  br i1 %i.hn, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %.backedge416

.backedge416:                                     ; preds = %bb.bh, %.split364, %.split365, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290
  %i.ho = phi ptr [ %i.hm, %.split364 ], [ %i.ht, %.split365 ], [ %i.ht, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290 ], [ %i.hv, %bb.bh ] ; 3 uses
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !41 ; 3 uses
  %i.hq = add i16 %i.hp, -48
  %or.cond228 = icmp ult i16 %i.hq, 10
  br i1 %or.cond228, label %bb.ay, label %.critedge, !llvm.loop !44

bb.be:                                            ; preds = %bb.bd
  %i.hr = load i16, ptr %i.gx, align 2, !tbaa !41
  %i.hs = add i16 %i.hr, -48
  %or.cond19.i.i283 = icmp ult i16 %i.hs, 10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 6 uses
  %i.hu = icmp eq ptr %i.ht, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %.split365

.split365:                                        ; preds = %bb.be
  br i1 %i.hu, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %.backedge416

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.be
  br i1 %i.hu, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %bb.bf

bb.bf:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, %i.g
  br i1 %i.hw, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hx = load i16, ptr %i.ht, align 2, !tbaa !41
  %i.hy = icmp eq i16 %i.hx, %i.gu
  br i1 %i.hy, label %bb.bh, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290

bb.bh:                                            ; preds = %bb.bg
  %i.hz = load i16, ptr %i.hv, align 2, !tbaa !41
  %i.ia = add i16 %i.hz, -48
  %or.cond19.i26.i288 = icmp ult i16 %i.ia, 10
  br i1 %or.cond19.i26.i288, label %.backedge416, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290: ; preds = %bb.bh, %bb.bf, %bb.bg
  br label %.backedge416

.critedge:                                        ; preds = %.backedge416, %.critedge227
  %.lcssa458 = phi ptr [ %.promoted457, %.critedge227 ], [ %i.ho, %.backedge416 ] ; 3 uses
  %.0192.lcssa = phi i8 [ %i.gq, %.critedge227 ], [ %i.hl, %.backedge416 ]
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge416 ] ; 6 uses
  %.0174.lcssa = phi i1 [ false, %.critedge227 ], [ %.1175, %.backedge416 ] ; 4 uses
  %.0171.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1172, %.backedge416 ] ; 10 uses
  %.0166.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1167, %.backedge416 ] ; 5 uses
  %.lcssa = phi i16 [ %i.gr, %.critedge227 ], [ %i.hp, %.backedge416 ]
  store ptr %.lcssa458, ptr %i.a, align 8
  %i.ib = icmp eq i32 %.0166.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.ib, i8 0, i8 %.0192.lcssa ; 6 uses
  %i.ic = icmp eq i16 %.lcssa, 46
  br i1 %i.ic, label %bb.bi, label %.critedge11

bb.bi:                                            ; preds = %.critedge
  %i.id = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.id, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond7, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.if = load double, ptr %i.ie, align 8, !tbaa !18
  br label %.thread370

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.id, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ih = load i16, ptr %i.ig, align 8, !tbaa !29 ; 4 uses
  %i.ii = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ih, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ii, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ij = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.dw, %i.ij
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread390, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.il = load double, ptr %i.ik, align 8, !tbaa !18
  br label %.thread370

bb.bo:                                            ; preds = %bb.bl
  %.promoted476.pre = load ptr, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %i.im = load i16, ptr %.promoted476.pre, align 2, !tbaa !41 ; 2 uses
  %i.in = icmp eq i16 %i.im, 48
  %or.cond649 = select i1 %i.ib, i1 %i.in, i1 false
  br i1 %or.cond649, label %.lr.ph474, label %.loopexit

.lr.ph474:                                        ; preds = %bb.bo, %bb.bq
  %5 = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ih, i32 noundef 10, ptr nonnull %i.g)
  %6 = load ptr, ptr %i.a, align 8, !tbaa !39     ; 3 uses
  br i1 %5, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph474
  %i.io = ptrtoint ptr %6 to i64
  %i.ip = ptrtoint ptr %1 to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = lshr exact i64 %i.iq, 1
  %i.is = trunc i64 %i.ir to i32
  store i32 %i.is, ptr %4, align 4, !tbaa !3
  %i.it = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bq:                                            ; preds = %.lr.ph474
  %i.iu = load i16, ptr %6, align 2, !tbaa !41    ; 2 uses
  %i.iv = icmp eq i16 %i.iu, 48
  br i1 %i.iv, label %.lr.ph474, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bq, %bb.bo
  %i.iw = phi i16 [ %i.im, %bb.bo ], [ %i.iu, %bb.bq ] ; 2 uses
  %.promoted476 = phi ptr [ %.promoted476.pre, %bb.bo ], [ %6, %bb.bq ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bo ], [ -1, %bb.bq ]  ; 2 uses
  %i.ix = add i16 %i.iw, -48
  %or.cond229478 = icmp ult i16 %i.ix, 10
  br i1 %or.cond229478, label %.lr.ph484, label %.critedge11.loopexit

.lr.ph484:                                        ; preds = %.loopexit
  %i.iy = icmp eq i16 %i.ih, 0
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph484, %.backedge
  %i.iz = phi i16 [ %i.iw, %.lr.ph484 ], [ %i.jn, %.backedge ] ; 2 uses
  %.2159482 = phi i32 [ %.1158, %.lr.ph484 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168481 = phi i32 [ %.0166.lcssa, %.lr.ph484 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176480 = phi i1 [ %.0174.lcssa, %.lr.ph484 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187479 = phi i32 [ %.0185.lcssa, %.lr.ph484 ], [ %.3188, %.backedge ] ; 3 uses
  %i.ja = phi ptr [ %.promoted476, %.lr.ph484 ], [ %i.jm, %.backedge ] ; 4 uses
  %i.jb = icmp slt i32 %.2168481, 772
  br i1 %i.jb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jc = trunc nuw nsw i16 %i.iz to i8
  %i.jd = add nsw i32 %.2187479, 1
  %i.je = sext i32 %.2187479 to i64
  %i.jf = getelementptr inbounds i8, ptr %i.c, i64 %i.je
  store i8 %i.jc, ptr %i.jf, align 1, !tbaa !15
  %i.jg = add nsw i32 %.2168481, 1
  %i.jh = add nsw i32 %.2159482, -1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ji = icmp ne i16 %i.iz, 48
  %i.jj = or i1 %.2176480, %i.ji
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.3188 = phi i32 [ %i.jd, %bb.bs ], [ %.2187479, %bb.bt ] ; 4 uses
  %.3177 = phi i1 [ %.2176480, %bb.bs ], [ %i.jj, %bb.bt ] ; 3 uses
  %.3169 = phi i32 [ %i.jg, %bb.bs ], [ %.2168481, %bb.bt ] ; 2 uses
  %.3160 = phi i32 [ %i.jh, %bb.bs ], [ %.2159482, %bb.bt ] ; 3 uses
  br i1 %i.iy, label %.split367, label %bb.bv

.split367:                                        ; preds = %bb.bu
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 3 uses
  %i.jl = icmp eq ptr %i.jk, %i.g
  br i1 %i.jl, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread600, label %.backedge

.backedge:                                        ; preds = %bb.by, %.split367, %.split368, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299
  %i.jm = phi ptr [ %i.jk, %.split367 ], [ %i.jr, %.split368 ], [ %i.jr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299 ], [ %i.jt, %bb.by ] ; 3 uses
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !41 ; 2 uses
  %i.jo = add i16 %i.jn, -48
  %or.cond229 = icmp ult i16 %i.jo, 10
  br i1 %or.cond229, label %bb.br, label %.critedge11.loopexit, !llvm.loop !46

bb.bv:                                            ; preds = %bb.bu
  %i.jp = load i16, ptr %i.ja, align 2, !tbaa !41
  %i.jq = add i16 %i.jp, -48
  %or.cond19.i.i292 = icmp ult i16 %i.jq, 10
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 6 uses
  %i.js = icmp eq ptr %i.jr, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bv
  br i1 %i.js, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread600, label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bv
  br i1 %i.js, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread600, label %bb.bw

bb.bw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, %i.g
  br i1 %i.ju, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jv = load i16, ptr %i.jr, align 2, !tbaa !41
  %i.jw = icmp eq i16 %i.jv, %i.ih
  br i1 %i.jw, label %bb.by, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299

bb.by:                                            ; preds = %bb.bx
  %i.jx = load i16, ptr %i.jt, align 2, !tbaa !41
  %i.jy = add i16 %i.jx, -48
  %or.cond19.i26.i297 = icmp ult i16 %i.jy, 10
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit299: ; preds = %bb.by, %bb.bw, %bb.bx
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa477 = phi ptr [ %.promoted476, %.loopexit ], [ %i.jm, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa477, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.jz = phi ptr [ %.lcssa458, %.critedge ], [ %.lcssa477, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.dw, true
  %i.ka = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.ka, i1 false
  %i.kb = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.kb, i1 false
  br i1 %or.cond16, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.critedge11
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !18
  br label %.thread370

bb.ca:                                            ; preds = %.critedge11
  %i.ke = load i16, ptr %i.jz, align 2, !tbaa !41
  switch i16 %i.ke, label %bb.cu [
    i16 101, label %bb.cb
    i16 69, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca
  %i.kf = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kf, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !18
  br label %.thread370

bb.cd:                                            ; preds = %bb.cb
  br i1 %i.kf, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 2 ; 3 uses
  %i.kj = icmp eq ptr %i.ki, %i.g
  br i1 %i.kj, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.j, label %.split607, label %bb.cg

.split607:                                        ; preds = %bb.cf
  store ptr %i.jz, ptr %i.a, align 8, !tbaa !39
  %i.kk = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cy, label %bb.cz

bb.cg:                                            ; preds = %bb.cf
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.km = load double, ptr %i.kl, align 8, !tbaa !18
  br label %.thread370

bb.ch:                                            ; preds = %bb.ce
  %i.kn = load i16, ptr %i.ki, align 2, !tbaa !41 ; 2 uses
  switch i16 %i.kn, label %bb.cl [
    i16 43, label %bb.ci
    i16 45, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch
  %i.ko = zext nneg i16 %i.kn to i32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.g
  br i1 %i.kq, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.j, label %.split608, label %bb.ck

.split608:                                        ; preds = %bb.cj
  store ptr %i.jz, ptr %i.a, align 8, !tbaa !39
  %i.kr = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cy, label %bb.cz

bb.ck:                                            ; preds = %bb.cj
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !18
  br label %.thread370

bb.cl:                                            ; preds = %bb.ch, %bb.ci
  %.promoted490 = phi ptr [ %i.kp, %bb.ci ], [ %i.ki, %bb.ch ] ; 3 uses
  %.0184 = phi i32 [ %i.ko, %bb.ci ], [ 43, %bb.ch ]
  %i.ku = icmp eq ptr %.promoted490, %i.g
  br i1 %i.ku, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kv = load i16, ptr %.promoted490, align 2, !tbaa !41 ; 2 uses
  %i.kw = add i16 %i.kv, -58
  %or.cond230 = icmp ult i16 %i.kw, -10
  br i1 %or.cond230, label %bb.cn, label %.preheader

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  br i1 %i.j, label %.split609, label %bb.co

.split609:                                        ; preds = %bb.cn
  store ptr %i.jz, ptr %i.a, align 8, !tbaa !39
  %i.kx = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cy, label %bb.cz

bb.co:                                            ; preds = %bb.cn
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !18
end_hunk_2
