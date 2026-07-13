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
  %i.a = ptrtoint ptr %1 to i64                   ; 16 uses
  %i.b = alloca ptr, align 8                      ; 36 uses
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
  br i1 %or.cond.not, label %._crit_edge543, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = sext i8 %.pre to i32
  %i.v = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.u)
  br i1 %i.v, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i682 = icmp eq i32 %2, 1
  br i1 %.not.not.i682, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !16

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
  %.lcssa427607 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ] ; 2 uses
  %5 = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.y, %.lr.ph.i._crit_edge ]
  %.pre560 = ptrtoint ptr %.lcssa427607 to i64
  br label %._crit_edge543

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18
  br label %.thread

._crit_edge543:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi561 = phi i64 [ %.pre560, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %6 = phi i8 [ %5, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %7 = phi ptr [ %.lcssa427607, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %6, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge543, %._crit_edge543
  %i.ag = icmp eq i8 %6, 45
  %.ptr404 = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store ptr %.ptr404, ptr %i.b, align 8, !tbaa !7
  %.not6.not.i238 = icmp eq ptr %.ptr404, %i.h
  br i1 %.not6.not.i238, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.ah = add i64 %i.a, %i.g
  %i.ai = sub i64 %i.ah, %.pre-phi561
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %.0338.idx
  %i.aj = load i8, ptr %.0338.ptr, align 1, !tbaa !15
  %i.ak = sext i8 %i.aj to i32
  %i.al = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ak)
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw i64 %.0338.idx, 1          ; 2 uses
  %exitcond = icmp eq i64 %.0338.add, %i.ai
  br i1 %exitcond, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !18
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 1
  %or.cond392 = or i1 %.not211, %.not214
  br i1 %or.cond392, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %7, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.b, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge543
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %7, %._crit_edge543 ] ; 2 uses
  %.0180 = phi i1 [ %i.ag, %bb.i ], [ false, %._crit_edge543 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !15  ; 2 uses
  br i1 %i.p, label %bb.l, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

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
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.cl, %bb.ad ]
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
  %.pre545.pre = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.w

bb.r:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.bi = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.bh, i1 noundef zeroext %i.p)
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bl = and i32 %i.i, 20
  %or.cond3.not = icmp ne i32 %i.bl, 0
  %i.bm = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bm, %i.h              ; 2 uses
  %or.cond393 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond393, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %.promoted.i245530 = ptrtoint ptr %i.bm to i64
  %or.cond394 = select i1 %i.k, i1 true, i1 %.not224
  br i1 %or.cond394, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.v
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bq = sext i8 %i.bp to i32
  %i.br = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bq)
  br i1 %i.br, label %.lr.ph433.preheader, label %.lr.ph.i247._crit_edge

.lr.ph433.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bs = add i64 %i.a, %i.g                      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %.not.not.i251683 = icmp eq ptr %i.bt, %i.h
  br i1 %.not.not.i251683, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !16

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph433.preheader
  br label %.lr.ph.i247, !llvm.loop !16

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph433
  %i.bu = phi ptr [ %i.bt, %.lr.ph.i247.lr.ph ], [ %i.by, %.lr.ph433 ] ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = sext i8 %i.bv to i32
  %i.bx = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bw)
  br i1 %i.bx, label %.lr.ph433, label %.lr.ph.i247._crit_edge, !llvm.loop !16

.lr.ph433:                                        ; preds = %.lr.ph.i247
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.by, %i.h
  br i1 %.not.not.i251, label %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !16

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18
  br label %.thread

.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge: ; preds = %.lr.ph433
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252: ; preds = %.lr.ph433.preheader, %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, %bb.v
  %.pre-phi559 = phi i64 [ %.promoted.i245530, %bb.v ], [ %i.bs, %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge ], [ %i.bs, %.lr.ph433.preheader ]
  %i.cb = sub i64 %.pre-phi559, %i.a
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %4, align 4, !tbaa !3
  %spec.select395 = select i1 %.0180, double -inf, double +inf
  br label %.thread

bb.w:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre545 = phi ptr [ %.pre545.pre, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !28 ; 2 uses
  %.not216 = icmp eq ptr %i.ce, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load i8, ptr %.pre545, align 1, !tbaa !15 ; 2 uses
  br i1 %i.p, label %bb.y, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cg = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.z, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !20

bb.z:                                             ; preds = %bb.y
  %i.ci = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i255, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ck = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ck, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cm = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef signext i8 %i.cp(ptr noundef nonnull align 8 dereferenceable(570) %i.cm, i8 noundef signext %i.cf), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cq, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.cf, %bb.x ]
  %i.cr = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cs = icmp eq i8 %.sink.i253, %i.cr
  br i1 %i.cs, label %bb.ae, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre544 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.ct = load ptr, ptr %i.cd, align 8, !tbaa !28
  %i.cu = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.ct, i1 noundef zeroext %i.p)
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !18
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.cx = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.cx, 0
  %i.cy = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not222 = icmp eq ptr %i.cy, %i.h              ; 2 uses
  %or.cond396 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond396, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !18
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %.promoted.i257531 = ptrtoint ptr %i.cy to i64
  %or.cond397 = select i1 %i.k, i1 true, i1 %.not222
  br i1 %or.cond397, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ai
  %i.db = load i8, ptr %i.cy, align 1, !tbaa !15
  %i.dc = sext i8 %i.db to i32
  %i.dd = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.dc)
  br i1 %i.dd, label %.lr.ph438.preheader, label %.lr.ph.i259._crit_edge

.lr.ph438.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.de = add i64 %i.a, %i.g                      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 2 uses
  %.not.not.i263684 = icmp eq ptr %i.df, %i.h
  br i1 %.not.not.i263684, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !16

.lr.ph.i259.lr.ph:                                ; preds = %.lr.ph438.preheader
  br label %.lr.ph.i259, !llvm.loop !16

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.lr.ph, %.lr.ph438
  %i.dg = phi ptr [ %i.df, %.lr.ph.i259.lr.ph ], [ %i.dk, %.lr.ph438 ] ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = sext i8 %i.dh to i32
  %i.dj = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.di)
  br i1 %i.dj, label %.lr.ph438, label %.lr.ph.i259._crit_edge, !llvm.loop !16

.lr.ph438:                                        ; preds = %.lr.ph.i259
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %.not.not.i263 = icmp eq ptr %i.dk, %i.h
  br i1 %.not.not.i263, label %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, label %.lr.ph.i259, !llvm.loop !16

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !18
  br label %.thread

.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge: ; preds = %.lr.ph438
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264: ; preds = %.lr.ph438.preheader, %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, %bb.ai
  %.pre-phi557 = phi i64 [ %.promoted.i257531, %bb.ai ], [ %i.de, %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge ], [ %i.de, %.lr.ph438.preheader ]
  %i.dn = sub i64 %.pre-phi557, %i.a
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %4, align 4, !tbaa !3
  %spec.select398 = select i1 %.0180, double -qnan, double +qnan
  br label %.thread

bb.aj:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.dp = phi ptr [ %.pre544, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre545, %bb.w ] ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 2 uses
  %i.dr = icmp eq i8 %i.dq, 48                    ; 3 uses
  br i1 %i.dr, label %bb.ak, label %.critedge227

bb.ak:                                            ; preds = %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !29 ; 3 uses
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = icmp eq i16 %i.dt, 0                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 7 uses
  store ptr %i.dw, ptr %i.b, align 8, !tbaa !7
  %i.dx = icmp eq ptr %i.dw, %i.h                 ; 2 uses
  br i1 %i.dv, label %bb.al, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dx, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ak
  br i1 %i.dx, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %bb.am

bb.am:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, %i.h
  br i1 %i.dz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !15  ; 2 uses
  %i.eb = sext i8 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, %i.du
  br i1 %i.ec, label %bb.ao, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.ed = load i8, ptr %i.dy, align 1, !tbaa !15  ; 2 uses
  %i.ee = sext i8 %i.ed to i32
  %i.ef = add nsw i32 %i.ee, -48
  %or.cond.i25.i = icmp ult i32 %i.ef, 10
  %i.eg = icmp ult i8 %i.ed, 58
  %or.cond19.i26.i = and i1 %i.eg, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.ao
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %bb.al
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.eh = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %bb.al, %bb.am, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, %bb.ao
  %.promoted444.ph = phi ptr [ %i.dw, %bb.al ], [ %i.dw, %bb.am ], [ %i.dy, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i ], [ %i.dw, %bb.ao ] ; 2 uses
  %.pre546.pr = load i8, ptr %.promoted444.ph, align 1, !tbaa !15
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.an
  %.pre546 = phi i8 [ %.pre546.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ea, %bb.an ] ; 2 uses
  %.promoted444 = phi ptr [ %.promoted444.ph, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.dw, %bb.an ] ; 5 uses
  %i.ei = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.ej = and i32 %i.ei, 128
  %.not218 = icmp eq i32 %i.ej, 0
  %i.ek = and i32 %i.ei, 129
  %or.cond225 = icmp eq i32 %i.ek, 0
  br i1 %or.cond225, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  switch i8 %.pre546, label %._crit_edge [
    i8 120, label %bb.aq
    i8 88, label %bb.aq
    i8 48, label %.lr.ph446
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %.promoted444, i64 1 ; 4 uses
  store ptr %i.el, ptr %i.b, align 8, !tbaa !7
  %i.em = icmp eq ptr %i.el, %i.h
  br i1 %i.em, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !18
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.not218, label %.thread358, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.el, ptr noundef nonnull %i.h, i16 noundef zeroext %i.dt, i1 noundef zeroext %i.k)
  br i1 %i.ep, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.as, %bb.at
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !15  ; 3 uses
  %i.er = sext i8 %i.eq to i32
  %i.es = add nsw i32 %i.er, -48
  %or.cond.i = icmp ult i32 %i.es, 10
  %i.et = icmp ult i8 %i.eq, 64
  %or.cond19.i = and i1 %i.et, %or.cond.i
  %i.eu = freeze i1 %or.cond19.i
  br i1 %i.eu, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.eq, -65            ; 2 uses
  %i.ev = icmp ult i8 %switch.tableidx, 38
  br i1 %i.ev, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !18
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.at
  %i.ey = phi i1 [ false, %.thread358 ], [ true, %bb.at ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ez = load i16, ptr %i.ds, align 8, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18
  %i.fc = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ez, i1 noundef zeroext %i.ey, i1 noundef zeroext %i.k, double noundef %i.fb, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.fd = load i8, ptr %i.c, align 1, !tbaa !30, !range !32, !noundef !23
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.b, align 8   ; 6 uses
  %.promoted.i265533 = ptrtoint ptr %.promoted.i265 to i64 ; 2 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.h
  %or.cond400 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.au
  %i.ff = load i8, ptr %.promoted.i265, align 1, !tbaa !15
  %i.fg = sext i8 %i.ff to i32
  %i.fh = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fg)
  br i1 %i.fh, label %.lr.ph441.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit

.lr.ph441.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.fi = add i64 %i.a, %i.g
  %i.fj = sub i64 %i.fi, %.promoted.i265533
  %scevgep534 = getelementptr i8, ptr %.promoted.i265, i64 %i.fj
  %i.fk = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 2 uses
  %.not.not.i271685 = icmp eq ptr %i.fk, %i.h
  br i1 %.not.not.i271685, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a, label %.lr.ph.i267.lr.ph, !llvm.loop !16

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph441.preheader
  br label %.lr.ph.i267, !llvm.loop !16

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.lr.ph, %.lr.ph441
  %i.fl = phi ptr [ %i.fk, %.lr.ph.i267.lr.ph ], [ %i.fp, %.lr.ph441 ] ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !15
  %i.fn = sext i8 %i.fm to i32
  %i.fo = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fn)
  br i1 %i.fo, label %.lr.ph441, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

.lr.ph441:                                        ; preds = %.lr.ph.i267
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  %.not.not.i271 = icmp eq ptr %i.fp, %i.h
  br i1 %.not.not.i271, label %.lr.ph441.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, label %.lr.ph.i267, !llvm.loop !16

.lr.ph441.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph441
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a: ; preds = %.lr.ph441.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, %.lr.ph441.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit: ; preds = %.lr.ph.i267, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a, %.lr.ph.i267.preheader
  %8 = phi ptr [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %scevgep534, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge.a ], [ %i.fl, %.lr.ph.i267 ]
  %.pre555 = ptrtoint ptr %8 to i64
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, %bb.au
  %.pre-phi = phi i64 [ %.pre555, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit ], [ %.promoted.i265533, %bb.au ]
  %i.fq = sub i64 %.pre-phi, %i.a
  %i.fr = trunc i64 %i.fq to i32
  store i32 %i.fr, ptr %4, align 4, !tbaa !3
  br label %bb.av

bb.av:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.fs = icmp eq i8 %.pre546, 48
  br i1 %i.fs, label %.lr.ph446, label %._crit_edge

.lr.ph446:                                        ; preds = %bb.ap, %bb.aw
  br i1 %i.dv, label %.lr.ph446.split.us.preheader, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph446.split.us.preheader:                     ; preds = %.lr.ph446
  %i.ft = add i64 %i.a, %i.g                      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.promoted444, i64 1 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.h
  br i1 %i.fv, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge411.us

.lr.ph446.split.us:                               ; preds = %.backedge411.us
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.h
  br i1 %i.fx, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge411.us, !llvm.loop !33

.backedge411.us:                                  ; preds = %.lr.ph446.split.us.preheader, %.lr.ph446.split.us
  %i.fy = phi ptr [ %i.fw, %.lr.ph446.split.us ], [ %i.fu, %.lr.ph446.split.us.preheader ] ; 3 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !15
  %i.ga = icmp eq i8 %i.fz, 48
  br i1 %i.ga, label %.lr.ph446.split.us, label %._crit_edge, !llvm.loop !33

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph446, %.backedge411
  %i.gb = phi ptr [ %i.gf, %.backedge411 ], [ %.promoted444, %.lr.ph446 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 4 uses
  %i.gd = icmp eq ptr %i.gc, %i.h
  br i1 %i.gd, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651, label %bb.ax

.backedge411:                                     ; preds = %bb.ay, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281
  %i.ge = phi i8 [ %.pre547.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gl, %bb.ay ]
  %i.gf = phi ptr [ %i.gc, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gh, %bb.ay ] ; 2 uses
  %i.gg = icmp eq i8 %i.ge, 48
  br i1 %i.gg, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !33

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 3 uses
  %i.gi = icmp ne ptr %i.gh, %i.h
  %.pre547.pre = load i8, ptr %i.gc, align 1, !tbaa !15 ; 2 uses
  %i.gj = sext i8 %.pre547.pre to i32
  %i.gk = icmp eq i32 %i.gj, %i.du
  %or.cond649 = select i1 %i.gi, i1 %i.gk, i1 false
  br i1 %or.cond649, label %bb.ay, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

bb.ay:                                            ; preds = %bb.ax
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !15  ; 3 uses
  %i.gm = sext i8 %i.gl to i32
  %i.gn = add nsw i32 %i.gm, -48
  %or.cond.i25.i278 = icmp ult i32 %i.gn, 10
  %i.go = icmp ult i8 %i.gl, 58
  %or.cond19.i26.i279 = and i1 %i.go, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge411, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281: ; preds = %bb.ay, %bb.ax
  br label %.backedge411

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gp = ptrtoint ptr %i.gc to i64
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %.lr.ph446.split.us, %.lr.ph446.split.us.preheader, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651
  %.us-phi = phi i64 [ %i.gp, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651 ], [ %i.ft, %.lr.ph446.split.us.preheader ], [ %i.ft, %.lr.ph446.split.us ]
  %i.gq = sub i64 %.us-phi, %i.a
  %i.gr = trunc i64 %i.gq to i32
  store i32 %i.gr, ptr %4, align 4, !tbaa !3
  %i.gs = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge411, %.backedge411.us, %bb.ap, %bb.aw
  %.lcssa445 = phi ptr [ %.promoted444, %bb.aw ], [ %.promoted444, %bb.ap ], [ %i.fy, %.backedge411.us ], [ %i.gf, %.backedge411 ] ; 3 uses
  store ptr %.lcssa445, ptr %i.b, align 8
  %i.gt = trunc i32 %i.ei to i8
  %i.gu = lshr i8 %i.gt, 1
  %.pre549 = load i8, ptr %.lcssa445, align 1, !tbaa !15
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %i.gv = phi i8 [ %i.dq, %bb.aj ], [ %.pre549, %._crit_edge ] ; 3 uses
  %.promoted451 = phi ptr [ %i.dp, %bb.aj ], [ %.lcssa445, %._crit_edge ] ; 2 uses
  %i.gw = phi i8 [ 0, %bb.aj ], [ %i.gu, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.gx = add i8 %i.gv, -48
  %or.cond228453 = icmp ult i8 %i.gx, 10
  br i1 %or.cond228453, label %.lr.ph459, label %.critedge

.lr.ph459:                                        ; preds = %.critedge227
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !29 ; 2 uses
  %i.ha = zext i16 %i.gz to i32
  %i.hb = icmp eq i16 %i.gz, 0
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph459, %.backedge410
  %i.hc = phi i8 [ %i.gv, %.lr.ph459 ], [ %i.hu, %.backedge410 ] ; 2 uses
  %.0165458 = phi i32 [ 0, %.lr.ph459 ], [ %.1166, %.backedge410 ] ; 3 uses
  %.0170457 = phi i32 [ 0, %.lr.ph459 ], [ %.1171, %.backedge410 ] ; 2 uses
  %.0173456 = phi i1 [ false, %.lr.ph459 ], [ %.1174, %.backedge410 ] ; 2 uses
  %.0182455 = phi i8 [ %i.gw, %.lr.ph459 ], [ %i.hq, %.backedge410 ]
  %.0185454 = phi i32 [ 0, %.lr.ph459 ], [ %.1186, %.backedge410 ] ; 3 uses
  %i.hd = phi ptr [ %.promoted451, %.lr.ph459 ], [ %i.ht, %.backedge410 ] ; 5 uses
  %i.he = icmp slt i32 %.0165458, 772
  br i1 %i.he, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hf = add nsw i32 %.0185454, 1
  %i.hg = sext i32 %.0185454 to i64
  %i.hh = getelementptr inbounds i8, ptr %i.d, i64 %i.hg
  store i8 %i.hc, ptr %i.hh, align 1, !tbaa !15
  %i.hi = add nsw i32 %.0165458, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hj = add nsw i32 %.0170457, 1
  %i.hk = icmp ne i8 %i.hc, 48
  %i.hl = or i1 %.0173456, %i.hk
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1186 = phi i32 [ %i.hf, %bb.ba ], [ %.0185454, %bb.bb ] ; 5 uses
  %.1174 = phi i1 [ %.0173456, %bb.ba ], [ %i.hl, %bb.bb ] ; 5 uses
  %.1171 = phi i32 [ %.0170457, %bb.ba ], [ %i.hj, %bb.bb ] ; 5 uses
  %.1166 = phi i32 [ %i.hi, %bb.ba ], [ %.0165458, %bb.bb ] ; 2 uses
  %i.hm = trunc i8 %.0182455 to i1
  br i1 %i.hm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hn = load i8, ptr %i.hd, align 1, !tbaa !15
  %i.ho = icmp slt i8 %i.hn, 56
  %i.hp = zext i1 %i.ho to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hq = phi i8 [ 0, %bb.bc ], [ %i.hp, %bb.bd ] ; 5 uses
  br i1 %i.hb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 3 uses
  %i.hs = icmp eq ptr %i.hr, %i.h
  br i1 %i.hs, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge410

.backedge410:                                     ; preds = %bb.bk, %bb.bf, %bb.bh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290
  %i.ht = phi ptr [ %i.hr, %bb.bf ], [ %i.ia, %bb.bh ], [ %i.ia, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290 ], [ %i.ic, %bb.bk ] ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !15  ; 3 uses
  %i.hv = add i8 %i.hu, -48
  %or.cond228 = icmp ult i8 %i.hv, 10
  br i1 %or.cond228, label %bb.az, label %.critedge, !llvm.loop !34

bb.bg:                                            ; preds = %bb.be
  %i.hw = load i8, ptr %i.hd, align 1, !tbaa !15  ; 2 uses
  %i.hx = sext i8 %i.hw to i32
  %i.hy = add nsw i32 %i.hx, -48
  %or.cond.i.i282 = icmp ult i32 %i.hy, 10
  %i.hz = icmp ult i8 %i.hw, 58
  %or.cond19.i.i283 = and i1 %i.hz, %or.cond.i.i282
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 6 uses
  %i.ib = icmp eq ptr %i.ia, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ib, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge410

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.ib, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %bb.bi

bb.bi:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hd, i64 2 ; 3 uses
  %i.id = icmp eq ptr %i.ic, %i.h
  br i1 %i.id, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ie = load i8, ptr %i.ia, align 1, !tbaa !15
  %i.if = sext i8 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, %i.ha
  br i1 %i.ig, label %bb.bk, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

bb.bk:                                            ; preds = %bb.bj
  %i.ih = load i8, ptr %i.ic, align 1, !tbaa !15  ; 2 uses
  %i.ii = sext i8 %i.ih to i32
  %i.ij = add nsw i32 %i.ii, -48
  %or.cond.i25.i287 = icmp ult i32 %i.ij, 10
  %i.ik = icmp ult i8 %i.ih, 58
  %or.cond19.i26.i288 = and i1 %i.ik, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge410, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290: ; preds = %bb.bk, %bb.bi, %bb.bj
  br label %.backedge410

.critedge:                                        ; preds = %.backedge410, %.critedge227
  %.lcssa452 = phi ptr [ %.promoted451, %.critedge227 ], [ %i.ht, %.backedge410 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge410 ] ; 6 uses
  %.0182.lcssa = phi i8 [ %i.gw, %.critedge227 ], [ %i.hq, %.backedge410 ]
end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %.1157 = phi i32 [ 0, %bb.br ], [ %i.je, %bb.bt ] ; 2 uses
  %i.jj = add i8 %i.ji, -48
  %or.cond229472 = icmp ult i8 %i.jj, 10
  br i1 %or.cond229472, label %.lr.ph478, label %.critedge11.loopexit

.lr.ph478:                                        ; preds = %.loopexit
  %i.jk = zext i16 %i.ir to i32
  %i.jl = icmp eq i16 %i.ir, 0
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph478, %.backedge
  %i.jm = phi i8 [ %i.ji, %.lr.ph478 ], [ %i.jz, %.backedge ] ; 2 uses
  %.2158476 = phi i32 [ %.1157, %.lr.ph478 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167475 = phi i32 [ %.0165.lcssa, %.lr.ph478 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175474 = phi i1 [ %.0173.lcssa, %.lr.ph478 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187473 = phi i32 [ %.0185.lcssa, %.lr.ph478 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jn = phi ptr [ %.promoted470, %.lr.ph478 ], [ %i.jy, %.backedge ] ; 4 uses
  %i.jo = icmp slt i32 %.2167475, 772
  br i1 %i.jo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jp = add nsw i32 %.2187473, 1
  %i.jq = sext i32 %.2187473 to i64
  %i.jr = getelementptr inbounds i8, ptr %i.d, i64 %i.jq
  store i8 %i.jm, ptr %i.jr, align 1, !tbaa !15
  %i.js = add nsw i32 %.2167475, 1
  %i.jt = add nsw i32 %.2158476, -1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ju = icmp ne i8 %i.jm, 48
  %i.jv = or i1 %.2175474, %i.ju
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.3188 = phi i32 [ %i.jp, %bb.bv ], [ %.2187473, %bb.bw ] ; 4 uses
  %.3176 = phi i1 [ %.2175474, %bb.bv ], [ %i.jv, %bb.bw ] ; 3 uses
  %.3168 = phi i32 [ %i.js, %bb.bv ], [ %.2167475, %bb.bw ] ; 2 uses
  %.3159 = phi i32 [ %i.jt, %bb.bv ], [ %.2158476, %bb.bw ] ; 3 uses
  br i1 %i.jl, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 3 uses
  %i.jx = icmp eq ptr %i.jw, %i.h
  br i1 %i.jx, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608, label %.backedge

.backedge:                                        ; preds = %bb.cd, %bb.by, %bb.ca, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299
  %i.jy = phi ptr [ %i.jw, %bb.by ], [ %i.kf, %bb.ca ], [ %i.kf, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299 ], [ %i.kh, %bb.cd ] ; 3 uses
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !15  ; 2 uses
  %i.ka = add i8 %i.jz, -48
  %or.cond229 = icmp ult i8 %i.ka, 10
  br i1 %or.cond229, label %bb.bu, label %.critedge11.loopexit, !llvm.loop !36

bb.bz:                                            ; preds = %bb.bx
  %i.kb = load i8, ptr %i.jn, align 1, !tbaa !15  ; 2 uses
  %i.kc = sext i8 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -48
  %or.cond.i.i291 = icmp ult i32 %i.kd, 10
  %i.ke = icmp ult i8 %i.kb, 58
  %or.cond19.i.i292 = and i1 %i.ke, %or.cond.i.i291
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 6 uses
  %i.kg = icmp eq ptr %i.kf, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.kg, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608, label %.backedge

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bz
  br i1 %i.kg, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608, label %bb.cb

bb.cb:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jn, i64 2 ; 3 uses
  %i.ki = icmp eq ptr %i.kh, %i.h
  br i1 %i.ki, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kj = load i8, ptr %i.kf, align 1, !tbaa !15
  %i.kk = sext i8 %i.kj to i32
  %i.kl = icmp eq i32 %i.kk, %i.jk
  br i1 %i.kl, label %bb.cd, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

bb.cd:                                            ; preds = %bb.cc
  %i.km = load i8, ptr %i.kh, align 1, !tbaa !15  ; 2 uses
  %i.kn = sext i8 %i.km to i32
  %i.ko = add nsw i32 %i.kn, -48
  %or.cond.i25.i296 = icmp ult i32 %i.ko, 10
  %i.kp = icmp ult i8 %i.km, 58
  %or.cond19.i26.i297 = and i1 %i.kp, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit299: ; preds = %bb.cd, %bb.cb, %bb.cc
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa471 = phi ptr [ %.promoted470, %.loopexit ], [ %i.jy, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2175.lcssa = phi i1 [ %.0173.lcssa, %.loopexit ], [ %.3176, %.backedge ]
  %.2167.lcssa = phi i32 [ %.0165.lcssa, %.loopexit ], [ %.3168, %.backedge ]
  %.2158.lcssa = phi i32 [ %.1157, %.loopexit ], [ %.3159, %.backedge ]
  store ptr %.lcssa471, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.kq = phi ptr [ %.lcssa452, %.critedge ], [ %.lcssa471, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4177 = phi i1 [ %.0173.lcssa, %.critedge ], [ %.2175.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4169 = phi i32 [ %.0165.lcssa, %.critedge ], [ %.2167.lcssa, %.critedge11.loopexit ]
  %.4160 = phi i32 [ 0, %.critedge ], [ %.2158.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.dr, true
  %i.kr = icmp eq i32 %.4160, 0
  %or.cond14 = select i1 %.not12, i1 %i.kr, i1 false
  %i.ks = icmp eq i32 %.4169, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.ks, i1 false
  br i1 %or.cond16, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.critedge11
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !18
  br label %.thread364

bb.cf:                                            ; preds = %.critedge11
  %i.kv = load i8, ptr %i.kq, align 1, !tbaa !15
  switch i8 %i.kv, label %bb.dd [
    i8 101, label %bb.cg
    i8 69, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.kw = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kw, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !18
  br label %.thread364

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.kw, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 1 ; 4 uses
  store ptr %i.kz, ptr %i.b, align 8, !tbaa !7
  %i.la = icmp eq ptr %i.kz, %i.h
  br i1 %i.la, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.k, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.kq, ptr %i.b, align 8, !tbaa !7
  %i.lb = add nsw i32 %.4160, %.0170.lcssa        ; 2 uses
  br i1 %.4177, label %bb.dh, label %bb.di

bb.cm:                                            ; preds = %bb.ck
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !18
  br label %.thread364

bb.cn:                                            ; preds = %bb.cj
  %i.le = load i8, ptr %i.kz, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.le, label %bb.cs [
    i8 43, label %bb.co
    i8 45, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kq, i64 2 ; 3 uses
  store ptr %i.lf, ptr %i.b, align 8, !tbaa !7
  %i.lg = icmp eq ptr %i.lf, %i.h
  br i1 %i.lg, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  br i1 %i.k, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.kq, ptr %i.b, align 8, !tbaa !7
  %i.lh = add nsw i32 %.4160, %.0170.lcssa        ; 2 uses
  br i1 %.4177, label %bb.dh, label %bb.di

bb.cr:                                            ; preds = %bb.cp
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lj = load double, ptr %i.li, align 8, !tbaa !18
  br label %.thread364

bb.cs:                                            ; preds = %bb.cn, %bb.co
  %.promoted484 = phi ptr [ %i.lf, %bb.co ], [ %i.kz, %bb.cn ] ; 5 uses
  %.0192 = phi i8 [ %i.le, %bb.co ], [ 43, %bb.cn ]
  %i.lk = icmp eq ptr %.promoted484, %i.h
  br i1 %i.lk, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ll = load i8, ptr %.promoted484, align 1, !tbaa !15 ; 2 uses
  %i.lm = add i8 %i.ll, -58
  %or.cond230 = icmp ult i8 %i.lm, -10
  br i1 %or.cond230, label %bb.cu, label %.preheader

.preheader:                                       ; preds = %bb.ct
  %i.ln = add i64 %i.a, %i.g
  %.promoted484537 = ptrtoint ptr %.promoted484 to i64
  %i.lo = sub i64 %i.ln, %.promoted484537
  %scevgep538 = getelementptr i8, ptr %.promoted484, i64 %i.lo
  br label %bb.cx

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %i.k, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.kq, ptr %i.b, align 8, !tbaa !7
  %i.lp = add nsw i32 %.4160, %.0170.lcssa        ; 2 uses
  br i1 %.4177, label %bb.dh, label %bb.di

bb.cw:                                            ; preds = %bb.cu
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !18
  br label %.thread364

bb.cx:                                            ; preds = %.preheader, %bb.db
  %i.ls = phi i8 [ %i.mc, %bb.db ], [ %i.ll, %.preheader ] ; 2 uses
  %i.lt = phi ptr [ %i.mb, %bb.db ], [ %.promoted484, %.preheader ]
  %.0193 = phi i32 [ %.1194, %bb.db ], [ 0, %.preheader ] ; 3 uses
  %i.lu = zext nneg i8 %i.ls to i32
  %i.lv = icmp sgt i32 %.0193, 107374181
  br i1 %i.lv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.lw = icmp eq i32 %.0193, 107374182
  %i.lx = icmp samesign ult i8 %i.ls, 52
  %or.cond21 = and i1 %i.lw, %i.lx
  br i1 %or.cond21, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ly = mul nsw i32 %.0193, 10
  %i.lz = add i32 %i.ly, -48
  %i.ma = add i32 %i.lz, %i.lu
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %.1194 = phi i32 [ %i.ma, %bb.cz ], [ 1073741823, %bb.cy ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.mb, %i.h
  br i1 %.not219, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !15  ; 2 uses
  %i.md = add i8 %i.mc, -48
  %or.cond231 = icmp ult i8 %i.md, 10
  br i1 %or.cond231, label %bb.cx, label %bb.dc, !llvm.loop !37

bb.dc:                                            ; preds = %bb.da, %bb.db
  %.lcssa501 = phi ptr [ %scevgep538, %bb.da ], [ %i.mb, %bb.db ] ; 2 uses
  store ptr %.lcssa501, ptr %i.b, align 8, !tbaa !7
  %i.me = icmp eq i8 %.0192, 45
  %i.mf = sub nsw i32 0, %.1194
  %i.mg = select i1 %i.me, i32 %i.mf, i32 %.1194
  %i.mh = add nsw i32 %i.mg, %.4160
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cf
  %.promoted486 = phi ptr [ %.lcssa501, %bb.dc ], [ %i.kq, %bb.cf ] ; 6 uses
  %.7163 = phi i32 [ %i.mh, %bb.dc ], [ %.4160, %bb.cf ] ; 4 uses
  %i.mi = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.mi, 0
  %.not220 = icmp eq ptr %.promoted486, %i.h      ; 2 uses
  %or.cond401 = or i1 %or.cond25.not, %.not220
  br i1 %or.cond401, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !18
  br label %.thread364

bb.df:                                            ; preds = %bb.dd
  %.promoted.i300539 = ptrtoint ptr %.promoted486 to i64 ; 2 uses
  %or.cond402 = or i1 %i.k, %.not220
  br i1 %or.cond402, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.df
  %i.ml = load i8, ptr %.promoted486, align 1, !tbaa !15
  %i.mm = sext i8 %i.ml to i32
  %i.mn = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.mm)
  br i1 %i.mn, label %.lr.ph489.preheader, label %.lr.ph.i302._crit_edge

.lr.ph489.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.mo = add i64 %i.a, %i.g                      ; 2 uses
  %i.mp = sub i64 %i.mo, %.promoted.i300539
  %scevgep540 = getelementptr i8, ptr %.promoted486, i64 %i.mp ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.promoted486, i64 1 ; 2 uses
  %.not.not.i306686 = icmp eq ptr %i.mq, %i.h
  br i1 %.not.not.i306686, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !16

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph489.preheader
  br label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph489
  %i.mr = phi ptr [ %i.mq, %.lr.ph.i302.lr.ph ], [ %i.mv, %.lr.ph489 ] ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !15
  %i.mt = sext i8 %i.ms to i32
  %i.mu = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.mt)
  br i1 %i.mu, label %.lr.ph489, label %.lr.ph.i302._crit_edge, !llvm.loop !16

.lr.ph489:                                        ; preds = %.lr.ph.i302
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.mv, %i.h
  br i1 %.not.not.i306, label %.lr.ph489._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !16

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !18
  br label %.thread364

.lr.ph489._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge: ; preds = %.lr.ph489
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit: ; preds = %.lr.ph489._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, %.lr.ph489.preheader
  store ptr %scevgep540, ptr %i.b, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, %bb.df
  %.promoted.i308541.pre-phi = phi i64 [ %i.mo, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted.i300539, %bb.df ]
  %.promoted491 = phi ptr [ %scevgep540, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted486, %bb.df ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted491, %i.h
  %or.cond403 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond403, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.my = load i8, ptr %.promoted491, align 1, !tbaa !15
  %i.mz = sext i8 %i.my to i32
  %i.na = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.mz)
  br i1 %i.na, label %.lr.ph492.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split

.lr.ph492.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.nb = add i64 %i.a, %i.g
  %i.nc = sub i64 %i.nb, %.promoted.i308541.pre-phi
  %scevgep542 = getelementptr i8, ptr %.promoted491, i64 %i.nc
  %i.nd = getelementptr inbounds nuw i8, ptr %.promoted491, i64 1 ; 2 uses
  %.not.not.i314687 = icmp eq ptr %i.nd, %i.h
  br i1 %.not.not.i314687, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !16

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph492.preheader
  br label %.lr.ph.i310, !llvm.loop !16

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph492
  %i.ne = phi ptr [ %i.nd, %.lr.ph.i310.lr.ph ], [ %i.ni, %.lr.ph492 ] ; 3 uses
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !15
  %i.ng = sext i8 %i.nf to i32
  %i.nh = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ng)
  br i1 %i.nh, label %.lr.ph492, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

.lr.ph492:                                        ; preds = %.lr.ph.i310
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.ni, %i.h
  br i1 %.not.not.i314, label %.lr.ph492.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384: ; preds = %bb.bp
  br i1 %.0173.lcssa, label %bb.dh, label %bb.di

.lr.ph492.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph492
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge: ; preds = %.lr.ph492.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph492.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, %bb.ca, %bb.by
  %i.nj = phi ptr [ %i.jw, %bb.by ], [ %i.kf, %bb.ca ], [ %i.kf, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.nj, ptr %i.b, align 8
  %i.nk = add nsw i32 %.3159, %.0170.lcssa        ; 2 uses
  br i1 %.3176, label %bb.dh, label %bb.di

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, %bb.bh, %bb.bf, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.ne, %.lr.ph.i310 ], [ %.promoted491, %.lr.ph.i310.preheader ], [ %scevgep542, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.ia, %bb.bh ], [ %i.hr, %bb.bf ], [ %i.ia, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1186, %bb.bf ], [ %.1186, %bb.bh ], [ %.1186, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.hq, %bb.bf ], [ %i.hq, %bb.bh ], [ %i.hq, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5178.ph = phi i1 [ %.4177, %.lr.ph.i310 ], [ %.4177, %.lr.ph.i310.preheader ], [ %.4177, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1174, %bb.bf ], [ %.1174, %bb.bh ], [ %.1174, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2172.ph = phi i32 [ %.0170.lcssa, %.lr.ph.i310 ], [ %.0170.lcssa, %.lr.ph.i310.preheader ], [ %.0170.lcssa, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1171, %bb.bf ], [ %.1171, %bb.bh ], [ %.1171, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8164.ph = phi i32 [ %.7163, %.lr.ph.i310 ], [ %.7163, %.lr.ph.i310.preheader ], [ %.7163, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ 0, %bb.bf ], [ 0, %bb.bh ], [ 0, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307
  %i.nl = phi ptr [ %.promoted491, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.sink, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5190.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ] ; 3 uses
  %.2184 = phi i8 [ %spec.select, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2184.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.5178 = phi i1 [ %.4177, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.5178.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.2172 = phi i32 [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.2172.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %.8164 = phi i32 [ %.7163, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307 ], [ %.8164.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split ]
  %i.nm = trunc i8 %.2184 to i1
  br i1 %i.nm, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.dg

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread: ; preds = %bb.ci, %bb.bn, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.nn = phi ptr [ %i.nl, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %i.kq, %bb.ci ], [ %.lcssa452, %bb.bn ]
  %.5190381 = phi i32 [ %.5190, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315 ], [ %.4189, %bb.ci ], [ %.0185.lcssa, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !7
  %i.no = sext i32 %.5190381 to i64
  %i.np = getelementptr inbounds i8, ptr %i.d, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nr = load i16, ptr %i.nq, align 8, !tbaa !29
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !18
  %i.nu = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.f, ptr noundef %i.np, i1 noundef zeroext %.0180, i16 noundef zeroext %i.nr, i1 noundef zeroext %i.k, double noundef %i.nt, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.nv = ptrtoint ptr %i.nn to i64
  %i.nw = sub i64 %i.nv, %i.a
  %i.nx = trunc i64 %i.nw to i32
  store i32 %i.nx, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread364

bb.dg:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315
  %i.ny = add nsw i32 %.8164, %.2172              ; 2 uses
  br i1 %.5178, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.cv, %bb.cq, %bb.cl, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, %bb.dg
  %.5190390614 = phi i32 [ %.0185.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %.5190, %bb.dg ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608 ], [ %.4189, %bb.cl ], [ %.4189, %bb.cq ], [ %.4189, %bb.cv ] ; 2 uses
  %i.nz = phi i32 [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %i.ny, %bb.dg ], [ %i.nk, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608 ], [ %i.lb, %bb.cl ], [ %i.lh, %bb.cq ], [ %i.lp, %bb.cv ]
  %i.oa = add nsw i32 %.5190390614, 1
  %i.ob = sext i32 %.5190390614 to i64
  %i.oc = getelementptr inbounds i8, ptr %i.d, i64 %i.ob
  store i8 49, ptr %i.oc, align 1, !tbaa !15
  %i.od = add nsw i32 %i.nz, -1
  br label %bb.di

bb.di:                                            ; preds = %bb.cv, %bb.cq, %bb.cl, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, %bb.dh, %bb.dg
  %.6191 = phi i32 [ %i.oa, %bb.dh ], [ %.5190, %bb.dg ], [ %.0185.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %.3188, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608 ], [ %.4189, %bb.cl ], [ %.4189, %bb.cq ], [ %.4189, %bb.cv ] ; 5 uses
  %.9 = phi i32 [ %i.od, %bb.dh ], [ %i.ny, %bb.dg ], [ %.0170.lcssa, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384 ], [ %i.nk, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread608 ], [ %i.lb, %bb.cl ], [ %i.lh, %bb.cq ], [ %i.lp, %bb.cv ]
  %i.oe = sext i32 %.6191 to i64
  %i.of = getelementptr inbounds i8, ptr %i.d, i64 %i.oe
  store i8 0, ptr %i.of, align 1, !tbaa !15
  %i.og = icmp sgt i32 %.6191, 0
  br i1 %i.og, label %.lr.ph690, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit

.lr.ph690:                                        ; preds = %bb.di
  %i.oh = zext nneg i32 %.6191 to i64
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.oi = trunc nuw i64 %i.ol to i32              ; 2 uses
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %bb.dk, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

bb.dk:                                            ; preds = %.lr.ph690, %bb.dj
  %i.ok = phi i32 [ %.6191, %.lr.ph690 ], [ %i.oi, %bb.dj ]
  %indvars.iv.i688 = phi i64 [ %i.oh, %.lr.ph690 ], [ %i.ol, %bb.dj ]
  %i.ol = add nsw i64 %indvars.iv.i688, -1        ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.on, 48
  br i1 %.not.i, label %bb.dj, label %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge691, !llvm.loop !38

._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge691: ; preds = %bb.dk
  br label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit, !llvm.loop !38

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit: ; preds = %bb.dj, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge691, %bb.di
  %.sroa.3.1.i = phi i32 [ 0, %bb.di ], [ %i.ok, %._ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit_crit_edge691 ], [ 0, %bb.dj ] ; 3 uses
  %i.oo = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.op = add nsw i32 %i.oo, %.9                  ; 2 uses
  br i1 %3, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.oq = call noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.op)
  br label %bb.dn

bb.dm:                                            ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit
  %i.or = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.op)
  %i.os = fpext float %i.or to double
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.0179 = phi double [ %i.oq, %bb.dl ], [ %i.os, %bb.dm ] ; 2 uses
  %i.ot = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = sub i64 %i.ou, %i.a
end_hunk_1
