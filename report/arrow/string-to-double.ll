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
  %5 = ptrtoaddr ptr %1 to i64                    ; 9 uses
  %i.a = alloca ptr, align 8                      ; 36 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %i.f = sext i32 %2 to i64                       ; 9 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 40 uses
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
  %.pre = load i8, ptr %1, align 1, !tbaa !15     ; 3 uses
  br i1 %or.cond.not, label %._crit_edge543, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = sext i8 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i680 = icmp eq i32 %2, 1
  br i1 %.not.not.i680, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !16

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i, !llvm.loop !16

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15    ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, %i.g
  br i1 %.not.not.i, label %.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !16

.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit: ; preds = %.lr.ph._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i._crit_edge._crit_edge:                   ; preds = %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %.lcssa427605 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.w, %.lr.ph.i._crit_edge ] ; 2 uses
  %i.ad = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ]
  %.pre554 = ptrtoaddr ptr %.lcssa427605 to i64
  br label %._crit_edge543

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18
  br label %.thread

._crit_edge543:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi560 = phi i64 [ %.pre554, %.lr.ph.i._crit_edge._crit_edge ], [ %5, %bb.c ]
  %i.ag = phi i8 [ %i.ad, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.ah = phi ptr [ %.lcssa427605, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %i.ag, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge543, %._crit_edge543
  %i.ai = icmp eq i8 %i.ag, 45
  %.ptr404 = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %.ptr404, ptr %i.a, align 8, !tbaa !7
  %.not6.not.i238 = icmp eq ptr %.ptr404, %i.g
  br i1 %.not6.not.i238, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.aj = add i64 %5, %i.f
  %i.ak = sub i64 %i.aj, %.pre-phi560
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0338.idx
  %i.al = load i8, ptr %.0338.ptr, align 1, !tbaa !15
  %i.am = sext i8 %i.al to i32
  %i.an = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.am)
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw i64 %.0338.idx, 1          ; 2 uses
  %exitcond = icmp eq i64 %.0338.add, %i.ak
  br i1 %exitcond, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 1
  %or.cond392 = or i1 %.not211, %.not214
  br i1 %or.cond392, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !18
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.a, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge543
  %i.as = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ah, %._crit_edge543 ] ; 2 uses
  %.0180 = phi i1 [ %i.ai, %bb.i ], [ false, %._crit_edge543 ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %.not215 = icmp eq ptr %i.au, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr %i.as, align 1, !tbaa !15  ; 2 uses
  br i1 %i.o, label %bb.l, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ba, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

common.resume:                                    ; preds = %bb.ad, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.cn, %bb.ad ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.bc = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext %i.av), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bg, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.av, %bb.k ]
  %i.bh = load i8, ptr %i.au, align 1, !tbaa !15
  %i.bi = icmp eq i8 %.sink.i, %i.bh
  br i1 %i.bi, label %bb.r, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre545.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.w

bb.r:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !19
  %i.bk = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bj, i1 noundef zeroext %i.o)
  br i1 %i.bk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !18
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bn = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bn, 0
  %i.bo = load ptr, ptr %i.a, align 8             ; 6 uses
  %.not224 = icmp eq ptr %i.bo, %i.g              ; 2 uses
  %or.cond393 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond393, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !18
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %.promoted.i245530 = ptrtoaddr ptr %i.bo to i64
  %or.cond394 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond394, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.v
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bs = sext i8 %i.br to i32
  %i.bt = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bs)
  br i1 %i.bt, label %.lr.ph433.preheader, label %.lr.ph.i247._crit_edge

.lr.ph433.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bu = add i64 %5, %i.f
  %6 = sub i64 %i.bu, %.promoted.i245530
  %scevgep = getelementptr i8, ptr %i.bo, i64 %6  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %.not.not.i251681 = icmp eq ptr %i.bv, %i.g
  br i1 %.not.not.i251681, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !16

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph433.preheader
  br label %.lr.ph.i247, !llvm.loop !16

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph433
  %i.bw = phi ptr [ %i.bv, %.lr.ph.i247.lr.ph ], [ %i.ca, %.lr.ph433 ] ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.by = sext i8 %i.bx to i32
  %i.bz = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.by)
  br i1 %i.bz, label %.lr.ph433, label %.lr.ph.i247._crit_edge, !llvm.loop !16

.lr.ph433:                                        ; preds = %.lr.ph.i247
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.ca, %i.g
  br i1 %.not.not.i251, label %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !16

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !18
  br label %.thread

.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge: ; preds = %.lr.ph433
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252: ; preds = %.lr.ph433.preheader, %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, %bb.v
  %7 = phi ptr [ %i.bo, %bb.v ], [ %scevgep, %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge ], [ %scevgep, %.lr.ph433.preheader ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %1 to i64
  %i.cd = sub i64 %8, %9
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %4, align 4, !tbaa !3
  %spec.select395 = select i1 %.0180, double -inf, double +inf
  br label %.thread

bb.w:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre545 = phi ptr [ %.pre545.pre, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.as, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28 ; 2 uses
  %.not216 = icmp eq ptr %i.cg, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load i8, ptr %.pre545, align 1, !tbaa !15 ; 2 uses
  br i1 %i.o, label %bb.y, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.ci = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !20

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i255, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cm = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cm, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.co = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext %i.ch), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cs, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ch, %bb.x ]
  %i.ct = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.cu = icmp eq i8 %.sink.i253, %i.ct
  br i1 %i.cu, label %bb.ae, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre544 = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.cw = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.cv, i1 noundef zeroext %i.o)
  br i1 %i.cw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !18
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.cz = and i32 %i.h, 20
  %or.cond5.not = icmp ne i32 %i.cz, 0
  %i.da = load ptr, ptr %i.a, align 8             ; 6 uses
  %.not222 = icmp eq ptr %i.da, %i.g              ; 2 uses
  %or.cond396 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond396, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !18
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %.promoted.i257531 = ptrtoaddr ptr %i.da to i64
  %or.cond397 = select i1 %i.j, i1 true, i1 %.not222
  br i1 %or.cond397, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ai
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !15
  %i.de = sext i8 %i.dd to i32
  %i.df = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.de)
  br i1 %i.df, label %.lr.ph438.preheader, label %.lr.ph.i259._crit_edge

.lr.ph438.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.dg = add i64 %5, %i.f
  %10 = sub i64 %i.dg, %.promoted.i257531
  %scevgep532 = getelementptr i8, ptr %i.da, i64 %10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  %.not.not.i263682 = icmp eq ptr %i.dh, %i.g
  br i1 %.not.not.i263682, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !16

.lr.ph.i259.lr.ph:                                ; preds = %.lr.ph438.preheader
  br label %.lr.ph.i259, !llvm.loop !16

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.lr.ph, %.lr.ph438
  %i.di = phi ptr [ %i.dh, %.lr.ph.i259.lr.ph ], [ %i.dm, %.lr.ph438 ] ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = sext i8 %i.dj to i32
  %i.dl = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.dk)
  br i1 %i.dl, label %.lr.ph438, label %.lr.ph.i259._crit_edge, !llvm.loop !16

.lr.ph438:                                        ; preds = %.lr.ph.i259
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  %.not.not.i263 = icmp eq ptr %i.dm, %i.g
  br i1 %.not.not.i263, label %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, label %.lr.ph.i259, !llvm.loop !16

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load double, ptr %i.dn, align 8, !tbaa !18
  br label %.thread

.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge: ; preds = %.lr.ph438
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264: ; preds = %.lr.ph438.preheader, %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, %bb.ai
  %11 = phi ptr [ %i.da, %bb.ai ], [ %scevgep532, %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge ], [ %scevgep532, %.lr.ph438.preheader ]
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %1 to i64
  %i.dp = sub i64 %12, %13
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %4, align 4, !tbaa !3
  %spec.select398 = select i1 %.0180, double -qnan, double +qnan
  br label %.thread

bb.aj:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.dr = phi ptr [ %.pre544, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre545, %bb.w ] ; 4 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %i.dt = icmp eq i8 %i.ds, 48                    ; 3 uses
  br i1 %i.dt, label %bb.ak, label %.critedge227

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 8, !tbaa !29 ; 3 uses
  %i.dw = zext i16 %i.dv to i32                   ; 2 uses
  %i.dx = icmp eq i16 %i.dv, 0                    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 7 uses
  store ptr %i.dy, ptr %i.a, align 8, !tbaa !7
  %i.dz = icmp eq ptr %i.dy, %i.g                 ; 2 uses
  br i1 %i.dx, label %bb.al, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ak
  br i1 %i.dz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %bb.am

bb.am:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 2 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, %i.g
  br i1 %i.eb, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load i8, ptr %i.dy, align 1, !tbaa !15  ; 2 uses
  %i.ed = sext i8 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, %i.dw
  br i1 %i.ee, label %bb.ao, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i8, ptr %i.ea, align 1, !tbaa !15  ; 2 uses
  %i.eg = sext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -48
  %or.cond.i25.i = icmp ult i32 %i.eh, 10
  %i.ei = icmp ult i8 %i.ef, 58
  %or.cond19.i26.i = and i1 %i.ei, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.ao
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %bb.al
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.ej = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %bb.al, %bb.am, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, %bb.ao
  %.promoted444.ph = phi ptr [ %i.dy, %bb.al ], [ %i.dy, %bb.am ], [ %i.ea, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i ], [ %i.dy, %bb.ao ] ; 2 uses
  %.pre546.pr = load i8, ptr %.promoted444.ph, align 1, !tbaa !15
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.an
  %.pre546 = phi i8 [ %.pre546.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ec, %bb.an ] ; 2 uses
  %.promoted444 = phi ptr [ %.promoted444.ph, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.dy, %bb.an ] ; 5 uses
  %i.ek = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.el = and i32 %i.ek, 128
  %.not218 = icmp eq i32 %i.el, 0
  %i.em = and i32 %i.ek, 129
  %or.cond225 = icmp eq i32 %i.em, 0
  br i1 %or.cond225, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  switch i8 %.pre546, label %._crit_edge [
    i8 120, label %bb.aq
    i8 88, label %bb.aq
    i8 48, label %.lr.ph446
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %.promoted444, i64 1 ; 4 uses
  store ptr %i.en, ptr %i.a, align 8, !tbaa !7
  %i.eo = icmp eq ptr %i.en, %i.g
  br i1 %i.eo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !18
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.not218, label %.thread358, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.en, ptr noundef nonnull %i.g, i16 noundef zeroext %i.dv, i1 noundef zeroext %i.j)
  br i1 %i.er, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.as, %bb.at
  %i.es = load i8, ptr %i.en, align 1, !tbaa !15  ; 3 uses
  %i.et = sext i8 %i.es to i32
  %i.eu = add nsw i32 %i.et, -48
  %or.cond.i = icmp ult i32 %i.eu, 10
  %i.ev = icmp ult i8 %i.es, 64
  %or.cond19.i = and i1 %i.ev, %or.cond.i
  %i.ew = freeze i1 %or.cond19.i
  br i1 %i.ew, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.es, -65            ; 2 uses
  %i.ex = icmp ult i8 %switch.tableidx, 38
  br i1 %i.ex, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !18
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.at
  %i.fa = phi i1 [ false, %.thread358 ], [ true, %bb.at ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.fb = load i16, ptr %i.du, align 8, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !18
  %i.fe = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.a, ptr noundef nonnull %i.g, i1 noundef zeroext %.0180, i16 noundef zeroext %i.fb, i1 noundef zeroext %i.fa, i1 noundef zeroext %i.j, double noundef %i.fd, i1 noundef zeroext %3, ptr noundef %i.b)
  %i.ff = load i8, ptr %i.b, align 1, !tbaa !30, !range !32, !noundef !23
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.a, align 8   ; 7 uses
  %.promoted.i265533 = ptrtoaddr ptr %.promoted.i265 to i64
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.g
  %or.cond400 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.au
  %i.fh = load i8, ptr %.promoted.i265, align 1, !tbaa !15
  %i.fi = sext i8 %i.fh to i32
  %i.fj = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fi)
  br i1 %i.fj, label %.lr.ph441.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272

.lr.ph441.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.fk = add i64 %5, %i.f
  %i.fl = sub i64 %i.fk, %.promoted.i265533
  %scevgep534 = getelementptr i8, ptr %.promoted.i265, i64 %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 2 uses
  %.not.not.i271683 = icmp eq ptr %i.fm, %i.g
  br i1 %.not.not.i271683, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, label %.lr.ph.i267.lr.ph, !llvm.loop !16

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph441.preheader
  br label %.lr.ph.i267, !llvm.loop !16

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.lr.ph, %.lr.ph441
  %i.fn = phi ptr [ %i.fm, %.lr.ph.i267.lr.ph ], [ %i.fr, %.lr.ph441 ] ; 3 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !15
  %i.fp = sext i8 %i.fo to i32
  %i.fq = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fp)
  br i1 %i.fq, label %.lr.ph441, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, !llvm.loop !16

.lr.ph441:                                        ; preds = %.lr.ph.i267
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  %.not.not.i271 = icmp eq ptr %i.fr, %i.g
  br i1 %.not.not.i271, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a, label %.lr.ph.i267, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a: ; preds = %.lr.ph441
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit: ; preds = %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a, %.lr.ph441.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, %bb.au
  %14 = phi ptr [ %.promoted.i265, %bb.au ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %scevgep534, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit ], [ %i.fn, %.lr.ph.i267 ]
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %1 to i64
  %i.fs = sub i64 %15, %16
  %i.ft = trunc i64 %i.fs to i32
  store i32 %i.ft, ptr %4, align 4, !tbaa !3
  br label %bb.av

bb.av:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.fu = icmp eq i8 %.pre546, 48
  br i1 %i.fu, label %.lr.ph446, label %._crit_edge

.lr.ph446:                                        ; preds = %bb.ap, %bb.aw
  br i1 %i.dx, label %.lr.ph446.split.us.preheader, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph446.split.us.preheader:                     ; preds = %.lr.ph446
  %i.fv = add i64 %5, %i.f                        ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.promoted444, i64 1 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.g
  br i1 %i.fx, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge411.us

.lr.ph446.split.us:                               ; preds = %.backedge411.us
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.g
  br i1 %i.fz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge411.us, !llvm.loop !33

.backedge411.us:                                  ; preds = %.lr.ph446.split.us.preheader, %.lr.ph446.split.us
  %i.ga = phi ptr [ %i.fy, %.lr.ph446.split.us ], [ %i.fw, %.lr.ph446.split.us.preheader ] ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !15
  %i.gc = icmp eq i8 %i.gb, 48
  br i1 %i.gc, label %.lr.ph446.split.us, label %._crit_edge, !llvm.loop !33

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph446, %.backedge411
  %i.gd = phi ptr [ %i.gh, %.backedge411 ], [ %.promoted444, %.lr.ph446 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, %i.g
  br i1 %i.gf, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649, label %bb.ax

.backedge411:                                     ; preds = %bb.ay, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281
  %i.gg = phi i8 [ %.pre547.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gn, %bb.ay ]
  %i.gh = phi ptr [ %i.ge, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gj, %bb.ay ] ; 2 uses
  %i.gi = icmp eq i8 %i.gg, 48
  br i1 %i.gi, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !33

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 2 ; 3 uses
  %i.gk = icmp ne ptr %i.gj, %i.g
  %.pre547.pre = load i8, ptr %i.ge, align 1, !tbaa !15 ; 2 uses
  %i.gl = sext i8 %.pre547.pre to i32
  %i.gm = icmp eq i32 %i.gl, %i.dw
  %or.cond647 = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %or.cond647, label %bb.ay, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

bb.ay:                                            ; preds = %bb.ax
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !15  ; 3 uses
  %i.go = sext i8 %i.gn to i32
  %i.gp = add nsw i32 %i.go, -48
  %or.cond.i25.i278 = icmp ult i32 %i.gp, 10
  %i.gq = icmp ult i8 %i.gn, 58
  %or.cond19.i26.i279 = and i1 %i.gq, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge411, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281: ; preds = %bb.ay, %bb.ax
  br label %.backedge411

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gr = ptrtoint ptr %i.ge to i64
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %.lr.ph446.split.us, %.lr.ph446.split.us.preheader, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649
  %.us-phi = phi i64 [ %i.gr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit649 ], [ %i.fv, %.lr.ph446.split.us.preheader ], [ %i.fv, %.lr.ph446.split.us ]
  %17 = ptrtoint ptr %1 to i64
  %i.gs = sub i64 %.us-phi, %17
  %i.gt = trunc i64 %i.gs to i32
  store i32 %i.gt, ptr %4, align 4, !tbaa !3
  %i.gu = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge411, %.backedge411.us, %bb.ap, %bb.aw
  %.lcssa445 = phi ptr [ %.promoted444, %bb.aw ], [ %.promoted444, %bb.ap ], [ %i.ga, %.backedge411.us ], [ %i.gh, %.backedge411 ] ; 2 uses
  store ptr %.lcssa445, ptr %i.a, align 8
  %i.gv = trunc i32 %i.ek to i8
  %i.gw = lshr i8 %i.gv, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %.promoted451 = phi ptr [ %i.dr, %bb.aj ], [ %.lcssa445, %._crit_edge ] ; 3 uses
  %i.gx = phi i8 [ 0, %bb.aj ], [ %i.gw, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gy = load i8, ptr %.promoted451, align 1, !tbaa !15 ; 3 uses
  %i.gz = add i8 %i.gy, -48
  %or.cond228453 = icmp ult i8 %i.gz, 10
  br i1 %or.cond228453, label %.lr.ph459, label %.critedge

.lr.ph459:                                        ; preds = %.critedge227
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hb = load i16, ptr %i.ha, align 8, !tbaa !29 ; 2 uses
  %i.hc = zext i16 %i.hb to i32
  %i.hd = icmp eq i16 %i.hb, 0
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph459, %.backedge410
  %i.he = phi i8 [ %i.gy, %.lr.ph459 ], [ %i.hw, %.backedge410 ] ; 2 uses
  %.0165458 = phi i32 [ 0, %.lr.ph459 ], [ %.1166, %.backedge410 ] ; 3 uses
  %.0170457 = phi i32 [ 0, %.lr.ph459 ], [ %.1171, %.backedge410 ] ; 2 uses
  %.0173456 = phi i1 [ false, %.lr.ph459 ], [ %.1174, %.backedge410 ] ; 2 uses
  %.0182455 = phi i8 [ %i.gx, %.lr.ph459 ], [ %i.hs, %.backedge410 ]
  %.0185454 = phi i32 [ 0, %.lr.ph459 ], [ %.1186, %.backedge410 ] ; 3 uses
  %i.hf = phi ptr [ %.promoted451, %.lr.ph459 ], [ %i.hv, %.backedge410 ] ; 5 uses
  %i.hg = icmp slt i32 %.0165458, 772
  br i1 %i.hg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hh = add nsw i32 %.0185454, 1
  %i.hi = sext i32 %.0185454 to i64
  %i.hj = getelementptr inbounds i8, ptr %i.c, i64 %i.hi
  store i8 %i.he, ptr %i.hj, align 1, !tbaa !15
  %i.hk = add nsw i32 %.0165458, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hl = add nsw i32 %.0170457, 1
  %i.hm = icmp ne i8 %i.he, 48
  %i.hn = or i1 %.0173456, %i.hm
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1186 = phi i32 [ %i.hh, %bb.ba ], [ %.0185454, %bb.bb ] ; 5 uses
  %.1174 = phi i1 [ %.0173456, %bb.ba ], [ %i.hn, %bb.bb ] ; 5 uses
  %.1171 = phi i32 [ %.0170457, %bb.ba ], [ %i.hl, %bb.bb ] ; 5 uses
  %.1166 = phi i32 [ %i.hk, %bb.ba ], [ %.0165458, %bb.bb ] ; 2 uses
  %i.ho = trunc i8 %.0182455 to i1
  br i1 %i.ho, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hp = load i8, ptr %i.hf, align 1, !tbaa !15
  %i.hq = icmp slt i8 %i.hp, 56
  %i.hr = zext i1 %i.hq to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hs = phi i8 [ 0, %bb.bc ], [ %i.hr, %bb.bd ] ; 5 uses
  br i1 %i.hd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, %i.g
  br i1 %i.hu, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge410

.backedge410:                                     ; preds = %bb.bk, %bb.bf, %bb.bh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290
  %i.hv = phi ptr [ %i.ht, %bb.bf ], [ %i.ic, %bb.bh ], [ %i.ic, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290 ], [ %i.ie, %bb.bk ] ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !15  ; 3 uses
  %i.hx = add i8 %i.hw, -48
  %or.cond228 = icmp ult i8 %i.hx, 10
  br i1 %or.cond228, label %bb.az, label %.critedge, !llvm.loop !34

bb.bg:                                            ; preds = %bb.be
  %i.hy = load i8, ptr %i.hf, align 1, !tbaa !15  ; 2 uses
  %i.hz = sext i8 %i.hy to i32
  %i.ia = add nsw i32 %i.hz, -48
  %or.cond.i.i282 = icmp ult i32 %i.ia, 10
  %i.ib = icmp ult i8 %i.hy, 58
  %or.cond19.i.i283 = and i1 %i.ib, %or.cond.i.i282
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 6 uses
  %i.id = icmp eq ptr %i.ic, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.id, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge410

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.id, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %bb.bi

bb.bi:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hf, i64 2 ; 3 uses
  %i.if = icmp eq ptr %i.ie, %i.g
  br i1 %i.if, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ig = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ih = sext i8 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, %i.hc
  br i1 %i.ii, label %bb.bk, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

bb.bk:                                            ; preds = %bb.bj
  %i.ij = load i8, ptr %i.ie, align 1, !tbaa !15  ; 2 uses
  %i.ik = sext i8 %i.ij to i32
  %i.il = add nsw i32 %i.ik, -48
  %or.cond.i25.i287 = icmp ult i32 %i.il, 10
  %i.im = icmp ult i8 %i.ij, 58
  %or.cond19.i26.i288 = and i1 %i.im, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge410, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290: ; preds = %bb.bk, %bb.bi, %bb.bj
  br label %.backedge410

.critedge:                                        ; preds = %.backedge410, %.critedge227
  %.lcssa452 = phi ptr [ %.promoted451, %.critedge227 ], [ %i.hv, %.backedge410 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge410 ] ; 6 uses
  %.0182.lcssa = phi i8 [ %i.gx, %.critedge227 ], [ %i.hs, %.backedge410 ]
  %.0173.lcssa = phi i1 [ false, %.critedge227 ], [ %.1174, %.backedge410 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge410 ] ; 10 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge410 ] ; 5 uses
  %.lcssa = phi i8 [ %i.gy, %.critedge227 ], [ %i.hw, %.backedge410 ]
  store ptr %.lcssa452, ptr %i.a, align 8
  %i.in = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.in, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.io = icmp eq i8 %.lcssa, 46
  br i1 %i.io, label %bb.bl, label %.critedge11

bb.bl:                                            ; preds = %.critedge
  %i.ip = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.ip, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond7, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !18
  br label %.thread364

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.ip, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.it = load i16, ptr %i.is, align 8, !tbaa !29 ; 4 uses
  %i.iu = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.it, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.iu, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.iv = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.dt, %i.iv
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !18
  br label %.thread364

bb.br:                                            ; preds = %bb.bo
  %.promoted470.pre = load ptr, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.iy = load i8, ptr %.promoted470.pre, align 1, !tbaa !15 ; 2 uses
  %i.iz = icmp eq i8 %i.iy, 48
  %or.cond648 = select i1 %i.in, i1 %i.iz, i1 false
  br i1 %or.cond648, label %.lr.ph468, label %.loopexit

.lr.ph468:                                        ; preds = %bb.br, %bb.bt
  %.0156467 = phi i32 [ %i.jg, %bb.bt ], [ 0, %bb.br ]
  %i.ja = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.it, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ja, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph468
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !7
  %18 = ptrtoint ptr %i.jb to i64
  %i.jc = ptrtoint ptr %1 to i64
  %i.jd = sub i64 %18, %i.jc
  %i.je = trunc i64 %i.jd to i32
  store i32 %i.je, ptr %4, align 4, !tbaa !3
  %i.jf = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread364

bb.bt:                                            ; preds = %.lr.ph468
  %i.jg = add nsw i32 %.0156467, -1               ; 2 uses
  %i.jh = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !15  ; 2 uses
  %i.jj = icmp eq i8 %i.ji, 48
  br i1 %i.jj, label %.lr.ph468, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.bt, %bb.br
  %i.jk = phi i8 [ %i.iy, %bb.br ], [ %i.ji, %bb.bt ] ; 2 uses
  %.promoted470 = phi ptr [ %.promoted470.pre, %bb.br ], [ %i.jh, %bb.bt ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.br ], [ %i.jg, %bb.bt ] ; 2 uses
  %i.jl = add i8 %i.jk, -48
  %or.cond229472 = icmp ult i8 %i.jl, 10
  br i1 %or.cond229472, label %.lr.ph478, label %.critedge11.loopexit

.lr.ph478:                                        ; preds = %.loopexit
  %i.jm = zext i16 %i.it to i32
  %i.jn = icmp eq i16 %i.it, 0
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph478, %.backedge
  %i.jo = phi i8 [ %i.jk, %.lr.ph478 ], [ %i.kb, %.backedge ] ; 2 uses
  %.2158476 = phi i32 [ %.1157, %.lr.ph478 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167475 = phi i32 [ %.0165.lcssa, %.lr.ph478 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175474 = phi i1 [ %.0173.lcssa, %.lr.ph478 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187473 = phi i32 [ %.0185.lcssa, %.lr.ph478 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jp = phi ptr [ %.promoted470, %.lr.ph478 ], [ %i.ka, %.backedge ] ; 4 uses
  %i.jq = icmp slt i32 %.2167475, 772
  br i1 %i.jq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jr = add nsw i32 %.2187473, 1
  %i.js = sext i32 %.2187473 to i64
  %i.jt = getelementptr inbounds i8, ptr %i.c, i64 %i.js
  store i8 %i.jo, ptr %i.jt, align 1, !tbaa !15
  %i.ju = add nsw i32 %.2167475, 1
  %i.jv = add nsw i32 %.2158476, -1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.jw = icmp ne i8 %i.jo, 48
  %i.jx = or i1 %.2175474, %i.jw
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.3188 = phi i32 [ %i.jr, %bb.bv ], [ %.2187473, %bb.bw ] ; 4 uses
  %.3176 = phi i1 [ %.2175474, %bb.bv ], [ %i.jx, %bb.bw ] ; 3 uses
  %.3168 = phi i32 [ %i.ju, %bb.bv ], [ %.2167475, %bb.bw ] ; 2 uses
  %.3159 = phi i32 [ %i.jv, %bb.bv ], [ %.2158476, %bb.bw ] ; 3 uses
  br i1 %i.jn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 1 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, %i.g
  br i1 %i.jz, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, label %.backedge

.backedge:                                        ; preds = %bb.cd, %bb.by, %bb.ca, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299
  %i.ka = phi ptr [ %i.jy, %bb.by ], [ %i.kh, %bb.ca ], [ %i.kh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299 ], [ %i.kj, %bb.cd ] ; 3 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !15  ; 2 uses
  %i.kc = add i8 %i.kb, -48
  %or.cond229 = icmp ult i8 %i.kc, 10
  br i1 %or.cond229, label %bb.bu, label %.critedge11.loopexit, !llvm.loop !36

bb.bz:                                            ; preds = %bb.bx
  %i.kd = load i8, ptr %i.jp, align 1, !tbaa !15  ; 2 uses
  %i.ke = sext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.ke, -48
  %or.cond.i.i291 = icmp ult i32 %i.kf, 10
  %i.kg = icmp ult i8 %i.kd, 58
  %or.cond19.i.i292 = and i1 %i.kg, %or.cond.i.i291
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jp, i64 1 ; 6 uses
  %i.ki = icmp eq ptr %i.kh, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.ki, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bz
  br i1 %i.ki, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, label %bb.cb

bb.cb:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jp, i64 2 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, %i.g
  br i1 %i.kk, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kl = load i8, ptr %i.kh, align 1, !tbaa !15
  %i.km = sext i8 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, %i.jm
  br i1 %i.kn, label %bb.cd, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

bb.cd:                                            ; preds = %bb.cc
  %i.ko = load i8, ptr %i.kj, align 1, !tbaa !15  ; 2 uses
  %i.kp = sext i8 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -48
  %or.cond.i25.i296 = icmp ult i32 %i.kq, 10
  %i.kr = icmp ult i8 %i.ko, 58
  %or.cond19.i26.i297 = and i1 %i.kr, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299: ; preds = %bb.cd, %bb.cb, %bb.cc
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa471 = phi ptr [ %.promoted470, %.loopexit ], [ %i.ka, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2175.lcssa = phi i1 [ %.0173.lcssa, %.loopexit ], [ %.3176, %.backedge ]
  %.2167.lcssa = phi i32 [ %.0165.lcssa, %.loopexit ], [ %.3168, %.backedge ]
  %.2158.lcssa = phi i32 [ %.1157, %.loopexit ], [ %.3159, %.backedge ]
  store ptr %.lcssa471, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.ks = phi ptr [ %.lcssa452, %.critedge ], [ %.lcssa471, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4177 = phi i1 [ %.0173.lcssa, %.critedge ], [ %.2175.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4169 = phi i32 [ %.0165.lcssa, %.critedge ], [ %.2167.lcssa, %.critedge11.loopexit ]
  %.4160 = phi i32 [ 0, %.critedge ], [ %.2158.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.dt, true
  %i.kt = icmp eq i32 %.4160, 0
  %or.cond14 = select i1 %.not12, i1 %i.kt, i1 false
  %i.ku = icmp eq i32 %.4169, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.ku, i1 false
  br i1 %or.cond16, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.critedge11
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !18
  br label %.thread364

bb.cf:                                            ; preds = %.critedge11
  %i.kx = load i8, ptr %i.ks, align 1, !tbaa !15
  switch i8 %i.kx, label %bb.dd [
    i8 101, label %bb.cg
    i8 69, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.ky = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.ky, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.la = load double, ptr %i.kz, align 8, !tbaa !18
  br label %.thread364

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.ky, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 4 uses
  store ptr %i.lb, ptr %i.a, align 8, !tbaa !7
  %i.lc = icmp eq ptr %i.lb, %i.g
  br i1 %i.lc, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.j, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.ks, ptr %i.a, align 8, !tbaa !7
  %i.ld = add nsw i32 %.4160, %.0170.lcssa        ; 2 uses
  br i1 %.4177, label %bb.dh, label %bb.di

bb.cm:                                            ; preds = %bb.ck
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lf = load double, ptr %i.le, align 8, !tbaa !18
  br label %.thread364

bb.cn:                                            ; preds = %bb.cj
  %i.lg = load i8, ptr %i.lb, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.lg, label %bb.cs [
    i8 43, label %bb.co
    i8 45, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 3 uses
  store ptr %i.lh, ptr %i.a, align 8, !tbaa !7
  %i.li = icmp eq ptr %i.lh, %i.g
  br i1 %i.li, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  br i1 %i.j, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.ks, ptr %i.a, align 8, !tbaa !7
  %i.lj = add nsw i32 %.4160, %.0170.lcssa        ; 2 uses
  br i1 %.4177, label %bb.dh, label %bb.di

bb.cr:                                            ; preds = %bb.cp
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !18
  br label %.thread364

bb.cs:                                            ; preds = %bb.cn, %bb.co
  %.promoted484 = phi ptr [ %i.lh, %bb.co ], [ %i.lb, %bb.cn ] ; 5 uses
  %.0192 = phi i8 [ %i.lg, %bb.co ], [ 43, %bb.cn ]
  %i.lm = icmp eq ptr %.promoted484, %i.g
  br i1 %i.lm, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ln = load i8, ptr %.promoted484, align 1, !tbaa !15 ; 2 uses
  %i.lo = add i8 %i.ln, -58
  %or.cond230 = icmp ult i8 %i.lo, -10
  br i1 %or.cond230, label %bb.cu, label %.preheader

.preheader:                                       ; preds = %bb.ct
  %i.lp = add i64 %5, %i.f
  %.promoted484537 = ptrtoaddr ptr %.promoted484 to i64
  %i.lq = sub i64 %i.lp, %.promoted484537
  %scevgep538 = getelementptr i8, ptr %.promoted484, i64 %i.lq
  br label %bb.cx

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %i.j, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.ks, ptr %i.a, align 8, !tbaa !7
  %i.lr = add nsw i32 %.4160, %.0170.lcssa        ; 2 uses
  br i1 %.4177, label %bb.dh, label %bb.di

bb.cw:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !18
  br label %.thread364

bb.cx:                                            ; preds = %.preheader, %bb.db
  %i.lu = phi i8 [ %i.me, %bb.db ], [ %i.ln, %.preheader ] ; 2 uses
  %i.lv = phi ptr [ %i.md, %bb.db ], [ %.promoted484, %.preheader ]
  %.0193 = phi i32 [ %.1194, %bb.db ], [ 0, %.preheader ] ; 3 uses
  %i.lw = zext nneg i8 %i.lu to i32
  %i.lx = icmp sgt i32 %.0193, 107374181
  br i1 %i.lx, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ly = icmp eq i32 %.0193, 107374182
  %i.lz = icmp samesign ult i8 %i.lu, 52
  %or.cond21 = and i1 %i.ly, %i.lz
  br i1 %or.cond21, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ma = mul nsw i32 %.0193, 10
  %i.mb = add i32 %i.ma, -48
  %i.mc = add i32 %i.mb, %i.lw
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %.1194 = phi i32 [ %i.mc, %bb.cz ], [ 1073741823, %bb.cy ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lv, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.md, %i.g
  br i1 %.not219, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.me = load i8, ptr %i.md, align 1, !tbaa !15  ; 2 uses
  %i.mf = add i8 %i.me, -48
  %or.cond231 = icmp ult i8 %i.mf, 10
  br i1 %or.cond231, label %bb.cx, label %bb.dc, !llvm.loop !37

bb.dc:                                            ; preds = %bb.da, %bb.db
  %.lcssa501 = phi ptr [ %scevgep538, %bb.da ], [ %i.md, %bb.db ] ; 2 uses
  store ptr %.lcssa501, ptr %i.a, align 8, !tbaa !7
  %i.mg = icmp eq i8 %.0192, 45
  %i.mh = sub nsw i32 0, %.1194
  %i.mi = select i1 %i.mg, i32 %i.mh, i32 %.1194
  %i.mj = add nsw i32 %i.mi, %.4160
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cf
  %.promoted486 = phi ptr [ %.lcssa501, %bb.dc ], [ %i.ks, %bb.cf ] ; 6 uses
  %.7163 = phi i32 [ %i.mj, %bb.dc ], [ %.4160, %bb.cf ] ; 4 uses
  %i.mk = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.mk, 0
  %.not220 = icmp eq ptr %.promoted486, %i.g      ; 2 uses
  %or.cond401 = or i1 %or.cond25.not, %.not220
  br i1 %or.cond401, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !18
  br label %.thread364

bb.df:                                            ; preds = %bb.dd
  %.promoted.i300539 = ptrtoaddr ptr %.promoted486 to i64 ; 2 uses
  %or.cond402 = or i1 %i.j, %.not220
  br i1 %or.cond402, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.df
  %i.mn = load i8, ptr %.promoted486, align 1, !tbaa !15
  %i.mo = sext i8 %i.mn to i32
  %i.mp = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.mo)
  br i1 %i.mp, label %.lr.ph489.preheader, label %.lr.ph.i302._crit_edge

.lr.ph489.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.mq = add i64 %5, %i.f                        ; 2 uses
  %i.mr = sub i64 %i.mq, %.promoted.i300539
  %scevgep540 = getelementptr i8, ptr %.promoted486, i64 %i.mr ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.promoted486, i64 1 ; 2 uses
  %.not.not.i306684 = icmp eq ptr %i.ms, %i.g
  br i1 %.not.not.i306684, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !16

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph489.preheader
  br label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph489
  %i.mt = phi ptr [ %i.ms, %.lr.ph.i302.lr.ph ], [ %i.mx, %.lr.ph489 ] ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !15
  %i.mv = sext i8 %i.mu to i32
  %i.mw = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.mv)
  br i1 %i.mw, label %.lr.ph489, label %.lr.ph.i302._crit_edge, !llvm.loop !16

.lr.ph489:                                        ; preds = %.lr.ph.i302
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.mx, %i.g
  br i1 %.not.not.i306, label %.lr.ph489._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mz = load double, ptr %i.my, align 8, !tbaa !18
  br label %.thread364

.lr.ph489._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge: ; preds = %.lr.ph489
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit: ; preds = %.lr.ph489._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, %.lr.ph489.preheader
  store ptr %scevgep540, ptr %i.a, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, %bb.df
  %.promoted.i308541.pre-phi = phi i64 [ %i.mq, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted.i300539, %bb.df ]
  %.promoted491 = phi ptr [ %scevgep540, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted486, %bb.df ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted491, %i.g
  %or.cond403 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond403, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.na = load i8, ptr %.promoted491, align 1, !tbaa !15
  %i.nb = sext i8 %i.na to i32
  %i.nc = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.nb)
  br i1 %i.nc, label %.lr.ph492.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split

.lr.ph492.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.nd = add i64 %5, %i.f
  %i.ne = sub i64 %i.nd, %.promoted.i308541.pre-phi
  %scevgep542 = getelementptr i8, ptr %.promoted491, i64 %i.ne
  %i.nf = getelementptr inbounds nuw i8, ptr %.promoted491, i64 1 ; 2 uses
  %.not.not.i314685 = icmp eq ptr %i.nf, %i.g
  br i1 %.not.not.i314685, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !16

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph492.preheader
  br label %.lr.ph.i310, !llvm.loop !16

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph492
  %i.ng = phi ptr [ %i.nf, %.lr.ph.i310.lr.ph ], [ %i.nk, %.lr.ph492 ] ; 3 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !15
  %i.ni = sext i8 %i.nh to i32
  %i.nj = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ni)
  br i1 %i.nj, label %.lr.ph492, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

.lr.ph492:                                        ; preds = %.lr.ph.i310
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nk, %i.g
  br i1 %.not.not.i314, label %.lr.ph492.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384: ; preds = %bb.bp
  br i1 %.0173.lcssa, label %bb.dh, label %bb.di

.lr.ph492.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph492
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge: ; preds = %.lr.ph492.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph492.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, %bb.ca, %bb.by
  %i.nl = phi ptr [ %i.jy, %bb.by ], [ %i.kh, %bb.ca ], [ %i.kh, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.nl, ptr %i.a, align 8
  %i.nm = add nsw i32 %.3159, %.0170.lcssa        ; 2 uses
  br i1 %.3176, label %bb.dh, label %bb.di

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, %bb.bh, %bb.bf, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.ng, %.lr.ph.i310 ], [ %.promoted491, %.lr.ph.i310.preheader ], [ %scevgep542, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.ic, %bb.bh ], [ %i.ht, %bb.bf ], [ %i.ic, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1186, %bb.bf ], [ %.1186, %bb.bh ], [ %.1186, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.hs, %bb.bf ], [ %i.hs, %bb.bh ], [ %i.hs, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5178.ph = phi i1 [ %.4177, %.lr.ph.i310 ], [ %.4177, %.lr.ph.i310.preheader ], [ %.4177, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1174, %bb.bf ], [ %.1174, %bb.bh ], [ %.1174, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2172.ph = phi i32 [ %.0170.lcssa, %.lr.ph.i310 ], [ %.0170.lcssa, %.lr.ph.i310.preheader ], [ %.0170.lcssa, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1171, %bb.bf ], [ %.1171, %bb.bh ], [ %.1171, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8164.ph = phi i32 [ %.7163, %.lr.ph.i310 ], [ %.7163, %.lr.ph.i310.preheader ], [ %.7163, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ 0, %bb.bf ], [ 0, %bb.bh ], [ 0, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.nn = phi ptr [ %.promoted491, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.sink, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5190.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ] ; 3 uses
  %.2184 = phi i8 [ %spec.select, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2184.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5178 = phi i1 [ %.4177, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5178.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.2172 = phi i32 [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2172.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.8164 = phi i32 [ %.7163, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.8164.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %i.no = trunc i8 %.2184 to i1
  br i1 %i.no, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.dg

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread: ; preds = %bb.ci, %bb.bn, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.np = phi ptr [ %i.nn, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %i.ks, %bb.ci ], [ %.lcssa452, %bb.bn ]
  %.5190381 = phi i32 [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %.4189, %bb.ci ], [ %.0185.lcssa, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !7
  %i.nq = sext i32 %.5190381 to i64
  %i.nr = getelementptr inbounds i8, ptr %i.c, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nt = load i16, ptr %i.ns, align 8, !tbaa !29
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !18
  %i.nw = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.e, ptr noundef %i.nr, i1 noundef zeroext %.0180, i16 noundef zeroext %i.nt, i1 noundef zeroext %i.j, double noundef %i.nv, i1 noundef zeroext %3, ptr noundef %i.d)
  %19 = ptrtoint ptr %i.np to i64
  %i.nx = ptrtoint ptr %1 to i64
  %i.ny = sub i64 %19, %i.nx
  %i.nz = trunc i64 %i.ny to i32
  store i32 %i.nz, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread364

bb.dg:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.oa = add nsw i32 %.8164, %.2172              ; 2 uses
  br i1 %.5178, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.cv, %bb.cq, %bb.cl, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, %bb.dg
  %.5190390612 = phi i32 [ %.0185.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %.5190, %bb.dg ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %.4189, %bb.cl ], [ %.4189, %bb.cq ], [ %.4189, %bb.cv ] ; 2 uses
  %i.ob = phi i32 [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %i.oa, %bb.dg ], [ %i.nm, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %i.ld, %bb.cl ], [ %i.lj, %bb.cq ], [ %i.lr, %bb.cv ]
  %i.oc = add nsw i32 %.5190390612, 1
  %i.od = sext i32 %.5190390612 to i64
  %i.oe = getelementptr inbounds i8, ptr %i.c, i64 %i.od
  store i8 49, ptr %i.oe, align 1, !tbaa !15
  %i.of = add nsw i32 %i.ob, -1
  br label %bb.di

bb.di:                                            ; preds = %bb.cv, %bb.cq, %bb.cl, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, %bb.dh, %bb.dg
  %.6191 = phi i32 [ %i.oc, %bb.dh ], [ %.5190, %bb.dg ], [ %.0185.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %.4189, %bb.cl ], [ %.4189, %bb.cq ], [ %.4189, %bb.cv ] ; 5 uses
  %.9 = phi i32 [ %i.of, %bb.dh ], [ %i.oa, %bb.dg ], [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %i.nm, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread606 ], [ %i.ld, %bb.cl ], [ %i.lj, %bb.cq ], [ %i.lr, %bb.cv ]
  %i.og = sext i32 %.6191 to i64
  %i.oh = getelementptr inbounds i8, ptr %i.c, i64 %i.og
  store i8 0, ptr %i.oh, align 1, !tbaa !15
  %i.oi = icmp sgt i32 %.6191, 0
  br i1 %i.oi, label %.lr.ph688, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph688:                                        ; preds = %bb.di
  %i.oj = zext nneg i32 %.6191 to i64
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.ok = trunc nuw i64 %i.on to i32              ; 2 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %bb.dk, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

bb.dk:                                            ; preds = %.lr.ph688, %bb.dj
  %i.om = phi i32 [ %.6191, %.lr.ph688 ], [ %i.ok, %bb.dj ]
  %indvars.iv.i686 = phi i64 [ %i.oj, %.lr.ph688 ], [ %i.on, %bb.dj ]
  %i.on = add nsw i64 %indvars.iv.i686, -1        ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.op, 48
  br i1 %.not.i, label %bb.dj, label %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689, !llvm.loop !38

._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689: ; preds = %bb.dk
  br label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.dj, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689, %bb.di
  %.sroa.3.1.i = phi i32 [ 0, %bb.di ], [ %i.om, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge689 ], [ 0, %bb.dj ] ; 3 uses
  %i.oq = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.or = add nsw i32 %i.oq, %.9                  ; 2 uses
  br i1 %3, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.os = call noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.or)
  br label %bb.dn

bb.dm:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.ot = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.or)
  %i.ou = fpext float %i.ot to double
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.0179 = phi double [ %i.os, %bb.dl ], [ %i.ou, %bb.dm ] ; 2 uses
  %i.ov = load ptr, ptr %i.a, align 8, !tbaa !7
  %20 = ptrtoint ptr %i.ov to i64
  %i.ow = ptrtoint ptr %1 to i64
  %i.ox = sub i64 %20, %i.ow
  %i.oy = trunc i64 %i.ox to i32
  store i32 %i.oy, ptr %4, align 4, !tbaa !3
  %i.oz = fneg double %.0179
  %i.pa = select i1 %.0180, double %i.oz, double %.0179
  br label %.thread364

.thread364:                                       ; preds = %bb.cw, %bb.cr, %bb.cm, %bb.dn, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.de, %bb.ch, %bb.ce, %bb.bs, %bb.bq, %bb.bm
  %.5 = phi double [ %i.nw, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread ], [ %i.pa, %bb.dn ], [ %i.ix, %bb.bq ], [ %i.jf, %bb.bs ], [ %i.kw, %bb.ce ], [ %i.ir, %bb.bm ], [ %i.mz, %.lr.ph.i302._crit_edge ], [ %i.mm, %bb.de ], [ %i.la, %bb.ch ], [ %i.lt, %bb.cw ], [ %i.ll, %bb.cr ], [ %i.lf, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, %bb.h, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.af, %bb.ah, %.lr.ph.i259._crit_edge, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359, %bb.av, %.thread364, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, %bb.ar, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, %bb.d, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, %bb.b
  %.8 = phi double [ %i.r, %bb.b ], [ %i.ac, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit ], [ %i.af, %bb.d ], [ %i.ap, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244 ], [ %i.cc, %.lr.ph.i247._crit_edge ], [ %i.bq, %bb.u ], [ %i.bm, %bb.s ], [ %i.ar, %bb.h ], [ %i.do, %.lr.ph.i259._crit_edge ], [ %i.dc, %bb.ah ], [ %i.cy, %bb.af ], [ %spec.select398, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264 ], [ %i.ez, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359 ], [ %spec.select395, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252 ], [ %i.ej, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356 ], [ %i.eq, %bb.ar ], [ %.5, %.thread364 ], [ %i.gu, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread ], [ %i.fe, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
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
  %i.a = alloca ptr, align 8                      ; 31 uses
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
  br i1 %or.cond.not, label %._crit_edge531, label %.lr.ph.i.preheader

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
  br label %._crit_edge531

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
  br i1 %.not212.not, label %bb.d, label %._crit_edge531

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  br label %.thread

._crit_edge531:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.af = phi i16 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i16 %i.af, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge531, %._crit_edge531
  %i.ah = icmp eq i16 %i.af, 45
  %.ptr404 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.not6.not.i238 = icmp eq ptr %.ptr404, %i.g
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

bb.j:                                             ; preds = %bb.i, %._crit_edge531
  %i.ap = phi i16 [ %i.ai, %bb.i ], [ %i.af, %._crit_edge531 ]
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ag, %._crit_edge531 ]
  %.0180 = phi i1 [ %i.ah, %bb.i ], [ false, %._crit_edge531 ] ; 8 uses
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
end_hunk_0
