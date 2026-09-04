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
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 39 uses
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
  %.not.not.i681 = icmp eq i32 %2, 1
  br i1 %.not.not.i681, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !0

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
  %.lcssa431603 = phi ptr [ %1, %.lr.ph.i._crit_edge.thread ], [ %i.x, %.lr.ph.i._crit_edge ] ; 2 uses
  %i.ae = phi i8 [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %i.y, %.lr.ph.i._crit_edge ]
  %.pre558 = ptrtoaddr ptr %.lcssa431603 to i64
  br label %._crit_edge547

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !25
  br label %.thread

._crit_edge547:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge._crit_edge
  %.pre-phi = phi i64 [ %.pre558, %.lr.ph.i._crit_edge._crit_edge ], [ %i.a, %bb.c ]
  %i.ah = phi i8 [ %i.ae, %.lr.ph.i._crit_edge._crit_edge ], [ %.pre, %bb.c ] ; 2 uses
  %i.ai = phi ptr [ %.lcssa431603, %.lr.ph.i._crit_edge._crit_edge ], [ %1, %bb.c ] ; 4 uses
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
  br i1 %.not215, label %bb.x, label %bb.k

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
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bb = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bb, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

common.resume:                                    ; preds = %bb.ae, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.cs, %bb.ae ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.bd = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef signext i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(570) %i.bd, i8 noundef signext %i.aw), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bh, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.aw, %bb.k ]
  %i.bi = load i8, ptr %i.av, align 1, !tbaa !23
  %i.bj = icmp eq i8 %.sink.i, %i.bi
  br i1 %i.bj, label %bb.r, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre549.pre = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.x

bb.r:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.bl = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.bk, i1 noundef zeroext %i.p)
  br i1 %i.bl, label %bb.t, label %bb.s
end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

bb.bp:                                            ; preds = %bb.bo
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !25
  br label %.thread370

bb.bq:                                            ; preds = %bb.bn
  %.promoted474.pre = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %i.jl = load i8, ptr %.promoted474.pre, align 1, !tbaa !23 ; 2 uses
  %i.jm = icmp eq i8 %i.jl, 48
  %or.cond649 = select i1 %i.ja, i1 %i.jm, i1 false
  br i1 %or.cond649, label %.lr.ph472, label %.loopexit

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.ju, %bb.bs ], [ 0, %bb.bq ]
  %i.jn = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr noundef %i.b, i16 noundef zeroext %i.jg, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %1 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = trunc i64 %i.jr to i32
  store i32 %i.js, ptr %4, align 4, !tbaa !17
  %i.jt = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.ju = add nsw i32 %.0157471, -1               ; 2 uses
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !23  ; 2 uses
  %i.jx = icmp eq i8 %i.jw, 48
  br i1 %i.jx, label %.lr.ph472, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.jy = phi i8 [ %i.jl, %bb.bq ], [ %i.jw, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.jv, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.ju, %bb.bs ] ; 2 uses
  %i.jz = add i8 %i.jy, -48
  %or.cond229476 = icmp ult i8 %i.jz, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.ka = zext i16 %i.jg to i32
  %i.kb = icmp eq i16 %i.jg, 0
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph482, %.backedge
  %i.kc = phi i8 [ %i.jy, %.lr.ph482 ], [ %i.kp, %.backedge ] ; 2 uses
  %.2159480 = phi i32 [ %.1158, %.lr.ph482 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168479 = phi i32 [ %.0166.lcssa, %.lr.ph482 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176478 = phi i1 [ %.0174.lcssa, %.lr.ph482 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187477 = phi i32 [ %.0185.lcssa, %.lr.ph482 ], [ %.3188, %.backedge ] ; 3 uses
  %i.kd = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.ko, %.backedge ] ; 4 uses
  %i.ke = icmp slt i32 %.2168479, 772
  br i1 %i.ke, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kf = add nsw i32 %.2187477, 1
  %i.kg = sext i32 %.2187477 to i64
  %i.kh = getelementptr inbounds i8, ptr %i.d, i64 %i.kg
  store i8 %i.kc, ptr %i.kh, align 1, !tbaa !23
  %i.ki = add nsw i32 %.2168479, 1
  %i.kj = add nsw i32 %.2159480, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.kk = icmp ne i8 %i.kc, 48
  %i.kl = or i1 %.2176478, %i.kk
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.3188 = phi i32 [ %i.kf, %bb.bu ], [ %.2187477, %bb.bv ] ; 4 uses
  %.3177 = phi i1 [ %.2176478, %bb.bu ], [ %i.kl, %bb.bv ] ; 3 uses
  %.3169 = phi i32 [ %i.ki, %bb.bu ], [ %.2168479, %bb.bv ] ; 2 uses
  %.3160 = phi i32 [ %i.kj, %bb.bu ], [ %.2159480, %bb.bv ] ; 3 uses
  br i1 %i.kb, label %.split367, label %bb.bx

.split367:                                        ; preds = %bb.bw
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 3 uses
  %i.kn = icmp eq ptr %i.km, %i.h
  br i1 %i.kn, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, label %.backedge

.backedge:                                        ; preds = %bb.ca, %.split367, %.split368, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299
  %i.ko = phi ptr [ %i.km, %.split367 ], [ %i.kv, %.split368 ], [ %i.kv, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299 ], [ %i.kx, %bb.ca ] ; 3 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !23  ; 2 uses
  %i.kq = add i8 %i.kp, -48
  %or.cond229 = icmp ult i8 %i.kq, 10
  br i1 %or.cond229, label %bb.bt, label %.critedge11.loopexit, !llvm.loop !46

bb.bx:                                            ; preds = %bb.bw
  %i.kr = load i8, ptr %i.kd, align 1, !tbaa !23  ; 2 uses
  %i.ks = sext i8 %i.kr to i32
  %i.kt = add nsw i32 %i.ks, -48
  %or.cond.i.i291 = icmp ult i32 %i.kt, 10
  %i.ku = icmp ult i8 %i.kr, 58
  %or.cond19.i.i292 = and i1 %i.ku, %or.cond.i.i291
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 6 uses
  %i.kw = icmp eq ptr %i.kv, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bx
  br i1 %i.kw, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, label %.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bx
  br i1 %i.kw, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, label %bb.by

bb.by:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kd, i64 2 ; 3 uses
  %i.ky = icmp eq ptr %i.kx, %i.h
  br i1 %i.ky, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kz = load i8, ptr %i.kv, align 1, !tbaa !23
  %i.la = sext i8 %i.kz to i32
  %i.lb = icmp eq i32 %i.la, %i.ka
  br i1 %i.lb, label %bb.ca, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299

bb.ca:                                            ; preds = %bb.bz
  %i.lc = load i8, ptr %i.kx, align 1, !tbaa !23  ; 2 uses
  %i.ld = sext i8 %i.lc to i32
  %i.le = add nsw i32 %i.ld, -48
  %or.cond.i25.i296 = icmp ult i32 %i.le, 10
  %i.lf = icmp ult i8 %i.lc, 58
  %or.cond19.i26.i297 = and i1 %i.lf, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299: ; preds = %bb.ca, %bb.by, %bb.bz
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa475 = phi ptr [ %.promoted474, %.loopexit ], [ %i.ko, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa475, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.lg = phi ptr [ %.lcssa456, %.critedge ], [ %.lcssa475, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.ec, true
  %i.lh = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.lh, i1 false
  %i.li = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.li, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge11
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !25
  br label %.thread370

bb.cc:                                            ; preds = %.critedge11
  %i.ll = load i8, ptr %i.lg, align 1, !tbaa !23
  switch i8 %i.ll, label %bb.cw [
    i8 101, label %bb.cd
    i8 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.lm = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.lm, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !25
  br label %.thread370

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.lm, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 1 ; 4 uses
  store ptr %i.lp, ptr %i.b, align 8, !tbaa !16
  %i.lq = icmp eq ptr %i.lp, %i.h
  br i1 %i.lq, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.k, label %.split611, label %bb.ci

.split611:                                        ; preds = %bb.ch
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !16
  %i.lr = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.ci:                                            ; preds = %bb.ch
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !25
  br label %.thread370

bb.cj:                                            ; preds = %bb.cg
  %i.lu = load i8, ptr %i.lp, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.lu, label %bb.cn [
    i8 43, label %bb.ck
    i8 45, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 2 ; 3 uses
  store ptr %i.lv, ptr %i.b, align 8, !tbaa !16
  %i.lw = icmp eq ptr %i.lv, %i.h
  br i1 %i.lw, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.k, label %.split612, label %bb.cm

.split612:                                        ; preds = %bb.cl
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !16
  %i.lx = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.cm:                                            ; preds = %bb.cl
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !25
  br label %.thread370

bb.cn:                                            ; preds = %bb.cj, %bb.ck
  %.0184608 = phi i8 [ %i.lu, %bb.ck ], [ 43, %bb.cj ]
  %.promoted488607 = phi ptr [ %i.lv, %bb.ck ], [ %i.lp, %bb.cj ] ; 4 uses
  %i.ma = load i8, ptr %.promoted488607, align 1, !tbaa !23 ; 2 uses
  %i.mb = add i8 %i.ma, -58
  %or.cond230 = icmp ult i8 %i.mb, -10
  br i1 %or.cond230, label %bb.co, label %.preheader

.preheader:                                       ; preds = %bb.cn
  %i.mc = add i64 %i.a, %i.g
  %.promoted488541 = ptrtoaddr ptr %.promoted488607 to i64
  %i.md = sub i64 %i.mc, %.promoted488541
  %scevgep542 = getelementptr i8, ptr %.promoted488607, i64 %i.md
  br label %bb.cq

bb.co:                                            ; preds = %bb.cn
  br i1 %i.k, label %.split613, label %bb.cp

.split613:                                        ; preds = %bb.co
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !16
  %i.me = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.cp:                                            ; preds = %bb.co
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !25
  br label %.thread370

bb.cq:                                            ; preds = %.preheader, %bb.cu
  %i.mh = phi i8 [ %i.mr, %bb.cu ], [ %i.ma, %.preheader ] ; 2 uses
  %i.mi = phi ptr [ %i.mq, %bb.cu ], [ %.promoted488607, %.preheader ]
  %.0182 = phi i32 [ %.1183, %bb.cu ], [ 0, %.preheader ] ; 3 uses
  %i.mj = zext nneg i8 %i.mh to i32
  %i.mk = icmp sgt i32 %.0182, 107374181
  br i1 %i.mk, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ml = icmp eq i32 %.0182, 107374182
  %i.mm = icmp samesign ult i8 %i.mh, 52
  %or.cond21 = and i1 %i.ml, %i.mm
  br i1 %or.cond21, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.mn = mul nsw i32 %.0182, 10
  %i.mo = add i32 %i.mn, -48
  %i.mp = add i32 %i.mo, %i.mj
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %.1183 = phi i32 [ %i.mp, %bb.cs ], [ 1073741823, %bb.cr ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.mq, %i.h
  br i1 %.not219, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !23  ; 2 uses
  %i.ms = add i8 %i.mr, -48
  %or.cond231 = icmp ult i8 %i.ms, 10
  br i1 %or.cond231, label %bb.cq, label %bb.cv, !llvm.loop !47

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %.lcssa505 = phi ptr [ %scevgep542, %bb.ct ], [ %i.mq, %bb.cu ] ; 2 uses
  store ptr %.lcssa505, ptr %i.b, align 8, !tbaa !16
  %i.mt = icmp eq i8 %.0184608, 45
  %i.mu = sub nsw i32 0, %.1183
  %i.mv = select i1 %i.mt, i32 %i.mu, i32 %.1183
  %i.mw = add nsw i32 %i.mv, %.4161
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cc
  %.promoted490 = phi ptr [ %.lcssa505, %bb.cv ], [ %i.lg, %bb.cc ] ; 6 uses
  %.7164 = phi i32 [ %i.mw, %bb.cv ], [ %.4161, %bb.cc ] ; 4 uses
  %i.mx = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.mx, 0
  %.not220 = icmp eq ptr %.promoted490, %i.h      ; 2 uses
  %or.cond405 = or i1 %or.cond25.not, %.not220
  br i1 %or.cond405, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mz = load double, ptr %i.my, align 8, !tbaa !25
  br label %.thread370

bb.cy:                                            ; preds = %bb.cw
  %.promoted.i300543 = ptrtoaddr ptr %.promoted490 to i64 ; 2 uses
  %or.cond406 = or i1 %i.k, %.not220
  br i1 %or.cond406, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cy
  %i.na = load i8, ptr %.promoted490, align 1, !tbaa !23
  %i.nb = sext i8 %i.na to i32
  %i.nc = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nb)
  br i1 %i.nc, label %.lr.ph493.preheader, label %.lr.ph.i302._crit_edge

.lr.ph493.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.nd = add i64 %i.a, %i.g                      ; 2 uses
  %i.ne = sub i64 %i.nd, %.promoted.i300543
  %scevgep544 = getelementptr i8, ptr %.promoted490, i64 %i.ne ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.promoted490, i64 1 ; 2 uses
  %.not.not.i306685 = icmp eq ptr %i.nf, %i.h
  br i1 %.not.not.i306685, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !0

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph493.preheader
  br label %.lr.ph.i302, !llvm.loop !0

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph493
  %i.ng = phi ptr [ %i.nf, %.lr.ph.i302.lr.ph ], [ %i.nk, %.lr.ph493 ] ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !23
  %i.ni = sext i8 %i.nh to i32
  %i.nj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ni)
  br i1 %i.nj, label %.lr.ph493, label %.lr.ph.i302._crit_edge, !llvm.loop !0

.lr.ph493:                                        ; preds = %.lr.ph.i302
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.nk, %i.h
  br i1 %.not.not.i306, label %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !0

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !25
  br label %.thread370

.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge: ; preds = %.lr.ph493
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, %.lr.ph493.preheader
  store ptr %scevgep544, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, %bb.cy
  %.promoted.i308545.pre-phi = phi i64 [ %i.nd, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted.i300543, %bb.cy ]
  %.promoted495 = phi ptr [ %scevgep544, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cy ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.h
  %or.cond407 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.nn = load i8, ptr %.promoted495, align 1, !tbaa !23
  %i.no = sext i8 %i.nn to i32
  %i.np = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.no)
  br i1 %i.np, label %.lr.ph496.preheader, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split

.lr.ph496.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.nq = add i64 %i.a, %i.g
  %i.nr = sub i64 %i.nq, %.promoted.i308545.pre-phi
  %scevgep546 = getelementptr i8, ptr %.promoted495, i64 %i.nr
  %i.ns = getelementptr inbounds nuw i8, ptr %.promoted495, i64 1 ; 2 uses
  %.not.not.i314686 = icmp eq ptr %i.ns, %i.h
  br i1 %.not.not.i314686, label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !0

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph496.preheader
  br label %.lr.ph.i310, !llvm.loop !0

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph496
  %i.nt = phi ptr [ %i.ns, %.lr.ph.i310.lr.ph ], [ %i.nx, %.lr.ph496 ] ; 3 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !23
  %i.nv = sext i8 %i.nu to i32
  %i.nw = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nv)
  br i1 %i.nw, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

.lr.ph496:                                        ; preds = %.lr.ph.i310
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nx, %i.h
  br i1 %.not.not.i314, label %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390: ; preds = %bb.bo
  br i1 %.0174.lcssa, label %bb.da, label %bb.db

.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph496
  br label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, !llvm.loop !0

._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph496.preheader
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.ny = phi ptr [ %i.km, %.split367 ], [ %i.kv, %.split368 ], [ %i.kv, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.ny, ptr %i.b, align 8
  %i.nz = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.da, label %bb.db

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.nt, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %scevgep546, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ip, %.split365 ], [ %i.ig, %.split364 ], [ %i.ip, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.if, %.split364 ], [ %i.if, %.split365 ], [ %i.if, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.oa = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %i.ob = trunc i8 %.2194 to i1
  br i1 %i.ob, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.cz

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread: ; preds = %bb.cf, %bb.bm, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.oc = phi ptr [ %i.oa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %i.lg, %bb.cf ], [ %.lcssa456, %bb.bm ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %.4189, %bb.cf ], [ %.0185.lcssa, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !16
  %i.od = sext i32 %.5190387 to i64
  %i.oe = getelementptr inbounds i8, ptr %i.d, i64 %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.og = load i16, ptr %i.of, align 8, !tbaa !35
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !25
  %i.oj = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.f, ptr noundef %i.oe, i1 noundef zeroext %.0180, i16 noundef zeroext %i.og, i1 noundef zeroext %i.k, double noundef %i.oi, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.ok = ptrtoint ptr %i.oc to i64
  %i.ol = ptrtoint ptr %1 to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = trunc i64 %i.om to i32
  store i32 %i.on, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread370

bb.cz:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.oo = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.split613, %.split612, %.split611, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.cz
  %.5190396610 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.cz ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604 ], [ %.4189, %.split611 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ] ; 2 uses
  %i.op = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.oo, %bb.cz ], [ %i.nz, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604 ], [ %i.lr, %.split611 ], [ %i.lx, %.split612 ], [ %i.me, %.split613 ]
  %i.oq = add nsw i32 %.5190396610, 1
  %i.or = sext i32 %.5190396610 to i64
  %i.os = getelementptr inbounds i8, ptr %i.d, i64 %i.or
  store i8 49, ptr %i.os, align 1, !tbaa !23
  %i.ot = add nsw i32 %i.op, -1
  br label %bb.db

bb.db:                                            ; preds = %.split613, %.split612, %.split611, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.da, %bb.cz
  %.6191 = phi i32 [ %i.oq, %bb.da ], [ %.5190, %bb.cz ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604 ], [ %.4189, %.split611 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ] ; 5 uses
  %.9 = phi i32 [ %i.ot, %bb.da ], [ %i.oo, %bb.cz ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.nz, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604 ], [ %i.lr, %.split611 ], [ %i.lx, %.split612 ], [ %i.me, %.split613 ]
  %i.ou = sext i32 %.6191 to i64
  %i.ov = getelementptr inbounds i8, ptr %i.d, i64 %i.ou
  store i8 0, ptr %i.ov, align 1, !tbaa !23
  %i.ow = icmp sgt i32 %.6191, 0
  br i1 %i.ow, label %.lr.ph689, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph689:                                        ; preds = %bb.db
  %i.ox = zext nneg i32 %.6191 to i64
  br label %bb.dd

bb.dc:                                            ; preds = %bb.dd
  %i.oy = trunc nuw i64 %i.pb to i32              ; 2 uses
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %bb.dd, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.dd:                                            ; preds = %.lr.ph689, %bb.dc
  %i.pa = phi i32 [ %.6191, %.lr.ph689 ], [ %i.oy, %bb.dc ]
  %indvars.iv.i687 = phi i64 [ %i.ox, %.lr.ph689 ], [ %i.pb, %bb.dc ]
  %i.pb = add nsw i64 %indvars.iv.i687, -1        ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.pd, 48
  br i1 %.not.i, label %bb.dc, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge690, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge690: ; preds = %bb.dd
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.dc, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge690, %bb.db
  %.sroa.3.1.i = phi i32 [ 0, %bb.db ], [ %i.pa, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge690 ], [ 0, %bb.dc ] ; 3 uses
  %i.pe = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.pf = add nsw i32 %i.pe, %.9                  ; 2 uses
  br i1 %3, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pg = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pf)
  br label %bb.dg

bb.df:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.ph = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pf)
  %i.pi = fpext float %i.ph to double
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0153 = phi double [ %i.pg, %bb.de ], [ %i.pi, %bb.df ] ; 2 uses
  %i.pj = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %1 to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = trunc i64 %i.pm to i32
  store i32 %i.pn, ptr %4, align 4, !tbaa !17
  %i.po = fneg double %.0153
  %i.pp = select i1 %.0180, double %i.po, double %.0153
  br label %.thread370

.thread370:                                       ; preds = %bb.cp, %bb.cm, %bb.ci, %bb.dg, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cx, %bb.ce, %bb.cb, %bb.br, %bb.bp, %bb.bl
  %.5 = phi double [ %i.oj, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread ], [ %i.pp, %bb.dg ], [ %i.jk, %bb.bp ], [ %i.jt, %bb.br ], [ %i.lk, %bb.cb ], [ %i.je, %bb.bl ], [ %i.nm, %.lr.ph.i302._crit_edge ], [ %i.mz, %bb.cx ], [ %i.lo, %bb.ce ], [ %i.mg, %bb.cp ], [ %i.lz, %bb.cm ], [ %i.lt, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, %bb.h, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.ag, %bb.ai, %.lr.ph.i259._crit_edge, %bb.w, %bb.ak, %_ZN17double_conversionL7isDigitEii.exit.thread359, %bb.aw, %.thread370, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, %bb.as, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, %bb.d, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit ], [ %i.ag, %bb.d ], [ -qnan, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264 ], [ %i.ce, %.lr.ph.i247._crit_edge ], [ %i.br, %bb.u ], [ %i.bn, %bb.s ], [ +inf, %bb.w ], [ %i.du, %.lr.ph.i259._crit_edge ], [ %i.dh, %bb.ai ], [ %i.dd, %bb.ag ], [ +qnan, %bb.ak ], [ %i.fi, %_ZN17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252 ], [ %i.es, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356 ], [ %i.ez, %bb.as ], [ %.5, %.thread370 ], [ %i.hh, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread ], [ %i.fn, %bb.aw ], [ %i.aq, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244 ], [ %i.as, %bb.h ]
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
  %i.g = getelementptr i8, ptr %1, i64 %.idx      ; 36 uses
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
  %.not.not.i684 = icmp eq i32 %2, 1
  br i1 %.not.not.i684, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !3

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
  br i1 %.not215, label %bb.x, label %bb.k

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
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ay, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

common.resume:                                    ; preds = %bb.ae, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.co, %bb.ae ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.ba = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext %i.at), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.be, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.at, %bb.k ]
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !23
  %i.bg = icmp eq i8 %.sink.i, %i.bf
  br i1 %i.bg, label %bb.r, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre537.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.x

bb.r:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.bi = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bh, i1 noundef zeroext %i.o)
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !25
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bl = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bl, 0
  %i.bm = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bm, %i.g              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  %i.ii = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %i.ih, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ii, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ij = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.dw, %i.ij
  br i1 %or.cond9, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.il = load double, ptr %i.ik, align 8, !tbaa !25
  br label %.thread370

bb.bq:                                            ; preds = %bb.bn
  %.promoted474.pre = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %i.im = load i16, ptr %.promoted474.pre, align 2, !tbaa !41 ; 2 uses
  %i.in = icmp eq i16 %i.im, 48
  %or.cond647 = select i1 %i.ib, i1 %i.in, i1 false
  br i1 %or.cond647, label %.lr.ph472, label %.loopexit

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.iw, %bb.bs ], [ 0, %bb.bq ]
  %i.io = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %i.ih, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.io, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %1 to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = lshr exact i64 %i.is, 1
  %i.iu = trunc i64 %i.it to i32
  store i32 %i.iu, ptr %4, align 4, !tbaa !17
  %i.iv = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.iw = add nsw i32 %.0157471, -1               ; 2 uses
  %i.ix = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !41 ; 2 uses
  %i.iz = icmp eq i16 %i.iy, 48
  br i1 %i.iz, label %.lr.ph472, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.ja = phi i16 [ %i.im, %bb.bq ], [ %i.iy, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.ix, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.iw, %bb.bs ] ; 2 uses
  %i.jb = add i16 %i.ja, -48
  %or.cond229476 = icmp ult i16 %i.jb, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.jc = icmp eq i16 %i.ih, 0
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph482, %.backedge
  %i.jd = phi i16 [ %i.ja, %.lr.ph482 ], [ %i.jr, %.backedge ] ; 2 uses
  %.2159480 = phi i32 [ %.1158, %.lr.ph482 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168479 = phi i32 [ %.0166.lcssa, %.lr.ph482 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176478 = phi i1 [ %.0174.lcssa, %.lr.ph482 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187477 = phi i32 [ %.0185.lcssa, %.lr.ph482 ], [ %.3188, %.backedge ] ; 3 uses
  %i.je = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.jq, %.backedge ] ; 4 uses
  %i.jf = icmp slt i32 %.2168479, 772
  br i1 %i.jf, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jg = trunc nuw nsw i16 %i.jd to i8
  %i.jh = add nsw i32 %.2187477, 1
  %i.ji = sext i32 %.2187477 to i64
  %i.jj = getelementptr inbounds i8, ptr %i.c, i64 %i.ji
  store i8 %i.jg, ptr %i.jj, align 1, !tbaa !23
  %i.jk = add nsw i32 %.2168479, 1
  %i.jl = add nsw i32 %.2159480, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.jm = icmp ne i16 %i.jd, 48
  %i.jn = or i1 %.2176478, %i.jm
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.3188 = phi i32 [ %i.jh, %bb.bu ], [ %.2187477, %bb.bv ] ; 4 uses
  %.3177 = phi i1 [ %.2176478, %bb.bu ], [ %i.jn, %bb.bv ] ; 3 uses
  %.3169 = phi i32 [ %i.jk, %bb.bu ], [ %.2168479, %bb.bv ] ; 2 uses
  %.3160 = phi i32 [ %i.jl, %bb.bu ], [ %.2159480, %bb.bv ] ; 3 uses
  br i1 %i.jc, label %.split367, label %bb.bx

.split367:                                        ; preds = %bb.bw
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 2 ; 3 uses
  %i.jp = icmp eq ptr %i.jo, %i.g
  br i1 %i.jp, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, label %.backedge

.backedge:                                        ; preds = %bb.ca, %.split367, %.split368, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299
  %i.jq = phi ptr [ %i.jo, %.split367 ], [ %i.jv, %.split368 ], [ %i.jv, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299 ], [ %i.jx, %bb.ca ] ; 3 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !41 ; 2 uses
  %i.js = add i16 %i.jr, -48
  %or.cond229 = icmp ult i16 %i.js, 10
  br i1 %or.cond229, label %bb.bt, label %.critedge11.loopexit, !llvm.loop !51

bb.bx:                                            ; preds = %bb.bw
  %i.jt = load i16, ptr %i.je, align 2, !tbaa !41
  %i.ju = add i16 %i.jt, -48
  %or.cond19.i.i292 = icmp ult i16 %i.ju, 10
  %i.jv = getelementptr inbounds nuw i8, ptr %i.je, i64 2 ; 6 uses
  %i.jw = icmp eq ptr %i.jv, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bx
  br i1 %i.jw, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, label %.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bx
  br i1 %i.jw, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, label %bb.by

bb.by:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295
  %i.jx = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 3 uses
  %i.jy = icmp eq ptr %i.jx, %i.g
  br i1 %i.jy, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jz = load i16, ptr %i.jv, align 2, !tbaa !41
  %i.ka = icmp eq i16 %i.jz, %i.ih
  br i1 %i.ka, label %bb.ca, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299

bb.ca:                                            ; preds = %bb.bz
  %i.kb = load i16, ptr %i.jx, align 2, !tbaa !41
  %i.kc = add i16 %i.kb, -48
  %or.cond19.i26.i297 = icmp ult i16 %i.kc, 10
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299: ; preds = %bb.ca, %bb.by, %bb.bz
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa475 = phi ptr [ %.promoted474, %.loopexit ], [ %i.jq, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa475, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.kd = phi ptr [ %.lcssa456, %.critedge ], [ %.lcssa475, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.dw, true
  %i.ke = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.ke, i1 false
  %i.kf = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.kf, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge11
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !25
  br label %.thread370

bb.cc:                                            ; preds = %.critedge11
  %i.ki = load i16, ptr %i.kd, align 2, !tbaa !41
  switch i16 %i.ki, label %bb.cv [
    i16 101, label %bb.cd
    i16 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.kj = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kj, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !25
  br label %.thread370

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.kj, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 2 ; 3 uses
  %i.kn = icmp eq ptr %i.km, %i.g
  br i1 %i.kn, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.j, label %.split605, label %bb.ci

.split605:                                        ; preds = %bb.ch
  store ptr %i.kd, ptr %i.a, align 8, !tbaa !40
  %i.ko = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.ci:                                            ; preds = %bb.ch
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !25
  br label %.thread370

bb.cj:                                            ; preds = %bb.cg
  %i.kr = load i16, ptr %i.km, align 2, !tbaa !41 ; 2 uses
  switch i16 %i.kr, label %bb.cn [
    i16 43, label %bb.ck
    i16 45, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.ks = zext nneg i16 %i.kr to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 4 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.g
  br i1 %i.ku, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.j, label %.split606, label %bb.cm

.split606:                                        ; preds = %bb.cl
  store ptr %i.kd, ptr %i.a, align 8, !tbaa !40
  %i.kv = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.cm:                                            ; preds = %bb.cl
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !25
  br label %.thread370

bb.cn:                                            ; preds = %bb.cj, %bb.ck
  %.0184602 = phi i32 [ %i.ks, %bb.ck ], [ 43, %bb.cj ]
  %.promoted488601 = phi ptr [ %i.kt, %bb.ck ], [ %i.km, %bb.cj ] ; 2 uses
  %i.ky = load i16, ptr %.promoted488601, align 2, !tbaa !41 ; 2 uses
  %i.kz = add i16 %i.ky, -58
  %or.cond230 = icmp ult i16 %i.kz, -10
  br i1 %or.cond230, label %bb.co, label %.preheader

bb.co:                                            ; preds = %bb.cn
  br i1 %i.j, label %.split607, label %bb.cp

.split607:                                        ; preds = %bb.co
  store ptr %i.kd, ptr %i.a, align 8, !tbaa !40
  %i.la = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.cp:                                            ; preds = %bb.co
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !25
  br label %.thread370

.preheader:                                       ; preds = %bb.cn, %bb.ct
  %i.ld = phi i16 [ %i.ln, %bb.ct ], [ %i.ky, %bb.cn ] ; 2 uses
  %i.le = phi ptr [ %i.lm, %bb.ct ], [ %.promoted488601, %bb.cn ]
  %.0182 = phi i32 [ %.1183, %bb.ct ], [ 0, %bb.cn ] ; 3 uses
  %i.lf = zext nneg i16 %i.ld to i32
  %i.lg = icmp sgt i32 %.0182, 107374181
  br i1 %i.lg, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.preheader
  %i.lh = icmp eq i32 %.0182, 107374182
  %i.li = icmp samesign ult i16 %i.ld, 52
  %or.cond21 = and i1 %i.lh, %i.li
  br i1 %or.cond21, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %.preheader
  %i.lj = mul nsw i32 %.0182, 10
  %i.lk = add i32 %i.lj, -48
  %i.ll = add i32 %i.lk, %i.lf
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %.1183 = phi i32 [ %i.ll, %bb.cr ], [ 1073741823, %bb.cq ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 2 ; 5 uses
  %.not219 = icmp eq ptr %i.lm, %i.g
  br i1 %.not219, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !41 ; 2 uses
  %i.lo = add i16 %i.ln, -48
  %or.cond231 = icmp ult i16 %i.lo, 10
  br i1 %or.cond231, label %.preheader, label %bb.cu, !llvm.loop !52

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  store ptr %i.lm, ptr %i.a, align 8, !tbaa !40
  %sext.mask = and i32 %.0184602, 255
  %i.lp = icmp eq i32 %sext.mask, 45
  %i.lq = sub nsw i32 0, %.1183
  %i.lr = select i1 %i.lp, i32 %i.lq, i32 %.1183
  %i.ls = add nsw i32 %i.lr, %.4161
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cc
  %.promoted490 = phi ptr [ %i.lm, %bb.cu ], [ %i.kd, %bb.cc ] ; 4 uses
  %.7164 = phi i32 [ %i.ls, %bb.cu ], [ %.4161, %bb.cc ] ; 4 uses
  %i.lt = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.lt, 0
  %.not220 = icmp eq ptr %.promoted490, %i.g      ; 2 uses
  %or.cond405 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond405, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !25
  br label %.thread370

bb.cx:                                            ; preds = %bb.cv
  %or.cond406 = select i1 %i.j, i1 true, i1 %.not220
  br i1 %or.cond406, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cx
  %i.lw = load i16, ptr %.promoted490, align 2, !tbaa !41
  %i.lx = zext i16 %i.lw to i32
  %i.ly = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.lx)
  br i1 %i.ly, label %.lr.ph493, label %.lr.ph.i302._crit_edge

.lr.ph.i302:                                      ; preds = %.lr.ph493
  %i.lz = load i16, ptr %i.md, align 2, !tbaa !41
  %i.ma = zext i16 %i.lz to i32
  %i.mb = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ma)
  br i1 %i.mb, label %.lr.ph493, label %.lr.ph.i302._crit_edge, !llvm.loop !3

.lr.ph493:                                        ; preds = %.lr.ph.i302.preheader, %.lr.ph.i302
  %i.mc = phi ptr [ %i.md, %.lr.ph.i302 ], [ %.promoted490, %.lr.ph.i302.preheader ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 2 ; 5 uses
  %.not.not.i306 = icmp eq ptr %i.md, %i.g
  br i1 %.not.not.i306, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit, label %.lr.ph.i302, !llvm.loop !3

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mf = load double, ptr %i.me, align 8, !tbaa !25
  br label %.thread370

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493
  store ptr %i.md, ptr %i.a, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit, %bb.cx
  %.promoted495 = phi ptr [ %i.md, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cx ] ; 5 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.g
  %or.cond407 = select i1 %.not223, i1 true, i1 %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307
  %i.mg = load i16, ptr %.promoted495, align 2, !tbaa !41
  %i.mh = zext i16 %i.mg to i32
  %i.mi = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.mh)
  br i1 %i.mi, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split

.lr.ph.i310:                                      ; preds = %.lr.ph496
  %i.mj = load i16, ptr %i.mn, align 2, !tbaa !41
  %i.mk = zext i16 %i.mj to i32
  %i.ml = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.mk)
  br i1 %i.ml, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, !llvm.loop !3

.lr.ph496:                                        ; preds = %.lr.ph.i310.preheader, %.lr.ph.i310
  %i.mm = phi ptr [ %i.mn, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ]
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 2 ; 5 uses
  %.not.not.i314 = icmp eq ptr %i.mn, %i.g
  br i1 %.not.not.i314, label %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390: ; preds = %bb.bo
  br i1 %.0174.lcssa, label %bb.cz, label %bb.da

._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.mo = phi ptr [ %i.jo, %.split367 ], [ %i.jv, %.split368 ], [ %i.jv, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.mo, ptr %i.a, align 8
  %i.mp = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.cz, label %bb.da

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.mn, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %i.mn, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ht, %.split365 ], [ %i.hm, %.split364 ], [ %i.ht, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.hl, %.split364 ], [ %i.hl, %.split365 ], [ %i.hl, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307
  %i.mq = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %i.mr = trunc i8 %.2194 to i1
  br i1 %i.mr, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.cy

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread: ; preds = %bb.cf, %bb.bm, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315
  %i.ms = phi ptr [ %i.mq, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315 ], [ %i.kd, %bb.cf ], [ %.lcssa456, %bb.bm ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315 ], [ %.4189, %bb.cf ], [ %.0185.lcssa, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %i.mt = sext i32 %.5190387 to i64
  %i.mu = getelementptr inbounds i8, ptr %i.c, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mw = load i16, ptr %i.mv, align 8, !tbaa !35
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.my = load double, ptr %i.mx, align 8, !tbaa !25
  %i.mz = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.e, ptr noundef %i.mu, i1 noundef zeroext %.0180, i16 noundef zeroext %i.mw, i1 noundef zeroext %i.j, double noundef %i.my, i1 noundef zeroext %3, ptr noundef %i.d)
  %i.na = ptrtoint ptr %i.ms to i64
  %i.nb = ptrtoint ptr %1 to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = lshr exact i64 %i.nc, 1
  %i.ne = trunc i64 %i.nd to i32
  store i32 %i.ne, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread370

bb.cy:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315
  %i.nf = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.split607, %.split606, %.split605, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, %bb.cy
  %.5190396604 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.cy ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598 ], [ %.4189, %.split605 ], [ %.4189, %.split606 ], [ %.4189, %.split607 ] ; 2 uses
  %i.ng = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %i.nf, %bb.cy ], [ %i.mp, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598 ], [ %i.ko, %.split605 ], [ %i.kv, %.split606 ], [ %i.la, %.split607 ]
  %i.nh = add nsw i32 %.5190396604, 1
  %i.ni = sext i32 %.5190396604 to i64
  %i.nj = getelementptr inbounds i8, ptr %i.c, i64 %i.ni
  store i8 49, ptr %i.nj, align 1, !tbaa !23
  %i.nk = add nsw i32 %i.ng, -1
  br label %bb.da

bb.da:                                            ; preds = %.split607, %.split606, %.split605, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, %bb.cz, %bb.cy
  %.6191 = phi i32 [ %i.nh, %bb.cz ], [ %.5190, %bb.cy ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598 ], [ %.4189, %.split605 ], [ %.4189, %.split606 ], [ %.4189, %.split607 ] ; 5 uses
  %.9 = phi i32 [ %i.nk, %bb.cz ], [ %i.nf, %bb.cy ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %i.mp, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598 ], [ %i.ko, %.split605 ], [ %i.kv, %.split606 ], [ %i.la, %.split607 ]
  %i.nl = sext i32 %.6191 to i64
  %i.nm = getelementptr inbounds i8, ptr %i.c, i64 %i.nl
  store i8 0, ptr %i.nm, align 1, !tbaa !23
  %i.nn = icmp sgt i32 %.6191, 0
  br i1 %i.nn, label %.lr.ph687, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph687:                                        ; preds = %bb.da
  %i.no = zext nneg i32 %.6191 to i64
  br label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %i.np = trunc nuw i64 %i.ns to i32              ; 2 uses
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %bb.dc, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.dc:                                            ; preds = %.lr.ph687, %bb.db
  %i.nr = phi i32 [ %.6191, %.lr.ph687 ], [ %i.np, %bb.db ]
  %indvars.iv.i685 = phi i64 [ %i.no, %.lr.ph687 ], [ %i.ns, %bb.db ]
  %i.ns = add nsw i64 %indvars.iv.i685, -1        ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.nu, 48
  br i1 %.not.i, label %bb.db, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge688, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge688: ; preds = %bb.dc
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.db, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge688, %bb.da
  %.sroa.3.1.i = phi i32 [ 0, %bb.da ], [ %i.nr, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge688 ], [ 0, %bb.db ] ; 3 uses
  %i.nv = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.nw = add nsw i32 %i.nv, %.9                  ; 2 uses
  br i1 %3, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.nx = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nw)
  br label %bb.df

bb.de:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.ny = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nw)
  %i.nz = fpext float %i.ny to double
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0153 = phi double [ %i.nx, %bb.dd ], [ %i.nz, %bb.de ] ; 2 uses
  %i.oa = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %1 to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = lshr exact i64 %i.od, 1
  %i.of = trunc i64 %i.oe to i32
  store i32 %i.of, ptr %4, align 4, !tbaa !17
  %i.og = fneg double %.0153
  %i.oh = select i1 %.0180, double %i.og, double %.0153
end_hunk_2
