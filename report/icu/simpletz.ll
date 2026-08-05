inline.NumInlined: 61
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7814SimpleTimeZone9getOffsetEhiiihiiR10UErrorCode:bb.a

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %8, align 4, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %_ZN6icu_785Grego11monthLengthEii.exit.thread18

bb.d:                                             ; preds = %bb.c
  %i.c = srem i32 %2, 100
  %.not.i.i = icmp ne i32 %i.c, 0
  %i.d = srem i32 %2, 400
  %.not.i = icmp eq i32 %i.d, 0
  %or.cond.i = or i1 %.not.i.i, %.not.i
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN6icu_785Grego12MONTH_LENGTHE, i64 %i.e ; 2 uses
  br i1 %or.cond.i, label %_ZN6icu_785Grego11monthLengthEii.exit.thread, label %_ZN6icu_785Grego11monthLengthEii.exit

_ZN6icu_785Grego11monthLengthEii.exit:            ; preds = %bb.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !41
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %.not20 = icmp eq i32 %3, 0
  br i1 %.not20, label %_ZN6icu_785Grego19previousMonthLengthEii.exit, label %_ZN6icu_785Grego11monthLengthEii.exit.i

_ZN6icu_785Grego11monthLengthEii.exit.thread18:   ; preds = %bb.c
  %i.i = zext nneg i32 %3 to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN6icu_785Grego12MONTH_LENGTHE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !41
  %i.l = sext i8 %i.k to i32                      ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %_ZN6icu_785Grego19previousMonthLengthEii.exit, label %_ZN6icu_785Grego11monthLengthEii.exit.i

_ZN6icu_785Grego11monthLengthEii.exit.thread:     ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.n = load i8, ptr %i.m, align 1, !tbaa !41
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %.not21 = icmp eq i32 %3, 0
  br i1 %.not21, label %_ZN6icu_785Grego19previousMonthLengthEii.exit, label %_ZN6icu_785Grego11monthLengthEii.exit.i

_ZN6icu_785Grego11monthLengthEii.exit.i:          ; preds = %_ZN6icu_785Grego11monthLengthEii.exit.thread, %_ZN6icu_785Grego11monthLengthEii.exit, %_ZN6icu_785Grego11monthLengthEii.exit.thread18
  %i.p = phi i32 [ %i.l, %_ZN6icu_785Grego11monthLengthEii.exit.thread18 ], [ %i.o, %_ZN6icu_785Grego11monthLengthEii.exit.thread ], [ %i.h, %_ZN6icu_785Grego11monthLengthEii.exit ]
  %i.q = phi i32 [ 0, %_ZN6icu_785Grego11monthLengthEii.exit.thread18 ], [ 12, %_ZN6icu_785Grego11monthLengthEii.exit.thread ], [ 0, %_ZN6icu_785Grego11monthLengthEii.exit ]
  %i.r = add nsw i32 %3, -1
  %i.s = add nuw nsw i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN6icu_785Grego12MONTH_LENGTHE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !41
  %i.w = sext i8 %i.v to i32
  br label %_ZN6icu_785Grego19previousMonthLengthEii.exit

_ZN6icu_785Grego19previousMonthLengthEii.exit:    ; preds = %_ZN6icu_785Grego11monthLengthEii.exit.thread18, %_ZN6icu_785Grego11monthLengthEii.exit.thread, %_ZN6icu_785Grego11monthLengthEii.exit, %_ZN6icu_785Grego11monthLengthEii.exit.i
  %i.x = phi i32 [ %i.p, %_ZN6icu_785Grego11monthLengthEii.exit.i ], [ %i.h, %_ZN6icu_785Grego11monthLengthEii.exit ], [ %i.o, %_ZN6icu_785Grego11monthLengthEii.exit.thread ], [ %i.l, %_ZN6icu_785Grego11monthLengthEii.exit.thread18 ]
  %i.y = phi i32 [ %i.w, %_ZN6icu_785Grego11monthLengthEii.exit.i ], [ 31, %_ZN6icu_785Grego11monthLengthEii.exit ], [ 31, %_ZN6icu_785Grego11monthLengthEii.exit.thread ], [ 31, %_ZN6icu_785Grego11monthLengthEii.exit.thread18 ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %8)
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_785Grego19previousMonthLengthEii.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.ac, %_ZN6icu_785Grego19previousMonthLengthEii.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZNK6icu_7814SimpleTimeZone9getOffsetEhiiihiiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %9) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %9, align 4, !tbaa !39
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i8 %1, 1
  %or.cond = icmp ugt i8 %1, 1
  %i.d = icmp ugt i32 %3, 11
  %or.cond6 = or i1 %or.cond, %i.d
  %i.e = icmp slt i32 %4, 1
  %or.cond8 = or i1 %or.cond6, %i.e
  br i1 %or.cond8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %4, %7
  %i.g = add i8 %5, -8
  %i.h = icmp ult i8 %i.g, -7
  %or.cond14 = or i1 %i.h, %i.f
  %i.i = icmp ugt i32 %6, 86399999
  %or.cond18 = or i1 %i.i, %or.cond14
  %i.j = sub i32 31, %8
  %i.k = sub i32 31, %7
  %i.l = or i32 %i.j, %i.k
  %i.m = icmp ugt i32 %i.l, 3
  %or.cond26 = or i1 %or.cond18, %i.m
  br i1 %or.cond26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  store i32 1, ptr %9, align 4, !tbaa !39
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28
  %.not83 = icmp eq i8 %i.q, 0
  br i1 %.not83, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26
  %i.t = icmp slt i32 %2, %i.s
  %or.cond29 = or i1 %i.c, %i.t
  br i1 %or.cond29, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i8, ptr %i.u, align 8, !tbaa !10    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i8, ptr %i.w, align 8, !tbaa !35    ; 2 uses
  %i.y = icmp sgt i8 %i.v, %i.x                   ; 3 uses
  %i.z = trunc nuw nsw i32 %3 to i8               ; 2 uses
  %i.aa = trunc i32 %7 to i8                      ; 2 uses
  %i.ab = trunc i32 %8 to i8                      ; 2 uses
  %i.ac = trunc i32 %4 to i8                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34
  %i.af = icmp eq i32 %i.ae, 2
  %i.ag = sub nsw i32 0, %i.o                     ; 2 uses
  %spec.select = select i1 %i.af, i32 %i.ag, i32 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  %i.ap = tail call noundef i32 @_ZN6icu_7814SimpleTimeZone13compareToRuleEaaaaaiiNS0_5EModeEaaai(i8 noundef signext %i.z, i8 noundef signext %i.aa, i8 noundef signext %i.ab, i8 noundef signext %i.ac, i8 noundef signext %5, i32 noundef %6, i32 noundef %spec.select, i32 noundef %i.ai, i8 noundef signext %i.v, i8 noundef signext %i.ak, i8 noundef signext %i.am, i32 noundef %i.ao)
  %i.aq = icmp sgt i32 %i.ap, -1                  ; 3 uses
  %i.ar = xor i1 %i.y, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38
  switch i32 %i.at, label %bb.k [
    i32 0, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.aw = phi i32 [ %i.av, %bb.i ], [ %i.ag, %bb.j ], [ 0, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = tail call noundef i32 @_ZN6icu_7814SimpleTimeZone13compareToRuleEaaaaaiiNS0_5EModeEaaai(i8 noundef signext %i.z, i8 noundef signext %i.aa, i8 noundef signext %i.ab, i8 noundef signext %i.ac, i8 noundef signext %5, i32 noundef %6, i32 noundef %i.aw, i32 noundef %i.ay, i8 noundef signext %i.x, i8 noundef signext %i.ba, i8 noundef signext %i.bc, i32 noundef %i.be)
  %i.bg = icmp slt i32 %i.bf, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.0 = phi i1 [ %i.bg, %bb.k ], [ false, %bb.g ] ; 2 uses
  %i.bh = xor i1 %i.y, true
  %or.cond31 = and i1 %i.aq, %i.bh
  %or.cond33 = and i1 %or.cond31, %.0
  %or.cond35 = or i1 %i.aq, %.0
  %or.cond85 = and i1 %i.y, %or.cond35
  %or.cond86 = or i1 %or.cond33, %or.cond85
  br i1 %or.cond86, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !31
  %i.bk = add nsw i32 %i.bj, %i.o
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.f, %bb.e, %bb.m, %bb.a, %bb.d
  %.1 = phi i32 [ 0, %bb.a ], [ -1, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.bk, %bb.m ], [ %i.o, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1, 2) i32 @_ZN6icu_7814SimpleTimeZone13compareToRuleEaaaaaiiNS0_5EModeEaaai(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, i32 noundef %11) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %6, %5                       ; 6 uses
  %i.b = icmp sgt i32 %i.a, 86399999
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %12 = add i32 %6, %5
  %13 = add i32 %12, -86400000                    ; 2 uses
  %14 = udiv i32 %13, 86400000
  %15 = and i32 %14, 1
  %lcmp.mod.not.not = icmp eq i32 %15, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %16 = add nsw i32 %i.a, -86400000               ; 2 uses
  %17 = add i8 %3, 1                              ; 2 uses
  %18 = srem i8 %4, 7
  %19 = add nsw i8 %18, 1                         ; 2 uses
  %20 = icmp sgt i8 %17, %1                       ; 2 uses
  %spec.select.prol = select i1 %20, i8 1, i8 %17 ; 2 uses
  %21 = zext i1 %20 to i8
  %spec.select73.prol = add i8 %0, %21            ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05798.unr = phi i8 [ %0, %.lr.ph.preheader ], [ %spec.select73.prol, %.lr.ph.prol ]
  %.05997.unr = phi i8 [ %3, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.06396.unr = phi i8 [ %4, %.lr.ph.preheader ], [ %19, %.lr.ph.prol ]
  %.06595.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %16, %.lr.ph.prol ]
  %.lcssa132.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %16, %.lr.ph.prol ]
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %19, %.lr.ph.prol ]
  %spec.select.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %spec.select73.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %spec.select73.prol, %.lr.ph.prol ]
  %22 = icmp ult i32 %13, 86400000
  br i1 %22, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph106, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05798 = phi i8 [ %spec.select73.1, %.lr.ph ], [ %.05798.unr, %.lr.ph.prol.loopexit ]
  %.05997 = phi i8 [ %spec.select.1, %.lr.ph ], [ %.05997.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.06396 = phi i8 [ %i.g, %.lr.ph ], [ %.06396.unr, %.lr.ph.prol.loopexit ]
  %.06595 = phi i32 [ %i.d, %.lr.ph ], [ %.06595.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %23 = add i8 %.05997, 1
  %24 = srem i8 %.06396, 7
  %25 = add nsw i8 %24, 1
  %26 = icmp sgt i8 %23, %1                       ; 2 uses
  %27 = zext i1 %26 to i8
  %spec.select73 = add i8 %.05798, %27
  %i.d = add nsw i32 %.06595, -172800000          ; 2 uses
  %i.e = add i8 %.05997, 2
  %28 = select i1 %26, i8 2, i8 %i.e              ; 2 uses
  %i.f = srem i8 %25, 7
  %i.g = add nsw i8 %i.f, 1                       ; 2 uses
  %i.h = icmp sgt i8 %28, %1                      ; 2 uses
  %spec.select.1 = select i1 %i.h, i8 1, i8 %28   ; 2 uses
  %i.i = zext i1 %i.h to i8
  %spec.select73.1 = add i8 %spec.select73, %i.i  ; 2 uses
  %29 = icmp sgt i32 %.06595, 259199999
  br i1 %29, label %.lr.ph, label %._crit_edge, !llvm.loop !52

.lr.ph106:                                        ; preds = %.preheader, %.lr.ph106
  %.2105 = phi i8 [ %spec.select75, %.lr.ph106 ], [ %0, %.preheader ]
  %.261104 = phi i8 [ %spec.select74, %.lr.ph106 ], [ %3, %.preheader ]
  %.164103 = phi i8 [ %i.o, %.lr.ph106 ], [ %4, %.preheader ]
  %.166102 = phi i32 [ %i.j, %.lr.ph106 ], [ %i.a, %.preheader ] ; 2 uses
  %i.j = add nsw i32 %.166102, 86400000           ; 2 uses
  %i.k = add i8 %.261104, -1                      ; 2 uses
  %i.l = sext i8 %.164103 to i16
  %.lhs.trunc77 = add nsw i16 %i.l, 5
  %i.m = srem i16 %.lhs.trunc77, 7
  %i.n = trunc nsw i16 %i.m to i8
  %i.o = add nsw i8 %i.n, 1                       ; 2 uses
  %i.p = icmp slt i8 %i.k, 1                      ; 2 uses
  %spec.select74 = select i1 %i.p, i8 %2, i8 %i.k ; 2 uses
  %i.q = sext i1 %i.p to i8
  %spec.select75 = add i8 %.2105, %i.q            ; 2 uses
  %i.r = icmp samesign ult i32 %.166102, -86400000
  br i1 %i.r, label %.lr.ph106, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph106, %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  %.166.lcssa = phi i32 [ %i.a, %.preheader ], [ %i.d, %.lr.ph ], [ %.lcssa132.unr, %.lr.ph.prol.loopexit ], [ %i.j, %.lr.ph106 ] ; 2 uses
  %.164.lcssa = phi i8 [ %4, %.preheader ], [ %i.g, %.lr.ph ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.o, %.lr.ph106 ] ; 4 uses
  %.261.lcssa = phi i8 [ %3, %.preheader ], [ %spec.select.1, %.lr.ph ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select74, %.lr.ph106 ] ; 5 uses
  %.2.lcssa = phi i8 [ %0, %.preheader ], [ %spec.select73.1, %.lr.ph ], [ %spec.select73.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select75, %.lr.ph106 ] ; 2 uses
  %i.s = icmp slt i8 %.2.lcssa, %8
  br i1 %i.s, label %bb.n, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = icmp sgt i8 %.2.lcssa, %8
  br i1 %i.t, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sext i8 %1 to i32
  %spec.select76 = tail call i8 @llvm.smin.i8(i8 %10, i8 %1) ; 5 uses
  switch i32 %7, label %bb.j [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = sext i8 %spec.select76 to i32
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = sext i8 %spec.select76 to i32
  %i.x = icmp sgt i8 %spec.select76, 0
  %i.y = mul nsw i32 %i.w, 7                      ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.y, -6
  %i.aa = sext i8 %9 to i16
  %i.ab = sext i8 %.261.lcssa to i16
  %i.ac = xor i8 %.164.lcssa, -1
  %i.ad = sext i8 %i.ac to i16
  %.neg = add nsw i16 %i.aa, 7
  %i.ae = add nsw i16 %.neg, %i.ad
  %.lhs.trunc79 = add nsw i16 %i.ae, %i.ab
  %i.af = srem i16 %.lhs.trunc79, 7
  %.sext80 = sext i16 %i.af to i32
  %i.ag = add nsw i32 %i.z, %.sext80
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ah = sext i8 %.164.lcssa to i32
  %i.ai = sext i8 %.261.lcssa to i32
  %i.aj = sext i8 %9 to i32
  %.neg94 = add nsw i32 %i.u, 7                   ; 2 uses
  %i.ak = add nsw i32 %.neg94, %i.ah
  %i.al = add nsw i32 %i.aj, %i.ai
  %i.am = sub nsw i32 %i.ak, %i.al
  %.lhs.trunc81 = trunc nsw i32 %i.am to i16
  %i.an = srem i16 %.lhs.trunc81, 7
  %narrow = sub nsw i16 0, %i.an
  %.sext82.neg = sext i16 %narrow to i32
  %i.ao = add nsw i32 %.neg94, %i.y
  %i.ap = add nsw i32 %i.ao, %.sext82.neg
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.aq = sext i8 %spec.select76 to i32           ; 2 uses
  %i.ar = sext i8 %9 to i32
  %i.as = sext i8 %.164.lcssa to i32
  %i.at = sext i8 %.261.lcssa to i32
  %.neg91 = add nsw i32 %i.ar, 49
  %i.au = add nsw i32 %i.aq, %i.as
  %i.av = sub nsw i32 %.neg91, %i.au
  %i.aw = add nsw i32 %i.av, %i.at
  %.lhs.trunc83 = trunc nsw i32 %i.aw to i16
  %i.ax = srem i16 %.lhs.trunc83, 7
  %.sext84 = sext i16 %i.ax to i32
  %i.ay = add nsw i32 %.sext84, %i.aq
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.az = sext i8 %spec.select76 to i32           ; 2 uses
  %i.ba = sext i8 %9 to i32
  %i.bb = sext i8 %.164.lcssa to i32
  %i.bc = sext i8 %.261.lcssa to i32
  %reass.sub111 = sub nsw i32 %i.az, %i.ba
  %i.bd = add nsw i32 %reass.sub111, 49
  %i.be = add nsw i32 %i.bd, %i.bb
  %i.bf = sub nsw i32 %i.be, %i.bc
  %.lhs.trunc85 = trunc nsw i32 %i.bf to i16
  %i.bg = srem i16 %.lhs.trunc85, 7
  %.sext86 = sext i16 %i.bg to i32
  %i.bh = sub nsw i32 %i.az, %.sext86
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.h, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.ap, %bb.g ], [ %i.ay, %bb.h ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bi = sext i8 %.261.lcssa to i32              ; 2 uses
  %i.bj = icmp sgt i32 %.0, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp slt i32 %.0, %i.bi
  br i1 %i.bk, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp slt i32 %.166.lcssa, %11
  br i1 %i.bl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp sgt i32 %.166.lcssa, %11
  %. = zext i1 %i.bm to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.b, %._crit_edge
  %.1 = phi i32 [ 1, %bb.b ], [ -1, %._crit_edge ], [ -1, %bb.l ], [ -1, %bb.j ], [ 1, %bb.k ], [ %., %bb.m ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7814SimpleTimeZone18getOffsetFromLocalEd20UTimeZoneLocalOptionS1_RiS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = load i32, ptr %6, align 4, !tbaa !39
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(160) %0)
  store i32 %i.k, ptr %4, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S2_S1_R10UErrorCode(double noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.l = load i32, ptr %6, align 4, !tbaa !39
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 4, !tbaa !48   ; 4 uses
  %i.o = load i8, ptr %i.c, align 1, !tbaa !41
  %i.p = sext i8 %i.o to i32                      ; 2 uses
  %i.q = load i8, ptr %i.d, align 1, !tbaa !41
  %i.r = sext i8 %i.q to i32
  %i.s = load i8, ptr %i.e, align 1, !tbaa !41
  %i.t = load i32, ptr %i.b, align 4, !tbaa !48
  %i.u = and i32 %i.n, 3
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.w = srem i32 %i.n, 100
  %.not.i.i = icmp ne i32 %i.w, 0
  %i.x = srem i32 %i.n, 400
  %.not.i = icmp eq i32 %i.x, 0
  %or.cond.i = or i1 %.not.i.i, %.not.i
  br i1 %or.cond.i, label %_ZN6icu_785Grego11monthLengthEii.exit, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i

_ZN6icu_785Grego10isLeapYearEi.exit.thread.i:     ; preds = %bb.d, %bb.c
  br label %_ZN6icu_785Grego11monthLengthEii.exit

_ZN6icu_785Grego11monthLengthEii.exit:            ; preds = %bb.d, %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i
  %i.y = phi i32 [ 0, %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i ], [ 12, %bb.d ]
  %i.z = add nsw i32 %i.y, %i.p
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr @_ZN6icu_785Grego12MONTH_LENGTHE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41
  %i.ad = sext i8 %i.ac to i32
  %i.ae = load ptr, ptr %0, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef zeroext 1, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i8 noundef zeroext %i.s, i32 noundef %i.t, i32 noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.ai = load i32, ptr %4, align 4, !tbaa !48
  %i.aj = sub nsw i32 %i.ah, %i.ai                ; 2 uses
  store i32 %i.aj, ptr %5, align 4, !tbaa !48
  %i.ak = load i32, ptr %6, align 4, !tbaa !39
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN6icu_785Grego11monthLengthEii.exit
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.an = and i32 %2, 3
  switch i32 %i.an, label %bb.g [
    i32 1, label %bb.j
    i32 3, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = and i32 %2, 12
  %.not32 = icmp eq i32 %i.ao, 12
  br i1 %.not32, label %.critedge, label %bb.j

bb.h:                                             ; preds = %bb.e
end_hunk_0
