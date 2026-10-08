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
  %.pre554 = load i8, ptr %.promoted474.pre, align 1, !tbaa !23 ; 2 uses
  %i.jl = icmp ne i8 %.pre554, 48
  %or.cond651.not = select i1 %i.jb, i1 true, i1 %i.jl
  br i1 %or.cond651.not, label %.loopexit, label %.lr.ph472

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.jt, %bb.bs ], [ 0, %bb.bq ]
  %i.jm = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr noundef %i.b, i16 noundef zeroext %i.jh, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %1 to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  store i32 %i.jr, ptr %4, align 4, !tbaa !17
  %i.js = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.jt = add nsw i32 %.0157471, -1               ; 2 uses
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !23  ; 2 uses
  %i.jw = icmp eq i8 %i.jv, 48
  br i1 %i.jw, label %.lr.ph472, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.jx = phi i8 [ %.pre554, %bb.bq ], [ %i.jv, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.ju, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.jt, %bb.bs ] ; 2 uses
  %i.jy = add i8 %i.jx, -48
  %or.cond229476 = icmp ult i8 %i.jy, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.jz = zext i16 %i.jh to i32
  %i.ka = icmp eq i16 %i.jh, 0
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph482, %.backedge
  %i.kb = phi i8 [ %i.jx, %.lr.ph482 ], [ %i.ko, %.backedge ] ; 2 uses
  %.2159480 = phi i32 [ %.1158, %.lr.ph482 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168479 = phi i32 [ %.0166.lcssa, %.lr.ph482 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176478 = phi i1 [ %.0174.lcssa, %.lr.ph482 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187477 = phi i32 [ %.0185.lcssa, %.lr.ph482 ], [ %.3188, %.backedge ] ; 3 uses
  %i.kc = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.kn, %.backedge ] ; 4 uses
  %i.kd = icmp slt i32 %.2168479, 772
  br i1 %i.kd, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ke = add nsw i32 %.2187477, 1
  %i.kf = sext i32 %.2187477 to i64
  %i.kg = getelementptr inbounds i8, ptr %i.d, i64 %i.kf
  store i8 %i.kb, ptr %i.kg, align 1, !tbaa !23
  %i.kh = add nsw i32 %.2168479, 1
  %i.ki = add nsw i32 %.2159480, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.kj = icmp ne i8 %i.kb, 48
  %i.kk = or i1 %.2176478, %i.kj
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.3188 = phi i32 [ %i.ke, %bb.bu ], [ %.2187477, %bb.bv ] ; 4 uses
  %.3177 = phi i1 [ %.2176478, %bb.bu ], [ %i.kk, %bb.bv ] ; 3 uses
  %.3169 = phi i32 [ %i.kh, %bb.bu ], [ %.2168479, %bb.bv ] ; 2 uses
  %.3160 = phi i32 [ %i.ki, %bb.bu ], [ %.2159480, %bb.bv ] ; 3 uses
  br i1 %i.ka, label %.split367, label %bb.bx

.split367:                                        ; preds = %bb.bw
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 1 ; 3 uses
  %i.km = icmp eq ptr %i.kl, %i.h
  br i1 %i.km, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, label %.backedge

.backedge:                                        ; preds = %bb.ca, %.split367, %.split368, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299
  %i.kn = phi ptr [ %i.kl, %.split367 ], [ %i.ku, %.split368 ], [ %i.ku, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299 ], [ %i.kw, %bb.ca ] ; 3 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !23  ; 2 uses
  %i.kp = add i8 %i.ko, -48
  %or.cond229 = icmp ult i8 %i.kp, 10
  br i1 %or.cond229, label %bb.bt, label %.critedge11.loopexit, !llvm.loop !46

bb.bx:                                            ; preds = %bb.bw
  %i.kq = load i8, ptr %i.kc, align 1, !tbaa !23  ; 2 uses
  %i.kr = sext i8 %i.kq to i32
  %i.ks = add nsw i32 %i.kr, -48
  %or.cond.i.i291 = icmp ult i32 %i.ks, 10
  %i.kt = icmp ult i8 %i.kq, 58
  %or.cond19.i.i292 = and i1 %i.kt, %or.cond.i.i291
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kc, i64 1 ; 6 uses
  %i.kv = icmp eq ptr %i.ku, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bx
  br i1 %i.kv, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, label %.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bx
  br i1 %i.kv, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, label %bb.by

bb.by:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kc, i64 2 ; 3 uses
  %i.kx = icmp eq ptr %i.kw, %i.h
  br i1 %i.kx, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !23
  %i.kz = sext i8 %i.ky to i32
  %i.la = icmp eq i32 %i.kz, %i.jz
  br i1 %i.la, label %bb.ca, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299

bb.ca:                                            ; preds = %bb.bz
  %i.lb = load i8, ptr %i.kw, align 1, !tbaa !23  ; 2 uses
  %i.lc = sext i8 %i.lb to i32
  %i.ld = add nsw i32 %i.lc, -48
  %or.cond.i25.i296 = icmp ult i32 %i.ld, 10
  %i.le = icmp ult i8 %i.lb, 58
  %or.cond19.i26.i297 = and i1 %i.le, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299: ; preds = %bb.ca, %bb.by, %bb.bz
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa475 = phi ptr [ %.promoted474, %.loopexit ], [ %i.kn, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa475, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.lf = phi ptr [ %.lcssa456, %.critedge ], [ %.lcssa475, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.ec, true
  %i.lg = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.lg, i1 false
  %i.lh = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.lh, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge11
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lj = load double, ptr %i.li, align 8, !tbaa !25
  br label %.thread370

bb.cc:                                            ; preds = %.critedge11
  %i.lk = load i8, ptr %i.lf, align 1, !tbaa !23
  switch i8 %i.lk, label %bb.cw [
    i8 101, label %bb.cd
    i8 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.ll = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.ll, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !25
  br label %.thread370

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.ll, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 1 ; 4 uses
  store ptr %i.lo, ptr %i.b, align 8, !tbaa !16
  %i.lp = icmp eq ptr %i.lo, %i.h
  br i1 %i.lp, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.k, label %.split612, label %bb.ci

.split612:                                        ; preds = %bb.ch
  store ptr %i.lf, ptr %i.b, align 8, !tbaa !16
  %i.lq = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.ci:                                            ; preds = %bb.ch
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !25
  br label %.thread370

bb.cj:                                            ; preds = %bb.cg
  %i.lt = load i8, ptr %i.lo, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.lt, label %5 [
    i8 43, label %bb.ck
    i8 45, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 2 ; 3 uses
  store ptr %i.lu, ptr %i.b, align 8, !tbaa !16
  %i.lv = icmp eq ptr %i.lu, %i.h
  br i1 %i.lv, label %bb.cl, label %5

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.k, label %.split613, label %bb.cm

.split613:                                        ; preds = %bb.cl
  store ptr %i.lf, ptr %i.b, align 8, !tbaa !16
  %i.lw = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.cm:                                            ; preds = %bb.cl
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !25
  br label %.thread370

5:                                                ; preds = %bb.cj, %bb.ck
  %.promoted488 = phi ptr [ %i.lu, %bb.ck ], [ %i.lo, %bb.cj ] ; 5 uses
  %.0184 = phi i8 [ %i.lt, %bb.ck ], [ 43, %bb.cj ]
  %6 = icmp eq ptr %.promoted488, %i.h
  br i1 %6, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %5
  %i.lz = load i8, ptr %.promoted488, align 1, !tbaa !23 ; 2 uses
  %i.ma = add i8 %i.lz, -58
  %or.cond230 = icmp ult i8 %i.ma, -10
  br i1 %or.cond230, label %bb.co, label %.preheader

.preheader:                                       ; preds = %bb.cn
  %i.mb = add i64 %i.a, %i.g
  %.promoted488541 = ptrtoaddr ptr %.promoted488 to i64
  %i.mc = sub i64 %i.mb, %.promoted488541
  %scevgep542 = getelementptr i8, ptr %.promoted488, i64 %i.mc
  br label %bb.cq

bb.co:                                            ; preds = %bb.cn, %5
  br i1 %i.k, label %.split614, label %bb.cp

.split614:                                        ; preds = %bb.co
  store ptr %i.lf, ptr %i.b, align 8, !tbaa !16
  %i.md = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.cp:                                            ; preds = %bb.co
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mf = load double, ptr %i.me, align 8, !tbaa !25
  br label %.thread370

bb.cq:                                            ; preds = %.preheader, %bb.cu
  %i.mg = phi i8 [ %i.mq, %bb.cu ], [ %i.lz, %.preheader ] ; 2 uses
  %i.mh = phi ptr [ %i.mp, %bb.cu ], [ %.promoted488, %.preheader ]
  %.0182 = phi i32 [ %.1183, %bb.cu ], [ 0, %.preheader ] ; 3 uses
  %i.mi = zext nneg i8 %i.mg to i32
  %i.mj = icmp sgt i32 %.0182, 107374181
  br i1 %i.mj, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mk = icmp eq i32 %.0182, 107374182
  %i.ml = icmp samesign ult i8 %i.mg, 52
  %or.cond21 = and i1 %i.mk, %i.ml
  br i1 %or.cond21, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.mm = mul nsw i32 %.0182, 10
  %i.mn = add i32 %i.mm, -48
  %i.mo = add i32 %i.mn, %i.mi
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %.1183 = phi i32 [ %i.mo, %bb.cs ], [ 1073741823, %bb.cr ] ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 1 ; 4 uses
  %.not219 = icmp eq ptr %i.mp, %i.h
  br i1 %.not219, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !23  ; 2 uses
  %i.mr = add i8 %i.mq, -48
  %or.cond231 = icmp ult i8 %i.mr, 10
  br i1 %or.cond231, label %bb.cq, label %bb.cv, !llvm.loop !47

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %.lcssa505 = phi ptr [ %scevgep542, %bb.ct ], [ %i.mp, %bb.cu ] ; 2 uses
  store ptr %.lcssa505, ptr %i.b, align 8, !tbaa !16
  %i.ms = icmp eq i8 %.0184, 45
  %i.mt = sub nsw i32 0, %.1183
  %i.mu = select i1 %i.ms, i32 %i.mt, i32 %.1183
  %i.mv = add nsw i32 %i.mu, %.4161
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cc
  %.promoted490 = phi ptr [ %.lcssa505, %bb.cv ], [ %i.lf, %bb.cc ] ; 6 uses
  %.7164 = phi i32 [ %i.mv, %bb.cv ], [ %.4161, %bb.cc ] ; 4 uses
  %i.mw = and i32 %i.i, 20
  %or.cond25.not = icmp ne i32 %i.mw, 0
  %.not220 = icmp eq ptr %.promoted490, %i.h      ; 2 uses
  %or.cond405 = or i1 %or.cond25.not, %.not220
  br i1 %or.cond405, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.my = load double, ptr %i.mx, align 8, !tbaa !25
  br label %.thread370

bb.cy:                                            ; preds = %bb.cw
  %.promoted.i300543 = ptrtoaddr ptr %.promoted490 to i64 ; 2 uses
  %or.cond406 = or i1 %i.k, %.not220
  br i1 %or.cond406, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cy
  %i.mz = load i8, ptr %.promoted490, align 1, !tbaa !23
  %i.na = sext i8 %i.mz to i32
  %i.nb = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.na)
  br i1 %i.nb, label %.lr.ph493.preheader, label %.lr.ph.i302._crit_edge

.lr.ph493.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.nc = add i64 %i.a, %i.g                      ; 2 uses
  %i.nd = sub i64 %i.nc, %.promoted.i300543
  %scevgep544 = getelementptr i8, ptr %.promoted490, i64 %i.nd ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.promoted490, i64 1 ; 2 uses
  %.not.not.i306688 = icmp eq ptr %i.ne, %i.h
  br i1 %.not.not.i306688, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !0

.lr.ph.i302.lr.ph:                                ; preds = %.lr.ph493.preheader
  br label %.lr.ph.i302, !llvm.loop !0

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.lr.ph, %.lr.ph493
  %i.nf = phi ptr [ %i.ne, %.lr.ph.i302.lr.ph ], [ %i.nj, %.lr.ph493 ] ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !23
  %i.nh = sext i8 %i.ng to i32
  %i.ni = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nh)
  br i1 %i.ni, label %.lr.ph493, label %.lr.ph.i302._crit_edge, !llvm.loop !0

.lr.ph493:                                        ; preds = %.lr.ph.i302
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 1 ; 2 uses
  %.not.not.i306 = icmp eq ptr %i.nj, %i.h
  br i1 %.not.not.i306, label %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !0

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !25
  br label %.thread370

.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge: ; preds = %.lr.ph493
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, %.lr.ph493.preheader
  store ptr %scevgep544, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, %bb.cy
  %.promoted.i308545.pre-phi = phi i64 [ %i.nc, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted.i300543, %bb.cy ]
  %.promoted495 = phi ptr [ %scevgep544, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cy ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.h
  %or.cond407 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.nm = load i8, ptr %.promoted495, align 1, !tbaa !23
  %i.nn = sext i8 %i.nm to i32
  %i.no = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nn)
  br i1 %i.no, label %.lr.ph496.preheader, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split

.lr.ph496.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.np = add i64 %i.a, %i.g
  %i.nq = sub i64 %i.np, %.promoted.i308545.pre-phi
  %scevgep546 = getelementptr i8, ptr %.promoted495, i64 %i.nq
  %i.nr = getelementptr inbounds nuw i8, ptr %.promoted495, i64 1 ; 2 uses
  %.not.not.i314689 = icmp eq ptr %i.nr, %i.h
  br i1 %.not.not.i314689, label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !0

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph496.preheader
  br label %.lr.ph.i310, !llvm.loop !0

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph496
  %i.ns = phi ptr [ %i.nr, %.lr.ph.i310.lr.ph ], [ %i.nw, %.lr.ph496 ] ; 3 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !23
  %i.nu = sext i8 %i.nt to i32
  %i.nv = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nu)
  br i1 %i.nv, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

.lr.ph496:                                        ; preds = %.lr.ph.i310
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nw, %i.h
  br i1 %.not.not.i314, label %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390: ; preds = %bb.bo
  br i1 %.0174.lcssa, label %bb.da, label %bb.db

.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph496
  br label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, !llvm.loop !0

._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph496.preheader
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.nx = phi ptr [ %i.kl, %.split367 ], [ %i.ku, %.split368 ], [ %i.ku, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.nx, ptr %i.b, align 8
  %i.ny = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.da, label %bb.db

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.ns, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %scevgep546, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.iq, %.split365 ], [ %i.ih, %.split364 ], [ %i.iq, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ig, %.split364 ], [ %i.ig, %.split365 ], [ %i.ig, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.nz = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %i.oa = trunc i8 %.2194 to i1
  br i1 %i.oa, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.cz

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread: ; preds = %bb.cf, %bb.bm, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.ob = phi ptr [ %i.nz, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %i.lf, %bb.cf ], [ %.lcssa456, %bb.bm ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %.4189, %bb.cf ], [ %.0185.lcssa, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !16
  %i.oc = sext i32 %.5190387 to i64
  %i.od = getelementptr inbounds i8, ptr %i.d, i64 %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.of = load i16, ptr %i.oe, align 8, !tbaa !35
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oh = load double, ptr %i.og, align 8, !tbaa !25
  %i.oi = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.f, ptr noundef %i.od, i1 noundef zeroext %.0180, i16 noundef zeroext %i.of, i1 noundef zeroext %i.k, double noundef %i.oh, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.oj = ptrtoint ptr %i.ob to i64
  %i.ok = ptrtoint ptr %1 to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = trunc i64 %i.ol to i32
  store i32 %i.om, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread370

bb.cz:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.on = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.split614, %.split613, %.split612, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.cz
  %.5190396611 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.cz ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ] ; 2 uses
  %i.oo = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.on, %bb.cz ], [ %i.ny, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %i.lq, %.split612 ], [ %i.lw, %.split613 ], [ %i.md, %.split614 ]
  %i.op = add nsw i32 %.5190396611, 1
  %i.oq = sext i32 %.5190396611 to i64
  %i.or = getelementptr inbounds i8, ptr %i.d, i64 %i.oq
  store i8 49, ptr %i.or, align 1, !tbaa !23
  %i.os = add nsw i32 %i.oo, -1
  br label %bb.db

bb.db:                                            ; preds = %.split614, %.split613, %.split612, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.da, %bb.cz
  %.6191 = phi i32 [ %i.op, %bb.da ], [ %.5190, %bb.cz ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ] ; 5 uses
  %.9 = phi i32 [ %i.os, %bb.da ], [ %i.on, %bb.cz ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.ny, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %i.lq, %.split612 ], [ %i.lw, %.split613 ], [ %i.md, %.split614 ]
  %i.ot = sext i32 %.6191 to i64
  %i.ou = getelementptr inbounds i8, ptr %i.d, i64 %i.ot
  store i8 0, ptr %i.ou, align 1, !tbaa !23
  %i.ov = icmp sgt i32 %.6191, 0
  br i1 %i.ov, label %.lr.ph692, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph692:                                        ; preds = %bb.db
  %i.ow = zext nneg i32 %.6191 to i64
  br label %bb.dd

bb.dc:                                            ; preds = %bb.dd
  %i.ox = trunc nuw i64 %i.pa to i32              ; 2 uses
  %i.oy = icmp sgt i32 %i.ox, 0
  br i1 %i.oy, label %bb.dd, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.dd:                                            ; preds = %.lr.ph692, %bb.dc
  %i.oz = phi i32 [ %.6191, %.lr.ph692 ], [ %i.ox, %bb.dc ]
  %indvars.iv.i690 = phi i64 [ %i.ow, %.lr.ph692 ], [ %i.pa, %bb.dc ]
  %i.pa = add nsw i64 %indvars.iv.i690, -1        ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.pc, 48
  br i1 %.not.i, label %bb.dc, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693: ; preds = %bb.dd
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.dc, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693, %bb.db
  %.sroa.3.1.i = phi i32 [ 0, %bb.db ], [ %i.oz, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693 ], [ 0, %bb.dc ] ; 3 uses
  %i.pd = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.pe = add nsw i32 %i.pd, %.9                  ; 2 uses
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

.thread370:                                       ; preds = %bb.cp, %bb.cm, %bb.ci, %bb.dg, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cx, %bb.ce, %bb.cb, %bb.br, %bb.bp, %bb.bl
  %.5 = phi double [ %i.oi, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread ], [ %i.po, %bb.dg ], [ %i.jk, %bb.bp ], [ %i.js, %bb.br ], [ %i.lj, %bb.cb ], [ %i.jf, %bb.bl ], [ %i.nl, %.lr.ph.i302._crit_edge ], [ %i.my, %bb.cx ], [ %i.ln, %bb.ce ], [ %i.mf, %bb.cp ], [ %i.ly, %bb.cm ], [ %i.ls, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, %bb.h, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, %bb.s, %bb.u, %.lr.ph.i247._crit_edge, %bb.ag, %bb.ai, %.lr.ph.i259._crit_edge, %bb.w, %bb.ak, %_ZN17double_conversionL7isDigitEii.exit.thread359, %bb.aw, %.thread370, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, %bb.as, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, %bb.d, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit ], [ %i.ag, %bb.d ], [ -qnan, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264 ], [ %i.ce, %.lr.ph.i247._crit_edge ], [ %i.br, %bb.u ], [ %i.bn, %bb.s ], [ +inf, %bb.w ], [ %i.du, %.lr.ph.i259._crit_edge ], [ %i.dh, %bb.ai ], [ %i.dd, %bb.ag ], [ +qnan, %bb.ak ], [ %i.fi, %_ZN17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252 ], [ %i.es, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356 ], [ %i.ez, %bb.as ], [ %.5, %.thread370 ], [ %i.hi, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread ], [ %i.fn, %bb.aw ], [ %i.aq, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244 ], [ %i.as, %bb.h ]
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
  %i.ih = load i16, ptr %i.ig, align 8, !tbaa !35 ; 4 uses
  %i.ii = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %i.ih, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ii, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %or.cond9 = or i1 %i.dw, %i.ib
  br i1 %or.cond9, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !25
  br label %.thread370

bb.bq:                                            ; preds = %bb.bn
  %.promoted474.pre = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.pre542 = load i16, ptr %.promoted474.pre, align 2, !tbaa !41 ; 2 uses
  %i.il = icmp ne i16 %.pre542, 48
  %or.cond649.not = select i1 %i.ib, i1 true, i1 %i.il
  br i1 %or.cond649.not, label %.loopexit, label %.lr.ph472

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.iu, %bb.bs ], [ 0, %bb.bq ]
  %i.im = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %i.ih, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.im, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %1 to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = lshr exact i64 %i.iq, 1
  %i.is = trunc i64 %i.ir to i32
  store i32 %i.is, ptr %4, align 4, !tbaa !17
  %i.it = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.iu = add nsw i32 %.0157471, -1               ; 2 uses
  %i.iv = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !41 ; 2 uses
  %i.ix = icmp eq i16 %i.iw, 48
  br i1 %i.ix, label %.lr.ph472, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.iy = phi i16 [ %.pre542, %bb.bq ], [ %i.iw, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.iv, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.iu, %bb.bs ] ; 2 uses
  %i.iz = add i16 %i.iy, -48
  %or.cond229476 = icmp ult i16 %i.iz, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.ja = icmp eq i16 %i.ih, 0
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph482, %.backedge
  %i.jb = phi i16 [ %i.iy, %.lr.ph482 ], [ %i.jp, %.backedge ] ; 2 uses
  %.2159480 = phi i32 [ %.1158, %.lr.ph482 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168479 = phi i32 [ %.0166.lcssa, %.lr.ph482 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176478 = phi i1 [ %.0174.lcssa, %.lr.ph482 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187477 = phi i32 [ %.0185.lcssa, %.lr.ph482 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jc = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.jo, %.backedge ] ; 4 uses
  %i.jd = icmp slt i32 %.2168479, 772
  br i1 %i.jd, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.je = trunc nuw nsw i16 %i.jb to i8
  %i.jf = add nsw i32 %.2187477, 1
  %i.jg = sext i32 %.2187477 to i64
  %i.jh = getelementptr inbounds i8, ptr %i.c, i64 %i.jg
  store i8 %i.je, ptr %i.jh, align 1, !tbaa !23
  %i.ji = add nsw i32 %.2168479, 1
  %i.jj = add nsw i32 %.2159480, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.jk = icmp ne i16 %i.jb, 48
  %i.jl = or i1 %.2176478, %i.jk
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.3188 = phi i32 [ %i.jf, %bb.bu ], [ %.2187477, %bb.bv ] ; 4 uses
  %.3177 = phi i1 [ %.2176478, %bb.bu ], [ %i.jl, %bb.bv ] ; 3 uses
  %.3169 = phi i32 [ %i.ji, %bb.bu ], [ %.2168479, %bb.bv ] ; 2 uses
  %.3160 = phi i32 [ %i.jj, %bb.bu ], [ %.2159480, %bb.bv ] ; 3 uses
  br i1 %i.ja, label %.split367, label %bb.bx

.split367:                                        ; preds = %bb.bw
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 2 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, %i.g
  br i1 %i.jn, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, label %.backedge

.backedge:                                        ; preds = %bb.ca, %.split367, %.split368, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299
  %i.jo = phi ptr [ %i.jm, %.split367 ], [ %i.jt, %.split368 ], [ %i.jt, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299 ], [ %i.jv, %bb.ca ] ; 3 uses
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !41 ; 2 uses
  %i.jq = add i16 %i.jp, -48
  %or.cond229 = icmp ult i16 %i.jq, 10
  br i1 %or.cond229, label %bb.bt, label %.critedge11.loopexit, !llvm.loop !51

bb.bx:                                            ; preds = %bb.bw
  %i.jr = load i16, ptr %i.jc, align 2, !tbaa !41
  %i.js = add i16 %i.jr, -48
  %or.cond19.i.i292 = icmp ult i16 %i.js, 10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jc, i64 2 ; 6 uses
  %i.ju = icmp eq ptr %i.jt, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bx
  br i1 %i.ju, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, label %.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bx
  br i1 %i.ju, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, label %bb.by

bb.by:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jc, i64 4 ; 3 uses
  %i.jw = icmp eq ptr %i.jv, %i.g
  br i1 %i.jw, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jx = load i16, ptr %i.jt, align 2, !tbaa !41
  %i.jy = icmp eq i16 %i.jx, %i.ih
  br i1 %i.jy, label %bb.ca, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299

bb.ca:                                            ; preds = %bb.bz
  %i.jz = load i16, ptr %i.jv, align 2, !tbaa !41
  %i.ka = add i16 %i.jz, -48
  %or.cond19.i26.i297 = icmp ult i16 %i.ka, 10
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299: ; preds = %bb.ca, %bb.by, %bb.bz
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa475 = phi ptr [ %.promoted474, %.loopexit ], [ %i.jo, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa475, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.kb = phi ptr [ %.lcssa456, %.critedge ], [ %.lcssa475, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.dw, true
  %i.kc = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.kc, i1 false
  %i.kd = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.kd, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge11
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !25
  br label %.thread370

bb.cc:                                            ; preds = %.critedge11
  %i.kg = load i16, ptr %i.kb, align 2, !tbaa !41
  switch i16 %i.kg, label %bb.cv [
    i16 101, label %bb.cd
    i16 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.kh = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kh, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !25
  br label %.thread370

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.kh, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, %i.g
  br i1 %i.kl, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.j, label %.split606, label %bb.ci

.split606:                                        ; preds = %bb.ch
  store ptr %i.kb, ptr %i.a, align 8, !tbaa !40
  %i.km = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.ci:                                            ; preds = %bb.ch
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !25
  br label %.thread370

bb.cj:                                            ; preds = %bb.cg
  %i.kp = load i16, ptr %i.kk, align 2, !tbaa !41 ; 2 uses
  switch i16 %i.kp, label %5 [
    i16 43, label %bb.ck
    i16 45, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.kq = zext nneg i16 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.g
  br i1 %i.ks, label %bb.cl, label %5

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.j, label %.split607, label %bb.cm

.split607:                                        ; preds = %bb.cl
  store ptr %i.kb, ptr %i.a, align 8, !tbaa !40
  %i.kt = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.cm:                                            ; preds = %bb.cl
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !25
  br label %.thread370

5:                                                ; preds = %bb.cj, %bb.ck
  %.promoted488 = phi ptr [ %i.kr, %bb.ck ], [ %i.kk, %bb.cj ] ; 3 uses
  %.0184 = phi i32 [ %i.kq, %bb.ck ], [ 43, %bb.cj ]
  %6 = icmp eq ptr %.promoted488, %i.g
  br i1 %6, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %5
  %i.kw = load i16, ptr %.promoted488, align 2, !tbaa !41 ; 2 uses
  %i.kx = add i16 %i.kw, -58
  %or.cond230 = icmp ult i16 %i.kx, -10
  br i1 %or.cond230, label %bb.co, label %.preheader

bb.co:                                            ; preds = %bb.cn, %5
  br i1 %i.j, label %.split608, label %bb.cp

.split608:                                        ; preds = %bb.co
  store ptr %i.kb, ptr %i.a, align 8, !tbaa !40
  %i.ky = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.cz, label %bb.da

bb.cp:                                            ; preds = %bb.co
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.la = load double, ptr %i.kz, align 8, !tbaa !25
  br label %.thread370

.preheader:                                       ; preds = %bb.cn, %bb.ct
  %i.lb = phi i16 [ %i.ll, %bb.ct ], [ %i.kw, %bb.cn ] ; 2 uses
  %i.lc = phi ptr [ %i.lk, %bb.ct ], [ %.promoted488, %bb.cn ]
  %.0182 = phi i32 [ %.1183, %bb.ct ], [ 0, %bb.cn ] ; 3 uses
  %i.ld = zext nneg i16 %i.lb to i32
  %i.le = icmp sgt i32 %.0182, 107374181
  br i1 %i.le, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.preheader
  %i.lf = icmp eq i32 %.0182, 107374182
  %i.lg = icmp samesign ult i16 %i.lb, 52
  %or.cond21 = and i1 %i.lf, %i.lg
  br i1 %or.cond21, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %.preheader
  %i.lh = mul nsw i32 %.0182, 10
  %i.li = add i32 %i.lh, -48
  %i.lj = add i32 %i.li, %i.ld
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %.1183 = phi i32 [ %i.lj, %bb.cr ], [ 1073741823, %bb.cq ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 2 ; 5 uses
  %.not219 = icmp eq ptr %i.lk, %i.g
  br i1 %.not219, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !41 ; 2 uses
  %i.lm = add i16 %i.ll, -48
  %or.cond231 = icmp ult i16 %i.lm, 10
  br i1 %or.cond231, label %.preheader, label %bb.cu, !llvm.loop !52

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  store ptr %i.lk, ptr %i.a, align 8, !tbaa !40
  %sext.mask = and i32 %.0184, 255
  %i.ln = icmp eq i32 %sext.mask, 45
  %i.lo = sub nsw i32 0, %.1183
  %i.lp = select i1 %i.ln, i32 %i.lo, i32 %.1183
  %i.lq = add nsw i32 %i.lp, %.4161
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cc
  %.promoted490 = phi ptr [ %i.lk, %bb.cu ], [ %i.kb, %bb.cc ] ; 4 uses
  %.7164 = phi i32 [ %i.lq, %bb.cu ], [ %.4161, %bb.cc ] ; 4 uses
  %i.lr = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.lr, 0
  %.not220 = icmp eq ptr %.promoted490, %i.g      ; 2 uses
  %or.cond405 = select i1 %or.cond25.not, i1 true, i1 %.not220
  br i1 %or.cond405, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !25
  br label %.thread370

bb.cx:                                            ; preds = %bb.cv
  %or.cond406 = select i1 %i.j, i1 true, i1 %.not220
  br i1 %or.cond406, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %bb.cx
  %i.lu = load i16, ptr %.promoted490, align 2, !tbaa !41
  %i.lv = zext i16 %i.lu to i32
  %i.lw = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.lv)
  br i1 %i.lw, label %.lr.ph493, label %.lr.ph.i302._crit_edge

.lr.ph.i302:                                      ; preds = %.lr.ph493
  %i.lx = load i16, ptr %i.mb, align 2, !tbaa !41
  %i.ly = zext i16 %i.lx to i32
  %i.lz = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ly)
  br i1 %i.lz, label %.lr.ph493, label %.lr.ph.i302._crit_edge, !llvm.loop !3

.lr.ph493:                                        ; preds = %.lr.ph.i302.preheader, %.lr.ph.i302
  %i.ma = phi ptr [ %i.mb, %.lr.ph.i302 ], [ %.promoted490, %.lr.ph.i302.preheader ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 2 ; 5 uses
  %.not.not.i306 = icmp eq ptr %i.mb, %i.g
  br i1 %.not.not.i306, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit, label %.lr.ph.i302, !llvm.loop !3

.lr.ph.i302._crit_edge:                           ; preds = %.lr.ph.i302, %.lr.ph.i302.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load double, ptr %i.mc, align 8, !tbaa !25
  br label %.thread370

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493
  store ptr %i.mb, ptr %i.a, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit, %bb.cx
  %.promoted495 = phi ptr [ %i.mb, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cx ] ; 5 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.g
  %or.cond407 = select i1 %.not223, i1 true, i1 %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307
  %i.me = load i16, ptr %.promoted495, align 2, !tbaa !41
  %i.mf = zext i16 %i.me to i32
  %i.mg = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.mf)
  br i1 %i.mg, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split

.lr.ph.i310:                                      ; preds = %.lr.ph496
  %i.mh = load i16, ptr %i.ml, align 2, !tbaa !41
  %i.mi = zext i16 %i.mh to i32
  %i.mj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.mi)
  br i1 %i.mj, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, !llvm.loop !3

.lr.ph496:                                        ; preds = %.lr.ph.i310.preheader, %.lr.ph.i310
  %i.mk = phi ptr [ %i.ml, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 2 ; 5 uses
  %.not.not.i314 = icmp eq ptr %i.ml, %i.g
  br i1 %.not.not.i314, label %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390: ; preds = %bb.bo
  br i1 %.0174.lcssa, label %bb.cz, label %bb.da

._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.mm = phi ptr [ %i.jm, %.split367 ], [ %i.jt, %.split368 ], [ %i.jt, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.mm, ptr %i.a, align 8
  %i.mn = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.cz, label %bb.da

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.ml, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %i.ml, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ht, %.split365 ], [ %i.hm, %.split364 ], [ %i.ht, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.hl, %.split364 ], [ %i.hl, %.split365 ], [ %i.hl, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.a, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307
  %i.mo = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split ]
  %i.mp = trunc i8 %.2194 to i1
  br i1 %i.mp, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.cy

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread: ; preds = %bb.cf, %bb.bm, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315
  %i.mq = phi ptr [ %i.mo, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315 ], [ %i.kb, %bb.cf ], [ %.lcssa456, %bb.bm ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315 ], [ %.4189, %bb.cf ], [ %.0185.lcssa, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %i.mr = sext i32 %.5190387 to i64
  %i.ms = getelementptr inbounds i8, ptr %i.c, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mu = load i16, ptr %i.mt, align 8, !tbaa !35
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !25
  %i.mx = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.e, ptr noundef %i.ms, i1 noundef zeroext %.0180, i16 noundef zeroext %i.mu, i1 noundef zeroext %i.j, double noundef %i.mw, i1 noundef zeroext %3, ptr noundef %i.d)
  %i.my = ptrtoint ptr %i.mq to i64
  %i.mz = ptrtoint ptr %1 to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = lshr exact i64 %i.na, 1
  %i.nc = trunc i64 %i.nb to i32
  store i32 %i.nc, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread370

bb.cy:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315
  %i.nd = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.split608, %.split607, %.split606, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, %bb.cy
  %.5190396605 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.cy ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %.4189, %.split606 ], [ %.4189, %.split607 ], [ %.4189, %.split608 ] ; 2 uses
  %i.ne = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %i.nd, %bb.cy ], [ %i.mn, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %i.km, %.split606 ], [ %i.kt, %.split607 ], [ %i.ky, %.split608 ]
  %i.nf = add nsw i32 %.5190396605, 1
  %i.ng = sext i32 %.5190396605 to i64
  %i.nh = getelementptr inbounds i8, ptr %i.c, i64 %i.ng
  store i8 49, ptr %i.nh, align 1, !tbaa !23
  %i.ni = add nsw i32 %i.ne, -1
  br label %bb.da

bb.da:                                            ; preds = %.split608, %.split607, %.split606, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, %bb.cz, %bb.cy
  %.6191 = phi i32 [ %i.nf, %bb.cz ], [ %.5190, %bb.cy ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %.4189, %.split606 ], [ %.4189, %.split607 ], [ %.4189, %.split608 ] ; 5 uses
  %.9 = phi i32 [ %i.ni, %bb.cz ], [ %i.nd, %bb.cy ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390 ], [ %i.mn, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread599 ], [ %i.km, %.split606 ], [ %i.kt, %.split607 ], [ %i.ky, %.split608 ]
  %i.nj = sext i32 %.6191 to i64
  %i.nk = getelementptr inbounds i8, ptr %i.c, i64 %i.nj
  store i8 0, ptr %i.nk, align 1, !tbaa !23
  %i.nl = icmp sgt i32 %.6191, 0
  br i1 %i.nl, label %.lr.ph690, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph690:                                        ; preds = %bb.da
  %i.nm = zext nneg i32 %.6191 to i64
  br label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %i.nn = trunc nuw i64 %i.nq to i32              ; 2 uses
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %bb.dc, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.dc:                                            ; preds = %.lr.ph690, %bb.db
  %i.np = phi i32 [ %.6191, %.lr.ph690 ], [ %i.nn, %bb.db ]
  %indvars.iv.i688 = phi i64 [ %i.nm, %.lr.ph690 ], [ %i.nq, %bb.db ]
  %i.nq = add nsw i64 %indvars.iv.i688, -1        ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.ns, 48
  br i1 %.not.i, label %bb.db, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691: ; preds = %bb.dc
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.db, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691, %bb.da
  %.sroa.3.1.i = phi i32 [ 0, %bb.da ], [ %i.np, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge691 ], [ 0, %bb.db ] ; 3 uses
  %i.nt = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.nu = add nsw i32 %i.nt, %.9                  ; 2 uses
  br i1 %3, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.nv = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nu)
  br label %bb.df

bb.de:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.nw = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.c, i32 %.sroa.3.1.i, i32 noundef %i.nu)
  %i.nx = fpext float %i.nw to double
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0153 = phi double [ %i.nv, %bb.dd ], [ %i.nx, %bb.de ] ; 2 uses
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %1 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = lshr exact i64 %i.ob, 1
  %i.od = trunc i64 %i.oc to i32
  store i32 %i.od, ptr %4, align 4, !tbaa !17
  %i.oe = fneg double %.0153
  %i.of = select i1 %.0180, double %i.oe, double %.0153
end_hunk_2
