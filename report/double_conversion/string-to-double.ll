Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi = comdat any

$_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi = comdat any

@_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType = internal unnamed_addr global ptr null, align 8
@_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType = internal global i64 0, align 8

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.b = alloca ptr, align 8                      ; 36 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [782 x i8], align 16              ; 11 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.g = sext i32 %2 to i64                       ; 9 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 40 uses
  store i32 0, ptr %4, align 4, !tbaa !17
  %i.i = load i32, ptr %0, align 8, !tbaa !21     ; 9 uses
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
  %i.s = load double, ptr %i.r, align 8, !tbaa !22
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.t = and i32 %i.i, 24
  %or.cond.not = icmp eq i32 %i.t, 0
  %.pre = load i8, ptr %1, align 1, !tbaa !23     ; 3 uses
  br i1 %or.cond.not, label %._crit_edge547, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = sext i8 %.pre to i32
  %i.v = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.u)
  br i1 %i.v, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i684 = icmp eq i32 %2, 1
  br i1 %.not.not.i684, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !0

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i, !llvm.loop !0

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.b, align 8
  br label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph.i.lr.ph ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23    ; 2 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.z)
  br i1 %i.aa, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.not.i, label %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !0

.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit: ; preds = %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !22
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.x, ptr %i.b, align 8
  br i1 %.not212.not, label %bb.d, label %.lr.ph.i._crit_edge._crit_edge

.lr.ph.i._crit_edge._crit_edge:                   ; preds = %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %.lcssa431604 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ] ; 2 uses
  %i.ae = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.y, %.lr.ph.i._crit_edge ]
  %.pre559 = ptrtoaddr ptr %.lcssa431604 to i64
  br label %._crit_edge547

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !25
  br label %.thread

._crit_edge547:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi = phi i64 [ %.pre559, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %i.ah = phi i8 [ %i.ae, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %.lcssa431604, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %i.ah, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge547, %._crit_edge547
  %i.aj = icmp eq i8 %i.ah, 45
  %.ptr408 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %.ptr408, ptr %i.b, align 8, !tbaa !16
  %.not6.not.i238 = icmp eq ptr %.ptr408, %i.h
  br i1 %.not6.not.i238, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.ak = add i64 %i.a, %i.g
  %i.al = sub i64 %i.ak, %.pre-phi
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0338.idx
  %i.am = load i8, ptr %.0338.ptr, align 1, !tbaa !23
  %i.an = sext i8 %i.am to i32
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.an)
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw i64 %.0338.idx, 1          ; 2 uses
  %exitcond = icmp eq i64 %.0338.add, %i.al
  br i1 %exitcond, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, label %.lr.ph.i239, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244: ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !25
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 1
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !25
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.b, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge547
  %i.at = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ai, %._crit_edge547 ] ; 2 uses
  %.0180 = phi i1 [ %i.aj, %bb.i ], [ false, %._crit_edge547 ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %.not215 = icmp eq ptr %i.av, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !23  ; 2 uses
  br i1 %i.p, label %bb.l, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.az = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.bb = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  store ptr %i.bb, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.bc = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext %i.aw), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bg, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.aw, %bb.k ]
  %i.bh = load i8, ptr %i.av, align 1, !tbaa !23
  %i.bi = icmp eq i8 %.sink.i, %i.bh
  br i1 %i.bi, label %bb.q, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre549.pre = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.w

bb.q:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.bk = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.bj, i1 noundef zeroext %i.p)
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !25
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bn = and i32 %i.i, 20
  %or.cond3.not = icmp ne i32 %i.bn, 0
  %i.bo = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not224 = icmp eq ptr %i.bo, %i.h              ; 2 uses
  %or.cond399 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond399, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !25
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %.promoted.i245534 = ptrtoaddr ptr %i.bo to i64
  %or.cond400 = select i1 %i.k, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.u
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !23
  %i.bs = sext i8 %i.br to i32
  %i.bt = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bs)
  br i1 %i.bt, label %.lr.ph437.preheader, label %.lr.ph.i247._crit_edge

.lr.ph437.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bu = add i64 %i.a, %i.g
  %i.bv = sub i64 %i.bu, %.promoted.i245534
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %.not.not.i251685 = icmp eq ptr %i.bw, %i.h
  br i1 %.not.not.i251685, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !0

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph437.preheader
  br label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph437
  %i.bx = phi ptr [ %i.bw, %.lr.ph.i247.lr.ph ], [ %i.cb, %.lr.ph437 ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23
  %i.bz = sext i8 %i.by to i32
  %i.ca = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bz)
  br i1 %i.ca, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !0

.lr.ph437:                                        ; preds = %.lr.ph.i247
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.cb, %i.h
  br i1 %.not.not.i251, label %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !25
  br label %.thread

.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge: ; preds = %.lr.ph437
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252: ; preds = %.lr.ph437.preheader, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, %bb.u
  %i.ce = phi ptr [ %i.bo, %bb.u ], [ %scevgep, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge ], [ %scevgep, %.lr.ph437.preheader ]
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.v

bb.v:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252
  br label %.thread

bb.w:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre549 = phi ptr [ %.pre549.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.ck, null
  br i1 %.not216, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = load i8, ptr %.pre549, align 1, !tbaa !23 ; 2 uses
  br i1 %i.p, label %bb.y, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cm = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.co = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cq = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cq, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ad:                                            ; preds = %bb.n, %bb.o, %bb.ab, %bb.aa
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.cr

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cs = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.cs, i8 noundef signext %i.cl), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cw, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.cl, %bb.x ]
  %i.cx = load i8, ptr %i.ck, align 1, !tbaa !23
  %i.cy = icmp eq i8 %.sink.i253, %i.cx
  br i1 %i.cy, label %bb.ae, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre548 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.ak

bb.ae:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !34
  %i.da = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.cz, i1 noundef zeroext %i.p)
  br i1 %i.da, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !25
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.dd = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.dd, 0
  %i.de = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not222 = icmp eq ptr %i.de, %i.h              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !25
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %.promoted.i257535 = ptrtoaddr ptr %i.de to i64
  %or.cond402 = select i1 %i.k, i1 true, i1 %.not222
  br i1 %or.cond402, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ai
  %i.dh = load i8, ptr %i.de, align 1, !tbaa !23
  %i.di = sext i8 %i.dh to i32
  %i.dj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.di)
  br i1 %i.dj, label %.lr.ph442.preheader, label %.lr.ph.i259._crit_edge

.lr.ph442.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.dk = add i64 %i.a, %i.g
  %i.dl = sub i64 %i.dk, %.promoted.i257535
  %scevgep536 = getelementptr i8, ptr %i.de, i64 %i.dl ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %.not.not.i263686 = icmp eq ptr %i.dm, %i.h
  br i1 %.not.not.i263686, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !0

.lr.ph.i259.lr.ph:                                ; preds = %.lr.ph442.preheader
  br label %.lr.ph.i259, !llvm.loop !0

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.lr.ph, %.lr.ph442
  %i.dn = phi ptr [ %i.dm, %.lr.ph.i259.lr.ph ], [ %i.dr, %.lr.ph442 ] ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23
  %i.dp = sext i8 %i.do to i32
  %i.dq = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dp)
  br i1 %i.dq, label %.lr.ph442, label %.lr.ph.i259._crit_edge, !llvm.loop !0

.lr.ph442:                                        ; preds = %.lr.ph.i259
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %.not.not.i263 = icmp eq ptr %i.dr, %i.h
  br i1 %.not.not.i263, label %.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge, label %.lr.ph.i259, !llvm.loop !0

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !25
  br label %.thread

.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge: ; preds = %.lr.ph442
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264: ; preds = %.lr.ph442.preheader, %.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge, %bb.ai
  %i.du = phi ptr [ %i.de, %bb.ai ], [ %scevgep536, %.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge ], [ %scevgep536, %.lr.ph442.preheader ]
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264
  br label %.thread

bb.ak:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.dz = phi ptr [ %.pre548, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre549, %bb.w ] ; 4 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = icmp eq i8 %i.ea, 48                    ; 3 uses
  br i1 %i.eb, label %bb.al, label %.critedge227

bb.al:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !35 ; 3 uses
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  %i.ef = icmp eq i16 %i.ed, 0                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 7 uses
  store ptr %i.eg, ptr %i.b, align 8, !tbaa !16
  %i.eh = icmp eq ptr %i.eg, %i.h                 ; 2 uses
  br i1 %i.ef, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %bb.al
  br i1 %i.eh, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.al
  br i1 %i.eh, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, label %bb.am

bb.am:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 2 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, %i.h
  br i1 %i.ej, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !23  ; 2 uses
  %i.el = sext i8 %i.ek to i32
  %i.em = icmp eq i32 %i.el, %i.ee
  br i1 %i.em, label %bb.ao, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !23  ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -48
  %or.cond.i25.i = icmp ult i32 %i.ep, 10
  %i.eq = icmp ult i8 %i.en, 58
  %or.cond19.i26.i = and i1 %i.eq, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.ao
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.er = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split: ; preds = %.split, %bb.am, %_ZN17double_conversionL7isDigitEii.exit30.thread.i, %bb.ao
  %.promoted448.ph = phi ptr [ %i.eg, %.split ], [ %i.eg, %bb.am ], [ %i.ei, %_ZN17double_conversionL7isDigitEii.exit30.thread.i ], [ %i.eg, %bb.ao ] ; 2 uses
  %.pre550.pr = load i8, ptr %.promoted448.ph, align 1, !tbaa !23
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split, %bb.an
  %.pre550 = phi i8 [ %.pre550.pr, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.ek, %bb.an ] ; 2 uses
  %.promoted448 = phi ptr [ %.promoted448.ph, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.eg, %bb.an ] ; 6 uses
  %i.es = load i32, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.et = and i32 %i.es, 128
  %.not218 = icmp eq i32 %i.et, 0
  %i.eu = and i32 %i.es, 129
  %or.cond225 = icmp eq i32 %i.eu, 0
  br i1 %or.cond225, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread
  switch i8 %.pre550, label %bb.aw [
    i8 120, label %bb.aq
    i8 88, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %.promoted448, i64 1 ; 4 uses
  store ptr %i.ev, ptr %i.b, align 8, !tbaa !16
  %i.ew = icmp eq ptr %i.ev, %i.h
  br i1 %i.ew, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !25
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.not218, label %.thread358, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ez = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL16IsHexFloatStringIPKcEEbT_S3_tb(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.h, i16 noundef zeroext %i.ed, i1 noundef zeroext %i.k)
  br i1 %i.ez, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.as, %bb.at
  %i.fa = load i8, ptr %i.ev, align 1, !tbaa !23  ; 3 uses
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -48
  %or.cond.i = icmp ult i32 %i.fc, 10
  %i.fd = icmp ult i8 %i.fa, 64
  %or.cond19.i = and i1 %i.fd, %or.cond.i
  %i.fe = freeze i1 %or.cond19.i
  br i1 %i.fe, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.fa, -65            ; 2 uses
  %i.ff = icmp ult i8 %switch.tableidx, 38
  br i1 %i.ff, label %switch.hole_check, label %_ZN17double_conversionL7isDigitEii.exit.thread359
end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %3, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pf = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pe)
  br label %bb.dg

bb.df:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pg = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pe)
  %i.ph = fpext float %i.pg to double
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0153 = phi double [ %i.pf, %bb.de ], [ %i.ph, %bb.df ] ; 2 uses
  %i.pi = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %1 to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = trunc i64 %i.pl to i32
  store i32 %i.pm, ptr %4, align 4, !tbaa !17
  %i.pn = fneg double %.0153
  %i.po = select i1 %.0180, double %i.pn, double %.0153
  br label %.thread370

.thread370:                                       ; preds = %bb.cp, %bb.cl, %bb.ch, %bb.dg, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cx, %bb.cd, %bb.ca, %bb.bq, %bb.bo, %bb.bk
  %.5 = phi double [ %i.oi, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread ], [ %i.po, %bb.dg ], [ %i.jj, %bb.bo ], [ %i.jr, %bb.bq ], [ %i.li, %bb.ca ], [ %i.je, %bb.bk ], [ %i.nl, %.lr.ph.i302._crit_edge ], [ %i.my, %bb.cx ], [ %i.lm, %bb.cd ], [ %i.mf, %bb.cp ], [ %i.lx, %bb.cl ], [ %i.lr, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, %bb.h, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, %bb.r, %bb.t, %.lr.ph.i247._crit_edge, %bb.af, %bb.ah, %.lr.ph.i259._crit_edge, %bb.v, %bb.aj, %_ZN17double_conversionL7isDigitEii.exit.thread359, %bb.av, %.thread370, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, %bb.ar, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, %bb.d, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit ], [ %i.ag, %bb.d ], [ -qnan, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264 ], [ %i.cd, %.lr.ph.i247._crit_edge ], [ %i.bq, %bb.t ], [ %i.bm, %bb.r ], [ +inf, %bb.v ], [ %i.dt, %.lr.ph.i259._crit_edge ], [ %i.dg, %bb.ah ], [ %i.dc, %bb.af ], [ +qnan, %bb.aj ], [ %i.fh, %_ZN17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252 ], [ %i.er, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356 ], [ %i.ey, %bb.ar ], [ %.5, %.thread370 ], [ %i.hh, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread ], [ %i.fm, %bb.av ], [ %i.aq, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244 ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret double %.8
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 31 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %i.f = sext i32 %2 to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr i8, ptr %1, i64 %.idx      ; 37 uses
  store i32 0, ptr %4, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 8, !tbaa !21     ; 9 uses
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
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.s = and i32 %i.h, 24
  %or.cond.not = icmp eq i32 %i.s, 0
  %.pre = load i16, ptr %1, align 2, !tbaa !41    ; 3 uses
  br i1 %or.cond.not, label %._crit_edge535, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = zext i16 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i687 = icmp eq i32 %2, 1
  br i1 %.not.not.i687, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !3

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.lr.ph.i, !llvm.loop !3

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge535

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !41   ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, %i.g
  br i1 %.not.not.i, label %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !3

.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit: ; preds = %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %._crit_edge535

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !25
  br label %.thread

._crit_edge535:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.af = phi i16 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i16 %i.af, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge535, %._crit_edge535
  %i.ah = icmp eq i16 %i.af, 45
  %.ptr408 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.not6.not.i238 = icmp eq ptr %.ptr408, %i.g
  br i1 %.not6.not.i238, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 2, %bb.e ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx
  %i.ai = load i16, ptr %.0338.ptr, align 2, !tbaa !41 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.aj)
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw nsw i64 %.0338.idx, 2      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.add
  %.not.not.i243 = icmp eq ptr %.ptr, %i.g
  br i1 %.not.not.i243, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, label %.lr.ph.i239, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244: ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !25
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 2
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !25
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.a, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge535
  %i.ap = phi i16 [ %i.ai, %bb.i ], [ %i.af, %._crit_edge535 ]
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ag, %._crit_edge535 ]
  %.0180 = phi i1 [ %i.ah, %bb.i ], [ false, %._crit_edge535 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = trunc i16 %i.ap to i8                   ; 2 uses
  br i1 %i.o, label %bb.l, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.au = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.m, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  store ptr %i.ay, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.az = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.az, i8 noundef signext %i.at), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bd, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.at, %bb.k ]
  %i.be = load i8, ptr %i.as, align 1, !tbaa !23
  %i.bf = icmp eq i8 %.sink.i, %i.be
  br i1 %i.bf, label %bb.q, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre537.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.w

bb.q:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.bh = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bg, i1 noundef zeroext %i.o)
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bk = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bk, 0
  %i.bl = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bl, %i.g              ; 2 uses
  %or.cond399 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond399, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !25
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %or.cond400 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.u
  %i.bo = load i16, ptr %i.bl, align 2, !tbaa !41
  %i.bp = zext i16 %i.bo to i32
  %i.bq = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bp)
  br i1 %i.bq, label %.lr.ph437, label %.lr.ph.i247._crit_edge

.lr.ph.i247:                                      ; preds = %.lr.ph437
  %i.br = load i16, ptr %i.bv, align 2, !tbaa !41
  %i.bs = zext i16 %i.br to i32
  %i.bt = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bs)
  br i1 %i.bt, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !3

.lr.ph437:                                        ; preds = %.lr.ph.i247.preheader, %.lr.ph.i247
  %i.bu = phi ptr [ %i.bv, %.lr.ph.i247 ], [ %i.bl, %.lr.ph.i247.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 3 uses
  %.not.not.i251 = icmp eq ptr %i.bv, %i.g
  br i1 %.not.not.i251, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, label %.lr.ph.i247, !llvm.loop !3

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !25
  br label %.thread

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252: ; preds = %.lr.ph437, %bb.u
  %i.by = phi ptr [ %i.bl, %bb.u ], [ %i.g, %.lr.ph437 ]
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %1 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 1
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.v

bb.v:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252
  br label %.thread

bb.w:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre537 = phi ptr [ %.pre537.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.cf, null
  br i1 %.not216, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = load i16, ptr %.pre537, align 2, !tbaa !41
  %i.ch = trunc i16 %i.cg to i8                   ; 2 uses
  br i1 %i.o, label %bb.y, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.ci = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cm = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cm, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ad:                                            ; preds = %bb.n, %bb.o, %bb.ab, %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.cn

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.co = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext %i.ch), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cs, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ch, %bb.x ]
  %i.ct = load i8, ptr %i.cf, align 1, !tbaa !23
  %i.cu = icmp eq i8 %.sink.i253, %i.ct
  br i1 %i.cu, label %bb.ae, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre536 = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.ak

bb.ae:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cv = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.cw = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.cv, i1 noundef zeroext %i.o)
  br i1 %i.cw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !25
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.cz = and i32 %i.h, 20
  %or.cond5.not = icmp ne i32 %i.cz, 0
  %i.da = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not222 = icmp eq ptr %i.da, %i.g              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !25
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %or.cond402 = select i1 %i.j, i1 true, i1 %.not222
  br i1 %or.cond402, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ai
  %i.dd = load i16, ptr %i.da, align 2, !tbaa !41
  %i.de = zext i16 %i.dd to i32
  %i.df = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.de)
  br i1 %i.df, label %.lr.ph442, label %.lr.ph.i259._crit_edge

.lr.ph.i259:                                      ; preds = %.lr.ph442
  %i.dg = load i16, ptr %i.dk, align 2, !tbaa !41
  %i.dh = zext i16 %i.dg to i32
  %i.di = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dh)
  br i1 %i.di, label %.lr.ph442, label %.lr.ph.i259._crit_edge, !llvm.loop !3

.lr.ph442:                                        ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i259 ], [ %i.da, %.lr.ph.i259.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2 ; 3 uses
  %.not.not.i263 = icmp eq ptr %i.dk, %i.g
  br i1 %.not.not.i263, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264, label %.lr.ph.i259, !llvm.loop !3

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !25
  br label %.thread

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264: ; preds = %.lr.ph442, %bb.ai
  %i.dn = phi ptr [ %i.da, %bb.ai ], [ %i.g, %.lr.ph442 ]
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %1 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = lshr exact i64 %i.dq, 1
  %i.ds = trunc i64 %i.dr to i32
  store i32 %i.ds, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264
  br label %.thread

bb.ak:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.dt = phi ptr [ %.pre536, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre537, %bb.w ] ; 4 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !41
  %i.dv = icmp eq i16 %i.du, 48                   ; 3 uses
  br i1 %i.dv, label %bb.al, label %.critedge227

bb.al:                                            ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 8, !tbaa !35 ; 4 uses
  %i.dy = icmp eq i16 %i.dx, 0                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 5 uses
  %i.ea = icmp eq ptr %i.dz, %i.g                 ; 2 uses
  br i1 %i.dy, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %bb.al
  br i1 %i.ea, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.al
  br i1 %i.ea, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356, label %bb.am

bb.am:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, %i.g
  br i1 %i.ec, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = load i16, ptr %i.dz, align 2, !tbaa !41 ; 2 uses
  %i.ee = icmp eq i16 %i.ed, %i.dx
  br i1 %i.ee, label %bb.ao, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i16, ptr %i.eb, align 2, !tbaa !41 ; 2 uses
  %i.eg = add i16 %i.ef, -48
  %or.cond19.i26.i = icmp ult i16 %i.eg, 10
  br i1 %or.cond19.i26.i, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.eh = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split: ; preds = %.split, %bb.am, %bb.ao
  %.pre538.pr = load i16, ptr %i.dz, align 2, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread: ; preds = %bb.ao, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split, %bb.an
  %.pre538 = phi i16 [ %.pre538.pr, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.ed, %bb.an ], [ %i.ef, %bb.ao ] ; 2 uses
  %.promoted448 = phi ptr [ %i.dz, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.dz, %bb.an ], [ %i.eb, %bb.ao ] ; 5 uses
  %i.ei = load i32, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.ej = and i32 %i.ei, 128
  %.not218 = icmp eq i32 %i.ej, 0
  %i.ek = and i32 %i.ei, 129
  %or.cond225 = icmp eq i32 %i.ek, 0
  br i1 %or.cond225, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread
  switch i16 %.pre538, label %._crit_edge [
    i16 120, label %bb.aq
    i16 88, label %bb.aq
    i16 48, label %.lr.ph450
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %.promoted448, i64 2 ; 4 uses
  store ptr %i.el, ptr %i.a, align 8, !tbaa !40
  %i.em = icmp eq ptr %i.el, %i.g
  br i1 %i.em, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !25
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.not218, label %.thread358, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL16IsHexFloatStringIPKtEEbT_S3_tb(ptr noundef nonnull %i.el, ptr noundef nonnull %i.g, i16 noundef zeroext %i.dx, i1 noundef zeroext %i.j)
  br i1 %i.ep, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.as, %bb.at
  %i.eq = load i16, ptr %i.el, align 2, !tbaa !41
  %.fr499 = freeze i16 %i.eq                      ; 2 uses
  %i.er = add i16 %.fr499, -48
  %or.cond19.i = icmp ult i16 %i.er, 10
  br i1 %or.cond19.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i16 %.fr499, -65         ; 2 uses
  %i.es = icmp ult i16 %switch.tableidx, 38
  br i1 %i.es, label %switch.hole_check, label %_ZN17double_conversionL7isDigitEii.exit.thread359

_ZN17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load double, ptr %i.et, align 8, !tbaa !25
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %_ZN17double_conversionL7isDigitEii.exit.thread359

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %switch.hole_check, %.thread358, %bb.at
  %i.ev = phi i1 [ false, %.thread358 ], [ true, %bb.at ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ew = load i16, ptr %i.dw, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !25
  %i.ez = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S3_btbbdbPb(ptr noundef %i.a, ptr noundef nonnull %i.g, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ew, i1 noundef zeroext %i.ev, i1 noundef zeroext %i.j, double noundef %i.ey, i1 noundef zeroext %3, ptr noundef %i.b)
  %i.fa = load i8, ptr %i.b, align 1, !tbaa !37, !range !38, !noundef !30
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.a, align 8   ; 5 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.g
  %or.cond404 = select i1 %.not223, i1 true, i1 %.not6.not.i266
end_hunk_1
