Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Demosaic?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 81
begin_hunk_0_@"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi":bb.a
  %i.acw = add i64 %i.aco, %i.bj                  ; 2 uses
  %i.acx = add i64 %i.acw, %i.bi
  %i.acy = shl i64 %i.acx, 2
  %i.acz = getelementptr i8, ptr %i.bf, i64 %i.acy
  %i.ada = add i64 %i.acw, %wide.trip.count
  %i.adb = shl i64 %i.ada, 2
  %i.adc = getelementptr i8, ptr %i.bf, i64 %i.adb
  %bound03616 = icmp ult ptr %i.acs, %i.adc
  %bound13617 = icmp ult ptr %i.acz, %i.acv
  %found.conflict3618 = and i1 %bound03616, %bound13617
  br i1 %found.conflict3618, label %scalar.ph3613.preheader, label %vector.ph3619

vector.ph3619:                                    ; preds = %vector.memcheck3615
  %i.add = and i64 %wide.trip.count, 7            ; 2 uses
  %n.vec3620 = sub nsw i64 %i.acp, %i.add         ; 2 uses
  %i.ade = add nsw i64 %n.vec3620, %i.bi
  %invariant.gep3868 = getelementptr [4 x i8], ptr %i.bf, i64 %invariant.op3212
  br label %vector.body3621

vector.body3621:                                  ; preds = %vector.body3621, %vector.ph3619
  %index3622 = phi i64 [ 0, %vector.ph3619 ], [ %index.next3625, %vector.body3621 ] ; 2 uses
  %i.adf = add nuw i64 %index3622, %i.bi          ; 2 uses
  %gep3869 = getelementptr [4 x i8], ptr %invariant.gep3868, i64 %i.adf ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %gep3869, i64 16
  %wide.load3623 = load <4 x float>, ptr %gep3869, align 4, !tbaa !109, !alias.scope !1627 ; 2 uses
  %wide.load3624 = load <4 x float>, ptr %i.adg, align 4, !tbaa !109, !alias.scope !1627 ; 2 uses
  %i.adh = add nuw nsw i64 %i.adf, 2400           ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.adh ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  store <4 x float> %wide.load3623, ptr %i.adi, align 32, !tbaa !109, !alias.scope !1628, !noalias !1627
  store <4 x float> %wide.load3624, ptr %i.adj, align 16, !tbaa !109, !alias.scope !1628, !noalias !1627
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.adh ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store <4 x float> %wide.load3623, ptr %i.adk, align 32, !tbaa !109, !alias.scope !1628, !noalias !1627
  store <4 x float> %wide.load3624, ptr %i.adl, align 16, !tbaa !109, !alias.scope !1628, !noalias !1627
  %index.next3625 = add nuw i64 %index3622, 8     ; 2 uses
  %i.adm = icmp eq i64 %index.next3625, %n.vec3620
  br i1 %i.adm, label %middle.block3626, label %vector.body3621, !llvm.loop !1527

middle.block3626:                                 ; preds = %vector.body3621
  %cmp.n3627 = icmp eq i64 %i.add, 0
  br i1 %cmp.n3627, label %.loopexit2599.split, label %scalar.ph3613.preheader

scalar.ph3613.preheader:                          ; preds = %vector.memcheck3615, %._crit_edge.14, %middle.block3626
  %indvars.iv.15.ph = phi i64 [ %i.bi, %vector.memcheck3615 ], [ %i.bi, %._crit_edge.14 ], [ %i.ade, %middle.block3626 ] ; 6 uses
  %i.adn = sub nsw i64 %wide.trip.count, %indvars.iv.15.ph
  %xtraiter3815 = and i64 %i.adn, 1
  %lcmp.mod3816.not = icmp eq i64 %xtraiter3815, 0
  br i1 %lcmp.mod3816.not, label %scalar.ph3613.prol.loopexit, label %scalar.ph3613.prol

scalar.ph3613.prol:                               ; preds = %scalar.ph3613.preheader
  %.reass3213.prol = add i64 %indvars.iv.15.ph, %invariant.op3212
  %i.ado = mul i64 %.reass3213.prol, %i.bh
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ado
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !109 ; 2 uses
  %i.adr = add nuw nsw i64 %indvars.iv.15.ph, 2400 ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.adr
  store float %i.adq, ptr %i.ads, align 4, !tbaa !109
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.adr
  store float %i.adq, ptr %i.adt, align 4, !tbaa !109
  %indvars.iv.next.15.prol = add nuw nsw i64 %indvars.iv.15.ph, 1
  br label %scalar.ph3613.prol.loopexit

scalar.ph3613.prol.loopexit:                      ; preds = %scalar.ph3613.prol, %scalar.ph3613.preheader
  %indvars.iv.15.unr = phi i64 [ %indvars.iv.15.ph, %scalar.ph3613.preheader ], [ %indvars.iv.next.15.prol, %scalar.ph3613.prol ]
  %i.adu = add nsw i64 %wide.trip.count, -1
  %i.adv = icmp eq i64 %indvars.iv.15.ph, %i.adu
  br i1 %i.adv, label %.loopexit2599.split, label %scalar.ph3613.preheader.new

scalar.ph3613.preheader.new:                      ; preds = %scalar.ph3613.prol.loopexit
  %invariant.op3870 = add i64 1, %invariant.op3212
  br label %scalar.ph3613

scalar.ph3613:                                    ; preds = %scalar.ph3613, %scalar.ph3613.preheader.new
  %indvars.iv.15 = phi i64 [ %indvars.iv.15.unr, %scalar.ph3613.preheader.new ], [ %indvars.iv.next.15.1, %scalar.ph3613 ] ; 5 uses
  %.reass3213 = add i64 %indvars.iv.15, %invariant.op3212
  %i.adw = mul i64 %.reass3213, %i.bh
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.adw
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !109 ; 2 uses
  %i.adz = add nuw nsw i64 %indvars.iv.15, 2400   ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.adz
  store float %i.ady, ptr %i.aea, align 4, !tbaa !109
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.adz
  store float %i.ady, ptr %i.aeb, align 4, !tbaa !109
  %.reass3213.1.reass = add i64 %indvars.iv.15, %invariant.op3870
  %i.aec = mul i64 %.reass3213.1.reass, %i.bh
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.aec
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !109 ; 2 uses
  %i.aef = add nuw nsw i64 %indvars.iv.15, 2401   ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aef
  store float %i.aee, ptr %i.aeg, align 4, !tbaa !109
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aef
  store float %i.aee, ptr %i.aeh, align 4, !tbaa !109
  %indvars.iv.next.15.1 = add nuw nsw i64 %indvars.iv.15, 2 ; 2 uses
  %exitcond.15.not.1 = icmp eq i64 %indvars.iv.next.15.1, %wide.trip.count
  br i1 %exitcond.15.not.1, label %.loopexit2599.split, label %scalar.ph3613, !llvm.loop !1528

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.13786, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.reass3183 = add i64 %indvars.iv, %invariant.op
  %i.aei = mul i64 %.reass3183, %i.bh
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.aei
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !109 ; 2 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store float %i.aek, ptr %i.ael, align 4, !tbaa !109
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.aek, ptr %i.aem, align 4, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.reass3183.1 = add i64 %indvars.iv.next, %invariant.op
  %i.aen = mul i64 %.reass3183.1, %i.bh
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.aen
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !109 ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  store float %i.aep, ptr %i.aeq, align 4, !tbaa !109
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  store float %i.aep, ptr %i.aer, align 4, !tbaa !109
  %indvars.iv.next.13786 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.13786, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1529

.loopexit2599.split:                              ; preds = %scalar.ph3613.prol.loopexit, %scalar.ph3613, %middle.block3626, %bb.a
  %i.aes = icmp slt i32 %i.aq, %i.av              ; 3 uses
  %i.aet = icmp slt i32 %i.as, %i.ay
  %or.cond3220 = select i1 %i.aes, i1 %i.aet, i1 false
  br i1 %or.cond3220, label %.lr.ph2614.split, label %._crit_edge2615.split

.lr.ph2614.split:                                 ; preds = %.loopexit2599.split
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !1596, !nonnull !204, !align !206
  %.val2443 = load ptr, ptr %i.aev, align 8, !tbaa !401 ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %.val2443, i64 16
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !76 ; 2 uses
  %i.aey = sext i32 %i.aex to i64                 ; 3 uses
  %i.aez = load ptr, ptr %.val2443, align 8, !tbaa !388 ; 6 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.val2443, i64 8
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !389 ; 4 uses
  %i.afc = zext nneg i32 %i.as to i64             ; 6 uses
  %i.afd = sext i32 %i.f to i64                   ; 2 uses
  %i.afe = zext nneg i32 %i.aq to i64             ; 4 uses
  %i.aff = sext i32 %i.d to i64                   ; 2 uses
  %wide.trip.count2838 = zext i32 %i.av to i64    ; 3 uses
  %wide.trip.count2833 = zext i32 %i.ay to i64    ; 7 uses
  %i.afg = xor i64 %i.afe, -1
  %i.afh = add nsw i64 %i.afg, %wide.trip.count2838
  %i.afi = mul i64 %i.afh, %i.aey
  %i.afj = add nsw i64 %i.aff, %i.afe
  %i.afk = mul i64 %i.afj, %i.aey
  %i.afl = add i64 %i.afk, %i.afd                 ; 2 uses
  %i.afm = add i64 %i.afl, %wide.trip.count2833
  %i.afn = add i64 %i.afi, %i.afm
  %i.afo = shl i64 %i.afn, 2
  %scevgep = getelementptr i8, ptr %i.aez, i64 %i.afo
  %i.afp = add i64 %i.afl, %i.afc
  %i.afq = shl i64 %i.afp, 2
  %scevgep3638 = getelementptr i8, ptr %i.aez, i64 %i.afq
  %i.afr = mul nuw nsw i64 %wide.trip.count2838, 640
  %i.afs = shl nuw nsw i64 %wide.trip.count2833, 2
  %i.aft = getelementptr i8, ptr %i.k, i64 %i.afr
  %i.afu = getelementptr i8, ptr %i.aft, i64 %i.afs
  %scevgep3639 = getelementptr i8, ptr %i.afu, i64 1281280
  %i.afv = mul nuw nsw i64 %i.afe, 640
  %i.afw = shl nuw nsw i64 %i.afc, 2
  %i.afx = getelementptr i8, ptr %i.k, i64 %i.afv
  %scevgep3640 = getelementptr i8, ptr %i.afx, i64 %i.afw
  %i.afy = sub nsw i64 %wide.trip.count2833, %i.afc ; 2 uses
  %min.iters.check3642 = icmp ugt i64 %i.afy, 7
  %ident.check3630.not = icmp eq i64 %i.afb, 1
  %or.cond3767 = select i1 %min.iters.check3642, i1 %ident.check3630.not, i1 false
  %bound03644 = icmp ult ptr %scevgep3640, %scevgep
  %bound13645 = icmp ult ptr %scevgep3638, %scevgep3639
  %found.conflict3646 = and i1 %bound03644, %bound13645
  %stride.check = icmp slt i32 %i.aex, 0
  %i.afz = or i1 %found.conflict3646, %stride.check
  %i.aga = and i64 %wide.trip.count2833, 7        ; 2 uses
  %n.vec3648 = sub nsw i64 %i.afy, %i.aga         ; 2 uses
  %i.agb = add nsw i64 %n.vec3648, %i.afc
  %cmp.n3655 = icmp eq i64 %i.aga, 0
  %i.agc = add nsw i64 %wide.trip.count2833, -1
  br label %.lr.ph2610

._crit_edge2615.split:                            ; preds = %._crit_edge2611, %.loopexit2599.split
  %i.agd = icmp slt i32 %i.av, %i.an              ; 3 uses
  br i1 %i.agd, label %.preheader2596, label %.loopexit2597.split

.preheader2596:                                   ; preds = %._crit_edge2615.split
  %i.age = icmp slt i32 %i.as, %i.ay
  %i.agf = add i32 %i.ai, -2
  br i1 %i.age, label %.preheader2596.split, label %.loopexit2597.split

.preheader2596.split:                             ; preds = %.preheader2596
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !1596, !nonnull !204, !align !206
  %.val2442 = load ptr, ptr %i.agh, align 8, !tbaa !401 ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.val2442, i64 16
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !76
  %i.agk = sext i32 %i.agj to i64
  %i.agl = load ptr, ptr %.val2442, align 8, !tbaa !388 ; 6 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.val2442, i64 8
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !389 ; 4 uses
  %i.ago = zext nneg i32 %i.as to i64             ; 7 uses
  %i.agp = sext i32 %i.f to i64                   ; 3 uses
  %i.agq = sext i32 %i.av to i64                  ; 2 uses
  %wide.trip.count2843 = zext nneg i32 %i.ay to i64 ; 7 uses
  %2 = add nsw i64 %i.agp, %wide.trip.count2843
  %3 = add nsw i64 %i.agp, %i.ago
  %i.agr = mul nsw i64 %i.agq, 640                ; 2 uses
  %i.ags = shl nuw nsw i64 %wide.trip.count2843, 2
  %i.agt = getelementptr i8, ptr %i.k, i64 %i.agr
  %i.agu = getelementptr i8, ptr %i.agt, i64 %i.ags
  %scevgep3667 = getelementptr i8, ptr %i.agu, i64 1291520
  %i.agv = shl nuw nsw i64 %i.ago, 2
  %i.agw = getelementptr i8, ptr %i.k, i64 %i.agr
  %scevgep3668 = getelementptr i8, ptr %i.agw, i64 %i.agv
  %i.agx = sub nsw i64 %wide.trip.count2843, %i.ago ; 2 uses
  %min.iters.check3670 = icmp ugt i64 %i.agx, 7
  %ident.check3658.not = icmp eq i64 %i.agn, 1
  %or.cond3768 = select i1 %min.iters.check3670, i1 %ident.check3658.not, i1 false
  %i.agy = and i64 %wide.trip.count2843, 7        ; 2 uses
  %n.vec3676 = sub nsw i64 %i.agx, %i.agy         ; 2 uses
  %i.agz = add nsw i64 %n.vec3676, %i.ago
  %cmp.n3683 = icmp eq i64 %i.agy, 0
  %i.aha = add nsw i64 %wide.trip.count2843, -1
  br label %.preheader2595

.lr.ph2610:                                       ; preds = %.lr.ph2614.split, %._crit_edge2611
  %indvars.iv2835 = phi i64 [ %i.afe, %.lr.ph2614.split ], [ %indvars.iv.next2836, %._crit_edge2611 ] ; 3 uses
  %i.ahb = add nsw i64 %indvars.iv2835, %i.aff
  %i.ahc = mul nsw i64 %i.ahb, %i.aey
  %i.ahd = mul nuw nsw i64 %indvars.iv2835, 160   ; 4 uses
  %invariant.op3214 = add i64 %i.ahc, %i.afd      ; 4 uses
  %or.cond3767.not = xor i1 %or.cond3767, true
  %brmerge3876 = select i1 %or.cond3767.not, i1 true, i1 %i.afz
  br i1 %brmerge3876, label %scalar.ph3641.preheader, label %vector.ph3647

vector.ph3647:                                    ; preds = %.lr.ph2610
  %invariant.gep3871 = getelementptr [4 x i8], ptr %i.aez, i64 %invariant.op3214
  br label %vector.body3649

vector.body3649:                                  ; preds = %vector.body3649, %vector.ph3647
  %index3650 = phi i64 [ 0, %vector.ph3647 ], [ %index.next3653, %vector.body3649 ] ; 2 uses
  %i.ahe = add nuw i64 %index3650, %i.afc         ; 2 uses
  %gep3872 = getelementptr [4 x i8], ptr %invariant.gep3871, i64 %i.ahe ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %gep3872, i64 16
  %wide.load3651 = load <4 x float>, ptr %gep3872, align 4, !tbaa !109, !alias.scope !1629 ; 2 uses
  %wide.load3652 = load <4 x float>, ptr %i.ahf, align 4, !tbaa !109, !alias.scope !1629 ; 2 uses
  %i.ahg = add nuw nsw i64 %i.ahe, %i.ahd         ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ahg ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  store <4 x float> %wide.load3651, ptr %i.ahh, align 32, !tbaa !109, !alias.scope !1630, !noalias !1629
  store <4 x float> %wide.load3652, ptr %i.ahi, align 16, !tbaa !109, !alias.scope !1630, !noalias !1629
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ahg ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  store <4 x float> %wide.load3651, ptr %i.ahj, align 32, !tbaa !109, !alias.scope !1630, !noalias !1629
  store <4 x float> %wide.load3652, ptr %i.ahk, align 16, !tbaa !109, !alias.scope !1630, !noalias !1629
  %index.next3653 = add nuw i64 %index3650, 8     ; 2 uses
  %i.ahl = icmp eq i64 %index.next3653, %n.vec3648
  br i1 %i.ahl, label %middle.block3654, label %vector.body3649, !llvm.loop !1533

middle.block3654:                                 ; preds = %vector.body3649
  br i1 %cmp.n3655, label %._crit_edge2611, label %scalar.ph3641.preheader

scalar.ph3641.preheader:                          ; preds = %.lr.ph2610, %middle.block3654
  %indvars.iv2830.ph = phi i64 [ %i.agb, %middle.block3654 ], [ %i.afc, %.lr.ph2610 ] ; 6 uses
  %i.ahm = sub nsw i64 %wide.trip.count2833, %indvars.iv2830.ph
  %xtraiter3817 = and i64 %i.ahm, 1
  %lcmp.mod3818.not = icmp eq i64 %xtraiter3817, 0
  br i1 %lcmp.mod3818.not, label %scalar.ph3641.prol.loopexit, label %scalar.ph3641.prol

scalar.ph3641.prol:                               ; preds = %scalar.ph3641.preheader
  %.reass3215.prol = add i64 %indvars.iv2830.ph, %invariant.op3214
  %i.ahn = mul i64 %.reass3215.prol, %i.afb
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ahn
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !109 ; 2 uses
  %i.ahq = add nuw nsw i64 %indvars.iv2830.ph, %i.ahd ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ahq
  store float %i.ahp, ptr %i.ahr, align 4, !tbaa !109
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ahq
  store float %i.ahp, ptr %i.ahs, align 4, !tbaa !109
  %indvars.iv.next2831.prol = add nuw nsw i64 %indvars.iv2830.ph, 1
  br label %scalar.ph3641.prol.loopexit

scalar.ph3641.prol.loopexit:                      ; preds = %scalar.ph3641.prol, %scalar.ph3641.preheader
  %indvars.iv2830.unr = phi i64 [ %indvars.iv2830.ph, %scalar.ph3641.preheader ], [ %indvars.iv.next2831.prol, %scalar.ph3641.prol ]
  %i.aht = icmp eq i64 %indvars.iv2830.ph, %i.agc
  br i1 %i.aht, label %._crit_edge2611, label %scalar.ph3641

._crit_edge2611:                                  ; preds = %scalar.ph3641.prol.loopexit, %scalar.ph3641, %middle.block3654
  %indvars.iv.next2836 = add nuw nsw i64 %indvars.iv2835, 1 ; 2 uses
  %exitcond2839.not = icmp eq i64 %indvars.iv.next2836, %wide.trip.count2838
  br i1 %exitcond2839.not, label %._crit_edge2615.split, label %.lr.ph2610, !llvm.loop !1534

scalar.ph3641:                                    ; preds = %scalar.ph3641.prol.loopexit, %scalar.ph3641
  %indvars.iv2830 = phi i64 [ %indvars.iv.next2831.1, %scalar.ph3641 ], [ %indvars.iv2830.unr, %scalar.ph3641.prol.loopexit ] ; 4 uses
  %.reass3215 = add i64 %indvars.iv2830, %invariant.op3214
  %i.ahu = mul i64 %.reass3215, %i.afb
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ahu
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !109 ; 2 uses
  %i.ahx = add nuw nsw i64 %indvars.iv2830, %i.ahd ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ahx
  store float %i.ahw, ptr %i.ahy, align 4, !tbaa !109
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ahx
  store float %i.ahw, ptr %i.ahz, align 4, !tbaa !109
  %indvars.iv.next2831 = add nuw nsw i64 %indvars.iv2830, 1 ; 2 uses
  %.reass3215.1 = add i64 %indvars.iv.next2831, %invariant.op3214
  %i.aia = mul i64 %.reass3215.1, %i.afb
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.aia
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !109 ; 2 uses
  %i.aid = add nuw nsw i64 %indvars.iv.next2831, %i.ahd ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aid
  store float %i.aic, ptr %i.aie, align 4, !tbaa !109
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aid
  store float %i.aic, ptr %i.aif, align 4, !tbaa !109
  %indvars.iv.next2831.1 = add nuw nsw i64 %indvars.iv2830, 2 ; 2 uses
  %exitcond2834.not.1 = icmp eq i64 %indvars.iv.next2831.1, %wide.trip.count2833
  br i1 %exitcond2834.not.1, label %._crit_edge2611, label %scalar.ph3641, !llvm.loop !1535

.preheader2595:                                   ; preds = %.preheader2596.split, %._crit_edge2618
  %indvars.iv2845 = phi i64 [ 0, %.preheader2596.split ], [ %indvars.iv.next2846, %._crit_edge2618 ] ; 3 uses
  %i.aig = trunc nuw nsw i64 %indvars.iv2845 to i32
  %i.aih = sub i32 %i.agf, %i.aig
  %i.aii = sext i32 %i.aih to i64
  %i.aij = mul nsw i64 %i.agk, %i.aii             ; 3 uses
  %i.aik = add nsw i64 %indvars.iv2845, %i.agq
  %i.ail = mul nsw i64 %i.aik, 160                ; 4 uses
  %invariant.op3216 = add i64 %i.aij, %i.agp      ; 4 uses
  br i1 %or.cond3768, label %vector.memcheck3671, label %scalar.ph3669.preheader

vector.memcheck3671:                              ; preds = %.preheader2595
  %i.aim = add i64 %3, %i.aij
  %i.ain = shl i64 %i.aim, 2
  %i.aio = getelementptr i8, ptr %i.agl, i64 %i.ain
  %i.aip = add i64 %2, %i.aij
  %i.aiq = shl i64 %i.aip, 2
  %i.air = getelementptr i8, ptr %i.agl, i64 %i.aiq
  %bound03672 = icmp ult ptr %scevgep3668, %i.air
  %bound13673 = icmp ult ptr %i.aio, %scevgep3667
  %found.conflict3674 = and i1 %bound03672, %bound13673
  br i1 %found.conflict3674, label %scalar.ph3669.preheader, label %vector.ph3675

vector.ph3675:                                    ; preds = %vector.memcheck3671
  %invariant.gep3873 = getelementptr [4 x i8], ptr %i.agl, i64 %invariant.op3216
  br label %vector.body3677

vector.body3677:                                  ; preds = %vector.body3677, %vector.ph3675
  %index3678 = phi i64 [ 0, %vector.ph3675 ], [ %index.next3681, %vector.body3677 ] ; 2 uses
  %i.ais = add nuw i64 %index3678, %i.ago         ; 2 uses
  %gep3874 = getelementptr [4 x i8], ptr %invariant.gep3873, i64 %i.ais ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %gep3874, i64 16
  %wide.load3679 = load <4 x float>, ptr %gep3874, align 4, !tbaa !109, !alias.scope !1631 ; 2 uses
  %wide.load3680 = load <4 x float>, ptr %i.ait, align 4, !tbaa !109, !alias.scope !1631 ; 2 uses
  %i.aiu = add nsw i64 %i.ais, %i.ail             ; 2 uses
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aiu ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  store <4 x float> %wide.load3679, ptr %i.aiv, align 32, !tbaa !109, !alias.scope !1632, !noalias !1631
  store <4 x float> %wide.load3680, ptr %i.aiw, align 16, !tbaa !109, !alias.scope !1632, !noalias !1631
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aiu ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 16
  store <4 x float> %wide.load3679, ptr %i.aix, align 32, !tbaa !109, !alias.scope !1632, !noalias !1631
  store <4 x float> %wide.load3680, ptr %i.aiy, align 16, !tbaa !109, !alias.scope !1632, !noalias !1631
  %index.next3681 = add nuw i64 %index3678, 8     ; 2 uses
  %i.aiz = icmp eq i64 %index.next3681, %n.vec3676
  br i1 %i.aiz, label %middle.block3682, label %vector.body3677, !llvm.loop !1539

middle.block3682:                                 ; preds = %vector.body3677
  br i1 %cmp.n3683, label %._crit_edge2618, label %scalar.ph3669.preheader

scalar.ph3669.preheader:                          ; preds = %vector.memcheck3671, %.preheader2595, %middle.block3682
  %indvars.iv2840.ph = phi i64 [ %i.ago, %vector.memcheck3671 ], [ %i.ago, %.preheader2595 ], [ %i.agz, %middle.block3682 ] ; 6 uses
  %i.aja = sub nsw i64 %wide.trip.count2843, %indvars.iv2840.ph
  %xtraiter3819 = and i64 %i.aja, 1
  %lcmp.mod3820.not = icmp eq i64 %xtraiter3819, 0
  br i1 %lcmp.mod3820.not, label %scalar.ph3669.prol.loopexit, label %scalar.ph3669.prol

scalar.ph3669.prol:                               ; preds = %scalar.ph3669.preheader
  %.reass3217.prol = add i64 %indvars.iv2840.ph, %invariant.op3216
  %i.ajb = mul i64 %.reass3217.prol, %i.agn
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.ajb
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !109 ; 2 uses
  %i.aje = add nsw i64 %indvars.iv2840.ph, %i.ail ; 2 uses
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aje
  store float %i.ajd, ptr %i.ajf, align 4, !tbaa !109
  %i.ajg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aje
  store float %i.ajd, ptr %i.ajg, align 4, !tbaa !109
  %indvars.iv.next2841.prol = add nuw nsw i64 %indvars.iv2840.ph, 1
  br label %scalar.ph3669.prol.loopexit

scalar.ph3669.prol.loopexit:                      ; preds = %scalar.ph3669.prol, %scalar.ph3669.preheader
  %indvars.iv2840.unr = phi i64 [ %indvars.iv2840.ph, %scalar.ph3669.preheader ], [ %indvars.iv.next2841.prol, %scalar.ph3669.prol ]
  %i.ajh = icmp eq i64 %indvars.iv2840.ph, %i.aha
  br i1 %i.ajh, label %._crit_edge2618, label %scalar.ph3669

._crit_edge2618:                                  ; preds = %scalar.ph3669.prol.loopexit, %scalar.ph3669, %middle.block3682
  %indvars.iv.next2846 = add nuw nsw i64 %indvars.iv2845, 1 ; 2 uses
  %exitcond2848.not = icmp eq i64 %indvars.iv.next2846, 16
  br i1 %exitcond2848.not, label %.loopexit2597.split, label %.preheader2595, !llvm.loop !1540

scalar.ph3669:                                    ; preds = %scalar.ph3669.prol.loopexit, %scalar.ph3669
  %indvars.iv2840 = phi i64 [ %indvars.iv.next2841.1, %scalar.ph3669 ], [ %indvars.iv2840.unr, %scalar.ph3669.prol.loopexit ] ; 4 uses
  %.reass3217 = add i64 %indvars.iv2840, %invariant.op3216
  %i.aji = mul i64 %.reass3217, %i.agn
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.aji
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !109 ; 2 uses
  %i.ajl = add nsw i64 %indvars.iv2840, %i.ail    ; 2 uses
  %i.ajm = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ajl
  store float %i.ajk, ptr %i.ajm, align 4, !tbaa !109
  %i.ajn = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ajl
  store float %i.ajk, ptr %i.ajn, align 4, !tbaa !109
  %indvars.iv.next2841 = add nuw nsw i64 %indvars.iv2840, 1 ; 2 uses
  %.reass3217.1 = add i64 %indvars.iv.next2841, %invariant.op3216
  %i.ajo = mul i64 %.reass3217.1, %i.agn
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.ajo
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !109 ; 2 uses
  %i.ajr = add nsw i64 %indvars.iv.next2841, %i.ail ; 2 uses
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ajr
  store float %i.ajq, ptr %i.ajs, align 4, !tbaa !109
  %i.ajt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ajr
  store float %i.ajq, ptr %i.ajt, align 4, !tbaa !109
  %indvars.iv.next2841.1 = add nuw nsw i64 %indvars.iv2840, 2 ; 2 uses
  %exitcond2844.not.1 = icmp eq i64 %indvars.iv.next2841.1, %wide.trip.count2843
  br i1 %exitcond2844.not.1, label %._crit_edge2618, label %scalar.ph3669, !llvm.loop !1541

.loopexit2597.split:                              ; preds = %._crit_edge2618, %.preheader2596, %._crit_edge2615.split
  %or.cond2815 = and i1 %i.ar, %i.aes
  br i1 %or.cond2815, label %.lr.ph2622, label %.loopexit2594

.lr.ph2622:                                       ; preds = %.loopexit2597.split
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !1596, !nonnull !204, !align !206
  %reass.sub = add nsw i32 %i.f, 32
  %.val2441 = load ptr, ptr %i.ajv, align 8, !tbaa !401 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.val2441, i64 16
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !76
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = load ptr, ptr %.val2441, align 8, !tbaa !388 ; 16 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.val2441, i64 8
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !389 ; 16 uses
  %i.akc = sext i32 %reass.sub to i64
  %i.akd = zext nneg i32 %i.aq to i64
  %i.ake = sext i32 %i.d to i64
  %wide.trip.count2856 = zext nneg i32 %i.av to i64
  %i.akf = add nsw i32 %i.f, 31
  %i.akg = sext i32 %i.akf to i64
  %i.akh = add nsw i32 %i.f, 30
  %i.aki = sext i32 %i.akh to i64
  %i.akj = add nsw i32 %i.f, 29
  %i.akk = sext i32 %i.akj to i64
  %i.akl = add nsw i32 %i.f, 28
  %i.akm = sext i32 %i.akl to i64
  %i.akn = add nsw i32 %i.f, 27
  %i.ako = sext i32 %i.akn to i64
  %i.akp = add nsw i32 %i.f, 26
  %i.akq = sext i32 %i.akp to i64
  %i.akr = add nsw i32 %i.f, 25
  %i.aks = sext i32 %i.akr to i64
  %i.akt = add nsw i32 %i.f, 24
  %i.aku = sext i32 %i.akt to i64
  %i.akv = add nsw i32 %i.f, 23
  %i.akw = sext i32 %i.akv to i64
  %i.akx = add nsw i32 %i.f, 22
  %i.aky = sext i32 %i.akx to i64
  %i.akz = add nsw i32 %i.f, 21
  %i.ala = sext i32 %i.akz to i64
  %i.alb = add nsw i32 %i.f, 20
  %i.alc = sext i32 %i.alb to i64
  %i.ald = add nsw i32 %i.f, 19
  %i.ale = sext i32 %i.ald to i64
  %i.alf = add nsw i32 %i.f, 18
  %i.alg = sext i32 %i.alf to i64
  %i.alh = add nsw i32 %i.f, 17
  %i.ali = sext i32 %i.alh to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph2622, %bb.b
  %indvars.iv2853 = phi i64 [ %i.akd, %.lr.ph2622 ], [ %indvars.iv.next2854, %bb.b ] ; 3 uses
  %i.alj = add nsw i64 %indvars.iv2853, %i.ake
  %i.alk = mul nsw i64 %i.alj, %i.ajy             ; 16 uses
  %i.all = mul nuw nsw i64 %indvars.iv2853, 160   ; 17 uses
  %i.alm = add nsw i64 %i.alk, %i.akc
  %i.aln = mul i64 %i.alm, %i.akb
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.aln
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !109 ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.all
  store float %i.alp, ptr %i.alq, align 64, !tbaa !109
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.all
  store float %i.alp, ptr %i.alr, align 64, !tbaa !109
  %i.als = add nsw i64 %i.alk, %i.akg
  %i.alt = mul i64 %i.als, %i.akb
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.alt
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !109 ; 2 uses
  %i.alw = or disjoint i64 %i.all, 1              ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.alw
  store float %i.alv, ptr %i.alx, align 4, !tbaa !109
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.alw
  store float %i.alv, ptr %i.aly, align 4, !tbaa !109
  %i.alz = add nsw i64 %i.alk, %i.aki
  %i.ama = mul i64 %i.alz, %i.akb
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.ama
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !109 ; 2 uses
  %i.amd = or disjoint i64 %i.all, 2              ; 2 uses
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.amd
  store float %i.amc, ptr %i.ame, align 8, !tbaa !109
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.amd
  store float %i.amc, ptr %i.amf, align 8, !tbaa !109
  %i.amg = add nsw i64 %i.alk, %i.akk
  %i.amh = mul i64 %i.amg, %i.akb
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.amh
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !109 ; 2 uses
  %i.amk = or disjoint i64 %i.all, 3              ; 2 uses
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.amk
  store float %i.amj, ptr %i.aml, align 4, !tbaa !109
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.amk
  store float %i.amj, ptr %i.amm, align 4, !tbaa !109
  %i.amn = add nsw i64 %i.alk, %i.akm
  %i.amo = mul i64 %i.amn, %i.akb
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.amo
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !109 ; 2 uses
  %i.amr = or disjoint i64 %i.all, 4              ; 2 uses
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.amr
  store float %i.amq, ptr %i.ams, align 16, !tbaa !109
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.amr
  store float %i.amq, ptr %i.amt, align 16, !tbaa !109
  %i.amu = add nsw i64 %i.alk, %i.ako
  %i.amv = mul i64 %i.amu, %i.akb
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.amv
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !109 ; 2 uses
  %i.amy = or disjoint i64 %i.all, 5              ; 2 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.amy
  store float %i.amx, ptr %i.amz, align 4, !tbaa !109
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.amy
  store float %i.amx, ptr %i.ana, align 4, !tbaa !109
  %i.anb = add nsw i64 %i.alk, %i.akq
  %i.anc = mul i64 %i.anb, %i.akb
end_hunk_0
