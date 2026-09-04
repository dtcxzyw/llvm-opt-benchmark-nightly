Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1590
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731

bb.ho:                                            ; preds = %bb.hm
  %i.aya = getelementptr inbounds nuw i8, ptr %i.avn, i64 328
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !101 ; 2 uses
  %i.ayc = add nsw i64 %i.axw, -4                 ; 3 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayb, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !104
  %i.ayf = load ptr, ptr %i.ayb, align 8, !tbaa !105 ; 2 uses
  %i.ayg = ptrtoint ptr %i.aye to i64
  %i.ayh = ptrtoint ptr %i.ayf to i64
  %i.ayi = sub i64 %i.ayg, %i.ayh
  %i.ayj = ashr exact i64 %i.ayi, 2               ; 2 uses
  %.not.i.i.i.i.i.i1729 = icmp ult i64 %i.ayc, %i.ayj
  br i1 %.not.i.i.i.i.i.i1729, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1730, label %.invoke3649

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1730:       ; preds = %bb.ho
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.ayc
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i: ; preds = %bb.hl
  %i.ayl = and i16 %i.axv, 2047
  %i.aym = zext nneg i16 %i.ayl to i32            ; 2 uses
  %i.ayn = sub nsw i32 0, %i.aym
  %.not.i6.i.i.i1736 = icmp slt i16 %.sroa.0.0.copyload.i43.i, 0
  %i.ayo = select i1 %.not.i6.i.i.i1736, i32 %i.ayn, i32 %i.aym
  %i.ayp = sitofp i32 %i.ayo to float
  br label %bb.hp

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1730, %bb.hn
  %.0.in.i.i.i.i1732 = phi ptr [ %i.axz, %bb.hn ], [ %i.ayk, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1730 ]
  %.0.i7.i.i.i1733 = load float, ptr %.0.in.i.i.i.i1732, align 4, !tbaa !19 ; 2 uses
  %i.ayq = fcmp ord float %.0.i7.i.i.i1733, 0.000000e+00
  br i1 %i.ayq, label %bb.hp, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i

bb.hp:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i
  %.sroa.05.0.i.i75.i = phi float [ %i.ayp, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i ], [ %.0.i7.i.i.i1733, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731 ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.axc, i64 %i.akq
  %.sroa.0.0.copyload.i.i45.i = load i64, ptr %i.ayr, align 4 ; 2 uses
  %i.ays = lshr i64 %.sroa.0.0.copyload.i.i45.i, 32
  %i.ayt = trunc i64 %i.ays to i8
  %i.ayu = trunc i64 %.sroa.0.0.copyload.i.i45.i to i32
  %i.ayv = bitcast i32 %i.ayu to float            ; 2 uses
  switch i8 %i.ayt, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i [
    i8 1, label %bb.hq
    i8 2, label %bb.hr
  ]

bb.hq:                                            ; preds = %bb.hp
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i

bb.hr:                                            ; preds = %bb.hp
  %i.ayw = fmul float %i.js, %i.ayv
  %i.ayx = fmul float %i.ayw, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i: ; preds = %bb.hr, %bb.hq, %bb.hp
  %.sroa.0.0.i.i47.i = phi float [ %i.ayx, %bb.hr ], [ %i.ayv, %bb.hq ], [ +qnan, %bb.hp ] ; 2 uses
  %i.ayy = load i8, ptr %i.avs, align 4
  %i.ayz = and i8 %i.ayy, 16
  %i.aza = icmp eq i8 %i.ayz, 0
  br i1 %i.aza, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i, label %bb.hs

bb.hs:                                            ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i
  %i.azb = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.avr, i8 noundef zeroext %i.akr, i8 noundef zeroext %i.t, float noundef %i.jo)
          to label %.noexc1753 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1753:                                       ; preds = %bb.hs
  %i.azc = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.avr, i8 noundef zeroext %i.akr, i8 noundef zeroext %i.t, float noundef %i.jo)
          to label %.noexc1754 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1754:                                       ; preds = %.noexc1753
  %i.azd = fadd float %i.azb, %i.azc              ; 2 uses
  %i.aze = fcmp ord float %i.azd, 0.000000e+00
  %.sroa.0.0.i48.i = select i1 %i.aze, float %i.azd, float 0.000000e+00
  %i.azf = fadd float %.sroa.0.0.i.i47.i, %.sroa.0.0.i48.i
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i: ; preds = %.noexc1754, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i
  %.sroa.06.0.i49.i = phi float [ %i.azf, %.noexc1754 ], [ %.sroa.0.0.i.i47.i, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i ] ; 3 uses
  %i.azg = fcmp ord float %.sroa.06.0.i49.i, 0.000000e+00
  br i1 %i.azg, label %bb.ht, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i

bb.ht:                                            ; preds = %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i
  %i.azh = fmul float %.sroa.05.0.i.i75.i, %.sroa.06.0.i49.i
  %i.azi = fdiv float %.sroa.06.0.i49.i, %.sroa.05.0.i.i75.i
  %i.azj = select i1 %i.hr, float %i.azh, float %i.azi
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i: ; preds = %bb.ht, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1727
  %.sroa.059.1.i = phi float [ +qnan, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i ], [ +qnan, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1731 ], [ %i.azj, %bb.ht ], [ +qnan, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1727 ] ; 3 uses
  %i.azk = invoke fastcc noundef float @_ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff(ptr noundef nonnull %i.avn, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %i.jo)
          to label %.noexc1755 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc1755:                                       ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i
  %i.azl = fcmp ord float %.sroa.06.0.i.i1728, 0.000000e+00
  br i1 %i.azl, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %.noexc1755
  %i.azm = fcmp uno float %i.azk, 0.000000e+00
  %i.azn = fcmp olt float %.sroa.06.0.i.i1728, %i.azk
  %or.cond82.i = select i1 %i.azm, i1 true, i1 %i.azn
  br i1 %or.cond82.i, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %bb.hu
  br label %bb.hz

bb.hw:                                            ; preds = %.noexc1755
  %i.azo = fcmp ord float %.sroa.059.1.i, 0.000000e+00
  br i1 %i.azo, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.azp = fcmp uno float %i.azk, 0.000000e+00
  %i.azq = fcmp olt float %.sroa.059.1.i, %i.azk
  %or.cond83.i = select i1 %i.azp, i1 true, i1 %i.azq
  br i1 %or.cond83.i, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %.sroa.062.0.i = phi float [ %.sroa.06.0.i.i1728, %bb.hv ], [ %i.azk, %bb.hu ], [ %.sroa.059.1.i, %bb.hy ], [ %i.azk, %bb.hx ], [ %i.azk, %bb.hw ] ; 3 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.avn, i64 155
  %i.azs = getelementptr inbounds nuw [2 x i8], ptr %i.azr, i64 %spec.select2312
  %i.azt = load i16, ptr %i.azs, align 1, !tbaa !12 ; 2 uses
  %i.azu = and i16 %i.azt, 7
  %i.azv = icmp eq i16 %i.azu, 0
  br i1 %i.azv, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.azw = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.avr, i16 %i.azt, float noundef %i.ht)
          to label %.noexc1756 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc1756:                                       ; preds = %bb.ia
  %i.azx = load i8, ptr %i.avs, align 4
  %i.azy = and i8 %i.azx, 16
  %i.azz = icmp ne i8 %i.azy, 0
  %i.baa = fcmp ord float %i.azw, 0.000000e+00
  %or.cond.i.i1734 = select i1 %i.azz, i1 %i.baa, i1 false
  br i1 %or.cond.i.i1734, label %bb.ib, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

bb.ib:                                            ; preds = %.noexc1756
  %i.bab = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.avr, i8 noundef zeroext %i.akp, i8 noundef zeroext %i.t, float noundef %i.jo)
          to label %.noexc1757 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1757:                                       ; preds = %bb.ib
  %i.bac = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.avr, i8 noundef zeroext %i.akp, i8 noundef zeroext %i.t, float noundef %i.jo)
          to label %.noexc1758 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1758:                                       ; preds = %.noexc1757
  %i.bad = fadd float %i.bab, %i.bac              ; 2 uses
  %i.bae = fcmp ord float %i.bad, 0.000000e+00
  %.sroa.0.0.i51.i = select i1 %i.bae, float %i.bad, float 0.000000e+00
  %i.baf = fadd float %i.azw, %.sroa.0.0.i51.i
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i: ; preds = %.noexc1758, %.noexc1756
  %.sroa.010.1.i.i1735 = phi float [ %i.azw, %.noexc1756 ], [ %i.baf, %.noexc1758 ] ; 3 uses
  %i.bag = fcmp ord float %.sroa.010.1.i.i1735, 0.000000e+00
  %i.bah = fcmp ogt float %.sroa.062.0.i, %.sroa.010.1.i.i1735
  %or.cond84.i = select i1 %i.bag, i1 %i.bah, i1 false
  br i1 %or.cond84.i, label %bb.ic, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i

bb.ic:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i: ; preds = %bb.ic, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i, %bb.hz
  %.sroa.062.1.i = phi float [ %.sroa.010.1.i.i1735, %bb.ic ], [ %.sroa.062.0.i, %bb.hz ], [ %.sroa.062.0.i, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i ] ; 2 uses
  %or.cond85.i = fcmp ult float %.sroa.062.1.i, 0.000000e+00
  br i1 %or.cond85.i, label %bb.id, label %.noexc930

bb.id:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i
  br label %.noexc930

.noexc930:                                        ; preds = %bb.id, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1744, %bb.hc, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1717, %bb.hb, %.noexc1747
  %.sroa.062.3.i = phi float [ +qnan, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1744 ], [ +qnan, %.noexc1747 ], [ +qnan, %bb.hb ], [ 0.000000e+00, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i ], [ %.sroa.062.1.i, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i ], [ 0.000000e+00, %bb.id ], [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1717 ], [ +qnan, %bb.hc ]
  %i.bai = getelementptr inbounds nuw i8, ptr %i.avn, i64 344
  store float %.sroa.062.3.i, ptr %i.bai, align 8, !tbaa !16
  %i.baj = getelementptr inbounds nuw i8, ptr %.sroa.02121.02864, i64 8 ; 2 uses
  %i.bak = icmp eq ptr %i.baj, %i.avl
  br i1 %i.bak, label %.loopexit2435.loopexit2913, label %.lr.ph2865

bb.ie:                                            ; preds = %.noexc929
  br i1 %i.avm, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph2867

.lr.ph2867:                                       ; preds = %bb.ie, %.lr.ph2867
  %.sroa.02117.02866 = phi ptr [ %i.ban, %.lr.ph2867 ], [ %i.avk, %bb.ie ] ; 2 uses
  %i.bal = load ptr, ptr %.sroa.02117.02866, align 8, !tbaa !25
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 344
  store i32 2143289344, ptr %i.bam, align 4, !tbaa !16
  %i.ban = getelementptr inbounds nuw i8, ptr %.sroa.02117.02866, i64 8 ; 2 uses
  %i.bao = icmp eq ptr %i.ban, %i.avl
  br i1 %i.bao, label %.loopexit2435, label %.lr.ph2867

.loopexit2435.loopexit2913:                       ; preds = %.noexc930
  %.pre3146 = load ptr, ptr %20, align 8, !tbaa !23
  %.pre3147 = load ptr, ptr %i.ako, align 8, !tbaa !23
  br label %.loopexit2435

.loopexit2435:                                    ; preds = %.lr.ph2867, %.loopexit2435.loopexit2913
  %i.bap = phi ptr [ %.pre3147, %.loopexit2435.loopexit2913 ], [ %i.avl, %.lr.ph2867 ] ; 3 uses
  %i.baq = phi ptr [ %.pre3146, %.loopexit2435.loopexit2913 ], [ %i.avk, %.lr.ph2867 ] ; 3 uses
  %i.bar = icmp eq ptr %i.baq, %i.bap
  br i1 %i.bar, label %.noexc931, label %.lr.ph.i1704

.lr.ph.i1704:                                     ; preds = %.loopexit2435, %bb.io
  %.075.i = phi float [ %.1.i1706, %bb.io ], [ 0.000000e+00, %.loopexit2435 ] ; 9 uses
  %.sroa.070.074.i = phi ptr [ %i.bcf, %bb.io ], [ %i.baq, %.loopexit2435 ] ; 2 uses
  %i.bas = load ptr, ptr %.sroa.070.074.i, align 8, !tbaa !25 ; 8 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 340 ; 2 uses
  %.sroa.0.0.copyload.i1705 = load float, ptr %i.bat, align 4, !tbaa !16
  %i.bau = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bas, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i882, float %.sroa.0.0.copyload.i1705, float noundef %i.ht, float noundef %6)
          to label %.noexc1711 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit ; 5 uses

.noexc1711:                                       ; preds = %.lr.ph.i1704
  %i.bav = load float, ptr %i.akn, align 8, !tbaa !168 ; 2 uses
  %i.baw = fcmp olt float %i.bav, 0.000000e+00
  br i1 %i.baw, label %bb.if, label %bb.ij

bb.if:                                            ; preds = %.noexc1711
  %i.bax = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bas)
          to label %.noexc1712 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit

.noexc1712:                                       ; preds = %bb.if
  %i.bay = fneg float %i.bax
  %i.baz = fmul float %i.bau, %i.bay              ; 2 uses
  %or.cond.i1709 = fcmp ueq float %i.baz, 0.000000e+00
  br i1 %or.cond.i1709, label %bb.io, label %bb.ig

bb.ig:                                            ; preds = %.noexc1712
  %i.bba = load float, ptr %i.akn, align 8, !tbaa !168
  %i.bbb = load float, ptr %i.aks, align 4, !tbaa !169
  %i.bbc = fdiv float %i.bba, %i.bbb
  %i.bbd = call float @llvm.fmuladd.f32(float %i.bbc, float %i.baz, float %i.bau) ; 3 uses
  %i.bbe = invoke noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bas, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %i.bbd, float noundef %.37872179, float noundef %i.jo)
          to label %.noexc1713 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit ; 2 uses

.noexc1713:                                       ; preds = %bb.ig
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bas, i64 344
  %i.bbg = load float, ptr %i.bbf, align 4, !tbaa !16 ; 2 uses
  %i.bbh = fcmp olt float %i.bbe, %i.bbg
  %.0.i.i1710 = select i1 %i.bbh, float %i.bbg, float %i.bbe ; 3 uses
  %i.bbi = fcmp ord float %i.bbd, 0.000000e+00
  br i1 %i.bbi, label %bb.ih, label %bb.io

bb.ih:                                            ; preds = %.noexc1713
  %i.bbj = fcmp ord float %.0.i.i1710, 0.000000e+00
  %i.bbk = fcmp une float %i.bbd, %.0.i.i1710
  %or.cond67.i = and i1 %i.bbj, %i.bbk
  br i1 %or.cond67.i, label %bb.ii, label %bb.io

bb.ii:                                            ; preds = %bb.ih
  %i.bbl = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bas)
          to label %.noexc1714 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit

.noexc1714:                                       ; preds = %bb.ii
  %i.bbm = fsub float %.0.i.i1710, %i.bau
  %i.bbn = fadd float %.075.i, %i.bbm
  %i.bbo = load float, ptr %i.bat, align 4, !tbaa !161
  %i.bbp = load float, ptr %i.aks, align 4, !tbaa !169
  %i.bbq = call float @llvm.fmuladd.f32(float %i.bbl, float %i.bbo, float %i.bbp)
  store float %i.bbq, ptr %i.aks, align 4, !tbaa !169
  br label %bb.io

bb.ij:                                            ; preds = %.noexc1711
  %i.bbr = fcmp ogt float %i.bav, 0.000000e+00
  br i1 %i.bbr, label %bb.ik, label %bb.io

bb.ik:                                            ; preds = %bb.ij
  %i.bbs = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bas)
          to label %.noexc1715 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit ; 3 uses

.noexc1715:                                       ; preds = %bb.ik
  %or.cond3.i1708 = fcmp ueq float %i.bbs, 0.000000e+00
  br i1 %or.cond3.i1708, label %bb.io, label %bb.il

bb.il:                                            ; preds = %.noexc1715
  %i.bbt = load float, ptr %i.akn, align 8, !tbaa !168
  %i.bbu = load float, ptr %i.akm, align 8, !tbaa !166
  %i.bbv = fdiv float %i.bbt, %i.bbu
  %i.bbw = call float @llvm.fmuladd.f32(float %i.bbv, float %i.bbs, float %i.bau) ; 3 uses
  %i.bbx = invoke noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bas, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %i.bbw, float noundef %.37872179, float noundef %i.jo)
          to label %.noexc1716 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit ; 3 uses

.noexc1716:                                       ; preds = %bb.il
  %i.bby = fcmp ord float %i.bbw, 0.000000e+00
  br i1 %i.bby, label %bb.im, label %bb.io

bb.im:                                            ; preds = %.noexc1716
  %i.bbz = fcmp ord float %i.bbx, 0.000000e+00
  %i.bca = fcmp une float %i.bbw, %i.bbx
  %or.cond68.i = and i1 %i.bbz, %i.bca
  br i1 %or.cond68.i, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.bcb = fsub float %i.bbx, %i.bau
  %i.bcc = fadd float %.075.i, %i.bcb
  %i.bcd = load float, ptr %i.akm, align 8, !tbaa !166
  %i.bce = fsub float %i.bcd, %i.bbs
  store float %i.bce, ptr %i.akm, align 8, !tbaa !166
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im, %.noexc1716, %.noexc1715, %bb.ij, %.noexc1714, %bb.ih, %.noexc1713, %.noexc1712
  %.1.i1706 = phi float [ %i.bbn, %.noexc1714 ], [ %.075.i, %bb.ij ], [ %.075.i, %bb.ih ], [ %.075.i, %.noexc1713 ], [ %.075.i, %.noexc1712 ], [ %i.bcc, %bb.in ], [ %.075.i, %.noexc1715 ], [ %.075.i, %bb.im ], [ %.075.i, %.noexc1716 ] ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.sroa.070.074.i, i64 8 ; 2 uses
  %i.bcg = icmp eq ptr %i.bcf, %i.bap
  br i1 %i.bcg, label %.noexc931.loopexit, label %.lr.ph.i1704

.noexc931.loopexit:                               ; preds = %bb.io
  %.pre3148 = load ptr, ptr %20, align 8, !tbaa !23
  %.pre3149 = load ptr, ptr %i.ako, align 8, !tbaa !23
  br label %.noexc931

.noexc931:                                        ; preds = %.noexc931.loopexit, %.loopexit2435
  %26 = phi ptr [ %i.bap, %.loopexit2435 ], [ %.pre3149, %.noexc931.loopexit ] ; 2 uses
  %27 = phi ptr [ %i.baq, %.loopexit2435 ], [ %.pre3148, %.noexc931.loopexit ] ; 2 uses
  %.0.lcssa.i = phi float [ 0.000000e+00, %.loopexit2435 ], [ %.1.i1706, %.noexc931.loopexit ]
  %i.bch = load float, ptr %i.akn, align 8, !tbaa !168
  %i.bci = fsub float %i.bch, %.0.lcssa.i
  store float %i.bci, ptr %i.akn, align 8, !tbaa !168
  %i.bcj = icmp eq ptr %27, %26
  br i1 %i.bcj, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph2870

.lr.ph2870:                                       ; preds = %.noexc931
  %i.bck = load i32, ptr %i.ab, align 8
  %i.bcl = icmp ugt i32 %i.bck, 1073741823
  %or.cond8.i.reass.reass.reass.reass.reass = and i1 %i.bcl, %invariant.op4930
  %invariant.op = or i1 %i.akv, %or.cond8.i.reass.reass.reass.reass.reass ; 2 uses
  br label %bb.ip

bb.ip:                                            ; preds = %.lr.ph2870, %.noexc1703
  %.0147.i2869 = phi float [ 0.000000e+00, %.lr.ph2870 ], [ %i.bdp, %.noexc1703 ]
  %.sroa.02148.02868 = phi ptr [ %27, %.lr.ph2870 ], [ %i.brk, %.noexc1703 ] ; 2 uses
  %i.bcm = load ptr, ptr %.sroa.02148.02868, align 8, !tbaa !25 ; 55 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 340
  %.sroa.0.0.copyload.i1647 = load float, ptr %i.bcn, align 4, !tbaa !16
  %i.bco = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bcm, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i882, float %.sroa.0.0.copyload.i1647, float noundef %i.ht, float noundef %6)
          to label %.noexc1675 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137 ; 9 uses

.noexc1675:                                       ; preds = %bb.ip
  %i.bcp = load float, ptr %i.akn, align 8, !tbaa !168 ; 3 uses
  %i.bcq = fcmp ord float %i.bcp, 0.000000e+00
  br i1 %i.bcq, label %bb.iq, label %bb.iy

bb.iq:                                            ; preds = %.noexc1675
  %i.bcr = fcmp olt float %i.bcp, 0.000000e+00
  br i1 %i.bcr, label %bb.ir, label %bb.iv

bb.ir:                                            ; preds = %bb.iq
  %i.bcs = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bcm)
          to label %.noexc1676 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137

.noexc1676:                                       ; preds = %bb.ir
  %i.bct = fneg float %i.bcs
  %i.bcu = fmul float %i.bco, %i.bct              ; 3 uses
  %i.bcv = fcmp une float %i.bcu, 0.000000e+00
  br i1 %i.bcv, label %bb.is, label %bb.iy

bb.is:                                            ; preds = %.noexc1676
  %i.bcw = load float, ptr %i.aks, align 4, !tbaa !169 ; 2 uses
  %i.bcx = call noundef float @llvm.fabs.f32(float %i.bcw)
  %i.bcy = fcmp olt float %i.bcx, f0x358637BD
  br i1 %i.bcy, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.bcz = fadd float %i.bco, %i.bcu
  br label %.invoke3661

bb.iu:                                            ; preds = %bb.is
  %i.bda = load float, ptr %i.akn, align 8, !tbaa !168
  %i.bdb = fdiv float %i.bda, %i.bcw
  %i.bdc = call float @llvm.fmuladd.f32(float %i.bdb, float %i.bcu, float %i.bco)
  br label %.invoke3661

bb.iv:                                            ; preds = %bb.iq
  %i.bdd = fcmp ogt float %i.bcp, 0.000000e+00
  br i1 %i.bdd, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %bb.iv
  %i.bde = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bcm)
          to label %.noexc1678 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137 ; 2 uses

.noexc1678:                                       ; preds = %bb.iw
  %or.cond3.not.i = fcmp ueq float %i.bde, 0.000000e+00
  br i1 %or.cond3.not.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %.noexc1678
  %i.bdf = load float, ptr %i.akn, align 8, !tbaa !168
  %i.bdg = load float, ptr %i.akm, align 8, !tbaa !166
  %i.bdh = fdiv float %i.bdf, %i.bdg
  %i.bdi = call float @llvm.fmuladd.f32(float %i.bdh, float %i.bde, float %i.bco)
  br label %.invoke3661

.invoke3661:                                      ; preds = %bb.it, %bb.iu, %bb.ix
  %i.bdj = phi float [ %i.bdi, %bb.ix ], [ %i.bcz, %bb.it ], [ %i.bdc, %bb.iu ]
  %i.bdk = invoke noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bcm, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %i.bdj, float noundef %.37872179, float noundef %i.jo)
          to label %.sink.split unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137 ; 2 uses

.sink.split:                                      ; preds = %.invoke3661
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bcm, i64 344
  %i.bdm = load float, ptr %i.bdl, align 4, !tbaa !16 ; 2 uses
  %i.bdn = fcmp olt float %i.bdk, %i.bdm
  %.0.i152.i = select i1 %i.bdn, float %i.bdm, float %i.bdk
  br label %bb.iy

bb.iy:                                            ; preds = %.sink.split, %.noexc1675, %.noexc1678, %bb.iv, %.noexc1676
  %.0146.i = phi float [ %i.bco, %bb.iv ], [ %i.bco, %.noexc1676 ], [ %i.bco, %.noexc1675 ], [ %i.bco, %.noexc1678 ], [ %.0.i152.i, %.sink.split ] ; 2 uses
  %i.bdo = fsub float %.0146.i, %i.bco
  %i.bdp = fadd float %.0147.i2869, %i.bdo        ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bcm, i64 56 ; 16 uses
  br i1 %i.hr, label %bb.iz, label %bb.jd

bb.iz:                                            ; preds = %bb.iy
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bcm, i64 77
  %i.bds = load i16, ptr %i.bdr, align 1, !tbaa !18 ; 2 uses
  %i.bdt = and i16 %i.bds, 7
  %.not14.i.i.i = icmp eq i16 %i.bdt, 0
  br i1 %.not14.i.i.i, label %bb.ja, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

bb.ja:                                            ; preds = %bb.iz
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bcm, i64 69
  %i.bdv = load i16, ptr %i.bdu, align 1, !tbaa !18 ; 2 uses
  %i.bdw = and i16 %i.bdv, 7
  %.not15.i.i.i = icmp eq i16 %i.bdw, 0
  br i1 %.not15.i.i.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i: ; preds = %bb.ja
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bcm, i64 81
  %i.bdy = load i16, ptr %i.bdx, align 1, !tbaa !18 ; 2 uses
  %i.bdz = and i16 %i.bdy, 7
  %.not16.i.i.i = icmp eq i16 %i.bdz, 0
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bcm, i64 85
  %.val.i = load i16, ptr %i.bea, align 1
  %.sroa.0.0.pre.i11.i31.i = select i1 %.not16.i.i.i, i16 %.val.i, i16 %i.bdy
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i, %bb.ja, %bb.iz
  %.sroa.0.0.pre.i11.i31.sink.i = phi i16 [ %.sroa.0.0.pre.i11.i31.i, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i ], [ %i.bdv, %bb.ja ], [ %i.bds, %bb.iz ]
  %i.beb = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bdq, i16 %.sroa.0.0.pre.i11.i31.sink.i, float noundef %i.jo)
          to label %.noexc1998 unwind label %.loopexit.split-lp2425.loopexit ; 3 uses

.noexc1998:                                       ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bcm, i64 79
  %i.bed = load i16, ptr %i.bec, align 1, !tbaa !18 ; 2 uses
  %i.bee = and i16 %i.bed, 7
  %.not14.i12.i14.i = icmp eq i16 %i.bee, 0
  br i1 %.not14.i12.i14.i, label %bb.jb, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i

bb.jb:                                            ; preds = %.noexc1998
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bcm, i64 73
  %i.beg = load i16, ptr %i.bef, align 1, !tbaa !18 ; 2 uses
  %i.beh = and i16 %i.beg, 7
  %.not15.i8.i15.i = icmp eq i16 %i.beh, 0
  br i1 %.not15.i8.i15.i, label %bb.jc, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i

bb.jc:                                            ; preds = %bb.jb
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bcm, i64 81 ; 2 uses
  %i.bej = load i16, ptr %i.bei, align 1, !tbaa !18
  %i.bek = and i16 %i.bej, 7
  %.not16.i9.i16.i = icmp eq i16 %i.bek, 0
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bcm, i64 85
  %spec.select.i10.i17.i = select i1 %.not16.i9.i16.i, ptr %i.bel, ptr %i.bei
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10.i

bb.jd:                                            ; preds = %bb.iy
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bcm, i64 71 ; 2 uses
  %i.ben = load i16, ptr %i.bem, align 1, !tbaa !18
  %i.beo = and i16 %i.ben, 7
  %.not.i3.i.i1986 = icmp eq i16 %i.beo, 0
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bcm, i64 83 ; 4 uses
  %i.beq = load i16, ptr %i.bep, align 1
  %i.ber = and i16 %i.beq, 7
  %.not7.i.i.i1987 = icmp eq i16 %i.ber, 0
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bcm, i64 85 ; 2 uses
  %spec.select.i4.i.i1988 = select i1 %.not7.i.i.i1987, ptr %i.bes, ptr %i.bep
  %.sroa.0.0.in.i.i.i1989 = select i1 %.not.i3.i.i1986, ptr %spec.select.i4.i.i1988, ptr %i.bem
  %.sroa.0.0.pre.i11.i.i1990 = load i16, ptr %.sroa.0.0.in.i.i.i1989, align 1, !tbaa !12
  %i.bet = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bdq, i16 %.sroa.0.0.pre.i11.i.i1990, float noundef %i.jo)
          to label %.noexc1999 unwind label %.loopexit.split-lp2425.loopexit

.noexc1999:                                       ; preds = %bb.jd
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bcm, i64 75 ; 2 uses
  %i.bev = load i16, ptr %i.beu, align 1, !tbaa !18
  %i.bew = and i16 %i.bev, 7
  %.not.i13.i6.i1991 = icmp eq i16 %i.bew, 0
  %i.bex = load i16, ptr %i.bep, align 1
  %i.bey = and i16 %i.bex, 7
  %.not7.i14.i7.i1992 = icmp eq i16 %i.bey, 0
  %spec.select.i15.i8.i1993 = select i1 %.not7.i14.i7.i1992, ptr %i.bes, ptr %i.bep
  %.sroa.0.0.in.i16.i9.i1994 = select i1 %.not.i13.i6.i1991, ptr %spec.select.i15.i8.i1993, ptr %i.beu
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10.i

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10.i: ; preds = %.noexc1999, %bb.jc
  %i.bez = phi float [ %i.beb, %bb.jc ], [ %i.bet, %.noexc1999 ]
  %spec.select.i10.sink.i11.i = phi ptr [ %spec.select.i10.i17.i, %bb.jc ], [ %.sroa.0.0.in.i16.i9.i1994, %.noexc1999 ]
  %.sroa.0.0.pre.i11.i12.i1995 = load i16, ptr %spec.select.i10.sink.i11.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i: ; preds = %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10.i, %bb.jb, %.noexc1998
  %i.bfa = phi float [ %i.beb, %bb.jb ], [ %i.beb, %.noexc1998 ], [ %i.bez, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10.i ] ; 2 uses
  %.sroa.0.0.i13.i = phi i16 [ %i.beg, %bb.jb ], [ %i.bed, %.noexc1998 ], [ %.sroa.0.0.pre.i11.i12.i1995, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10.i ] ; 9 uses
  %.inv.i.i1996 = fcmp ord float %i.bfa, 0.000000e+00
  %i.bfb = select i1 %.inv.i.i1996, float %i.bfa, float 0.000000e+00
  %i.bfc = and i16 %.sroa.0.0.i13.i, 7
  switch i16 %i.bfc, label %.noexc1680 [
    i16 1, label %bb.je
    i16 2, label %bb.jj
  ]

bb.je:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i
  %i.bfd = and i16 %.sroa.0.0.i13.i, 8
  %.not.i.i2035 = icmp eq i16 %i.bfd, 0
  %i.bfe = lshr i16 %.sroa.0.0.i13.i, 4           ; 2 uses
  br i1 %.not.i.i2035, label %bb.ji, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bff = zext nneg i16 %i.bfe to i64            ; 2 uses
  %i.bfg = icmp ult i16 %.sroa.0.0.i13.i, 64
  br i1 %i.bfg, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bcm, i64 300
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.bfh, i64 %i.bff
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i2038

bb.jh:                                            ; preds = %bb.jf
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bcm, i64 328
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !101 ; 2 uses
  %i.bfl = add nsw i64 %i.bff, -4                 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !104
  %i.bfo = load ptr, ptr %i.bfk, align 8, !tbaa !105 ; 2 uses
  %i.bfp = ptrtoint ptr %i.bfn to i64
end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bcm, i64 328
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !101 ; 2 uses
  %i.bny = add nsw i64 %i.bns, -4                 ; 3 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bnx, i64 8
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !104
  %i.bob = load ptr, ptr %i.bnx, align 8, !tbaa !105 ; 2 uses
  %i.boc = ptrtoint ptr %i.boa to i64
  %i.bod = ptrtoint ptr %i.bob to i64
  %i.boe = sub i64 %i.boc, %i.bod
  %i.bof = ashr exact i64 %i.boe, 2               ; 2 uses
  %.not.i.i.i.i.i2053 = icmp ult i64 %i.bny, %i.bof
  br i1 %.not.i.i.i.i.i2053, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i2054, label %.invoke3649

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i2054:         ; preds = %bb.kq
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.bob, i64 %i.bny
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i2055

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i2055: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i2054, %bb.kp
  %.0.in.i.i.i2056 = phi ptr [ %i.bnv, %bb.kp ], [ %i.bog, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i2054 ]
  %.0.i4.i.i2057 = load float, ptr %.0.in.i.i.i2056, align 4, !tbaa !19
  br label %.noexc1695

bb.kr:                                            ; preds = %bb.kn
  %i.boh = and i16 %i.bnr, 2047
  %i.boi = zext nneg i16 %i.boh to i32            ; 2 uses
  %i.boj = sub nsw i32 0, %i.boi
  %.not.i3.i.i2058 = icmp slt i16 %.sroa.0.0.i13.i2015, 0
  %i.bok = select i1 %.not.i3.i.i2058, i32 %i.boj, i32 %i.boi
  %i.bol = sitofp i32 %i.bok to float
  br label %.noexc1695

bb.ks:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i2014
  %i.bom = and i16 %.sroa.0.0.i13.i2015, 8
  %.not.i3.i2043 = icmp eq i16 %i.bom, 0
  %i.bon = lshr i16 %.sroa.0.0.i13.i2015, 4       ; 2 uses
  br i1 %.not.i3.i2043, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.boo = zext nneg i16 %i.bon to i64            ; 2 uses
  %i.bop = icmp ult i16 %.sroa.0.0.i13.i2015, 64
  br i1 %i.bop, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bcm, i64 300
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.boo
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6.i2046

bb.kv:                                            ; preds = %bb.kt
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bcm, i64 328
  %i.bot = load ptr, ptr %i.bos, align 8, !tbaa !101 ; 2 uses
  %i.bou = add nsw i64 %i.boo, -4                 ; 3 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bot, i64 8
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !104
  %i.box = load ptr, ptr %i.bot, align 8, !tbaa !105 ; 2 uses
  %i.boy = ptrtoint ptr %i.bow to i64
  %i.boz = ptrtoint ptr %i.box to i64
  %i.bpa = sub i64 %i.boy, %i.boz
  %i.bpb = ashr exact i64 %i.bpa, 2               ; 2 uses
  %.not.i.i.i.i4.i2044 = icmp ult i64 %i.bou, %i.bpb
  br i1 %.not.i.i.i.i4.i2044, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5.i2045, label %.invoke3649

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5.i2045:        ; preds = %bb.kv
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.box, i64 %i.bou
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6.i2046

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6.i2046: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5.i2045, %bb.ku
  %.0.in.i.i7.i2047 = phi ptr [ %i.bor, %bb.ku ], [ %i.bpc, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5.i2045 ]
  %.0.i4.i8.i2048 = load float, ptr %.0.in.i.i7.i2047, align 4, !tbaa !19
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10.i2049

bb.kw:                                            ; preds = %bb.ks
  %i.bpd = and i16 %i.bon, 2047
  %i.bpe = zext nneg i16 %i.bpd to i32            ; 2 uses
  %i.bpf = sub nsw i32 0, %i.bpe
  %.not.i3.i9.i2051 = icmp slt i16 %.sroa.0.0.i13.i2015, 0
  %i.bpg = select i1 %.not.i3.i9.i2051, i32 %i.bpf, i32 %i.bpe
  %i.bph = sitofp i32 %i.bpg to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10.i2049

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10.i2049: ; preds = %bb.kw, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6.i2046
  %i.bpi = phi float [ %.0.i4.i8.i2048, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6.i2046 ], [ %i.bph, %bb.kw ]
  %i.bpj = fmul float %i.jo, %i.bpi
  %i.bpk = fmul float %i.bpj, f0x3C23D70A
  br label %.noexc1695

.noexc1695:                                       ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i2014, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i2055, %bb.kr, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10.i2049
  %.sroa.014.0.i2050 = phi float [ %i.bol, %bb.kr ], [ %i.bpk, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10.i2049 ], [ %.0.i4.i.i2057, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i2055 ], [ +qnan, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26.i2014 ] ; 2 uses
  %.inv.i5.i2017 = fcmp ord float %.sroa.014.0.i2050, 0.000000e+00
  %i.bpl = select i1 %.inv.i5.i2017, float %.sroa.014.0.i2050, float 0.000000e+00
  %i.bpm = fadd float %i.bno, %i.bpl
  %i.bpn = fadd float %.sroa.010.1.i.i1977, %i.bpm ; 3 uses
  %i.bpo = fcmp uno float %i.bpn, 0.000000e+00
  %i.bpp = fcmp olt float %i.bhb, %i.bpn
  %or.cond.i1979 = select i1 %i.bpo, i1 true, i1 %i.bpp
  %i.bpq = select i1 %or.cond.i1979, float %i.bhb, float %i.bpn ; 2 uses
  invoke void @_ZN8facebook4yoga23constrainMaxSizeForModeEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionEffPNS0_10SizingModeEPf(ptr noundef nonnull %i.bcm, i8 noundef zeroext %i.t, i8 noundef zeroext %i.hq, float noundef %i.js, float noundef %i.jo, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc1696 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137

.noexc1696:                                       ; preds = %.noexc1695
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bcm, i64 728
  %i.bps = getelementptr inbounds nuw [8 x i8], ptr %i.bpr, i64 %i.aku
  %.sroa.0.0.copyload.i.i192.i = load i64, ptr %i.bps, align 4 ; 2 uses
  %i.bpt = lshr i64 %.sroa.0.0.copyload.i.i192.i, 32
  %i.bpu = trunc i64 %i.bpt to i8
  %i.bpv = trunc i64 %.sroa.0.0.copyload.i.i192.i to i32
  %i.bpw = bitcast i32 %i.bpv to float            ; 2 uses
  switch i8 %i.bpu, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i
    i8 2, label %bb.kx
  ]

bb.kx:                                            ; preds = %.noexc1696
  %i.bpx = fmul float %i.js, %i.bpw
  %i.bpy = fmul float %i.bpx, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i: ; preds = %.noexc1696, %bb.kx
  %.sroa.0.0.i.i194.i = phi float [ %i.bpy, %bb.kx ], [ %i.bpw, %.noexc1696 ]
  %i.bpz = fcmp ult float %.sroa.0.0.i.i194.i, 0.000000e+00
  br i1 %i.bpz, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i.thread, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit199.i.thread2192

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i.thread: ; preds = %.noexc1696, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i
  %i.bqa = load i32, ptr %i.bdq, align 8
  %i.bqb = lshr i32 %i.bqa, 24
  %i.bqc = trunc nuw i32 %i.bqb to i8
  %i.bqd = and i8 %i.bqc, 15                      ; 2 uses
  %i.bqe = icmp eq i8 %i.bqd, 0
  br i1 %i.bqe, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i.thread
  %i.bqf = load i32, ptr %i.ab, align 8
  %i.bqg = lshr i32 %i.bqf, 20
  %i.bqh = trunc i32 %i.bqg to i8
  %i.bqi = and i8 %i.bqh, 15
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i.thread
  %i.bqj = phi i8 [ %i.bqi, %bb.ky ], [ %i.bqd, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i.thread ]
  %i.bqk = icmp eq i8 %i.bqj, 4
  br i1 %i.bqk, label %switch.lookup4589, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit199.i.thread2192

switch.lookup4589:                                ; preds = %bb.kz
  %switch.load4591 = load i8, ptr %switch.gep4590, align 1
  %switch.ext4592 = zext i8 %switch.load4591 to i32
  %i.bql = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bdq, i32 noundef %switch.ext4592, i8 noundef zeroext %i.t)
          to label %.noexc1699 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137

.noexc1699:                                       ; preds = %switch.lookup4589
  %i.bqm = and i16 %i.bql, 7
  %i.bqn = icmp eq i16 %i.bqm, 4
  br i1 %i.bqn, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit199.i.thread2192, label %switch.lookup4593

switch.lookup4593:                                ; preds = %.noexc1699
  %switch.load4595 = load i8, ptr %switch.gep4594, align 1
  %switch.ext4596 = zext i8 %switch.load4595 to i32
  %i.bqo = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bdq, i32 noundef %switch.ext4596, i8 noundef zeroext %i.t)
          to label %.noexc1701 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137

.noexc1701:                                       ; preds = %switch.lookup4593
  %i.bqp = and i16 %i.bqo, 7
  %i.bqq = icmp eq i16 %i.bqp, 4
  %i.bqr = and i1 %8, %i.bqq
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit199.i.thread2192

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit199.i.thread2192: ; preds = %bb.kz, %.noexc1701, %.noexc1699, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i
  %i.bqs = phi i1 [ %8, %.noexc1699 ], [ %8, %bb.kz ], [ %8, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit195.i ], [ %i.bqr, %.noexc1701 ] ; 2 uses
  %i.bqt = load float, ptr %i.a, align 4          ; 2 uses
  %i.bqu = select i1 %i.hr, float %i.bpq, float %i.bqt
  %i.bqv = select i1 %i.hr, float %i.bqt, float %i.bpq
  %i.bqw = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bqx = select i1 %i.hr, i32 0, i32 %i.bqw
  %i.bqy = select i1 %i.hr, i32 %i.bqw, i32 0
  %i.bqz = load i8, ptr %i.aky, align 4
  %i.bra = and i8 %i.bqz, 3
  %i.brb = select i1 %i.bqs, i32 4, i32 7
  %i.brc = invoke noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %i.bcm, float noundef %i.bqu, float noundef %i.bqv, i8 noundef zeroext %i.bra, i32 noundef %i.bqx, i32 noundef %i.bqy, float noundef %i.jo, float noundef %i.jq, i1 noundef zeroext %i.bqs, i32 noundef %i.brb, ptr noundef nonnull align 4 dereferenceable(60) %10, i32 noundef %11, i32 noundef %12)
          to label %.noexc1702 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137 ; 0 uses

.noexc1702:                                       ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit199.i.thread2192
  %i.brd = load i8, ptr %i.aky, align 4
  %i.bre = and i8 %i.brd, 4
  %.not2387 = icmp eq i8 %i.bre, 0
  br i1 %.not2387, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %.noexc1702
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bcm, i64 580
  %i.brg = load i8, ptr %i.brf, align 4
  %i.brh = and i8 %i.brg, 4
  %i.bri = icmp ne i8 %i.brh, 0
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %.noexc1702
  %i.brj = phi i1 [ true, %.noexc1702 ], [ %i.bri, %bb.la ]
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.brj)
          to label %.noexc1703 unwind label %.loopexit.split-lp2425.loopexit, !inline_history !137

.noexc1703:                                       ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.brk = getelementptr inbounds nuw i8, ptr %.sroa.02148.02868, i64 8 ; 2 uses
  %i.brl = icmp eq ptr %i.brk, %26
  br i1 %i.brl, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %bb.ip

_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit: ; preds = %.noexc1703, %bb.ie, %bb.ha, %.noexc931
  %.0147.i.lcssa = phi float [ 0.000000e+00, %.noexc931 ], [ 0.000000e+00, %bb.ie ], [ 0.000000e+00, %bb.ha ], [ %i.bdp, %.noexc1703 ]
  %i.brm = fsub float %.pre3151, %.0147.i.lcssa   ; 2 uses
  store float %i.brm, ptr %i.akn, align 8, !tbaa !168
  br label %bb.lc

bb.lc:                                            ; preds = %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, %bb.gy
  %i.brn = phi float [ %i.brm, %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit ], [ %.pre3151, %bb.gy ]
  %i.bro = load i8, ptr %i.aky, align 4
  %i.brp = and i8 %i.bro, 4
  %i.brq = icmp ne i8 %i.brp, 0
  %i.brr = fcmp olt float %i.brn, 0.000000e+00
  %i.brs = select i1 %i.brq, i1 true, i1 %i.brr
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.brs)
          to label %bb.ld unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ld:                                            ; preds = %bb.lc
  %i.brt = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc939 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc939:                                        ; preds = %bb.ld
  %i.bru = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc940 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc940:                                        ; preds = %.noexc939
  %.val.i.i.i = load i16, ptr %i.ajm, align 1
  %i.brv = load i16, ptr %i.akz, align 1, !tbaa !18 ; 2 uses
  %i.brw = and i16 %i.brv, 7
  %.not.i3.i.i = icmp eq i16 %i.brw, 0
  %.sroa.0.0.i5.i.i = select i1 %.not.i3.i.i, i16 %.val.i.i.i, i16 %i.brv
  %i.brx = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i5.i.i, float noundef %.37872179)
          to label %.noexc941 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc941:                                        ; preds = %.noexc940
  %or.cond.i.i.i = fcmp ord float %i.brx, 0.000000e+00
  %i.bry = fcmp uno float %i.brx, 0.000000e+00
  %i.brz = fcmp olt float %i.brx, 0.000000e+00
  %.sink.i.i.i = select i1 %or.cond.i.i.i, i1 %i.brz, i1 %i.bry
  %i.bsa = select i1 %.sink.i.i.i, float 0.000000e+00, float %i.brx ; 8 uses
  %i.bsb = load float, ptr %i.akn, align 8, !tbaa !168 ; 2 uses
  %i.bsc = fcmp ogt float %i.bsb, 0.000000e+00
  %or.cond214.i = select i1 %i.ala, i1 %i.bsc, i1 false
  br i1 %or.cond214.i, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i, label %._crit_edge201.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i: ; preds = %.noexc941
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.alb, align 1, !tbaa !12 ; 7 uses
  %i.bsd = and i16 %.sroa.0.0.copyload.i.i, 7     ; 3 uses
  switch i16 %i.bsd, label %bb.le [
    i16 0, label %.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread
  ]

bb.le:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  %i.bse = icmp eq i16 %i.bsd, 5
  %i.bsf = lshr i16 %.sroa.0.0.copyload.i.i, 4    ; 3 uses
  %i.bsg = and i16 %.sroa.0.0.copyload.i.i, -25
  %or.cond.i937 = icmp eq i16 %i.bsg, 5
  %i.bsh = icmp eq i16 %i.bsf, 2
  %i.bsi = and i1 %i.bse, %i.bsh
  %or.cond185.i = or i1 %or.cond.i937, %i.bsi
  br i1 %or.cond185.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bsj = and i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i.i938 = icmp eq i16 %i.bsj, 0
  br i1 %.not.i.i.i938, label %bb.lj, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsk = zext nneg i16 %i.bsf to i64            ; 2 uses
  %i.bsl = icmp ult i16 %.sroa.0.0.copyload.i.i, 64
  br i1 %i.bsl, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.bsk
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

bb.li:                                            ; preds = %bb.lg
  %i.bsn = load ptr, ptr %i.alc, align 8, !tbaa !101 ; 2 uses
  %i.bso = add nsw i64 %i.bsk, -4                 ; 3 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsn, i64 8
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !104
  %i.bsr = load ptr, ptr %i.bsn, align 8, !tbaa !105 ; 2 uses
  %i.bss = ptrtoint ptr %i.bsq to i64
  %i.bst = ptrtoint ptr %i.bsr to i64
  %i.bsu = sub i64 %i.bss, %i.bst
  %i.bsv = ashr exact i64 %i.bsu, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.bso, %i.bsv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %.invoke3649

.invoke3649:                                      ; preds = %bb.li, %bb.ho, %bb.hg, %bb.kv, %bb.kq, %bb.jx, %bb.ju, %bb.jr, %bb.jm, %bb.jh
  %i.bsw = phi i64 [ %i.ayc, %bb.ho ], [ %i.bou, %bb.kv ], [ %i.biy, %bb.jx ], [ %i.bfl, %bb.jh ], [ %i.bny, %bb.kq ], [ %i.bij, %bb.ju ], [ %i.bhn, %bb.jr ], [ %i.bgh, %bb.jm ], [ %i.awl, %bb.hg ], [ %i.bso, %bb.li ]
  %i.bsx = phi i64 [ %i.ayj, %bb.ho ], [ %i.bpb, %bb.kv ], [ %i.bjf, %bb.jx ], [ %i.bfs, %bb.jh ], [ %i.bof, %bb.kq ], [ %i.biq, %bb.ju ], [ %i.bhu, %bb.jr ], [ %i.bgo, %bb.jm ], [ %i.aws, %bb.hg ], [ %i.bsv, %bb.li ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.bsw, i64 noundef %i.bsx) #14
          to label %.cont3650 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3650:                                        ; preds = %.invoke3649
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.bsr, i64 %i.bso
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, %bb.lh
  %.0.in.i.i.i = phi ptr [ %i.bsm, %bb.lh ], [ %i.bsy, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i2.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !19
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

bb.lj:                                            ; preds = %bb.lf
  %i.bsz = and i16 %i.bsf, 2047
  %i.bta = zext nneg i16 %i.bsz to i32            ; 2 uses
  %i.btb = sub nsw i32 0, %i.bta
  %.not.i13.i.i.i = icmp slt i16 %.sroa.0.0.copyload.i.i, 0
  %i.btc = select i1 %.not.i13.i.i.i, i32 %i.btb, i32 %i.bta
  %i.btd = sitofp i32 %i.btc to float
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i: ; preds = %bb.lj, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i
  %i.bte = phi float [ %.0.i2.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i ], [ %i.btd, %bb.lj ]
  %i.btf = call float @llvm.fabs.f32(float %i.bte)
  %.sroa.0.1.in.i.i.i = fcmp ueq float %i.btf, +inf
  %i.btg = icmp eq i16 %i.bsd, 0
  %or.cond3657 = or i1 %i.btg, %.sroa.0.1.in.i.i.i
  br i1 %or.cond3657, label %.thread.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread: ; preds = %bb.le, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  %i.bth = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.copyload.i.i, float noundef %i.ht)
          to label %.noexc944 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc944:                                        ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread
  %i.bti = load i8, ptr %i.akc, align 4
  %i.btj = and i8 %i.bti, 16
  %i.btk = icmp ne i8 %i.btj, 0
  %i.btl = fcmp ord float %i.bth, 0.000000e+00
  %or.cond.i.i936 = select i1 %i.btk, i1 %i.btl, i1 false
  br i1 %or.cond.i.i936, label %bb.lk, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

bb.lk:                                            ; preds = %.noexc944
  %i.btm = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akp, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc945 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc945:                                        ; preds = %bb.lk
  %i.btn = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akp, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc946 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc946:                                        ; preds = %.noexc945
  %i.bto = fadd float %i.btm, %i.btn              ; 2 uses
  %i.btp = fcmp ord float %i.bto, 0.000000e+00
  %.sroa.0.0.i.i = select i1 %i.btp, float %i.bto, float 0.000000e+00
  %i.btq = fadd float %i.bth, %.sroa.0.0.i.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i: ; preds = %.noexc946, %.noexc944
  %.sroa.010.1.i.i = phi float [ %i.bth, %.noexc944 ], [ %i.btq, %.noexc946 ]
  %i.btr = fcmp ord float %.sroa.010.1.i.i, 0.000000e+00
  br i1 %i.btr, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i, label %.thread.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i: ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i
  %i.bts = load i16, ptr %i.alb, align 1, !tbaa !12 ; 2 uses
  %i.btt = and i16 %i.bts, 7
  %i.btu = icmp eq i16 %i.btt, 0
  br i1 %i.btu, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i, label %bb.ll

bb.ll:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i
  %i.btv = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.bts, float noundef %i.ht)
          to label %.noexc947 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc947:                                        ; preds = %bb.ll
  %i.btw = load i8, ptr %i.akc, align 4
  %i.btx = and i8 %i.btw, 16
  %i.bty = icmp ne i8 %i.btx, 0
  %i.btz = fcmp ord float %i.btv, 0.000000e+00
  %or.cond.i141.i = select i1 %i.bty, i1 %i.btz, i1 false
  br i1 %or.cond.i141.i, label %bb.lm, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i

bb.lm:                                            ; preds = %.noexc947
  %i.bua = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akp, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc948 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc948:                                        ; preds = %bb.lm
  %i.bub = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akp, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc949 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc949:                                        ; preds = %.noexc948
  %i.buc = fadd float %i.bua, %i.bub              ; 2 uses
  %i.bud = fcmp ord float %i.buc, 0.000000e+00
  %.sroa.0.0.i143.i = select i1 %i.bud, float %i.buc, float 0.000000e+00
  %i.bue = fadd float %i.btv, %.sroa.0.0.i143.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i: ; preds = %.noexc949, %.noexc947, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i
  %.sroa.010.1.i142.i = phi float [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i ], [ %i.bue, %.noexc949 ], [ %i.btv, %.noexc947 ]
  %i.buf = fsub float %.sroa.010.1.i142.i, %i.brt
  %i.bug = fsub float %i.buf, %i.bru
  %i.buh = load float, ptr %i.akn, align 8, !tbaa !168
  %i.bui = fsub float %.37872179, %i.buh
  %i.buj = fsub float %i.bug, %i.bui              ; 2 uses
  %i.buk = fcmp ogt float %i.buj, 0.000000e+00
  %i.bul = select i1 %i.buk, float %i.buj, float 0.000000e+00 ; 2 uses
  store float %i.bul, ptr %i.akn, align 8, !tbaa !168
  br label %._crit_edge201.i

.thread.i:                                        ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
end_hunk_1
