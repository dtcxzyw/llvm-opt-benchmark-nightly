inline.NumInlined: 24
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL11kUtf8Limits = internal unnamed_addr constant [5 x i8] c"\C0\E0\F0\F8\FC", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z20ConvertUTF8ToUnicodeRK11CStringBaseIcERS_IwE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((8, 12)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 5 uses
  %i.f = sext i32 %i.e to i64                     ; 6 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.05898.i = phi i32 [ %i.am, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.06197.i = phi i64 [ %.364.i, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %i.h = add i64 %.06197.i, 1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.06197.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19    ; 7 uses
  %i.k = zext i8 %i.j to i32
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = icmp samesign ult i8 %i.j, -64
  br i1 %i.m, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.n = icmp samesign ult i8 %i.j, -32
  br i1 %i.n, label %bb.c, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.o = icmp samesign ult i8 %i.j, -16
  br i1 %i.o, label %bb.c, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.p = icmp samesign ult i8 %i.j, -8
  br i1 %i.p, label %bb.c, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.q = icmp samesign ult i8 %i.j, -4
  %spec.select.i = select i1 %i.q, i32 4, i32 5
  br label %bb.c

bb.c:                                             ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.056.lcssa.i = phi i32 [ 1, %.preheader.preheader.i ], [ 3, %.preheader.2.i ], [ 2, %.preheader.1.i ], [ %spec.select.i, %.preheader.3.i ] ; 3 uses
  %i.r = zext nneg i32 %.056.lcssa.i to i64
  %i.s = getelementptr i8, ptr @_ZL11kUtf8Limits, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 %i.k, %i.v
  %i.x = add i64 %.06197.i, 2
  %i.y = add nsw i32 %.056.lcssa.i, -1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = add i64 %i.x, %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.162.i = phi i64 [ %i.h, %bb.c ], [ %i.ac, %bb.f ] ; 3 uses
  %.157.i = phi i32 [ %.056.lcssa.i, %bb.c ], [ %i.aj, %bb.f ]
  %.051.i = phi i32 [ %i.w, %bb.c ], [ %i.ai, %bb.f ] ; 3 uses
  %i.ab = icmp eq i64 %.162.i, %i.f
  br i1 %i.ab, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %.162.i, 1                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %.162.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19  ; 2 uses
  %or.cond.i = icmp sgt i8 %i.ae, -65
  br i1 %or.cond.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl i32 %.051.i, 6
  %i.ah = add nsw i32 %i.af, -128
  %i.ai = or disjoint i32 %i.ah, %i.ag            ; 2 uses
  %i.aj = add nsw i32 %.157.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %.thread.i, label %bb.d, !llvm.loop !20

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.15285.i = phi i32 [ %i.ai, %bb.f ], [ %.051.i, %bb.d ], [ %.051.i, %bb.e ] ; 2 uses
  %.26384.i = phi i64 [ %i.aa, %bb.f ], [ %i.f, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ak = icmp ult i32 %.15285.i, 65536
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.al = icmp ugt i32 %.15285.i, 1114111
  br i1 %i.al, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i, %.lr.ph.i
  %.sink.i = phi i32 [ 1, %.lr.ph.i ], [ 1, %.thread.i ], [ 2, %bb.g ]
  %.364.i = phi i64 [ %i.h, %.lr.ph.i ], [ %.26384.i, %.thread.i ], [ %.26384.i, %bb.g ] ; 2 uses
  %i.am = add i32 %.sink.i, %.05898.i             ; 2 uses
  %i.an = icmp eq i64 %.364.i, %i.f
  br i1 %i.an, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit, label %.lr.ph.i

_ZL13Utf8_To_Utf16PwPmPKcm.exit:                  ; preds = %bb.b, %bb.g, %bb.h, %bb.a
  %.058.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.am, %bb.h ], [ %.05898.i, %bb.b ], [ %.05898.i, %bb.g ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22 ; 3 uses
  %.not.i9 = icmp sgt i32 %i.ap, %.058.lcssa.i
  br i1 %.not.i9, label %_ZN11CStringBaseIwE9GetBufferEi.exit, label %2

2:                                                ; preds = %_ZL13Utf8_To_Utf16PwPmPKcm.exit
  %3 = add nsw i32 %.058.lcssa.i, 1               ; 3 uses
  %4 = icmp eq i32 %3, %i.ap
  br i1 %4, label %_ZN11CStringBaseIwE9GetBufferEi.exit, label %bb.i

bb.i:                                             ; preds = %2
  %i.aq = zext nneg i32 %3 to i64
  %i.ar = icmp slt i32 %.058.lcssa.i, -1
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #4 ; 3 uses
  %i.av = icmp sgt i32 %i.ap, 0
  br i1 %i.av, label %._crit_edge.thread.i.i, label %bb.j

._crit_edge.thread.i.i:                           ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #5
  %.pre = load i32, ptr %i.a, align 8, !tbaa !8
  %.pre33.pre = load ptr, ptr %0, align 8, !tbaa !15
  %.pre34.pre = load i32, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %.pre40 = sext i32 %.pre34.pre to i64
  %i.aw = sext i32 %.pre to i64
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i, %bb.i
  %.pre39.pre-phi = phi i64 [ %.pre40, %._crit_edge.thread.i.i ], [ %i.f, %bb.i ]
  %.pre34 = phi i32 [ %.pre34.pre, %._crit_edge.thread.i.i ], [ %i.e, %bb.i ]
  %.pre33 = phi ptr [ %.pre33.pre, %._crit_edge.thread.i.i ], [ %i.c, %bb.i ]
  %i.ax = phi i64 [ %i.aw, %._crit_edge.thread.i.i ], [ 0, %bb.i ]
  store ptr %i.au, ptr %1, align 8, !tbaa !12
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax
  store i32 0, ptr %i.ay, align 4, !tbaa !13
  store i32 %3, ptr %i.ao, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

_ZN11CStringBaseIwE9GetBufferEi.exit:             ; preds = %_ZL13Utf8_To_Utf16PwPmPKcm.exit, %2, %bb.j
  %.pre-phi = phi i64 [ %i.f, %_ZL13Utf8_To_Utf16PwPmPKcm.exit ], [ %i.f, %2 ], [ %.pre39.pre-phi, %bb.j ] ; 3 uses
  %5 = phi i32 [ %i.e, %_ZL13Utf8_To_Utf16PwPmPKcm.exit ], [ %i.e, %2 ], [ %.pre34, %bb.j ]
  %6 = phi ptr [ %i.c, %_ZL13Utf8_To_Utf16PwPmPKcm.exit ], [ %i.c, %2 ], [ %.pre33, %bb.j ] ; 2 uses
  %7 = phi ptr [ %i.b, %_ZL13Utf8_To_Utf16PwPmPKcm.exit ], [ %i.b, %2 ], [ %i.au, %bb.j ] ; 6 uses
  %i.az = icmp eq i32 %5, 0
  br i1 %i.az, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit31, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZN11CStringBaseIwE9GetBufferEi.exit, %bb.t
  %.05898.i11 = phi i64 [ %i.co, %bb.t ], [ 0, %_ZN11CStringBaseIwE9GetBufferEi.exit ] ; 6 uses
  %.06197.i12 = phi i64 [ %.364.i28, %bb.t ], [ 0, %_ZN11CStringBaseIwE9GetBufferEi.exit ] ; 3 uses
  %i.ba = add i64 %.06197.i12, 1                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 %.06197.i12
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19  ; 7 uses
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = icmp sgt i8 %i.bc, -1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.05898.i11
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !13
  br label %bb.t, !llvm.loop !23

bb.l:                                             ; preds = %.lr.ph.i10
  %i.bg = icmp samesign ult i8 %i.bc, -64
  br i1 %i.bg, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit31, label %.preheader.preheader.i13

.preheader.preheader.i13:                         ; preds = %bb.l
  %i.bh = icmp samesign ult i8 %i.bc, -32
  br i1 %i.bh, label %bb.m, label %.preheader.1.i14

.preheader.1.i14:                                 ; preds = %.preheader.preheader.i13
  %i.bi = icmp samesign ult i8 %i.bc, -16
  br i1 %i.bi, label %bb.m, label %.preheader.2.i15

.preheader.2.i15:                                 ; preds = %.preheader.1.i14
  %i.bj = icmp samesign ult i8 %i.bc, -8
  br i1 %i.bj, label %bb.m, label %.preheader.3.i16

.preheader.3.i16:                                 ; preds = %.preheader.2.i15
  %i.bk = icmp samesign ult i8 %i.bc, -4
  %spec.select.i17 = select i1 %i.bk, i32 4, i32 5
  br label %bb.m

bb.m:                                             ; preds = %.preheader.3.i16, %.preheader.2.i15, %.preheader.1.i14, %.preheader.preheader.i13
  %.056.lcssa.i18 = phi i32 [ 1, %.preheader.preheader.i13 ], [ 3, %.preheader.2.i15 ], [ 2, %.preheader.1.i14 ], [ %spec.select.i17, %.preheader.3.i16 ] ; 3 uses
  %i.bl = zext nneg i32 %.056.lcssa.i18 to i64
  %i.bm = getelementptr i8, ptr @_ZL11kUtf8Limits, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub nsw i32 %i.bd, %i.bp
  %i.br = add i64 %.06197.i12, 2
  %i.bs = add nsw i32 %.056.lcssa.i18, -1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add i64 %i.br, %i.bt
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.162.i19 = phi i64 [ %i.ba, %bb.m ], [ %i.bw, %bb.p ] ; 3 uses
  %.157.i20 = phi i32 [ %.056.lcssa.i18, %bb.m ], [ %i.cd, %bb.p ]
  %.051.i21 = phi i32 [ %i.bq, %bb.m ], [ %i.cc, %bb.p ] ; 3 uses
  %i.bv = icmp eq i64 %.162.i19, %.pre-phi
  br i1 %i.bv, label %.thread.i24, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = add i64 %.162.i19, 1                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 %.162.i19
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19  ; 2 uses
  %or.cond.i22 = icmp sgt i8 %i.by, -65
  br i1 %or.cond.i22, label %.thread.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl i32 %.051.i21, 6
  %i.cb = add nsw i32 %i.bz, -128
  %i.cc = or disjoint i32 %i.cb, %i.ca            ; 2 uses
  %i.cd = add nsw i32 %.157.i20, -1               ; 2 uses
  %.not.i23 = icmp eq i32 %i.cd, 0
  br i1 %.not.i23, label %.thread.i24, label %bb.n, !llvm.loop !20

.thread.i24:                                      ; preds = %bb.p, %bb.o, %bb.n
  %.15285.i25 = phi i32 [ %i.cc, %bb.p ], [ %.051.i21, %bb.n ], [ %.051.i21, %bb.o ] ; 4 uses
  %.26384.i26 = phi i64 [ %i.bu, %bb.p ], [ %.pre-phi, %bb.n ], [ %i.bw, %bb.o ] ; 2 uses
  %i.ce = icmp ult i32 %.15285.i25, 65536
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread.i24
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.05898.i11
  store i32 %.15285.i25, ptr %i.cf, align 4, !tbaa !13
  br label %bb.t

bb.r:                                             ; preds = %.thread.i24
  %i.cg = add i32 %.15285.i25, -65536             ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 1048575
  br i1 %i.ch, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit31, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = lshr i32 %i.cg, 10
  %i.cj = or disjoint i32 %i.ci, 55296
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.05898.i11 ; 2 uses
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !13
  %i.cl = and i32 %.15285.i25, 1023
  %i.cm = or disjoint i32 %i.cl, 56320
  %i.cn = getelementptr i8, ptr %i.ck, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.k
  %.sink.i27 = phi i64 [ 2, %bb.s ], [ 1, %bb.q ], [ 1, %bb.k ]
  %.364.i28 = phi i64 [ %.26384.i26, %bb.s ], [ %.26384.i26, %bb.q ], [ %i.ba, %bb.k ] ; 2 uses
  %i.co = add i64 %.sink.i27, %.05898.i11         ; 2 uses
  %i.cp = icmp eq i64 %.364.i28, %.pre-phi
  br i1 %i.cp, label %_ZL13Utf8_To_Utf16PwPmPKcm.exit31, label %.lr.ph.i10

_ZL13Utf8_To_Utf16PwPmPKcm.exit31:                ; preds = %bb.l, %bb.r, %bb.t, %_ZN11CStringBaseIwE9GetBufferEi.exit
  %.058.lcssa.i29 = phi i64 [ 0, %_ZN11CStringBaseIwE9GetBufferEi.exit ], [ %i.co, %bb.t ], [ %.05898.i11, %bb.l ], [ %.05898.i11, %bb.r ]
  %i.cq = phi i1 [ true, %_ZN11CStringBaseIwE9GetBufferEi.exit ], [ true, %bb.t ], [ false, %bb.l ], [ false, %bb.r ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.058.lcssa.i29
  store i32 0, ptr %i.cr, align 4, !tbaa !13
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull %7) ; 2 uses
  %i.cs = trunc i64 %wcslen.i.i to i32
  %sext.i = shl i64 %wcslen.i.i, 32
  %i.ct = ashr exact i64 %sext.i, 30
  %i.cu = getelementptr inbounds i8, ptr %7, i64 %i.ct
  store i32 0, ptr %i.cu, align 4, !tbaa !13
  store i32 %i.cs, ptr %i.a, align 8, !tbaa !8
  ret i1 %i.cq
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z20ConvertUnicodeToUTF8RK11CStringBaseIwERS_IcE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((8, 12)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !18
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  store i8 0, ptr %i.b, align 1, !tbaa !19
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = sext i32 %i.e to i64                     ; 5 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit, label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %bb.a, %.loopexit.split.us.us.us.i
  %.05588.us.us.i = phi i64 [ %.3.us.us.i, %.loopexit.split.us.us.us.i ], [ 0, %bb.a ] ; 3 uses
  %.05887.us.us.i = phi i32 [ %.260.us.us.i, %.loopexit.split.us.us.us.i ], [ 0, %bb.a ] ; 4 uses
  %i.h = add i64 %.05588.us.us.i, 1               ; 7 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05588.us.us.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 7 uses
  %i.k = icmp ult i32 %i.j, 128
  br i1 %i.k, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.l = and i32 %i.j, -2048
  %or.cond.us.us.i = icmp eq i32 %i.l, 55296
  br i1 %or.cond.us.us.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i32 %i.j, 56319
  %i.n = icmp eq i64 %i.h, %i.f
  %or.cond72.us.us.i = or i1 %i.n, %i.m
  br i1 %or.cond72.us.us.i, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = add i32 %i.p, -57344
  %or.cond3.us.us.i = icmp ult i32 %i.q, -1024
  br i1 %or.cond3.us.us.i, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit, label %.thread126.i

.thread126.i:                                     ; preds = %bb.d
  %i.r = add i64 %.05588.us.us.i, 2
  br label %.split.us.us.us.i

bb.e:                                             ; preds = %bb.b
  %i.s = icmp ult i32 %i.j, 2048
  br i1 %i.s, label %.split.us.us.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ult i32 %i.j, 65536
  br i1 %i.t, label %.split.us.us.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult i32 %i.j, 2097152
  br i1 %i.u, label %.split.us.us.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ult i32 %i.j, 67108864
  %spec.select.i = select i1 %i.v, i32 3, i32 4
  br label %.split.us.us.us.i

.split.us.us.us.i:                                ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.thread126.i
  %.257.us.us119.i = phi i64 [ %i.h, %bb.e ], [ %i.r, %.thread126.i ], [ %i.h, %bb.f ], [ %i.h, %bb.h ], [ %i.h, %bb.g ]
  %.053.lcssa.us.us.i = phi i32 [ 0, %bb.e ], [ 2, %.thread126.i ], [ 1, %bb.f ], [ %spec.select.i, %bb.h ], [ 2, %bb.g ]
  %i.w = add i32 %.05887.us.us.i, 2
  %i.x = add i32 %i.w, %.053.lcssa.us.us.i
  br label %.loopexit.split.us.us.us.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.y = add i32 %.05887.us.us.i, 1
  br label %.loopexit.split.us.us.us.i, !llvm.loop !24

.loopexit.split.us.us.us.i:                       ; preds = %bb.i, %.split.us.us.us.i
  %.260.us.us.i = phi i32 [ %i.y, %bb.i ], [ %i.x, %.split.us.us.us.i ] ; 2 uses
  %.3.us.us.i = phi i64 [ %i.h, %bb.i ], [ %.257.us.us119.i, %.split.us.us.us.i ] ; 2 uses
  %i.z = icmp eq i64 %.3.us.us.i, %i.f
  br i1 %i.z, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit, label %.lr.ph.split.us.split.us.i

_ZL13Utf16_To_Utf8PcPmPKwm.exit:                  ; preds = %bb.c, %bb.d, %.loopexit.split.us.us.us.i, %bb.a
  %.058.lcssa.i = phi i32 [ 0, %bb.a ], [ %.05887.us.us.i, %bb.c ], [ %.05887.us.us.i, %bb.d ], [ %.260.us.us.i, %.loopexit.split.us.us.us.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25 ; 3 uses
  %.not.i = icmp sgt i32 %i.ab, %.058.lcssa.i
  br i1 %.not.i, label %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split, label %bb.j

bb.j:                                             ; preds = %_ZL13Utf16_To_Utf8PcPmPKwm.exit
  %2 = add nsw i32 %.058.lcssa.i, 1               ; 3 uses
  %3 = icmp eq i32 %2, %i.ab
  br i1 %3, label %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %2 to i64
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #4 ; 11 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = icmp sgt i32 %i.ab, 0
  %.pre35 = load i32, ptr %i.a, align 8, !tbaa !18 ; 6 uses
  br i1 %i.af, label %.preheader.i.i, label %bb.l

.preheader.i.i:                                   ; preds = %bb.k
  %i.ag = icmp sgt i32 %.pre35, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !15 ; 10 uses
  br i1 %i.ag, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i56 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre35 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre35, 4
  %i.ah = sub i64 %.pre.i.i56, %i.ae
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i32 %.pre35, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !19
  %wide.load58 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %wide.load, ptr %i.ak, align 1, !tbaa !19
  store <16 x i8> %wide.load58, ptr %i.al, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index61
  %wide.load62 = load <4 x i8>, ptr %i.an, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index61
  store <4 x i8> %wide.load62, ptr %i.ao, align 1, !tbaa !19
  %index.next63 = add nuw i64 %index61, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %n.vec60, %wide.trip.count.i.i
  br i1 %cmp.n64, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.i.i.prol
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !19
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !31

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.at = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.av = icmp eq ptr %.pre.i.i, null
  br i1 %i.av, label %bb.l, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.i.i
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.next.i.i
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !19
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.next.i.i.1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !19
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.next.i.i.2
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !19
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !33

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #5
  %.pre = load i32, ptr %i.a, align 8, !tbaa !18
  %.pre36.pre = load ptr, ptr %0, align 8, !tbaa !12
  %.pre37.pre = load i32, ptr %i.d, align 8, !tbaa !8 ; 2 uses
  %.pre41 = sext i32 %.pre37.pre to i64
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.k
  %.pre40.pre-phi = phi i64 [ %.pre41, %._crit_edge.thread.i.i ], [ %i.f, %._crit_edge.i.i ], [ %i.f, %bb.k ]
  %.pre37 = phi i32 [ %.pre37.pre, %._crit_edge.thread.i.i ], [ %i.e, %._crit_edge.i.i ], [ %i.e, %bb.k ]
  %.pre36 = phi ptr [ %.pre36.pre, %._crit_edge.thread.i.i ], [ %i.c, %._crit_edge.i.i ], [ %i.c, %bb.k ]
  %i.bi = phi i32 [ %.pre, %._crit_edge.thread.i.i ], [ %.pre35, %._crit_edge.i.i ], [ %.pre35, %bb.k ]
  store ptr %i.ad, ptr %1, align 8, !tbaa !15
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.ad, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !19
  store i32 %2, ptr %i.aa, align 4, !tbaa !25
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit

_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split: ; preds = %bb.j, %_ZL13Utf16_To_Utf8PcPmPKwm.exit
  %.pr = load ptr, ptr %1, align 8, !tbaa !15
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit

_ZN11CStringBaseIcE9GetBufferEi.exit:             ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split, %bb.l
  %4 = phi ptr [ %.pr, %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split ], [ %i.ad, %bb.l ] ; 6 uses
  %.pre-phi = phi i64 [ %i.f, %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split ], [ %.pre40.pre-phi, %bb.l ] ; 4 uses
  %i.bl = phi i32 [ %i.e, %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split ], [ %.pre37, %bb.l ]
  %i.bm = phi ptr [ %i.c, %_ZN11CStringBaseIcE9GetBufferEi.exitthread-pre-split ], [ %.pre36, %bb.l ] ; 4 uses
  %i.bn = icmp eq i32 %i.bl, 0
  br i1 %i.bn, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit
  %.not.i10 = icmp eq ptr %4, null
  br i1 %.not.i10, label %.lr.ph.split.us.split.us.i13, label %.lr.ph.split.i

.lr.ph.split.us.split.us.i13:                     ; preds = %.lr.ph.i9, %.loopexit.split.us.us.us.i21
  %.05588.us.us.i14 = phi i64 [ %.3.us.us.i23, %.loopexit.split.us.us.us.i21 ], [ 0, %.lr.ph.i9 ] ; 3 uses
  %.05887.us.us.i15 = phi i64 [ %.260.us.us.i22, %.loopexit.split.us.us.us.i21 ], [ 0, %.lr.ph.i9 ] ; 4 uses
  %i.bo = add i64 %.05588.us.us.i14, 1            ; 7 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.05588.us.us.i14
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13 ; 7 uses
  %i.br = icmp ult i32 %i.bq, 128
  br i1 %i.br, label %bb.t, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.split.us.i13
  %i.bs = and i32 %i.bq, -2048
  %or.cond.us.us.i16 = icmp eq i32 %i.bs, 55296
  br i1 %or.cond.us.us.i16, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp samesign ugt i32 %i.bq, 56319
  %i.bu = icmp eq i64 %i.bo, %.pre-phi
  %or.cond72.us.us.i24 = or i1 %i.bu, %i.bt
  br i1 %or.cond72.us.us.i24, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = add i32 %i.bw, -57344
  %or.cond3.us.us.i25 = icmp ult i32 %i.bx, -1024
  br i1 %or.cond3.us.us.i25, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.thread126.i26

.thread126.i26:                                   ; preds = %bb.o
  %i.by = add i64 %.05588.us.us.i14, 2
  br label %.split.us.us.us.i18

bb.p:                                             ; preds = %bb.m
  %i.bz = icmp ult i32 %i.bq, 2048
  br i1 %i.bz, label %.split.us.us.us.i18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp ult i32 %i.bq, 65536
  br i1 %i.ca, label %.split.us.us.us.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = icmp ult i32 %i.bq, 2097152
  br i1 %i.cb, label %.split.us.us.us.i18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp ult i32 %i.bq, 67108864
  %spec.select.i17 = select i1 %i.cc, i64 3, i64 4
  br label %.split.us.us.us.i18

.split.us.us.us.i18:                              ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %.thread126.i26
  %.257.us.us119.i19 = phi i64 [ %i.bo, %bb.p ], [ %i.by, %.thread126.i26 ], [ %i.bo, %bb.q ], [ %i.bo, %bb.s ], [ %i.bo, %bb.r ]
  %.053.lcssa.us.us.i20 = phi i64 [ 0, %bb.p ], [ 2, %.thread126.i26 ], [ 1, %bb.q ], [ %spec.select.i17, %bb.s ], [ 2, %bb.r ]
  %i.cd = add i64 %.05887.us.us.i15, 2
  %i.ce = add i64 %i.cd, %.053.lcssa.us.us.i20
  br label %.loopexit.split.us.us.us.i21

bb.t:                                             ; preds = %.lr.ph.split.us.split.us.i13
  %i.cf = add i64 %.05887.us.us.i15, 1
  br label %.loopexit.split.us.us.us.i21, !llvm.loop !24

.loopexit.split.us.us.us.i21:                     ; preds = %bb.t, %.split.us.us.us.i18
  %.260.us.us.i22 = phi i64 [ %i.cf, %bb.t ], [ %i.ce, %.split.us.us.us.i18 ] ; 2 uses
  %.3.us.us.i23 = phi i64 [ %i.bo, %bb.t ], [ %.257.us.us119.i19, %.split.us.us.us.i18 ] ; 2 uses
  %i.cg = icmp eq i64 %.3.us.us.i23, %.pre-phi
  br i1 %i.cg, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.lr.ph.split.us.split.us.i13

.lr.ph.split.i:                                   ; preds = %.lr.ph.i9, %.loopexit.split.i
  %.05588.i = phi i64 [ %.3.i, %.loopexit.split.i ], [ 0, %.lr.ph.i9 ] ; 3 uses
  %.05887.i = phi i64 [ %.260.i, %.loopexit.split.i ], [ 0, %.lr.ph.i9 ] ; 6 uses
  %i.ch = add i64 %.05588.i, 1                    ; 7 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.05588.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !13 ; 13 uses
  %i.ck = icmp ult i32 %i.cj, 128
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.cl = trunc nuw nsw i32 %i.cj to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 %.05887.i
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !19
  %i.cn = add i64 %.05887.i, 1
  br label %.loopexit.split.i, !llvm.loop !24

bb.v:                                             ; preds = %.lr.ph.split.i
  %i.co = and i32 %i.cj, -2048
  %or.cond.i = icmp eq i32 %i.co, 55296
  br i1 %or.cond.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cp = icmp samesign ugt i32 %i.cj, 56319
  %i.cq = icmp eq i64 %i.ch, %.pre-phi
  %or.cond72.i = or i1 %i.cq, %i.cp
  br i1 %or.cond72.i, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ch
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !13 ; 2 uses
  %i.ct = add i32 %i.cs, -57344
  %or.cond3.i = icmp ult i32 %i.ct, -1024
  br i1 %or.cond3.i, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.thread141.i

.thread141.i:                                     ; preds = %bb.x
  %i.cu = add i64 %.05588.i, 2
  %i.cv = shl nuw nsw i32 %i.cj, 10
  %i.cw = add nsw i32 %i.cv, -56613888
  %i.cx = add nuw nsw i32 %i.cw, %i.cs
  br label %.split.i

bb.y:                                             ; preds = %bb.v
  %i.cy = icmp ult i32 %i.cj, 2048
  br i1 %i.cy, label %.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = icmp ult i32 %i.cj, 65536
  br i1 %i.cz, label %.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = icmp ult i32 %i.cj, 2097152
  br i1 %i.da, label %.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = icmp ult i32 %i.cj, 67108864
  %spec.select147.i = select i1 %i.db, i32 4, i32 5
  br label %.split.i

.split.i:                                         ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %.thread141.i
  %.152135.i = phi i32 [ %i.cj, %bb.y ], [ %i.cx, %.thread141.i ], [ %i.cj, %bb.z ], [ %i.cj, %bb.ab ], [ %i.cj, %bb.aa ] ; 3 uses
  %.257133.i = phi i64 [ %i.ch, %bb.y ], [ %i.cu, %.thread141.i ], [ %i.ch, %bb.z ], [ %i.ch, %bb.ab ], [ %i.ch, %bb.aa ] ; 2 uses
  %.053.lcssa.i = phi i32 [ 1, %bb.y ], [ 3, %.thread141.i ], [ 2, %bb.z ], [ %spec.select147.i, %bb.ab ], [ 3, %bb.aa ] ; 7 uses
  %i.dc = zext nneg i32 %.053.lcssa.i to i64
  %i.dd = getelementptr i8, ptr @_ZL11kUtf8Limits, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %i.dg = mul nuw nsw i32 %.053.lcssa.i, 6
  %i.dh = lshr i32 %.152135.i, %i.dg
  %i.di = trunc i32 %i.dh to i8
  %i.dj = add i8 %i.df, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %.05887.i
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !19
  %i.dl = add i64 %.05887.i, 1                    ; 3 uses
  %i.dm = zext nneg i32 %.053.lcssa.i to i64      ; 2 uses
  %min.iters.check65 = icmp samesign ult i32 %.053.lcssa.i, 4
  br i1 %min.iters.check65, label %scalar.ph.preheader, label %vector.body71

vector.body71:                                    ; preds = %.split.i
  %broadcast.splatinsert69 = insertelement <4 x i32> poison, i32 %.053.lcssa.i, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.152135.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec68 = and i64 %i.dm, 4                     ; 3 uses
  %i.dn = trunc nuw nsw i64 %n.vec68 to i32
  %i.do = sub nsw i32 %.053.lcssa.i, %i.dn
  %i.dp = add i64 %i.dl, %n.vec68                 ; 2 uses
  %i.dq = mul <4 x i32> %broadcast.splatinsert69, <i32 6, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ds = add nsw <4 x i32> %i.dr, <i32 -6, i32 -12, i32 -18, i32 -24>
  %i.dt = lshr <4 x i32> %broadcast.splat, %i.ds
  %i.du = trunc <4 x i32> %i.dt to <4 x i8>
  %i.dv = and <4 x i8> %i.du, splat (i8 63)
  %i.dw = or disjoint <4 x i8> %i.dv, splat (i8 -128)
  %i.dx = getelementptr i8, ptr %4, i64 %i.dl
  store <4 x i8> %i.dw, ptr %i.dx, align 1, !tbaa !19
  %cmp.n75 = icmp eq i64 %n.vec68, %i.dm
  br i1 %cmp.n75, label %.loopexit.split.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split.i, %vector.body71
  %.159.i.ph = phi i64 [ %i.dl, %.split.i ], [ %i.dp, %vector.body71 ]
  %.154.i.ph = phi i32 [ %.053.lcssa.i, %.split.i ], [ %i.do, %vector.body71 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.159.i = phi i64 [ %i.ef, %scalar.ph ], [ %.159.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.154.i = phi i32 [ %i.dy, %scalar.ph ], [ %.154.i.ph, %scalar.ph.preheader ]
  %i.dy = add nsw i32 %.154.i, -1                 ; 3 uses
  %i.dz = mul nsw i32 %i.dy, 6
  %i.ea = lshr i32 %.152135.i, %i.dz
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = and i8 %i.eb, 63
  %i.ed = or disjoint i8 %i.ec, -128
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 %.159.i
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !19
  %i.ef = add i64 %.159.i, 1                      ; 2 uses
  %.not70.i = icmp eq i32 %i.dy, 0
  br i1 %.not70.i, label %.loopexit.split.i, label %scalar.ph, !llvm.loop !34

.loopexit.split.i:                                ; preds = %scalar.ph, %vector.body71, %bb.u
  %.260.i = phi i64 [ %i.cn, %bb.u ], [ %i.dp, %vector.body71 ], [ %i.ef, %scalar.ph ] ; 2 uses
  %.3.i = phi i64 [ %i.ch, %bb.u ], [ %.257133.i, %vector.body71 ], [ %.257133.i, %scalar.ph ] ; 2 uses
  %i.eg = icmp eq i64 %.3.i, %.pre-phi
  br i1 %i.eg, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.lr.ph.split.i

_ZL13Utf16_To_Utf8PcPmPKwm.exit27:                ; preds = %bb.w, %bb.x, %.loopexit.split.i, %bb.n, %bb.o, %.loopexit.split.us.us.us.i21, %_ZN11CStringBaseIcE9GetBufferEi.exit
  %.058.lcssa.i11 = phi i64 [ 0, %_ZN11CStringBaseIcE9GetBufferEi.exit ], [ %.260.us.us.i22, %.loopexit.split.us.us.us.i21 ], [ %.05887.us.us.i15, %bb.n ], [ %.05887.us.us.i15, %bb.o ], [ %.260.i, %.loopexit.split.i ], [ %.05887.i, %bb.w ], [ %.05887.i, %bb.x ]
  %i.eh = phi i1 [ true, %_ZN11CStringBaseIcE9GetBufferEi.exit ], [ true, %.loopexit.split.us.us.us.i21 ], [ false, %bb.n ], [ false, %bb.o ], [ true, %.loopexit.split.i ], [ false, %bb.w ], [ false, %bb.x ]
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %.058.lcssa.i11
  store i8 0, ptr %i.ei, align 1, !tbaa !19
  %i.ej = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ej) ; 2 uses
  %i.ek = trunc i64 %strlen.i.i to i32
  %sext.i = shl i64 %strlen.i.i, 32
  %i.el = ashr exact i64 %sext.i, 32
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  store i8 0, ptr %i.em, align 1, !tbaa !19
  store i32 %i.ek, ptr %i.a, align 8, !tbaa !18
  ret i1 %i.eh
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_ZTS11CStringBaseIwE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"p1 wchar_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"wchar_t", !6, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTS11CStringBaseIcE", !17, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!16, !5, i64 8}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!9, !5, i64 12}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!16, !5, i64 12}
!26 = distinct !{!26, !21, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = distinct !{!30, !21, !27, !28}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !21, !27}
!34 = distinct !{!34, !21, !28, !27}
end_hunk_0
