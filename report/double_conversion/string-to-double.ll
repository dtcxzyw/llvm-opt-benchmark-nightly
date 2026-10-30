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
  %i.b = alloca ptr, align 8                      ; 35 uses
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
  %i.ah = phi i8 [ %i.ae, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 3 uses
  %i.ai = phi ptr [ %.lcssa431604, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %i.ah, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge547, %._crit_edge547
  %i.aj = icmp eq i8 %i.ah, 45
  %.ptr408 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.not6.not.i238 = icmp eq ptr %.ptr408, %i.h
  br i1 %.not6.not.i238, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.ak = add i64 %i.a, %i.g
  %i.al = sub i64 %i.ak, %.pre-phi
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0338.idx
  %i.am = load i8, ptr %.0338.ptr, align 1, !tbaa !23 ; 2 uses
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
  %5 = phi i8 [ %i.am, %bb.i ], [ %i.ah, %._crit_edge547 ] ; 2 uses
  %i.at = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ai, %._crit_edge547 ]
  %.0180 = phi i1 [ %i.aj, %bb.i ], [ false, %._crit_edge547 ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %.not215 = icmp eq ptr %i.av, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.p, label %bb.l, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.p unwind label %common.resume

bb.p:                                             ; preds = %bb.o
  store ptr %i.ba, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.bb = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef signext i8 %i.be(ptr noundef nonnull align 8 dereferenceable(570) %i.bb, i8 noundef signext %5), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bf, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %5, %bb.k ]
  %i.bg = load i8, ptr %i.av, align 1, !tbaa !23
  %i.bh = icmp eq i8 %.sink.i, %i.bg
  br i1 %i.bh, label %bb.q, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre549.pre = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.w

bb.q:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.bj = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.bi, i1 noundef zeroext %i.p)
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !25
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bm = and i32 %i.i, 20
  %or.cond3.not = icmp ne i32 %i.bm, 0
  %i.bn = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not224 = icmp eq ptr %i.bn, %i.h              ; 2 uses
  %or.cond399 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond399, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !25
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %.promoted.i245534 = ptrtoaddr ptr %i.bn to i64
  %or.cond400 = select i1 %i.k, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.u
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !23
  %i.br = sext i8 %i.bq to i32
  %i.bs = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.br)
  br i1 %i.bs, label %.lr.ph437.preheader, label %.lr.ph.i247._crit_edge

.lr.ph437.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bt = add i64 %i.a, %i.g
  %i.bu = sub i64 %i.bt, %.promoted.i245534
  %scevgep = getelementptr i8, ptr %i.bn, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %.not.not.i251685 = icmp eq ptr %i.bv, %i.h
  br i1 %.not.not.i251685, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !0

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph437.preheader
  br label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph437
  %i.bw = phi ptr [ %i.bv, %.lr.ph.i247.lr.ph ], [ %i.ca, %.lr.ph437 ] ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !23
  %i.by = sext i8 %i.bx to i32
  %i.bz = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.by)
  br i1 %i.bz, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !0

.lr.ph437:                                        ; preds = %.lr.ph.i247
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.ca, %i.h
  br i1 %.not.not.i251, label %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !25
  br label %.thread

.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge: ; preds = %.lr.ph437
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252: ; preds = %.lr.ph437.preheader, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, %bb.u
  %i.cd = phi ptr [ %i.bn, %bb.u ], [ %scevgep, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge ], [ %scevgep, %.lr.ph437.preheader ]
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i32
  store i32 %i.ch, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.v

bb.v:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252
  br label %.thread

bb.w:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre549 = phi ptr [ %.pre549.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.cj, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load i8, ptr %.pre549, align 1, !tbaa !23 ; 2 uses
  br i1 %i.p, label %bb.y, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cl = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.cn = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %common.resume

bb.ab:                                            ; preds = %bb.aa
  %i.cp = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %bb.ac unwind label %common.resume

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cp, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.ab, %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.cq

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cr = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call noundef signext i8 %i.cu(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext %i.ck), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cv, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ck, %bb.x ]
  %i.cw = load i8, ptr %i.cj, align 1, !tbaa !23
  %i.cx = icmp eq i8 %.sink.i253, %i.cw
  br i1 %i.cx, label %bb.ad, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre548 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !34
  %i.cz = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.cy, i1 noundef zeroext %i.p)
  br i1 %i.cz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load double, ptr %i.da, align 8, !tbaa !25
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.dc = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.dc, 0
  %i.dd = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not222 = icmp eq ptr %i.dd, %i.h              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load double, ptr %i.de, align 8, !tbaa !25
  br label %.thread
end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23StringToDoubleConverter8StringToIdEET_PKtiPi:bb.a
; Function Attrs: mustprogress uwtable
define noundef float @_ZNK17double_conversion23StringToDoubleConverter8StringToIfEET_PKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8, !tbaa !16
  br label %.preheader13

.preheader:                                       ; preds = %bb.a, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit
  %.pn.i = phi ptr [ %.011.i, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %2, %bb.a ]
  %.011.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.a = load i8, ptr %.011.i, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.a, 0                    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = icmp eq ptr %i.c, %1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %or.cond, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i8, ptr %i.c, align 1, !tbaa !23
  %i.f = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i12 = icmp eq i32 %i.h, 0
  br i1 %.not.i12, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.k

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit: ; preds = %bb.b, %bb.c, %bb.f
  %i.l = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext %i.e), !inline_history !53
  %i.q = load i8, ptr %.011.i, align 1, !tbaa !23
  %.not13.i = icmp eq i8 %i.p, %i.q
  br i1 %.not13.i, label %.preheader, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, !llvm.loop !54

.preheader13:                                     ; preds = %.preheader13.preheader, %bb.h
  %i.r = phi ptr [ %i.t, %bb.h ], [ %.promoted, %.preheader13.preheader ]
  %.pn.i7 = phi ptr [ %.011.i8, %bb.h ], [ %2, %.preheader13.preheader ]
  %.011.i8 = getelementptr inbounds nuw i8, ptr %.pn.i7, i64 1 ; 3 uses
  %i.s = load i8, ptr %.011.i8, align 1, !tbaa !23
  %.not.i9 = icmp eq i8 %i.s, 0                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.u = icmp eq ptr %i.t, %1
  %or.cond21 = select i1 %.not.i9, i1 true, i1 %i.u
  br i1 %or.cond21, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader13
  %i.v = load i8, ptr %i.t, align 1, !tbaa !23
  %i.w = load i8, ptr %.011.i8, align 1, !tbaa !23
  %.not13.i10 = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i10, label %.preheader13, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit, !llvm.loop !54

_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKcPFccEEEbPT_S6_S3_T0_.exit: ; preds = %bb.h, %.preheader13, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, %.preheader
  %.0 = phi i1 [ %.not.i, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %.not.i, %.preheader ], [ %.not.i9, %.preheader13 ], [ %.not.i9, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i32 noundef range(i32 10, 17) %2, ptr nofree readnone captures(address) %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = icmp eq i16 %1, 0
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.d, %.0.val
  br label %_ZN17double_conversionL7isDigitEii.exit30.thread2

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1, !tbaa !23    ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 4 uses
  %i.h = add nsw i32 %i.g, -48
  %or.cond.i = icmp ult i32 %i.h, 10
  %i.i = add nuw nsw i32 %2, 48                   ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, %i.g
  %or.cond19.i = select i1 %or.cond.i, i1 %i.j, i1 false
  br i1 %or.cond19.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i32 %2, 10             ; 2 uses
  %i.l = icmp sgt i8 %i.f, 96
  %or.cond3.i = and i1 %i.k, %i.l
  %i.m = add nuw nsw i32 %2, 87
  %i.n = icmp samesign ugt i32 %i.m, %i.g
  %or.cond21.i = select i1 %or.cond3.i, i1 %i.n, i1 false
  br i1 %or.cond21.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i8 %i.f, 64
  %or.cond5.i = and i1 %i.k, %i.o
  %i.p = add nuw nsw i32 %2, 55
  %i.q = icmp samesign ugt i32 %i.p, %i.g
  %or.cond = select i1 %or.cond5.i, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %_ZN17double_conversionL7isDigitEii.exit.thread1

_ZN17double_conversionL7isDigitEii.exit.thread1:  ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !16
  %i.s = icmp eq ptr %i.r, %.0.val
  br label %_ZN17double_conversionL7isDigitEii.exit30.thread2

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %bb.e, %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.u = icmp eq ptr %i.t, %.0.val
  br i1 %i.u, label %_ZN17double_conversionL7isDigitEii.exit30.thread2, label %bb.f

bb.f:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.w = icmp eq ptr %i.v, %.0.val
  br i1 %i.w, label %_ZN17double_conversionL7isDigitEii.exit30.thread2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.t, align 1, !tbaa !23
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.y, %i.a
  br i1 %i.z, label %bb.h, label %_ZN17double_conversionL7isDigitEii.exit30.thread2

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !23   ; 3 uses
  %i.ab = sext i8 %i.aa to i32                    ; 4 uses
  %i.ac = add nsw i32 %i.ab, -48
  %or.cond.i25 = icmp ult i32 %i.ac, 10
  %i.ad = icmp samesign ugt i32 %i.i, %i.ab
  %or.cond19.i26 = select i1 %or.cond.i25, i1 %i.ad, i1 false
  br i1 %or.cond19.i26, label %_ZN17double_conversionL7isDigitEii.exit30.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp samesign ugt i32 %2, 10            ; 2 uses
  %i.af = icmp sgt i8 %i.aa, 96
  %or.cond3.i27 = and i1 %i.ae, %i.af
  %i.ag = add nuw nsw i32 %2, 87
  %i.ah = icmp samesign ugt i32 %i.ag, %i.ab
  %or.cond21.i28 = select i1 %or.cond3.i27, i1 %i.ah, i1 false
  br i1 %or.cond21.i28, label %_ZN17double_conversionL7isDigitEii.exit30.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sgt i8 %i.aa, 64
  %or.cond5.i29 = and i1 %i.ae, %i.ai
  %i.aj = add nuw nsw i32 %2, 55
  %i.ak = icmp samesign ugt i32 %i.aj, %i.ab
  %or.cond5 = select i1 %or.cond5.i29, i1 %i.ak, i1 false
  br i1 %or.cond5, label %_ZN17double_conversionL7isDigitEii.exit30.thread, label %_ZN17double_conversionL7isDigitEii.exit30.thread2

_ZN17double_conversionL7isDigitEii.exit30.thread: ; preds = %bb.j, %bb.h, %bb.i
  store ptr %i.v, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL7isDigitEii.exit30.thread2

_ZN17double_conversionL7isDigitEii.exit30.thread2: ; preds = %bb.g, %_ZN17double_conversionL7isDigitEii.exit30.thread, %bb.j, %bb.f, %_ZN17double_conversionL7isDigitEii.exit.thread, %_ZN17double_conversionL7isDigitEii.exit.thread1, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.s, %_ZN17double_conversionL7isDigitEii.exit.thread1 ], [ true, %_ZN17double_conversionL7isDigitEii.exit.thread ], [ false, %bb.f ], [ false, %bb.j ], [ false, %_ZN17double_conversionL7isDigitEii.exit30.thread ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversionL16IsHexFloatStringIPKcEEbT_S3_tb(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #3 {
.peel.begin:
  %i.a = alloca ptr, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %0, ptr %i.a, align 8, !tbaa !16
  %i.b = icmp eq i16 %2, 0                        ; 13 uses
  %i.c = zext i16 %2 to i32                       ; 6 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !23      ; 5 uses
  %i.e = sext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, -48
  %or.cond.i.peel = icmp ult i32 %i.f, 10
  %i.g = icmp ult i8 %i.d, 64
  %or.cond19.i.peel = and i1 %i.g, %or.cond.i.peel
  br i1 %or.cond19.i.peel, label %_ZN17double_conversionL7isDigitEii.exit.thread.peel, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.h = add i8 %i.d, -97
  %or.cond21.i.peel = icmp ult i8 %i.h, 6
  br i1 %or.cond21.i.peel, label %_ZN17double_conversionL7isDigitEii.exit.thread.thread.peel, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i8 %i.d, -65
  %or.cond.peel = icmp ult i8 %i.i, 6
  br i1 %or.cond.peel, label %.thread.peel, label %_ZN17double_conversionL7isDigitEii.exit.thread101

.thread.peel:                                     ; preds = %bb.b
  br i1 %i.b, label %.split.peel, label %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel

_ZN17double_conversionL7isDigitEii.exit.thread.thread.peel: ; preds = %bb.a
  br i1 %i.b, label %.split.peel, label %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel

_ZN17double_conversionL7isDigitEii.exit.thread.peel: ; preds = %.peel.begin
  br i1 %i.b, label %.split.peel, label %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel

_ZN17double_conversionL7isDigitEii.exit.thread.i.peel: ; preds = %.thread.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.thread.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.peel
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.c

bb.c:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 15 uses
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.j, align 1, !tbaa !23
  %i.o = sext i8 %i.n to i32
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %bb.e, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.peel

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.l, align 1, !tbaa !23    ; 3 uses
  %i.r = sext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48
  %or.cond.i25.i.peel = icmp ult i32 %i.s, 10
  %i.t = icmp ult i8 %i.q, 64
  %or.cond19.i26.i.peel = and i1 %i.t, %or.cond.i25.i.peel
  %i.u = freeze i1 %or.cond19.i26.i.peel
  br i1 %i.u, label %.backedge142.peel.preheader, label %switch.early.test.peel

switch.early.test.peel:                           ; preds = %bb.e
  switch i8 %i.q, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.peel [
    i8 102, label %.backedge142.peel.preheader
    i8 101, label %.backedge142.peel.preheader
    i8 100, label %.backedge142.peel.preheader
    i8 99, label %.backedge142.peel.preheader
    i8 98, label %.backedge142.peel.preheader
    i8 97, label %.backedge142.peel.preheader
    i8 70, label %.backedge142.peel.preheader
    i8 69, label %.backedge142.peel.preheader
    i8 68, label %.backedge142.peel.preheader
    i8 67, label %.backedge142.peel.preheader
    i8 66, label %.backedge142.peel.preheader
    i8 65, label %.backedge142.peel.preheader
  ]

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.peel: ; preds = %switch.early.test.peel, %bb.d, %bb.c
  br label %.backedge142.peel.preheader

.split.peel:                                      ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.thread.peel, %.thread.peel
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %_ZN17double_conversionL7isDigitEii.exit82, label %.backedge142.peel.preheader

.backedge142.peel.preheader:                      ; preds = %.split.peel, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %bb.e
  %.ph291 = phi ptr [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.l, %switch.early.test.peel ], [ %i.j, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.peel ], [ %i.l, %bb.e ], [ %i.v, %.split.peel ], [ %i.l, %switch.early.test.peel ]
  br label %.backedge142.peel

.backedge142.peel:                                ; preds = %.backedge142.peel.backedge, %.backedge142.peel.preheader
  %i.x = phi ptr [ %.ph291, %.backedge142.peel.preheader ], [ %.be293, %.backedge142.peel.backedge ] ; 5 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23    ; 5 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48
  %or.cond.i = icmp ult i32 %i.aa, 10
  %i.ab = icmp ult i8 %i.y, 64
  %or.cond19.i = and i1 %i.ab, %or.cond.i
  br i1 %or.cond19.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %bb.f

bb.f:                                             ; preds = %.backedge142.peel
  %i.ac = add i8 %i.y, -97
  %or.cond21.i = icmp ult i8 %i.ac, 6
  br i1 %or.cond21.i, label %_ZN17double_conversionL7isDigitEii.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add i8 %i.y, -65
  %or.cond = icmp ult i8 %i.ad, 6
  br i1 %or.cond, label %.thread, label %_ZN17double_conversionL7isDigitEii.exit.thread101

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %.backedge142.peel
  br i1 %i.b, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

_ZN17double_conversionL7isDigitEii.exit.thread.thread: ; preds = %bb.f
  br i1 %i.b, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.thread:                                          ; preds = %bb.g
  br i1 %i.b, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.thread, %.thread, %_ZN17double_conversionL7isDigitEii.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %_ZN17double_conversionL7isDigitEii.exit82, label %.backedge142.peel.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %.thread, %_ZN17double_conversionL7isDigitEii.exit.thread.thread, %_ZN17double_conversionL7isDigitEii.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.h

bb.h:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 15 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !23
  %i.al = sext i8 %i.ak to i32
  %i.am = icmp eq i32 %i.al, %i.c
  br i1 %i.am, label %bb.j, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit

bb.j:                                             ; preds = %bb.i
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !23  ; 3 uses
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48
  %or.cond.i25.i = icmp ult i32 %i.ap, 10
  %i.aq = icmp ult i8 %i.an, 64
  %or.cond19.i26.i = and i1 %i.aq, %or.cond.i25.i
  %i.ar = freeze i1 %or.cond19.i26.i
  br i1 %i.ar, label %.backedge142.peel.backedge, label %switch.early.test

.backedge142.peel.backedge:                       ; preds = %bb.j, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.split, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit
  %.be293 = phi ptr [ %i.ae, %.split ], [ %i.ai, %bb.j ], [ %i.ag, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ], [ %i.ai, %switch.early.test ]
  br label %.backedge142.peel, !llvm.loop !55

switch.early.test:                                ; preds = %bb.j
  switch i8 %i.an, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit [
    i8 102, label %.backedge142.peel.backedge
    i8 101, label %.backedge142.peel.backedge
    i8 100, label %.backedge142.peel.backedge
    i8 99, label %.backedge142.peel.backedge
    i8 98, label %.backedge142.peel.backedge
    i8 97, label %.backedge142.peel.backedge
    i8 70, label %.backedge142.peel.backedge
    i8 69, label %.backedge142.peel.backedge
    i8 68, label %.backedge142.peel.backedge
    i8 67, label %.backedge142.peel.backedge
    i8 66, label %.backedge142.peel.backedge
    i8 65, label %.backedge142.peel.backedge
  ]

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit: ; preds = %switch.early.test, %bb.h, %bb.i
  br label %.backedge142.peel.backedge

_ZN17double_conversionL7isDigitEii.exit.thread101: ; preds = %bb.g, %bb.b
  %.lcssa179 = phi ptr [ %0, %bb.b ], [ %i.x, %bb.g ] ; 6 uses
  %.0.lcssa = phi i1 [ false, %bb.b ], [ true, %bb.g ] ; 3 uses
  %.lcssa176 = phi i8 [ %i.d, %bb.b ], [ %i.y, %bb.g ]
  store ptr %.lcssa179, ptr %i.a, align 8
  %i.as = icmp eq i8 %.lcssa176, 46
  br i1 %i.as, label %bb.k, label %bb.u

bb.k:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread101
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa179, i64 1 ; 8 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !16
  %i.au = icmp eq ptr %i.at, %1                   ; 2 uses
  br i1 %i.b, label %.split104, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit33

.split104:                                        ; preds = %bb.k
  br i1 %i.au, label %_ZN17double_conversionL7isDigitEii.exit82, label %.preheader138

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit33: ; preds = %bb.k
  br i1 %i.au, label %_ZN17double_conversionL7isDigitEii.exit82, label %.preheader138.thread

.preheader138:                                    ; preds = %.split104
  %i.av = load i8, ptr %i.at, align 1, !tbaa !23  ; 4 uses
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48
  %or.cond.i34.peel = icmp ult i32 %i.ax, 10
  %i.ay = icmp ult i8 %i.av, 64
  %or.cond19.i35.peel = and i1 %i.ay, %or.cond.i34.peel
  %i.az = add i8 %i.av, -97
  %or.cond21.i36.peel = icmp ult i8 %i.az, 6
  %or.cond283.a = or i1 %or.cond19.i35.peel, %or.cond21.i36.peel
  br i1 %or.cond283.a, label %.split109.peel, label %bb.l

end_hunk_1
begin_hunk_2_@_ZN17double_conversionL16IsHexFloatStringIPKcEEbT_S3_tb:.peel.begin
bb.u:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread101
  br i1 %.0.lcssa, label %bb.v, label %_ZN17double_conversionL7isDigitEii.exit82

.sink.split:                                      ; preds = %bb.q
  store ptr %i.bw, ptr %i.a, align 8
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %.loopexit, %_ZN17double_conversionL7isDigitEii.exit38.thread105, %bb.u
  %i.cr = phi ptr [ %i.at, %_ZN17double_conversionL7isDigitEii.exit38.thread105 ], [ %.lcssa179, %bb.u ], [ %i.at, %.loopexit ], [ %i.bw, %.sink.split ] ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.cs, label %_ZN17double_conversionL7isDigitEii.exit82 [
    i8 112, label %bb.w
    i8 80, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  br i1 %i.b, label %.split113, label %bb.x

.split113:                                        ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 1 ; 3 uses
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !16
  %i.cu = icmp eq ptr %i.ct, %1
  br i1 %i.cu, label %_ZN17double_conversionL7isDigitEii.exit82, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.cv = add nsw i8 %i.cs, -97
  %or.cond21.i.i54 = icmp ult i8 %i.cv, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1 ; 7 uses
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !16
  %i.cx = icmp eq ptr %i.cw, %1                   ; 2 uses
  br i1 %or.cond21.i.i54, label %_ZN17double_conversionL7isDigitEii.exit.thread.i58, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64

_ZN17double_conversionL7isDigitEii.exit.thread.i58: ; preds = %bb.x
  br i1 %i.cx, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.y

bb.y:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, %1
  br i1 %i.cz, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !23  ; 2 uses
  %i.db = sext i8 %i.da to i32
  %i.dc = icmp eq i32 %i.db, %i.c
  br i1 %i.dc, label %bb.aa, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i8, ptr %i.cy, align 1, !tbaa !23  ; 3 uses
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48
  %or.cond.i25.i59 = icmp ult i32 %i.df, 10
  %i.dg = icmp ult i8 %i.dd, 64
  %or.cond19.i26.i60 = and i1 %i.dg, %or.cond.i25.i59
  %i.dh = freeze i1 %or.cond19.i26.i60
  br i1 %i.dh, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63, label %switch.early.test134

switch.early.test134:                             ; preds = %bb.aa
  switch i8 %i.dd, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i63: ; preds = %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %bb.aa
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64: ; preds = %bb.x
  br i1 %i.cx, label %_ZN17double_conversionL7isDigitEii.exit82, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64, %.split113, %bb.y, %_ZN17double_conversionL7isDigitEii.exit30.thread.i63, %switch.early.test134
  %.ph250 = phi ptr [ %i.cw, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64 ], [ %i.ct, %.split113 ], [ %i.cw, %bb.y ], [ %i.cy, %_ZN17double_conversionL7isDigitEii.exit30.thread.i63 ], [ %i.cw, %switch.early.test134 ] ; 2 uses
  %.pr = load i8, ptr %.ph250, align 1, !tbaa !23
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split, %bb.z
  %i.di = phi i8 [ %.pr, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split ], [ %i.da, %bb.z ]
  %i.dj = phi ptr [ %.ph250, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.threadthread-pre-split ], [ %i.cw, %bb.z ] ; 2 uses
  switch i8 %i.di, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit77.thread [
    i8 43, label %bb.ab
    i8 45, label %bb.ab
  ]

bb.ab:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !16
  %i.dl = icmp eq ptr %i.dk, %1
  br i1 %i.dl, label %_ZN17double_conversionL7isDigitEii.exit82, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit77.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit77.thread: ; preds = %bb.ab, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread
  %i.dm = phi ptr [ %i.dk, %bb.ab ], [ %i.dj, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64.thread ]
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !23  ; 2 uses
  %i.do = sext i8 %i.dn to i32
  %i.dp = add nsw i32 %i.do, -48
  %or.cond.i78 = icmp ult i32 %i.dp, 10
  %i.dq = icmp ult i8 %i.dn, 58
  %or.cond19.i79 = and i1 %i.dq, %or.cond.i78
  br i1 %or.cond19.i79, label %bb.ac, label %_ZN17double_conversionL7isDigitEii.exit82

bb.ac:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit77.thread
  %i.dr = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %2, i32 noundef 16, ptr %1)
  br i1 %i.dr, label %_ZN17double_conversionL7isDigitEii.exit82, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %.promoted156 = load ptr, ptr %i.a, align 8, !tbaa !16 ; 4 uses
  %i.ds = load i8, ptr %.promoted156, align 1, !tbaa !23 ; 2 uses
  %i.dt = sext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48
  %or.cond.i83158 = icmp ult i32 %i.du, 10
  %i.dv = icmp ult i8 %i.ds, 58
  %or.cond19.i84159 = and i1 %i.dv, %or.cond.i83158
  br i1 %or.cond19.i84159, label %.lr.ph, label %_ZN17double_conversionL7isDigitEii.exit87

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.b, label %.split119.us.preheader, label %_ZN17double_conversionL7isDigitEii.exit.thread.i94

.split119.us.preheader:                           ; preds = %.lr.ph
  %i.dw = getelementptr inbounds nuw i8, ptr %.promoted156, i64 1 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %1
  br i1 %i.dx, label %_ZN17double_conversionL7isDigitEii.exit82, label %.backedge.us

.split119.us:                                     ; preds = %.backedge.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %1
  br i1 %i.dz, label %_ZN17double_conversionL7isDigitEii.exit82, label %.backedge.us, !llvm.loop !57

.backedge.us:                                     ; preds = %.split119.us.preheader, %.split119.us
  %i.ea = phi ptr [ %i.dy, %.split119.us ], [ %i.dw, %.split119.us.preheader ] ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !23  ; 2 uses
  %i.ec = sext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48
  %or.cond.i83.us = icmp ult i32 %i.ed, 10
  %i.ee = icmp ult i8 %i.eb, 58
  %or.cond19.i84.us = and i1 %i.ee, %or.cond.i83.us
  br i1 %or.cond19.i84.us, label %.split119.us, label %_ZN17double_conversionL7isDigitEii.exit87, !llvm.loop !57

_ZN17double_conversionL7isDigitEii.exit.thread.i94: ; preds = %.lr.ph, %.backedge
  %i.ef = phi ptr [ %i.ej, %.backedge ], [ %.promoted156, %.lr.ph ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, %1
  br i1 %i.eh, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.ad

.backedge:                                        ; preds = %bb.ae, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100
  %.pre-phi190 = phi i32 [ %i.eq, %bb.ae ], [ %.pre189, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100 ]
  %i.ei = phi i8 [ %i.eo, %bb.ae ], [ %.pre.pre, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100 ]
  %i.ej = phi ptr [ %i.el, %bb.ae ], [ %i.eg, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100 ] ; 2 uses
  %or.cond.i83 = icmp ult i32 %.pre-phi190, 10
  %i.ek = icmp ult i8 %i.ei, 58
  %or.cond19.i84 = and i1 %i.ek, %or.cond.i83
  br i1 %or.cond19.i84, label %_ZN17double_conversionL7isDigitEii.exit.thread.i94, label %_ZN17double_conversionL7isDigitEii.exit87, !llvm.loop !57

bb.ad:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 2 ; 15 uses
  %i.em = icmp ne ptr %i.el, %1
  %.pre.pre = load i8, ptr %i.eg, align 1, !tbaa !23 ; 2 uses
  %.pre195 = sext i8 %.pre.pre to i32             ; 2 uses
  %i.en = icmp eq i32 %.pre195, %i.c
  %or.cond269 = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond269, label %bb.ae, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !23  ; 4 uses
  %i.ep = sext i8 %i.eo to i32
  %i.eq = add nsw i32 %i.ep, -48                  ; 2 uses
  %or.cond.i25.i95 = icmp ult i32 %i.eq, 10
  %i.er = icmp ult i8 %i.eo, 64
  %or.cond19.i26.i96 = and i1 %i.er, %or.cond.i25.i95
  %i.es = freeze i1 %or.cond19.i26.i96
  br i1 %i.es, label %.backedge, label %switch.early.test135

switch.early.test135:                             ; preds = %bb.ae
  switch i8 %i.eo, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100 [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit87
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit87
  ]

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit100: ; preds = %bb.ad, %switch.early.test135
  %.pre189 = add nsw i32 %.pre195, -48
  br label %.backedge

_ZN17double_conversionL7isDigitEii.exit87:        ; preds = %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %.backedge, %.backedge.us, %.preheader
  %.lcssa157 = phi ptr [ %.promoted156, %.preheader ], [ %i.ea, %.backedge.us ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.el, %switch.early.test135 ], [ %i.ej, %.backedge ], [ %i.el, %switch.early.test135 ] ; 4 uses
  store ptr %.lcssa157, ptr %i.a, align 8
  %.not6.not.i = icmp eq ptr %.lcssa157, %1
  %or.cond136 = or i1 %3, %.not6.not.i
  br i1 %or.cond136, label %_ZN17double_conversionL7isDigitEii.exit82, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN17double_conversionL7isDigitEii.exit87
  %4 = load i8, ptr %.lcssa157, align 1, !tbaa !23
  %5 = sext i8 %4 to i32
  %6 = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %5)
  br i1 %6, label %.lr.ph166.preheader, label %_ZN17double_conversionL7isDigitEii.exit82

.lr.ph166.preheader:                              ; preds = %.lr.ph.i.preheader
  %7 = getelementptr inbounds nuw i8, ptr %.lcssa157, i64 1 ; 2 uses
  %.not.not.i296 = icmp eq ptr %7, %1
  br i1 %.not.not.i296, label %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, label %.lr.ph.i.lr.ph, !llvm.loop !0

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph166.preheader
  br label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.af
  %i.et = phi ptr [ %7, %.lr.ph.i.lr.ph ], [ %i.ex, %bb.af ] ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !23
  %i.ev = sext i8 %i.eu to i32
  %i.ew = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ev)
  br i1 %i.ew, label %bb.af, label %_ZN17double_conversionL7isDigitEii.exit82, !llvm.loop !0

bb.af:                                            ; preds = %.lr.ph.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ex, %1
  br i1 %.not.not.i, label %.lr.ph166.._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge_crit_edge, label %.lr.ph.i, !llvm.loop !0

.lr.ph166.._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge_crit_edge: ; preds = %bb.af
  br label %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, !llvm.loop !0

._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge: ; preds = %.lr.ph166.._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge_crit_edge, %.lr.ph166.preheader
  br label %_ZN17double_conversionL7isDigitEii.exit82, !llvm.loop !0

_ZN17double_conversionL7isDigitEii.exit82:        ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split, %_ZN17double_conversionL7isDigitEii.exit.thread.i45, %.split109, %_ZN17double_conversionL7isDigitEii.exit.thread.i94, %.split119.us, %.lr.ph.i, %.split119.us.preheader, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel, %.split.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel, %.split109.peel, %.lr.ph.i.preheader, %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, %bb.ab, %.loopexit, %_ZN17double_conversionL7isDigitEii.exit.thread.i58, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit77.thread, %.split113, %_ZN17double_conversionL7isDigitEii.exit38.thread105, %.split104, %_ZN17double_conversionL7isDigitEii.exit87, %bb.ac, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64, %bb.v, %bb.u, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit33
  %.010 = phi i1 [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel ], [ false, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit33 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit64 ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit77.thread ], [ false, %.loopexit ], [ true, %_ZN17double_conversionL7isDigitEii.exit87 ], [ false, %.split113 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread105 ], [ true, %.split119.us ], [ false, %.split104 ], [ false, %.lr.ph.i.preheader ], [ true, %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge ], [ true, %_ZN17double_conversionL7isDigitEii.exit.thread.i94 ], [ false, %.split.peel ], [ true, %.split119.us.preheader ], [ false, %.split109.peel ], [ false, %.lr.ph.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %.split109 ], [ false, %.split ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S3_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !37
  %.promoted = load ptr, ptr %0, align 8, !tbaa !16 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !23 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  %i.c = zext i16 %3 to i32                       ; 5 uses
  br i1 %i.b, label %.lr.ph, label %.preheader358

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread, label %.backedge360.us

.split.us:                                        ; preds = %.backedge360.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread, label %.backedge360.us, !llvm.loop !58

.backedge360.us:                                  ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader358, !llvm.loop !58

.preheader358:                                    ; preds = %.backedge360, %.backedge360.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge360.us ], [ %i.a, %bb.a ], [ %i.r, %.backedge360 ]
  %.promoted385 = phi ptr [ %i.i, %.backedge360.us ], [ %.promoted, %bb.a ], [ %i.s, %.backedge360 ]
  %i.m = icmp eq i16 %3, 0                        ; 4 uses
  %i.n = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.e

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge360
  %i.o = phi ptr [ %i.s, %.backedge360 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 6 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !16
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread, label %bb.b

.backedge360thread-pre-split:                     ; preds = %_ZN17double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %bb.b
  %.ph = phi ptr [ %i.p, %bb.b ], [ %i.p, %switch.early.test ], [ %i.u, %_ZN17double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !23
  br label %.backedge360

.backedge360:                                     ; preds = %.backedge360thread-pre-split, %bb.c
  %i.r = phi i8 [ %.pr, %.backedge360thread-pre-split ], [ %i.w, %bb.c ] ; 2 uses
  %i.s = phi ptr [ %.ph, %.backedge360thread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = icmp eq i8 %i.r, 48
  br i1 %i.t, label %_ZN17double_conversionL7isDigitEii.exit.thread.i, label %.preheader358, !llvm.loop !58

bb.b:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 4 uses
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %.backedge360thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.p, align 1, !tbaa !23    ; 2 uses
  %i.x = sext i8 %i.w to i32
  %i.y = icmp eq i32 %i.x, %i.c
  br i1 %i.y, label %bb.d, label %.backedge360

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.u, align 1, !tbaa !23    ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -48
  %or.cond.i25.i = icmp ult i32 %i.ab, 10
  %i.ac = icmp ult i8 %i.z, 64
  %or.cond19.i26.i = and i1 %i.ac, %or.cond.i25.i
  %i.ad = freeze i1 %or.cond19.i26.i
  br i1 %i.ad, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i8 %i.z, label %.backedge360thread-pre-split [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  store ptr %i.u, ptr %0, align 8, !tbaa !16
  br label %.backedge360thread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split.us, %.split.us.preheader
  store i8 0, ptr %8, align 1, !tbaa !37
  %i.ae = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

bb.e:                                             ; preds = %.preheader358, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175
  %i.af = phi i8 [ %.pre, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ %i.l, %.preheader358 ] ; 13 uses
  %.promoted389 = phi ptr [ %i.eh, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ %.promoted385, %.preheader358 ] ; 9 uses
  %.0134 = phi i64 [ %.5139, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ 0, %.preheader358 ] ; 5 uses
  %.0128 = phi i32 [ %.7, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ 0, %.preheader358 ] ; 6 uses
  %.0123 = phi i8 [ %.5, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ 0, %.preheader358 ] ; 20 uses
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
  br i1 %.not.i, label %bb.i, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.g
  %i.am = icmp samesign ult i8 %i.af, 103
  br i1 %i.am, label %bb.h, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.h:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  %i.an = zext nneg i8 %i.af to i64
  %i.ao = add nsw i64 %i.an, -87
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ap = add i8 %i.af, -65
  %or.cond325 = icmp ult i8 %i.ap, 6
  br i1 %or.cond325, label %bb.j, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.j:                                             ; preds = %bb.i
  %i.aq = zext nneg i8 %i.af to i64
  %i.ar = add nsw i64 %i.aq, -55
  br label %bb.n

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282: ; preds = %bb.i, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  switch i8 %i.af, label %.critedge [
    i8 46, label %bb.l
    i8 112, label %.thread317
    i8 80, label %.thread317
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.promoted389, i64 1
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split, !llvm.loop !59

.critedge:                                        ; preds = %bb.k, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  %.not6.not.i = icmp eq ptr %.promoted389, %1
  %or.cond326 = or i1 %5, %.not6.not.i
  br i1 %or.cond326, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.m
  %i.at = phi ptr [ %i.ax, %bb.m ], [ %.promoted389, %.critedge ] ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = sext i8 %i.au to i32
  %i.aw = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.av)
  br i1 %i.aw, label %bb.m, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

bb.m:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !16
  %.not.not.i = icmp eq ptr %i.ax, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %.lr.ph.i, !llvm.loop !0

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
end_hunk_2
begin_hunk_3_@_ZN17double_conversionL16IsHexFloatStringIPKtEEbT_S3_tb:bb.a
switch.early.test133:                             ; preds = %bb.p
  switch i16 %.fr180, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit51 [
    i16 102, label %.preheader137.split.backedge
    i16 101, label %.preheader137.split.backedge
    i16 100, label %.preheader137.split.backedge
    i16 99, label %.preheader137.split.backedge
    i16 98, label %.preheader137.split.backedge
    i16 97, label %.preheader137.split.backedge
    i16 70, label %.preheader137.split.backedge
    i16 69, label %.preheader137.split.backedge
    i16 68, label %.preheader137.split.backedge
    i16 67, label %.preheader137.split.backedge
    i16 66, label %.preheader137.split.backedge
    i16 65, label %.preheader137.split.backedge
  ]

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit51: ; preds = %switch.early.test133, %bb.n, %bb.o
  br label %.preheader137.split.backedge

.loopexit:                                        ; preds = %_ZN17double_conversionL7isDigitEii.exit38.us.peel, %_ZN17double_conversionL7isDigitEii.exit38.peel
  %storemerge = phi ptr [ %i.ak, %_ZN17double_conversionL7isDigitEii.exit38.us.peel ], [ %i.am, %_ZN17double_conversionL7isDigitEii.exit38.peel ] ; 2 uses
  %.2 = phi i1 [ %.us-phi159284, %_ZN17double_conversionL7isDigitEii.exit38.us.peel ], [ %.us-phi159289, %_ZN17double_conversionL7isDigitEii.exit38.peel ]
  store ptr %storemerge, ptr %i.a, align 8
  br i1 %.2, label %bb.q, label %_ZN17double_conversionL7isDigitEii.exit82

.sink.split:                                      ; preds = %switch.early.test, %switch.early.test.us, %bb.m, %switch.early.test361
  %storemerge.ph.sink = phi ptr [ %i.bm, %switch.early.test361 ], [ %i.r, %switch.early.test.us ], [ %i.br, %bb.m ], [ %i.w, %switch.early.test ] ; 2 uses
  store ptr %storemerge.ph.sink, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN17double_conversionL7isDigitEii.exit38.thread104, %.loopexit
  %i.ci = phi ptr [ %.us-phi165, %_ZN17double_conversionL7isDigitEii.exit38.thread104 ], [ %storemerge, %.loopexit ], [ %storemerge.ph.sink, %.sink.split ] ; 4 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !41 ; 2 uses
  switch i16 %i.cj, label %_ZN17double_conversionL7isDigitEii.exit82 [
    i16 112, label %bb.r
    i16 80, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  br i1 %i.b, label %.split110, label %bb.s

.split110:                                        ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !40
  %i.cl = icmp eq ptr %i.ck, %1
  br i1 %i.cl, label %_ZN17double_conversionL7isDigitEii.exit82, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split

bb.s:                                             ; preds = %bb.r
  %i.cm = add nsw i16 %i.cj, -97
  %or.cond21.i.i54 = icmp ult i16 %i.cm, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 7 uses
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !40
  %i.co = icmp eq ptr %i.cn, %1                   ; 2 uses
  br i1 %or.cond21.i.i54, label %_ZN17double_conversionL7isDigitEii.exit.thread.i58, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64

_ZN17double_conversionL7isDigitEii.exit.thread.i58: ; preds = %bb.s
  br i1 %i.co, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.t

bb.t:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, %1
  br i1 %i.cq, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load i16, ptr %i.cn, align 2, !tbaa !41 ; 2 uses
  %i.cs = icmp eq i16 %i.cr, %2
  br i1 %i.cs, label %bb.v, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread

bb.v:                                             ; preds = %bb.u
  %i.ct = load i16, ptr %i.cp, align 2, !tbaa !41
  %.fr181 = freeze i16 %i.ct                      ; 2 uses
  %i.cu = add i16 %.fr181, -48
  %or.cond19.i26.i60 = icmp ult i16 %i.cu, 10
  br i1 %or.cond19.i26.i60, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63, label %switch.early.test134

switch.early.test134:                             ; preds = %bb.v
  switch i16 %.fr181, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i63
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i63: ; preds = %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %bb.v
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64: ; preds = %bb.s
  br i1 %i.co, label %_ZN17double_conversionL7isDigitEii.exit82, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64, %.split110, %bb.t, %_ZN17double_conversionL7isDigitEii.exit30.thread.i63, %switch.early.test134
  %.ph = phi ptr [ %i.cn, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64 ], [ %i.ck, %.split110 ], [ %i.cn, %bb.t ], [ %i.cp, %_ZN17double_conversionL7isDigitEii.exit30.thread.i63 ], [ %i.cn, %switch.early.test134 ] ; 2 uses
  %.pr = load i16, ptr %.ph, align 2, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split, %bb.u
  %i.cv = phi i16 [ %.pr, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split ], [ %i.cr, %bb.u ]
  %i.cw = phi ptr [ %.ph, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.threadthread-pre-split ], [ %i.cn, %bb.u ] ; 2 uses
  switch i16 %i.cv, label %bb.x [
    i16 43, label %bb.w
    i16 45, label %bb.w
  ]

bb.w:                                             ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2 ; 3 uses
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !40
  %i.cy = icmp eq ptr %i.cx, %1
  br i1 %i.cy, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread
  %i.cz = phi ptr [ %i.cx, %bb.w ], [ %i.cw, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64.thread ]
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !41
  %i.db = add i16 %i.da, -48
  %or.cond19.i79 = icmp ult i16 %i.db, 10
  br i1 %or.cond19.i79, label %bb.y, label %_ZN17double_conversionL7isDigitEii.exit82

bb.y:                                             ; preds = %bb.x
  %i.dc = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %2, i32 noundef 16, ptr %1)
  br i1 %i.dc, label %_ZN17double_conversionL7isDigitEii.exit82, label %.preheader

.preheader:                                       ; preds = %bb.y
  %.promoted170 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 4 uses
  %i.dd = load i16, ptr %.promoted170, align 2, !tbaa !41
  %i.de = add i16 %i.dd, -48
  %or.cond19.i84172 = icmp ult i16 %i.de, 10
  br i1 %or.cond19.i84172, label %.lr.ph, label %_ZN17double_conversionL7isDigitEii.exit87

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.b, label %.split113.us, label %.lr.ph.split

.split113.us:                                     ; preds = %.lr.ph, %.backedge.us
  %i.df = phi ptr [ %i.dg, %.backedge.us ], [ %.promoted170, %.lr.ph ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, %1
  br i1 %i.dh, label %_ZN17double_conversionL7isDigitEii.exit82, label %.backedge.us

.backedge.us:                                     ; preds = %.split113.us
  %i.di = load i16, ptr %i.dg, align 2, !tbaa !41
  %i.dj = add i16 %i.di, -48
  %or.cond19.i84.us = icmp ult i16 %i.dj, 10
  br i1 %or.cond19.i84.us, label %.split113.us, label %_ZN17double_conversionL7isDigitEii.exit87, !llvm.loop !73

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.dk = phi ptr [ %i.dn, %.backedge ], [ %.promoted170, %.lr.ph ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, %1
  br i1 %i.dm, label %_ZN17double_conversionL7isDigitEii.exit82, label %bb.z

.backedge:                                        ; preds = %bb.ab, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit100
  %i.dn = phi ptr [ %i.dl, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit100 ], [ %i.dq, %bb.ab ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ], [ %i.dq, %switch.early.test135 ] ; 3 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !41
  %i.dp = add i16 %i.do, -48
  %or.cond19.i84 = icmp ult i16 %i.dp, 10
  br i1 %or.cond19.i84, label %.lr.ph.split, label %_ZN17double_conversionL7isDigitEii.exit87, !llvm.loop !73

bb.z:                                             ; preds = %.lr.ph.split
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 15 uses
  %i.dr = icmp eq ptr %i.dq, %1
  br i1 %i.dr, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit100, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = load i16, ptr %i.dl, align 2, !tbaa !41
  %i.dt = icmp eq i16 %i.ds, %2
  br i1 %i.dt, label %bb.ab, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit100

bb.ab:                                            ; preds = %bb.aa
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !41
  %.fr182 = freeze i16 %i.du                      ; 2 uses
  %i.dv = add i16 %.fr182, -48
  %or.cond19.i26.i96 = icmp ult i16 %i.dv, 10
  br i1 %or.cond19.i26.i96, label %.backedge, label %switch.early.test135

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
  %.lcssa171 = phi ptr [ %.promoted170, %.preheader ], [ %i.dg, %.backedge.us ], [ %i.dn, %.backedge ] ; 4 uses
  store ptr %.lcssa171, ptr %i.a, align 8
  %.not6.not.i = icmp eq ptr %.lcssa171, %1
  %or.cond = or i1 %3, %.not6.not.i
  br i1 %or.cond, label %_ZN17double_conversionL7isDigitEii.exit82, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN17double_conversionL7isDigitEii.exit87
  %4 = load i16, ptr %.lcssa171, align 2, !tbaa !41
  %5 = zext i16 %4 to i32
  %6 = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %5)
  br i1 %6, label %.lr.ph178, label %_ZN17double_conversionL7isDigitEii.exit82

.lr.ph.i:                                         ; preds = %.lr.ph178
  %i.dw = load i16, ptr %8, align 2, !tbaa !41
  %i.dx = zext i16 %i.dw to i32
  %i.dy = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dx)
  br i1 %i.dy, label %.lr.ph178, label %_ZN17double_conversionL7isDigitEii.exit82, !llvm.loop !3

.lr.ph178:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %7 = phi ptr [ %8, %.lr.ph.i ], [ %.lcssa171, %.lr.ph.i.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 3 uses
  %.not.not.i = icmp eq ptr %8, %1
  br i1 %.not.not.i, label %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !3

._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge: ; preds = %.lr.ph178
  br label %_ZN17double_conversionL7isDigitEii.exit82, !llvm.loop !3

_ZN17double_conversionL7isDigitEii.exit82:        ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread1.i, %_ZN17double_conversionL7isDigitEii.exit.thread.i, %_ZN17double_conversionL7isDigitEii.exit.thread.us, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43, %_ZN17double_conversionL7isDigitEii.exit.thread.i45, %_ZN17double_conversionL7isDigitEii.exit38.thread.us, %.lr.ph.split, %.split113.us, %.lr.ph.i, %_ZN17double_conversionL7isDigitEii.exit.thread.us.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel, %_ZN17double_conversionL7isDigitEii.exit.thread1.i.peel, %_ZN17double_conversionL7isDigitEii.exit38.thread.us.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43.peel, %.lr.ph.i.preheader, %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge, %bb.w, %switch.early.test.us.peel, %switch.early.test.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i58, %bb.x, %.split110, %_ZN17double_conversionL7isDigitEii.exit38.thread104, %.split103, %_ZN17double_conversionL7isDigitEii.exit87, %bb.y, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64, %bb.q, %.loopexit, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit33
  %.010 = phi i1 [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel ], [ false, %switch.early.test.peel ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit33 ], [ false, %.loopexit ], [ false, %bb.q ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64 ], [ false, %bb.w ], [ true, %bb.y ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %switch.early.test.us.peel ], [ true, %_ZN17double_conversionL7isDigitEii.exit87 ], [ false, %bb.x ], [ false, %.split110 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread104 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread.us ], [ false, %.split103 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread.us.peel ], [ false, %.lr.ph.i.preheader ], [ true, %._ZN17double_conversionL7isDigitEii.exit82.loopexit_crit_edge ], [ true, %.lr.ph.split ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.us.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i.peel ], [ false, %.lr.ph.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.us ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel ], [ true, %.split113.us ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S3_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !37
  %.promoted = load ptr, ptr %0, align 8, !tbaa !40 ; 4 uses
  %i.a = load i16, ptr %.promoted, align 2, !tbaa !41 ; 2 uses
  %i.b = icmp eq i16 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader359

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %.split.us, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split.us:                                        ; preds = %.lr.ph, %.backedge361.us
  %i.d = phi ptr [ %i.e, %.backedge361.us ], [ %.promoted, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 5 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread, label %.backedge361.us

.backedge361.us:                                  ; preds = %.split.us
  %i.g = load i16, ptr %i.e, align 2, !tbaa !41   ; 2 uses
  %i.h = icmp eq i16 %i.g, 48
  br i1 %i.h, label %.split.us, label %.preheader359.sink.split, !llvm.loop !74

.preheader359.sink.split:                         ; preds = %.backedge361, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.backedge361.us
  %.sink = phi ptr [ %i.e, %.backedge361.us ], [ %i.p, %.backedge361 ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ], [ %i.r, %switch.early.test ] ; 2 uses
  %.ph529 = phi i16 [ %i.g, %.backedge361.us ], [ %i.o, %.backedge361 ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ], [ %.fr403, %switch.early.test ]
  store ptr %.sink, ptr %0, align 8, !tbaa !40
  br label %.preheader359

.preheader359:                                    ; preds = %.preheader359.sink.split, %bb.a
  %i.i = phi i16 [ %i.a, %bb.a ], [ %.ph529, %.preheader359.sink.split ]
  %.promoted390 = phi ptr [ %.promoted, %bb.a ], [ %.sink, %.preheader359.sink.split ]
  %i.j = icmp eq i16 %3, 0                        ; 4 uses
  %i.k = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.d

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge361
  %i.l = phi ptr [ %i.p, %.backedge361 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 5 uses
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread, label %bb.b

.backedge361:                                     ; preds = %bb.b, %switch.early.test, %bb.c
  %i.o = phi i16 [ %.fr403, %bb.c ], [ %.pre.pre, %switch.early.test ], [ %.pre.pre, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.r, %bb.c ], [ %i.m, %switch.early.test ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = icmp eq i16 %i.o, 48
  br i1 %i.q, label %_ZN17double_conversionL7isDigitEii.exit.thread.i, label %.preheader359.sink.split, !llvm.loop !74

bb.b:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 15 uses
  %i.s = icmp ne ptr %i.r, %1
  %.pre.pre = load i16, ptr %i.m, align 2, !tbaa !41 ; 3 uses
  %i.t = icmp eq i16 %.pre.pre, %3
  %or.cond530 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond530, label %bb.c, label %.backedge361

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr %i.r, align 2, !tbaa !41
  %.fr403 = freeze i16 %i.u                       ; 15 uses
  %i.v = add i16 %.fr403, -48
  %or.cond19.i26.i = icmp ult i16 %i.v, 10
  br i1 %or.cond19.i26.i, label %.backedge361, label %switch.early.test

switch.early.test:                                ; preds = %bb.c
  switch i16 %.fr403, label %.backedge361 [
    i16 102, label %.preheader359.sink.split
    i16 101, label %.preheader359.sink.split
    i16 100, label %.preheader359.sink.split
    i16 99, label %.preheader359.sink.split
    i16 98, label %.preheader359.sink.split
    i16 97, label %.preheader359.sink.split
    i16 70, label %.preheader359.sink.split
    i16 69, label %.preheader359.sink.split
    i16 68, label %.preheader359.sink.split
    i16 67, label %.preheader359.sink.split
    i16 66, label %.preheader359.sink.split
    i16 65, label %.preheader359.sink.split
  ]

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split.us
  %storemerge = phi ptr [ %i.e, %.split.us ], [ %i.m, %_ZN17double_conversionL7isDigitEii.exit.thread.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !40
  store i8 0, ptr %8, align 1, !tbaa !37
  %i.w = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.d:                                             ; preds = %.preheader359, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177
  %i.x = phi i16 [ %.pre442, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ %i.i, %.preheader359 ]
  %.promoted394 = phi ptr [ %i.dd, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ %.promoted390, %.preheader359 ] ; 9 uses
  %.0134 = phi i64 [ %.5139, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 5 uses
  %.0128 = phi i32 [ %.7, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 6 uses
  %.0123 = phi i8 [ %.5, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 20 uses
  %i.y = freeze i16 %i.x                          ; 9 uses
  %i.z = zext i16 %i.y to i64
  %i.aa = add i16 %i.y, -48
  %i.ab = icmp ult i16 %i.aa, 10                  ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i16 %i.y, 97
  br i1 %.not.i, label %bb.f, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.e
  %i.ac = icmp ult i16 %i.y, 103
  br i1 %i.ac, label %bb.j, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i16 %i.y, -65
  %or.cond327 = icmp ult i16 %i.ad, 6
  br i1 %or.cond327, label %bb.j, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284: ; preds = %bb.f, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  switch i16 %i.y, label %.critedge [
    i16 46, label %bb.h
    i16 112, label %.thread319
    i16 80, label %.thread319
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted394, i64 2
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split, !llvm.loop !75

.critedge:                                        ; preds = %bb.g, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  %.not6.not.i = icmp eq ptr %.promoted394, %1
  %or.cond328 = or i1 %5, %.not6.not.i
  br i1 %or.cond328, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.i
  %i.af = phi ptr [ %i.aj, %bb.i ], [ %.promoted394, %.critedge ] ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !41
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ah)
  br i1 %i.ai, label %bb.i, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.i:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !40
  %.not.not.i = icmp eq ptr %i.aj, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %.lr.ph.i, !llvm.loop !3

bb.j:                                             ; preds = %bb.f, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.d
  %.sink533 = phi i64 [ -87, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ -48, %bb.d ], [ -55, %bb.f ]
  %i.ak = add nsw i64 %.sink533, %i.z
  %i.al = trunc nuw i8 %.0123 to i1
  %i.am = add nsw i32 %.0128, -4
  %spec.select150 = select i1 %i.al, i32 %i.am, i32 %.0128 ; 22 uses
  %i.an = shl nsw i64 %.0134, 4
  %i.ao = add nsw i64 %i.ak, %i.an                ; 24 uses
  %i.ap = ashr i64 %i.ao, %i.k
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph393, label %._crit_edge

.lr.ph393:                                        ; preds = %.preheader, %.lr.ph393
  %.0117392 = phi i32 [ %i.as, %.lr.ph393 ], [ 1, %.preheader ]
  %.0118391 = phi i32 [ %i.at, %.lr.ph393 ], [ %i.aq, %.preheader ] ; 2 uses
  %i.as = add nuw nsw i32 %.0117392, 1            ; 2 uses
  %i.at = lshr i32 %.0118391, 1
  %i.au = icmp samesign ugt i32 %.0118391, 3
  br i1 %i.au, label %.lr.ph393, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph393, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.as, %.lr.ph393 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.av = xor i32 %notmask, -1
  %i.aw = trunc i64 %i.ao to i32
  %i.ax = and i32 %i.av, %i.aw                    ; 2 uses
  %i.ay = zext nneg i32 %.0117.lcssa to i64
  %i.az = ashr i64 %i.ao, %i.ay                   ; 4 uses
  %i.ba = add nsw i32 %.0117.lcssa, %spec.select150
  br label %bb.k

bb.k:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %.fr404 = phi i16 [ %i.y, %._crit_edge ], [ %.fr406, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %i.bb = phi ptr [ %.promoted394, %._crit_edge ], [ %i.bt, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.ba, %._crit_edge ], [ %spec.select151, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select330, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.j, label %.split291, label %bb.l

.split291:                                        ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 4 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !40
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

bb.l:                                             ; preds = %bb.k
  %or.cond19.i.i179 = icmp slt i16 %.fr404, 58
end_hunk_3
