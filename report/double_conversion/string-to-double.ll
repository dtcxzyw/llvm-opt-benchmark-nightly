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
  %5 = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.y, %.lr.ph.i._crit_edge ]
  %.pre559 = ptrtoaddr ptr %.lcssa431604 to i64
  br label %._crit_edge547

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !25
  br label %.thread

._crit_edge547:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi = phi i64 [ %.pre559, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %6 = phi i8 [ %5, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %7 = phi ptr [ %.lcssa431604, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
  switch i8 %6, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge547, %._crit_edge547
  %i.ag = icmp eq i8 %6, 45
  %.ptr408 = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store ptr %.ptr408, ptr %i.b, align 8, !tbaa !16
  %.not6.not.i238 = icmp eq ptr %.ptr408, %i.h
  br i1 %.not6.not.i238, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.e
  %i.ah = add i64 %i.a, %i.g
  %i.ai = sub i64 %i.ah, %.pre-phi
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %.lr.ph.i239.preheader ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %.0338.idx
  %i.aj = load i8, ptr %.0338.ptr, align 1, !tbaa !23
  %i.ak = sext i8 %i.aj to i32
  %i.al = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ak)
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw i64 %.0338.idx, 1          ; 2 uses
  %exitcond = icmp eq i64 %.0338.add, %i.ai
  br i1 %exitcond, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, label %.lr.ph.i239, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244: ; preds = %bb.f, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !25
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 1
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !25
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %7, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.b, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge547
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %7, %._crit_edge547 ] ; 2 uses
  %.0180 = phi i1 [ %i.ag, %bb.i ], [ false, %._crit_edge547 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !23  ; 2 uses
  br i1 %i.p, label %bb.l, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

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
          to label %bb.o unwind label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %common.resume

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
  %.pre549.pre = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.w

bb.q:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.bh = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.bg, i1 noundef zeroext %i.p)
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bk = and i32 %i.i, 20
  %or.cond3.not = icmp ne i32 %i.bk, 0
  %i.bl = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not224 = icmp eq ptr %i.bl, %i.h              ; 2 uses
  %or.cond399 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond399, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !25
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %.promoted.i245534 = ptrtoaddr ptr %i.bl to i64
  %or.cond400 = select i1 %i.k, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.u
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bp = sext i8 %i.bo to i32
  %i.bq = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bp)
  br i1 %i.bq, label %.lr.ph437.preheader, label %.lr.ph.i247._crit_edge

.lr.ph437.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.br = add i64 %i.a, %i.g
  %i.bs = sub i64 %i.br, %.promoted.i245534
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %.not.not.i251685 = icmp eq ptr %i.bt, %i.h
  br i1 %.not.not.i251685, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !0

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph437.preheader
  br label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph437
  %i.bu = phi ptr [ %i.bt, %.lr.ph.i247.lr.ph ], [ %i.by, %.lr.ph437 ] ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !23
  %i.bw = sext i8 %i.bv to i32
  %i.bx = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bw)
  br i1 %i.bx, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !0

.lr.ph437:                                        ; preds = %.lr.ph.i247
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.by, %i.h
  br i1 %.not.not.i251, label %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !25
  br label %.thread

.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge: ; preds = %.lr.ph437
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252: ; preds = %.lr.ph437.preheader, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, %bb.u
  %i.cb = phi ptr [ %i.bl, %bb.u ], [ %scevgep, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge ], [ %scevgep, %.lr.ph437.preheader ]
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.v

bb.v:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252
  br label %.thread

bb.w:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre549 = phi ptr [ %.pre549.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.ch, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load i8, ptr %.pre549, align 1, !tbaa !23 ; 2 uses
  br i1 %i.p, label %bb.y, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cj = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %common.resume

bb.ab:                                            ; preds = %bb.aa
  %i.cn = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.ac unwind label %common.resume

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cn, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.ab, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.co

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cp = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext %i.ci), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.ct, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ci, %bb.x ]
  %i.cu = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cv = icmp eq i8 %.sink.i253, %i.cu
  br i1 %i.cv, label %bb.ad, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre548 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.cx = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.cw, i1 noundef zeroext %i.p)
  br i1 %i.cx, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !25
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.da = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.da, 0
  %i.db = load ptr, ptr %i.b, align 8             ; 6 uses
end_hunk_0
