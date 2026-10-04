Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  br i1 %.not.i.i44.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bct = zext nneg i16 %i.bcs to i64            ; 2 uses
  %i.bcu = icmp ult i16 %.sroa.0.0.copyload.i43.i, 64
  br i1 %i.bcu, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bam, i64 300
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.bct
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936

bb.hp:                                            ; preds = %bb.hn
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bam, i64 328
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !101 ; 2 uses
  %i.bcz = add nsw i64 %i.bct, -4                 ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcy, i64 8
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !104
  %i.bdc = load ptr, ptr %i.bcy, align 8, !tbaa !105 ; 2 uses
  %i.bdd = ptrtoint ptr %i.bdb to i64
  %i.bde = ptrtoint ptr %i.bdc to i64
  %i.bdf = sub i64 %i.bdd, %i.bde
  %i.bdg = ashr exact i64 %i.bdf, 2               ; 2 uses
  %.not.i.i.i.i.i.i1934 = icmp ult i64 %i.bcz, %i.bdg
  br i1 %.not.i.i.i.i.i.i1934, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1935, label %.invoke3800

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1935:       ; preds = %bb.hp
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %i.bdc, i64 %i.bcz
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i: ; preds = %bb.hm
  %i.bdi = and i16 %i.bcs, 2047
  %i.bdj = zext nneg i16 %i.bdi to i32            ; 2 uses
  %i.bdk = sub nsw i32 0, %i.bdj
  %.not.i6.i.i.i1941 = icmp slt i16 %.sroa.0.0.copyload.i43.i, 0
  %i.bdl = select i1 %.not.i6.i.i.i1941, i32 %i.bdk, i32 %i.bdj
  %i.bdm = sitofp i32 %i.bdl to float
  br label %bb.hq

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1935, %bb.ho
  %.0.in.i.i.i.i1937 = phi ptr [ %i.bcw, %bb.ho ], [ %i.bdh, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1935 ]
  %.0.i7.i.i.i1938 = load float, ptr %.0.in.i.i.i.i1937, align 4, !tbaa !17 ; 2 uses
  %i.bdn = fcmp ord float %.0.i7.i.i.i1938, 0.000000e+00
  br i1 %i.bdn, label %bb.hq, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i

bb.hq:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i
  %.sroa.05.0.i.i75.i = phi float [ %i.bdm, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.i ], [ %.0.i7.i.i.i1938, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936 ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.bcb, i64 %i.aqv
  %.sroa.0.0.copyload.i.i45.i = load i64, ptr %i.bdo, align 4 ; 2 uses
  %i.bdp = lshr i64 %.sroa.0.0.copyload.i.i45.i, 32
  %i.bdq = trunc i64 %i.bdp to i8
  %i.bdr = trunc i64 %.sroa.0.0.copyload.i.i45.i to i32
  %i.bds = bitcast i32 %i.bdr to float            ; 2 uses
  switch i8 %i.bdq, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i [
    i8 1, label %bb.hr
    i8 2, label %bb.hs
  ]

bb.hr:                                            ; preds = %bb.hq
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i

bb.hs:                                            ; preds = %bb.hq
  %i.bdt = fmul float %i.rl, %i.bds
  %i.bdu = fmul float %i.bdt, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i: ; preds = %bb.hs, %bb.hr, %bb.hq
  %.sroa.0.0.i.i47.i = phi float [ %i.bdu, %bb.hs ], [ %i.bds, %bb.hr ], [ +qnan, %bb.hq ] ; 2 uses
  %i.bdv = load i8, ptr %i.bar, align 4
  %i.bdw = and i8 %i.bdv, 16
  %i.bdx = icmp eq i8 %i.bdw, 0
  br i1 %i.bdx, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i, label %bb.ht

bb.ht:                                            ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i
  %i.bdy = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.baq, i8 noundef zeroext %i.t, i8 noundef zeroext %.lobit, float noundef %i.rh)
          to label %.noexc1957 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1957:                                       ; preds = %bb.ht
  %i.bdz = fcmp ord float %i.bdy, 0.000000e+00
  %.sroa.0.0.i48.i = select i1 %i.bdz, float %i.bdy, float 0.000000e+00
  %i.bea = fadd float %.sroa.0.0.i.i47.i, %.sroa.0.0.i48.i
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i: ; preds = %.noexc1957, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i
  %.sroa.06.0.i49.i = phi float [ %i.bea, %.noexc1957 ], [ %.sroa.0.0.i.i47.i, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i46.i ] ; 3 uses
  %i.beb = fcmp ord float %.sroa.06.0.i49.i, 0.000000e+00
  br i1 %i.beb, label %bb.hu, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i

bb.hu:                                            ; preds = %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i
  %i.bec = fmul float %.sroa.05.0.i.i75.i, %.sroa.06.0.i49.i
  %i.bed = fdiv float %.sroa.06.0.i49.i, %.sroa.05.0.i.i75.i
  %i.bee = select i1 %i.pj, float %i.bec, float %i.bed
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i: ; preds = %bb.hu, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1932
  %.sroa.059.1.i = phi float [ +qnan, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit50.i ], [ +qnan, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1936 ], [ %i.bee, %bb.hu ], [ +qnan, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i1932 ] ; 3 uses
  %i.bef = invoke fastcc noundef float @_ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff(ptr noundef nonnull %i.bam, i8 noundef zeroext %.0.i907, i8 noundef zeroext %i.t, float noundef %i.rh)
          to label %.noexc1958 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc1958:                                       ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread76.i
  %i.beg = fcmp ord float %.sroa.06.0.i.i1933, 0.000000e+00
  br i1 %i.beg, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %.noexc1958
  %i.beh = fcmp uno float %i.bef, 0.000000e+00
  %i.bei = fcmp olt float %.sroa.06.0.i.i1933, %i.bef
  %or.cond82.i = select i1 %i.beh, i1 true, i1 %i.bei
  br i1 %or.cond82.i, label %bb.hw, label %bb.ia

bb.hw:                                            ; preds = %bb.hv
  br label %bb.ia

bb.hx:                                            ; preds = %.noexc1958
  %i.bej = fcmp ord float %.sroa.059.1.i, 0.000000e+00
  br i1 %i.bej, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.bek = fcmp uno float %i.bef, 0.000000e+00
  %i.bel = fcmp olt float %.sroa.059.1.i, %i.bef
  %or.cond83.i = select i1 %i.bek, i1 true, i1 %i.bel
  br i1 %or.cond83.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  %.sroa.062.0.i = phi float [ %.sroa.06.0.i.i1933, %bb.hw ], [ %i.bef, %bb.hv ], [ %.sroa.059.1.i, %bb.hz ], [ %i.bef, %bb.hy ], [ %i.bef, %bb.hx ] ; 3 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bam, i64 155
  %i.ben = getelementptr inbounds nuw [2 x i8], ptr %i.bem, i64 %spec.select2506
  %i.beo = load i16, ptr %i.ben, align 1, !tbaa !12 ; 2 uses
  %i.bep = and i16 %i.beo, 7
  %i.beq = icmp eq i16 %i.bep, 0
  br i1 %i.beq, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ber = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.baq, i16 %i.beo, float noundef %i.pl)
          to label %.noexc1959 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc1959:                                       ; preds = %bb.ib
  %i.bes = load i8, ptr %i.bar, align 4
  %i.bet = and i8 %i.bes, 16
  %i.beu = icmp ne i8 %i.bet, 0
  %i.bev = fcmp ord float %i.ber, 0.000000e+00
  %or.cond.i.i1939 = select i1 %i.beu, i1 %i.bev, i1 false
  br i1 %or.cond.i.i1939, label %bb.ic, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

bb.ic:                                            ; preds = %.noexc1959
  %i.bew = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.baq, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select.i1927, float noundef %i.rh)
          to label %.noexc1960 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc1960:                                       ; preds = %bb.ic
  %i.bex = fcmp ord float %i.bew, 0.000000e+00
  %.sroa.0.0.i51.i = select i1 %i.bex, float %i.bew, float 0.000000e+00
  %i.bey = fadd float %i.ber, %.sroa.0.0.i51.i
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i: ; preds = %.noexc1960, %.noexc1959
  %.sroa.010.1.i.i1940 = phi float [ %i.ber, %.noexc1959 ], [ %i.bey, %.noexc1960 ] ; 3 uses
  %i.bez = fcmp ord float %.sroa.010.1.i.i1940, 0.000000e+00
  %i.bfa = fcmp ogt float %.sroa.062.0.i, %.sroa.010.1.i.i1940
  %or.cond84.i = select i1 %i.bez, i1 %i.bfa, i1 false
  br i1 %or.cond84.i, label %bb.id, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i

bb.id:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i: ; preds = %bb.id, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i, %bb.ia
  %.sroa.062.1.i = phi float [ %.sroa.010.1.i.i1940, %bb.id ], [ %.sroa.062.0.i, %bb.ia ], [ %.sroa.062.0.i, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i ] ; 2 uses
  %or.cond85.i = fcmp ult float %.sroa.062.1.i, 0.000000e+00
  br i1 %or.cond85.i, label %bb.ie, label %.noexc945

bb.ie:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i
  br label %.noexc945

.noexc945:                                        ; preds = %bb.ie, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1949, %bb.hd, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1921, %bb.hc, %.noexc1952
  %.sroa.062.3.i = phi float [ +qnan, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i1949 ], [ +qnan, %.noexc1952 ], [ +qnan, %bb.hc ], [ 0.000000e+00, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread70.i ], [ %.sroa.062.1.i, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.thread.i ], [ 0.000000e+00, %bb.ie ], [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i1921 ], [ +qnan, %bb.hd ]
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bam, i64 344
  store float %.sroa.062.3.i, ptr %i.bfb, align 8, !tbaa !16
  %i.bfc = getelementptr inbounds nuw i8, ptr %.sroa.02312.03042, i64 8 ; 2 uses
  %i.bfd = icmp eq ptr %i.bfc, %i.bak
  br i1 %i.bfd, label %.loopexit2629.loopexit3091, label %.lr.ph3043

bb.if:                                            ; preds = %.noexc944
  br i1 %i.bal, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph3045

.lr.ph3045:                                       ; preds = %bb.if, %.lr.ph3045
  %.sroa.02308.03044 = phi ptr [ %i.bfg, %.lr.ph3045 ], [ %i.baj, %bb.if ] ; 2 uses
  %i.bfe = load ptr, ptr %.sroa.02308.03044, align 8, !tbaa !23
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 344
  store i32 2143289344, ptr %i.bff, align 4, !tbaa !16
  %i.bfg = getelementptr inbounds nuw i8, ptr %.sroa.02308.03044, i64 8 ; 2 uses
  %i.bfh = icmp eq ptr %i.bfg, %i.bak
  br i1 %i.bfh, label %.loopexit2629, label %.lr.ph3045

.loopexit2629.loopexit3091:                       ; preds = %.noexc945
  %.pre3317 = load ptr, ptr %20, align 8, !tbaa !21
  %.pre3318 = load ptr, ptr %i.aqu, align 8, !tbaa !21
  br label %.loopexit2629

.loopexit2629:                                    ; preds = %.lr.ph3045, %.loopexit2629.loopexit3091
  %i.bfi = phi ptr [ %.pre3318, %.loopexit2629.loopexit3091 ], [ %i.bak, %.lr.ph3045 ] ; 2 uses
  %i.bfj = phi ptr [ %.pre3317, %.loopexit2629.loopexit3091 ], [ %i.baj, %.lr.ph3045 ] ; 2 uses
  %i.bfk = icmp eq ptr %i.bfj, %i.bfi
  br i1 %i.bfk, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph.i1895

.lr.ph.i1895:                                     ; preds = %.loopexit2629, %bb.ip
  %.075.i = phi float [ %.1.i1897, %bb.ip ], [ 0.000000e+00, %.loopexit2629 ] ; 9 uses
  %.sroa.070.074.i = phi ptr [ %i.bho, %bb.ip ], [ %i.bfj, %.loopexit2629 ] ; 2 uses
  %i.bfl = load ptr, ptr %.sroa.070.074.i, align 8, !tbaa !23 ; 8 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 340 ; 2 uses
  %.sroa.0.0.copyload.i1896 = load float, ptr %i.bfm, align 4, !tbaa !16
  %i.bfn = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bfl, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float %.sroa.0.0.copyload.i1896, float noundef %i.pl, float noundef %6)
          to label %.noexc1907 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 5 uses

.noexc1907:                                       ; preds = %.lr.ph.i1895
  %i.bfo = load float, ptr %i.aqt, align 8, !tbaa !168 ; 2 uses
  %i.bfp = fcmp olt float %i.bfo, 0.000000e+00
  br i1 %i.bfp, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %.noexc1907
  %i.bfq = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bfl)
          to label %.noexc1908 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit

.noexc1908:                                       ; preds = %bb.ig
  %i.bfr = fneg float %i.bfq
  %i.bfs = fmul float %i.bfn, %i.bfr              ; 2 uses
  %or.cond.i1906 = fcmp ueq float %i.bfs, 0.000000e+00
  br i1 %or.cond.i1906, label %bb.ip, label %bb.ih

bb.ih:                                            ; preds = %.noexc1908
  %i.bft = load float, ptr %i.aqt, align 8, !tbaa !168
  %i.bfu = load float, ptr %i.aqw, align 4, !tbaa !169
  %i.bfv = fdiv float %i.bft, %i.bfu
  %i.bfw = call float @llvm.fmuladd.f32(float %i.bfv, float %i.bfs, float %i.bfn) ; 3 uses
  %i.bfx = invoke fastcc noundef float @_ZN8facebook4yogaL20boundAxisWithAutoMinEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bfl, i8 noundef zeroext %.0.i907, i8 noundef zeroext %i.t, float noundef %i.bfw, float noundef %.37872370, float noundef %i.rh)
          to label %.noexc1909 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 3 uses

.noexc1909:                                       ; preds = %bb.ih
  %i.bfy = fcmp ord float %i.bfw, 0.000000e+00
  br i1 %i.bfy, label %bb.ii, label %bb.ip

bb.ii:                                            ; preds = %.noexc1909
  %i.bfz = fcmp ord float %i.bfx, 0.000000e+00
  %i.bga = fcmp une float %i.bfw, %i.bfx
  %or.cond67.i = and i1 %i.bfz, %i.bga
  br i1 %or.cond67.i, label %bb.ij, label %bb.ip

bb.ij:                                            ; preds = %bb.ii
  %i.bgb = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bfl)
          to label %.noexc1910 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit

.noexc1910:                                       ; preds = %bb.ij
  %i.bgc = fsub float %i.bfx, %i.bfn
  %i.bgd = fadd float %.075.i, %i.bgc
  %i.bge = load float, ptr %i.bfm, align 4, !tbaa !161
  %i.bgf = load float, ptr %i.aqw, align 4, !tbaa !169
  %i.bgg = call float @llvm.fmuladd.f32(float %i.bgb, float %i.bge, float %i.bgf)
  store float %i.bgg, ptr %i.aqw, align 4, !tbaa !169
  br label %bb.ip

bb.ik:                                            ; preds = %.noexc1907
  %i.bgh = fcmp ogt float %i.bfo, 0.000000e+00
  br i1 %i.bgh, label %bb.il, label %bb.ip

bb.il:                                            ; preds = %bb.ik
  %i.bgi = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bfl)
          to label %.noexc1911 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 3 uses

.noexc1911:                                       ; preds = %bb.il
  %or.cond3.i1899 = fcmp ueq float %i.bgi, 0.000000e+00
  br i1 %or.cond3.i1899, label %bb.ip, label %bb.im

bb.im:                                            ; preds = %.noexc1911
  %i.bgj = load float, ptr %i.aqt, align 8, !tbaa !168
  %i.bgk = load float, ptr %i.aqs, align 8, !tbaa !166
  %i.bgl = fdiv float %i.bgj, %i.bgk
  %i.bgm = call float @llvm.fmuladd.f32(float %i.bgl, float %i.bgi, float %i.bfn) ; 3 uses
  %i.bgn = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bfl, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float %i.bgm, float noundef %.37872370, float noundef %i.rh)
          to label %.noexc1912 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 4 uses

.noexc1912:                                       ; preds = %bb.im
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfl, i64 56 ; 8 uses
  %i.bgp = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1913 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit

.noexc1913:                                       ; preds = %.noexc1912
  %i.bgq = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i16 %i.bgp, float noundef %i.rh)
          to label %.noexc1914 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 2 uses

.noexc1914:                                       ; preds = %.noexc1913
  %.sink.i.inv.i.i.i.i.i1900 = fcmp oge float %i.bgq, 0.000000e+00
  %i.bgr = select i1 %.sink.i.inv.i.i.i.i.i1900, float %i.bgq, float 0.000000e+00
  %i.bgs = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1915 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit

.noexc1915:                                       ; preds = %.noexc1914
  %i.bgt = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i16 %i.bgs, float noundef 0.000000e+00)
          to label %.noexc1916 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 2 uses

.noexc1916:                                       ; preds = %.noexc1915
  %.sink.i.inv.i6.i.i.i.i1901 = fcmp oge float %i.bgt, 0.000000e+00
  %i.bgu = select i1 %.sink.i.inv.i6.i.i.i.i1901, float %i.bgt, float 0.000000e+00
  %i.bgv = fadd float %i.bgr, %i.bgu
  %i.bgw = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %i.t)
          to label %.noexc1917 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit

.noexc1917:                                       ; preds = %.noexc1916
  %i.bgx = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i16 %i.bgw, float noundef %i.rh)
          to label %.noexc1918 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 2 uses

.noexc1918:                                       ; preds = %.noexc1917
  %.sink.i.inv.i.i8.i.i.i1902 = fcmp oge float %i.bgx, 0.000000e+00
  %i.bgy = select i1 %.sink.i.inv.i.i8.i.i.i1902, float %i.bgx, float 0.000000e+00
  %i.bgz = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %i.t)
          to label %.noexc1919 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit

.noexc1919:                                       ; preds = %.noexc1918
  %i.bha = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.bgo, i16 %i.bgz, float noundef 0.000000e+00)
          to label %.noexc1920 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit ; 2 uses

.noexc1920:                                       ; preds = %.noexc1919
  %.sink.i.inv.i6.i9.i.i.i1903 = fcmp oge float %i.bha, 0.000000e+00
  %i.bhb = select i1 %.sink.i.inv.i6.i9.i.i.i1903, float %i.bha, float 0.000000e+00
  %i.bhc = fadd float %i.bgy, %i.bhb
  %i.bhd = fadd float %i.bgv, %i.bhc              ; 3 uses
  %or.cond.i.i.i1904 = fcmp ord float %i.bgn, %i.bhd
  %i.bhe = fcmp uno float %i.bgn, 0.000000e+00
  %i.bhf = fcmp olt float %i.bgn, %i.bhd
  %.sink.i.i.i1905 = select i1 %or.cond.i.i.i1904, i1 %i.bhf, i1 %i.bhe
  %i.bhg = select i1 %.sink.i.i.i1905, float %i.bhd, float %i.bgn ; 3 uses
  %i.bhh = fcmp ord float %i.bgm, 0.000000e+00
  br i1 %i.bhh, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %.noexc1920
  %i.bhi = fcmp ord float %i.bhg, 0.000000e+00
  %i.bhj = fcmp une float %i.bgm, %i.bhg
  %or.cond68.i = and i1 %i.bhi, %i.bhj
  br i1 %or.cond68.i, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.bhk = fsub float %i.bhg, %i.bfn
  %i.bhl = fadd float %.075.i, %i.bhk
  %i.bhm = load float, ptr %i.aqs, align 8, !tbaa !166
  %i.bhn = fsub float %i.bhm, %i.bgi
  store float %i.bhn, ptr %i.aqs, align 8, !tbaa !166
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %.noexc1920, %.noexc1911, %bb.ik, %.noexc1910, %bb.ii, %.noexc1909, %.noexc1908
  %.1.i1897 = phi float [ %i.bgd, %.noexc1910 ], [ %.075.i, %bb.ik ], [ %.075.i, %bb.ii ], [ %.075.i, %.noexc1909 ], [ %.075.i, %.noexc1908 ], [ %i.bhl, %bb.io ], [ %.075.i, %.noexc1911 ], [ %.075.i, %bb.in ], [ %.075.i, %.noexc1920 ] ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %.sroa.070.074.i, i64 8 ; 2 uses
  %i.bhp = icmp eq ptr %i.bho, %i.bfi
  br i1 %i.bhp, label %.noexc946, label %.lr.ph.i1895

.noexc946:                                        ; preds = %bb.ip
  %.pre3319 = load ptr, ptr %20, align 8, !tbaa !21 ; 2 uses
  %.pre3320 = load ptr, ptr %i.aqu, align 8, !tbaa !21 ; 2 uses
  %i.bhq = load float, ptr %i.aqt, align 8, !tbaa !168
  %i.bhr = fsub float %i.bhq, %.1.i1897
  store float %i.bhr, ptr %i.aqt, align 8, !tbaa !168
  %i.bhs = icmp eq ptr %.pre3319, %.pre3320
  br i1 %i.bhs, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %.lr.ph3048

.lr.ph3048:                                       ; preds = %.noexc946
  %i.bht = load i32, ptr %i.ab, align 8
  %i.bhu = icmp ugt i32 %i.bht, 1073741823
  %or.cond8.i.reass.reass.reass.reass.reass = and i1 %i.bhu, %invariant.op5112
  %invariant.op = or i1 %or.cond8.i.reass.reass.reass.reass.reass, %.not3313 ; 2 uses
  br label %bb.iq

bb.iq:                                            ; preds = %.lr.ph3048, %.noexc1894
  %.0147.i3047 = phi float [ 0.000000e+00, %.lr.ph3048 ], [ %i.biv, %.noexc1894 ]
  %.sroa.02339.03046 = phi ptr [ %.pre3319, %.lr.ph3048 ], [ %i.bru, %.noexc1894 ] ; 2 uses
  %i.bhv = load ptr, ptr %.sroa.02339.03046, align 8, !tbaa !23 ; 36 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 340
  %.sroa.0.0.copyload.i1829 = load float, ptr %i.bhw, align 4, !tbaa !16
  %i.bhx = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.bhv, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i907, float %.sroa.0.0.copyload.i1829, float noundef %i.pl, float noundef %6)
          to label %.noexc1861 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 9 uses

.noexc1861:                                       ; preds = %bb.iq
  %i.bhy = load float, ptr %i.aqt, align 8, !tbaa !168 ; 3 uses
  %i.bhz = fcmp ord float %i.bhy, 0.000000e+00
  br i1 %i.bhz, label %bb.ir, label %.noexc1863

bb.ir:                                            ; preds = %.noexc1861
  %i.bia = fcmp olt float %i.bhy, 0.000000e+00
  br i1 %i.bia, label %bb.is, label %bb.iw

bb.is:                                            ; preds = %bb.ir
  %i.bib = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bhv)
          to label %.noexc1862 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1862:                                       ; preds = %bb.is
  %i.bic = fneg float %i.bib
  %i.bid = fmul float %i.bhx, %i.bic              ; 3 uses
  %i.bie = fcmp une float %i.bid, 0.000000e+00
  br i1 %i.bie, label %bb.it, label %.noexc1863

bb.it:                                            ; preds = %.noexc1862
  %i.bif = load float, ptr %i.aqw, align 4, !tbaa !169 ; 2 uses
  %i.big = call noundef float @llvm.fabs.f32(float %i.bif)
  %i.bih = fcmp olt float %i.big, f0x358637BD
  br i1 %i.bih, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.bii = fadd float %i.bhx, %i.bid
  br label %.invoke3799

bb.iv:                                            ; preds = %bb.it
  %i.bij = load float, ptr %i.aqt, align 8, !tbaa !168
  %i.bik = fdiv float %i.bij, %i.bif
  %i.bil = call float @llvm.fmuladd.f32(float %i.bik, float %i.bid, float %i.bhx)
  br label %.invoke3799

bb.iw:                                            ; preds = %bb.ir
  %i.bim = fcmp ogt float %i.bhy, 0.000000e+00
  br i1 %i.bim, label %bb.ix, label %.noexc1863

bb.ix:                                            ; preds = %bb.iw
  %i.bin = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.bhv)
          to label %.noexc1864 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 2 uses

.noexc1864:                                       ; preds = %bb.ix
  %or.cond3.not.i = fcmp ueq float %i.bin, 0.000000e+00
  br i1 %or.cond3.not.i, label %.noexc1863, label %bb.iy

bb.iy:                                            ; preds = %.noexc1864
  %i.bio = load float, ptr %i.aqt, align 8, !tbaa !168
  %i.bip = load float, ptr %i.aqs, align 8, !tbaa !166
  %i.biq = fdiv float %i.bio, %i.bip
  %i.bir = call float @llvm.fmuladd.f32(float %i.biq, float %i.bin, float %i.bhx)
  br label %.invoke3799

.invoke3799:                                      ; preds = %bb.iu, %bb.iv, %bb.iy
  %i.bis = phi float [ %i.bir, %bb.iy ], [ %i.bii, %bb.iu ], [ %i.bil, %bb.iv ]
  %i.bit = invoke fastcc noundef float @_ZN8facebook4yogaL20boundAxisWithAutoMinEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %i.bhv, i8 noundef zeroext %.0.i907, i8 noundef zeroext %i.t, float noundef %i.bis, float noundef %.37872370, float noundef %i.rh)
          to label %.noexc1863 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1863:                                       ; preds = %.invoke3799, %.noexc1861, %.noexc1864, %bb.iw, %.noexc1862
  %.0146.i = phi float [ %i.bit, %.invoke3799 ], [ %i.bhx, %.noexc1862 ], [ %i.bhx, %.noexc1861 ], [ %i.bhx, %.noexc1864 ], [ %i.bhx, %bb.iw ] ; 2 uses
  %i.biu = fsub float %.0146.i, %i.bhx
  %i.biv = fadd float %.0147.i3047, %i.biu        ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 56 ; 19 uses
  br i1 %i.pj, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %.noexc1863
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bhv, i64 77
  %i.biy = load i16, ptr %i.bix, align 1, !tbaa !77 ; 2 uses
  %i.biz = and i16 %i.biy, 7
  %.not14.i.i2223 = icmp eq i16 %i.biz, 0
  br i1 %.not14.i.i2223, label %bb.ja, label %.noexc1866

bb.ja:                                            ; preds = %bb.iz
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bhv, i64 69
  %i.bjb = load i16, ptr %i.bja, align 1, !tbaa !77 ; 2 uses
  %i.bjc = and i16 %i.bjb, 7
  %.not15.i.i2224 = icmp eq i16 %i.bjc, 0
  br i1 %.not15.i.i2224, label %bb.jb, label %.noexc1866

bb.jb:                                            ; preds = %bb.ja
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bhv, i64 81
  %i.bje = load i16, ptr %i.bjd, align 1, !tbaa !77 ; 2 uses
  %i.bjf = and i16 %i.bje, 7
  %.not16.i.i2225 = icmp eq i16 %i.bjf, 0
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bhv, i64 85
  %.val.i.i2226 = load i16, ptr %i.bjg, align 1
  %.sroa.0.0.pre.i.i2227 = select i1 %.not16.i.i2225, i16 %.val.i.i2226, i16 %i.bje
  br label %.noexc1866

bb.jc:                                            ; preds = %.noexc1863
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bhv, i64 71 ; 2 uses
  %i.bji = load i16, ptr %i.bjh, align 1, !tbaa !77
  %i.bjj = and i16 %i.bji, 7
  %.not.i3.i2218 = icmp eq i16 %i.bjj, 0
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bhv, i64 83 ; 2 uses
  %i.bjl = load i16, ptr %i.bjk, align 1
  %i.bjm = and i16 %i.bjl, 7
  %.not7.i.i2219 = icmp eq i16 %i.bjm, 0
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bhv, i64 85
  %spec.select.i.i2220 = select i1 %.not7.i.i2219, ptr %i.bjn, ptr %i.bjk
  %.sroa.0.0.in.i.i2221 = select i1 %.not.i3.i2218, ptr %spec.select.i.i2220, ptr %i.bjh
  %.sroa.0.0.i4.i2222 = load i16, ptr %.sroa.0.0.in.i.i2221, align 1, !tbaa !12
  br label %.noexc1866

.noexc1866:                                       ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iz
  %.sroa.0.0.i2212 = phi i16 [ %i.biy, %bb.iz ], [ %.sroa.0.0.i4.i2222, %bb.jc ], [ %i.bjb, %bb.ja ], [ %.sroa.0.0.pre.i.i2227, %bb.jb ]
  %i.bjo = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %.sroa.0.0.i2212, float noundef %i.rh)
          to label %.noexc1867 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 2 uses

.noexc1867:                                       ; preds = %.noexc1866
  %.inv.i.i.i1831 = fcmp ord float %i.bjo, 0.000000e+00
  %i.bjp = select i1 %.inv.i.i.i1831, float %i.bjo, float 0.000000e+00
  %i.bjq = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i32 noundef %.0.i.i4.i.i1832, i8 noundef zeroext 1)
          to label %.noexc1868 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1868:                                       ; preds = %.noexc1867
  %i.bjr = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %i.bjq, float noundef %i.rh)
          to label %.noexc1869 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 2 uses

.noexc1869:                                       ; preds = %.noexc1868
  %.inv.i5.i.i1833 = fcmp ord float %i.bjr, 0.000000e+00
  %i.bjs = select i1 %.inv.i5.i.i1833, float %i.bjr, float 0.000000e+00
  %i.bjt = fadd float %i.bjp, %i.bjs              ; 3 uses
  %i.bju = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i32 noundef %.0.i.i.i152.i, i8 noundef zeroext 1)
          to label %.noexc1870 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1870:                                       ; preds = %.noexc1869
  %i.bjv = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %i.bju, float noundef %i.rh)
          to label %.noexc1871 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 2 uses

.noexc1871:                                       ; preds = %.noexc1870
  %.inv.i.i153.i = fcmp ord float %i.bjv, 0.000000e+00
  %i.bjw = select i1 %.inv.i.i153.i, float %i.bjv, float 0.000000e+00
  %i.bjx = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i32 noundef %.0.i.i4.i154.i, i8 noundef zeroext 1)
          to label %.noexc1872 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1872:                                       ; preds = %.noexc1871
  %i.bjy = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %i.bjx, float noundef %i.rh)
          to label %.noexc1873 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 2 uses

.noexc1873:                                       ; preds = %.noexc1872
  %.inv.i5.i155.i = fcmp ord float %i.bjy, 0.000000e+00
  %i.bjz = select i1 %.inv.i5.i155.i, float %i.bjy, float 0.000000e+00
  %i.bka = fadd float %i.bjw, %i.bjz              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bkb = fadd float %.0146.i, %i.bjt            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bhv, i64 159
  %.sroa.0.0.copyload.i.i1834 = load i16, ptr %i.bkc, align 1, !tbaa !12 ; 6 uses
  %i.bkd = and i16 %.sroa.0.0.copyload.i.i1834, 7
  %i.bke = icmp eq i16 %i.bkd, 0
  br i1 %i.bke, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378, label %bb.jd

bb.jd:                                            ; preds = %.noexc1873
  %i.bkf = and i16 %.sroa.0.0.copyload.i.i1834, 8
  %.not.i.i.i1835 = icmp eq i16 %i.bkf, 0
  br i1 %.not.i.i.i1835, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bkg = lshr i16 %.sroa.0.0.copyload.i.i1834, 4
  %i.bkh = zext nneg i16 %i.bkg to i64            ; 6 uses
  %i.bki = icmp ult i16 %.sroa.0.0.copyload.i.i1834, 64 ; 3 uses
  br i1 %i.bki, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bhv, i64 300
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.bkj, i64 %i.bkh
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841

bb.jg:                                            ; preds = %bb.je
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bhv, i64 328
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !101 ; 2 uses
  %i.bkn = add nsw i64 %i.bkh, -4                 ; 3 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkm, i64 8
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !104
  %i.bkq = load ptr, ptr %i.bkm, align 8, !tbaa !105 ; 2 uses
  %i.bkr = ptrtoint ptr %i.bkp to i64
  %i.bks = ptrtoint ptr %i.bkq to i64
  %i.bkt = sub i64 %i.bkr, %i.bks
  %i.bku = ashr exact i64 %i.bkt, 2               ; 2 uses
  %.not.i.i.i.i.i.i1836 = icmp ult i64 %i.bkn, %i.bku
  br i1 %.not.i.i.i.i.i.i1836, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837, label %.invoke3800

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837:       ; preds = %bb.jg
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.bkn
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841: ; preds = %bb.jf, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837
  %.0.in.i.i.i.i1839 = phi ptr [ %i.bkk, %bb.jf ], [ %i.bkv, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i1837 ]
  %.0.i7.i.i.i1840 = load float, ptr %.0.in.i.i.i.i1839, align 4, !tbaa !17
  %i.bkw = fcmp ord float %.0.i7.i.i.i1840, 0.000000e+00
  br i1 %i.bkw, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread.thread, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.i1841.thread2378

end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  %i.boo = load i16, ptr %i.bon, align 1, !tbaa !12 ; 2 uses
  %i.bop = and i16 %i.boo, 7
  %i.boq = icmp eq i16 %i.bop, 0
  br i1 %i.boq, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191, label %bb.jv

bb.jv:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188
  %i.bor = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %i.boo, float noundef %.37872370)
          to label %.noexc2201 unwind label %.loopexit.split-lp2619.loopexit ; 3 uses

.noexc2201:                                       ; preds = %bb.jv
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bhv, i64 60
  %i.bot = load i8, ptr %i.bos, align 4
  %i.bou = and i8 %i.bot, 16
  %i.bov = icmp ne i8 %i.bou, 0
  %i.bow = fcmp ord float %i.bor, 0.000000e+00
  %or.cond.i.i2190 = select i1 %i.bov, i1 %i.bow, i1 false
  br i1 %or.cond.i.i2190, label %bb.jw, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191

bb.jw:                                            ; preds = %.noexc2201
  %i.box = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select.i1927, float noundef %i.rh)
          to label %.noexc2202 unwind label %.loopexit.split-lp2619.loopexit ; 2 uses

.noexc2202:                                       ; preds = %bb.jw
  %i.boy = fcmp ord float %i.box, 0.000000e+00
  %.sroa.0.0.i.i2199 = select i1 %i.boy, float %i.box, float 0.000000e+00
  %i.boz = fadd float %i.bor, %.sroa.0.0.i.i2199
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191: ; preds = %.noexc2202, %.noexc2201, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188
  %.sroa.010.1.i.i2192 = phi float [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i2188 ], [ %i.boz, %.noexc2202 ], [ %i.bor, %.noexc2201 ]
  br i1 %i.pj, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bhv, i64 77
  %i.bpb = load i16, ptr %i.bpa, align 1, !tbaa !77 ; 2 uses
  %i.bpc = and i16 %i.bpb, 7
  %.not14.i.i2246 = icmp eq i16 %i.bpc, 0
  br i1 %.not14.i.i2246, label %bb.jy, label %.noexc2203

bb.jy:                                            ; preds = %bb.jx
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bhv, i64 69
  %i.bpe = load i16, ptr %i.bpd, align 1, !tbaa !77 ; 2 uses
  %i.bpf = and i16 %i.bpe, 7
  %.not15.i.i2247 = icmp eq i16 %i.bpf, 0
  br i1 %.not15.i.i2247, label %bb.jz, label %.noexc2203

bb.jz:                                            ; preds = %bb.jy
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bhv, i64 81
  %i.bph = load i16, ptr %i.bpg, align 1, !tbaa !77 ; 2 uses
  %i.bpi = and i16 %i.bph, 7
  %.not16.i.i2248 = icmp eq i16 %i.bpi, 0
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bhv, i64 85
  %.val.i.i2249 = load i16, ptr %i.bpj, align 1
  %.sroa.0.0.pre.i.i2250 = select i1 %.not16.i.i2248, i16 %.val.i.i2249, i16 %i.bph
  br label %.noexc2203

bb.ka:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit.i2191
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bhv, i64 71 ; 2 uses
  %i.bpl = load i16, ptr %i.bpk, align 1, !tbaa !77
  %i.bpm = and i16 %i.bpl, 7
  %.not.i3.i2241 = icmp eq i16 %i.bpm, 0
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bhv, i64 83 ; 2 uses
  %i.bpo = load i16, ptr %i.bpn, align 1
  %i.bpp = and i16 %i.bpo, 7
  %.not7.i.i2242 = icmp eq i16 %i.bpp, 0
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bhv, i64 85
  %spec.select.i.i2243 = select i1 %.not7.i.i2242, ptr %i.bpq, ptr %i.bpn
  %.sroa.0.0.in.i.i2244 = select i1 %.not.i3.i2241, ptr %spec.select.i.i2243, ptr %i.bpk
  %.sroa.0.0.i4.i2245 = load i16, ptr %.sroa.0.0.in.i.i2244, align 1, !tbaa !12
  br label %.noexc2203

.noexc2203:                                       ; preds = %bb.ka, %bb.jz, %bb.jy, %bb.jx
  %.sroa.0.0.i2235 = phi i16 [ %i.bpb, %bb.jx ], [ %.sroa.0.0.i4.i2245, %bb.ka ], [ %i.bpe, %bb.jy ], [ %.sroa.0.0.pre.i.i2250, %bb.jz ]
  %i.bpr = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %.sroa.0.0.i2235, float noundef %i.rh)
          to label %.noexc2204 unwind label %.loopexit.split-lp2619.loopexit ; 2 uses

.noexc2204:                                       ; preds = %.noexc2203
  %.inv.i.i.i2194 = fcmp ord float %i.bpr, 0.000000e+00
  %i.bps = select i1 %.inv.i.i.i2194, float %i.bpr, float 0.000000e+00
  %i.bpt = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i32 noundef %.0.i.i4.i.i1832, i8 noundef zeroext 1)
          to label %.noexc2205 unwind label %.loopexit.split-lp2619.loopexit

.noexc2205:                                       ; preds = %.noexc2204
  %i.bpu = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i16 %i.bpt, float noundef %i.rh)
          to label %.noexc1886 unwind label %.loopexit.split-lp2619.loopexit ; 2 uses

.noexc1886:                                       ; preds = %.noexc2205
  %.inv.i5.i.i2196 = fcmp ord float %i.bpu, 0.000000e+00
  %i.bpv = select i1 %.inv.i5.i.i2196, float %i.bpu, float 0.000000e+00
  %i.bpw = fadd float %i.bps, %i.bpv
  %i.bpx = fadd float %.sroa.010.1.i.i2192, %i.bpw ; 3 uses
  %i.bpy = fcmp uno float %i.bpx, 0.000000e+00
  %i.bpz = fcmp olt float %i.bkb, %i.bpx
  %or.cond.i2198 = select i1 %i.bpy, i1 true, i1 %i.bpz
  %i.bqa = select i1 %or.cond.i2198, float %i.bkb, float %i.bpx ; 2 uses
  invoke void @_ZN8facebook4yoga23constrainMaxSizeForModeEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionEffPNS0_10SizingModeEPf(ptr noundef nonnull %i.bhv, i8 noundef zeroext %i.t, i8 noundef zeroext %i.pi, float noundef %i.rl, float noundef %i.rh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc1887 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1887:                                       ; preds = %.noexc1886
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bhv, i64 728
  %i.bqc = getelementptr inbounds nuw [8 x i8], ptr %i.bqb, i64 %i.aqy
  %.sroa.0.0.copyload.i.i194.i = load i64, ptr %i.bqc, align 4 ; 2 uses
  %i.bqd = lshr i64 %.sroa.0.0.copyload.i.i194.i, 32
  %i.bqe = trunc i64 %i.bqd to i8
  %i.bqf = trunc i64 %.sroa.0.0.copyload.i.i194.i to i32
  %i.bqg = bitcast i32 %i.bqf to float            ; 2 uses
  switch i8 %i.bqe, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i
    i8 2, label %bb.kb
  ]

bb.kb:                                            ; preds = %.noexc1887
  %i.bqh = fmul float %i.rl, %i.bqg
  %i.bqi = fmul float %i.bqh, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i: ; preds = %.noexc1887, %bb.kb
  %.sroa.0.0.i.i196.i = phi float [ %i.bqi, %bb.kb ], [ %i.bqg, %.noexc1887 ]
  %i.bqj = fcmp ult float %.sroa.0.0.i.i196.i, 0.000000e+00
  br i1 %i.bqj, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread: ; preds = %.noexc1887, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i
  %i.bqk = load i32, ptr %i.biw, align 8
  %i.bql = lshr i32 %i.bqk, 24
  %i.bqm = trunc nuw i32 %i.bql to i8
  %i.bqn = and i8 %i.bqm, 15                      ; 2 uses
  %i.bqo = icmp eq i8 %i.bqn, 0
  br i1 %i.bqo, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread
  %i.bqp = load i32, ptr %i.ab, align 8
  %i.bqq = lshr i32 %i.bqp, 20
  %i.bqr = trunc i32 %i.bqq to i8
  %i.bqs = and i8 %i.bqr, 15
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread
  %i.bqt = phi i8 [ %i.bqs, %bb.kc ], [ %i.bqn, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i.thread ]
  %i.bqu = icmp eq i8 %i.bqt, 4
  br i1 %i.bqu, label %switch.lookup4763, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383

switch.lookup4763:                                ; preds = %bb.kd
  %switch.load4765 = load i8, ptr %switch.gep4764, align 1
  %switch.ext4766 = zext i8 %switch.load4765 to i32
  %i.bqv = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i32 noundef %switch.ext4766, i8 noundef zeroext %i.t)
          to label %.noexc1890 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1890:                                       ; preds = %switch.lookup4763
  %i.bqw = and i16 %i.bqv, 7
  %i.bqx = icmp eq i16 %i.bqw, 4
  br i1 %i.bqx, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383, label %switch.lookup4767

switch.lookup4767:                                ; preds = %.noexc1890
  %switch.load4769 = load i8, ptr %switch.gep4768, align 1
  %switch.ext4770 = zext i8 %switch.load4769 to i32
  %i.bqy = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.biw, i32 noundef %switch.ext4770, i8 noundef zeroext %i.t)
          to label %.noexc1892 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1892:                                       ; preds = %switch.lookup4767
  %i.bqz = and i16 %i.bqy, 7
  %i.bra = icmp eq i16 %i.bqz, 4
  %i.brb = and i1 %8, %i.bra
  br label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383: ; preds = %bb.kd, %.noexc1892, %.noexc1890, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i
  %i.brc = phi i1 [ %8, %.noexc1890 ], [ %8, %bb.kd ], [ %8, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit197.i ], [ %i.brb, %.noexc1892 ] ; 2 uses
  %i.brd = load float, ptr %i.a, align 4          ; 2 uses
  %i.bre = select i1 %i.pj, float %i.bqa, float %i.brd
  %i.brf = select i1 %i.pj, float %i.brd, float %i.bqa
  %i.brg = load i32, ptr %i.b, align 4            ; 2 uses
  %i.brh = select i1 %i.pj, i32 0, i32 %i.brg
  %i.bri = select i1 %i.pj, i32 %i.brg, i32 0
  %i.brj = load i8, ptr %i.ara, align 4
  %i.brk = and i8 %i.brj, 3
  %i.brl = select i1 %i.brc, i32 4, i32 7
  %i.brm = invoke noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %i.bhv, float noundef %i.bre, float noundef %i.brf, i8 noundef zeroext %i.brk, i32 noundef %i.brh, i32 noundef %i.bri, float noundef %i.rh, float noundef %i.rj, i1 noundef zeroext %i.brc, i32 noundef %i.brl, ptr noundef nonnull align 4 dereferenceable(60) %10, i32 noundef %11, i32 noundef %12)
          to label %.noexc1893 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137 ; 0 uses

.noexc1893:                                       ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit201.i.thread2383
  %i.brn = load i8, ptr %i.ara, align 4
  %i.bro = and i8 %i.brn, 4
  %.not2581 = icmp eq i8 %i.bro, 0
  br i1 %.not2581, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %.noexc1893
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bhv, i64 580
  %i.brq = load i8, ptr %i.brp, align 4
  %i.brr = and i8 %i.brq, 4
  %i.brs = icmp ne i8 %i.brr, 0
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %.noexc1893
  %i.brt = phi i1 [ true, %.noexc1893 ], [ %i.brs, %bb.ke ]
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.brt)
          to label %.noexc1894 unwind label %.loopexit.split-lp2619.loopexit, !inline_history !137

.noexc1894:                                       ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bru = getelementptr inbounds nuw i8, ptr %.sroa.02339.03046, i64 8 ; 2 uses
  %i.brv = icmp eq ptr %i.bru, %.pre3320
  br i1 %i.brv, label %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, label %bb.iq

_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit: ; preds = %.noexc1894, %bb.if, %bb.hb, %.loopexit2629, %.noexc946
  %.0147.i.lcssa = phi float [ 0.000000e+00, %.noexc946 ], [ 0.000000e+00, %bb.if ], [ 0.000000e+00, %.loopexit2629 ], [ 0.000000e+00, %bb.hb ], [ %i.biv, %.noexc1894 ]
  %i.brw = fsub float %.pre3322, %.0147.i.lcssa   ; 2 uses
  store float %i.brw, ptr %i.aqt, align 8, !tbaa !168
  br label %bb.kg

bb.kg:                                            ; preds = %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit, %bb.gz
  %i.brx = phi float [ %i.brw, %_ZN8facebook4yogaL21resolveFlexibleLengthEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionEffffffbNS0_10SizingModeEbRNS0_10LayoutDataEjj.exit ], [ %.pre3322, %bb.gz ]
  %i.bry = load i8, ptr %i.ara, align 4
  %i.brz = and i8 %i.bry, 4
  %i.bsa = icmp ne i8 %i.brz, 0
  %i.bsb = fcmp olt float %i.brx, 0.000000e+00
  %i.bsc = select i1 %i.bsa, i1 true, i1 %i.bsb
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.bsc)
          to label %switch.lookup4771 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

default.unreachable4411:                          ; preds = %bb.lq, %.lr.ph.i
  unreachable

switch.lookup4771:                                ; preds = %bb.kg
  %switch.load4773 = load i8, ptr %switch.gep4772, align 1
  %switch.ext4774 = zext i8 %switch.load4773 to i32 ; 2 uses
  %i.bsd = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4774, i8 noundef zeroext %i.t)
          to label %.noexc966 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc966:                                        ; preds = %switch.lookup4771
  %i.bse = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.bsd, float noundef %6)
          to label %.noexc967 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc967:                                        ; preds = %.noexc966
  %.sink.i.inv.i8.i.i = fcmp oge float %i.bse, 0.000000e+00
  %i.bsf = select i1 %.sink.i.inv.i8.i.i, float %i.bse, float 0.000000e+00
  %i.bsg = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4774, i8 noundef zeroext %i.t)
          to label %.noexc968 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc968:                                        ; preds = %.noexc967
  %i.bsh = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.bsg, float noundef 0.000000e+00)
          to label %.noexc969 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc969:                                        ; preds = %.noexc968
  %.sink.i.inv.i6.i.i948 = fcmp oge float %i.bsh, 0.000000e+00
  %i.bsi = select i1 %.sink.i.inv.i6.i.i948, float %i.bsh, float 0.000000e+00
  %i.bsj = fadd float %i.bsf, %i.bsi              ; 2 uses
  %switch.load4777 = load i8, ptr %switch.gep4776, align 1
  %switch.ext4778 = zext i8 %switch.load4777 to i32 ; 2 uses
  %i.bsk = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4778, i8 noundef zeroext %i.t)
          to label %.noexc970 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc970:                                        ; preds = %.noexc969
  %i.bsl = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.bsk, float noundef %6)
          to label %.noexc971 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc971:                                        ; preds = %.noexc970
  %.sink.i.inv.i8.i138.i = fcmp oge float %i.bsl, 0.000000e+00
  %i.bsm = select i1 %.sink.i.inv.i8.i138.i, float %i.bsl, float 0.000000e+00
  %i.bsn = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %switch.ext4778, i8 noundef zeroext %i.t)
          to label %.noexc972 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc972:                                        ; preds = %.noexc971
  %i.bso = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.bsn, float noundef 0.000000e+00)
          to label %.noexc973 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc973:                                        ; preds = %.noexc972
  %.sink.i.inv.i6.i139.i = fcmp oge float %i.bso, 0.000000e+00
  %i.bsp = select i1 %.sink.i.inv.i6.i139.i, float %i.bso, float 0.000000e+00
  %i.bsq = fadd float %i.bsm, %i.bsp              ; 2 uses
  %.val.i.i.i = load i16, ptr %i.apv, align 1
  %i.bsr = load i16, ptr %i.arb, align 1, !tbaa !77 ; 2 uses
  %i.bss = and i16 %i.bsr, 7
  %.not.i3.i.i949 = icmp eq i16 %i.bss, 0
  %.sroa.0.0.i5.i.i = select i1 %.not.i3.i.i949, i16 %.val.i.i.i, i16 %i.bsr
  %i.bst = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i5.i.i, float noundef %.37872370)
          to label %.noexc974 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc974:                                        ; preds = %.noexc973
  %.sink.i.inv.i.i = fcmp oge float %i.bst, 0.000000e+00
  %i.bsu = select i1 %.sink.i.inv.i.i, float %i.bst, float 0.000000e+00 ; 8 uses
  %i.bsv = load float, ptr %i.aqt, align 8, !tbaa !168 ; 2 uses
  %i.bsw = fcmp ogt float %i.bsv, 0.000000e+00
  %or.cond232.i = select i1 %i.arc, i1 %i.bsw, i1 false
  br i1 %or.cond232.i, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i, label %_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf.exit._crit_edge.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i: ; preds = %.noexc974
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ard, align 1, !tbaa !12 ; 7 uses
  %i.bsx = and i16 %.sroa.0.0.copyload.i.i, 7     ; 3 uses
  switch i16 %i.bsx, label %bb.kh [
    i16 0, label %.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i
  ]

bb.kh:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  %i.bsy = icmp eq i16 %i.bsx, 5
  %i.bsz = lshr i16 %.sroa.0.0.copyload.i.i, 4    ; 3 uses
  %i.bta = and i16 %.sroa.0.0.copyload.i.i, -25
  %or.cond.i962 = icmp eq i16 %i.bta, 5
  %i.btb = icmp eq i16 %i.bsz, 2
  %i.btc = and i1 %i.bsy, %i.btb
  %or.cond201.i = or i1 %or.cond.i962, %i.btc
  br i1 %or.cond201.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.btd = and i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i.i963 = icmp eq i16 %i.btd, 0
  br i1 %.not.i.i.i963, label %bb.km, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bte = zext nneg i16 %i.bsz to i64            ; 2 uses
  %i.btf = icmp ult i16 %.sroa.0.0.copyload.i.i, 64
  br i1 %i.btf, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.btg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.bte
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

bb.kl:                                            ; preds = %bb.kj
  %i.bth = load ptr, ptr %i.are, align 8, !tbaa !101 ; 2 uses
  %i.bti = add nsw i64 %i.bte, -4                 ; 3 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bth, i64 8
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !104
  %i.btl = load ptr, ptr %i.bth, align 8, !tbaa !105 ; 2 uses
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.bti, %i.btp
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %.invoke3800

.invoke3800:                                      ; preds = %bb.kl, %bb.hp, %bb.hh, %bb.jm, %bb.jj, %bb.jg
  %i.btq = phi i64 [ %i.bly, %bb.jm ], [ %i.bcz, %bb.hp ], [ %i.blj, %bb.jj ], [ %i.bkn, %bb.jg ], [ %i.bbk, %bb.hh ], [ %i.bti, %bb.kl ]
  %i.btr = phi i64 [ %i.bmf, %bb.jm ], [ %i.bdg, %bb.hp ], [ %i.blq, %bb.jj ], [ %i.bku, %bb.jg ], [ %i.bbr, %bb.hh ], [ %i.btp, %bb.kl ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.btq, i64 noundef %i.btr) #14
          to label %.cont3801 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3801:                                        ; preds = %.invoke3800
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.kl
  %i.bts = getelementptr inbounds nuw [4 x i8], ptr %i.btl, i64 %i.bti
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, %bb.kk
  %.0.in.i.i.i = phi ptr [ %i.btg, %bb.kk ], [ %i.bts, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i2.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

bb.km:                                            ; preds = %bb.ki
  %i.btt = and i16 %i.bsz, 2047
  %i.btu = zext nneg i16 %i.btt to i32            ; 2 uses
  %i.btv = sub nsw i32 0, %i.btu
  %.not.i13.i.i.i = icmp slt i16 %.sroa.0.0.copyload.i.i, 0
  %i.btw = select i1 %.not.i13.i.i.i, i32 %i.btv, i32 %i.btu
  %i.btx = sitofp i32 %i.btw to float
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i: ; preds = %bb.km, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i
  %i.bty = phi float [ %.0.i2.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i ], [ %i.btx, %bb.km ]
  %i.btz = call float @llvm.fabs.f32(float %i.bty)
  %.sroa.0.1.in.i.i.i = fcmp ueq float %i.btz, +inf
  %i.bua = icmp eq i16 %i.bsx, 0
  %or.cond233.i = or i1 %i.bua, %.sroa.0.1.in.i.i.i
  br i1 %or.cond233.i, label %.thread.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i: ; preds = %bb.kh, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i
  %i.bub = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.copyload.i.i, float noundef %i.pl)
          to label %.noexc976 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc976:                                        ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.thread.i
  %i.buc = load i8, ptr %i.aqj, align 4
  %i.bud = and i8 %i.buc, 16
  %i.bue = icmp ne i8 %i.bud, 0
  %i.buf = fcmp ord float %i.bub, 0.000000e+00
  %or.cond.i.i = select i1 %i.bue, i1 %i.buf, i1 false
  br i1 %or.cond.i.i, label %bb.kn, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

bb.kn:                                            ; preds = %.noexc976
  %i.bug = invoke noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.t, i8 noundef zeroext %spec.select.i1927, float noundef %6)
          to label %.noexc977 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc977:                                        ; preds = %bb.kn
  %i.buh = fcmp ord float %i.bug, 0.000000e+00
  %.sroa.0.0.i.i = select i1 %i.buh, float %i.bug, float 0.000000e+00
  %i.bui = fadd float %i.bub, %.sroa.0.0.i.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i: ; preds = %.noexc977, %.noexc976
  %.sroa.010.1.i.i = phi float [ %i.bub, %.noexc976 ], [ %i.bui, %.noexc977 ]
  %i.buj = fcmp ord float %.sroa.010.1.i.i, 0.000000e+00
  br i1 %i.buj, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit143.i, label %.thread.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit143.i: ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i
  %i.buk = load i16, ptr %i.ard, align 1, !tbaa !12 ; 2 uses
  %i.bul = and i16 %i.buk, 7
  %i.bum = icmp eq i16 %i.bul, 0
  br i1 %i.bum, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit147.i, label %bb.ko

bb.ko:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit143.i
  %i.bun = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.buk, float noundef %i.pl)
          to label %.noexc978 unwind label %.loopexit.split-lp2619.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc978:                                        ; preds = %bb.ko
  %i.buo = load i8, ptr %i.aqj, align 4
  %i.bup = and i8 %i.buo, 16
end_hunk_1
