Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a

bb.dg:                                            ; preds = %bb.de, %bb.dd, %bb.df
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %.101731960, i64 %i.k
  br label %bb.dq

bb.dh:                                            ; preds = %bb.dc
  switch i32 %i.b, label %bb.dq [
    i32 4, label %.thread774
    i32 1, label %bb.di
  ]

.thread774:                                       ; preds = %bb.dh
  store <4 x float> %.4633, ptr %.101731960, align 1, !tbaa !87
  %i.acy = getelementptr inbounds nuw i8, ptr %.101731960, i64 16
  br label %bb.dq

bb.di:                                            ; preds = %bb.dh
  %.sroa.0165.0.vec.extract = extractelement <4 x float> %.4633, i64 0
  store float %.sroa.0165.0.vec.extract, ptr %.101731960, align 4, !tbaa !67
  %.sroa.0165.4.vec.extract = extractelement <4 x float> %.4633, i64 1
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.101731960, i64 %i.k
  store float %.sroa.0165.4.vec.extract, ptr %i.acz, align 4, !tbaa !67
  %.sroa.0165.8.vec.extract = extractelement <4 x float> %.4633, i64 2
  %i.ada = getelementptr inbounds nuw i8, ptr %.101731960, i64 %.idx1866
  store float %.sroa.0165.8.vec.extract, ptr %i.ada, align 4, !tbaa !67
  %.sroa.0165.12.vec.extract = extractelement <4 x float> %.4633, i64 3
  %i.adb = getelementptr inbounds nuw i8, ptr %.101731960, i64 %.idx1868
  store float %.sroa.0165.12.vec.extract, ptr %i.adb, align 4, !tbaa !67
  %i.adc = getelementptr inbounds nuw i8, ptr %.101731960, i64 4
  br label %bb.dq

bb.dj:                                            ; preds = %.thread770
  %i.add = bitcast <4 x float> %.4633 to <8 x i16>
  %i.ade = shufflevector <8 x i16> %i.add, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.adf = bitcast <8 x i16> %i.ade to <4 x float>
  %i.adg = shufflevector <4 x float> %i.adf, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 3 uses
  %i.adh = bitcast <4 x float> %i.adg to <2 x i64> ; 2 uses
  br i1 %.not1831, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  switch i32 %i.b, label %bb.dn [
    i32 4, label %bb.dl
    i32 1, label %bb.dm
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.adi = bitcast <4 x float> %i.adg to <8 x i16> ; 4 uses
  %.sroa.0161.0.extract.trunc = extractelement <8 x i16> %i.adi, i64 0
  %.sroa.4162.0.extract.trunc = extractelement <8 x i16> %i.adi, i64 1
  %.sroa.5163.0.extract.trunc = extractelement <8 x i16> %i.adi, i64 2
  %.sroa.6164.0.extract.trunc = extractelement <8 x i16> %i.adi, i64 3
  store i16 %.sroa.0161.0.extract.trunc, ptr %.131717961, align 2, !tbaa !105
  %i.adj = getelementptr inbounds nuw i8, ptr %.131717961, i64 8
  store i16 %.sroa.4162.0.extract.trunc, ptr %i.adj, align 2, !tbaa !105
  %i.adk = getelementptr inbounds nuw i8, ptr %.131717961, i64 16
  store i16 %.sroa.5163.0.extract.trunc, ptr %i.adk, align 2, !tbaa !105
  %i.adl = getelementptr inbounds nuw i8, ptr %.131717961, i64 24
  store i16 %.sroa.6164.0.extract.trunc, ptr %i.adl, align 2, !tbaa !105
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.adm = extractelement <2 x i64> %i.adh, i64 0
  store i64 %i.adm, ptr %.131717961, align 1, !tbaa !87
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dk, %bb.dm
  %i.adn = getelementptr inbounds nuw [2 x i8], ptr %.131717961, i64 %i.k
  br label %bb.dq

bb.do:                                            ; preds = %bb.dj
  switch i32 %i.b, label %bb.dq [
    i32 4, label %.thread776
    i32 1, label %bb.dp
  ]

.thread776:                                       ; preds = %bb.do
  %i.ado = extractelement <2 x i64> %i.adh, i64 0
  store i64 %i.ado, ptr %.131717961, align 1, !tbaa !87
  %i.adp = getelementptr inbounds nuw i8, ptr %.131717961, i64 8
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adq = bitcast <4 x float> %i.adg to <8 x i16> ; 4 uses
  %.sroa.0157.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 0
  %.sroa.4158.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 1
  %.sroa.5159.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 2
  %.sroa.6160.0.extract.trunc = extractelement <8 x i16> %i.adq, i64 3
  store i16 %.sroa.0157.0.extract.trunc, ptr %.131717961, align 2, !tbaa !105
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %.131717961, i64 %i.k
  store i16 %.sroa.4158.0.extract.trunc, ptr %i.adr, align 2, !tbaa !105
  %i.ads = getelementptr inbounds nuw i8, ptr %.131717961, i64 %.idx1864
  store i16 %.sroa.5159.0.extract.trunc, ptr %i.ads, align 2, !tbaa !105
  %i.adt = getelementptr inbounds nuw i8, ptr %.131717961, i64 %.idx1865
  store i16 %.sroa.6160.0.extract.trunc, ptr %i.adt, align 2, !tbaa !105
  %i.adu = getelementptr inbounds nuw i8, ptr %.131717961, i64 2
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dh, %.thread776, %.thread774, %bb.dn, %bb.dp, %bb.dg, %bb.di
  %.121733 = phi ptr [ %i.acx, %bb.dg ], [ %i.adc, %bb.di ], [ %.101731960, %bb.dh ], [ %.101731960, %bb.do ], [ %.101731960, %bb.dp ], [ %.101731960, %bb.dn ], [ %i.acy, %.thread774 ], [ %.101731960, %.thread776 ]
  %.161720 = phi ptr [ %.131717961, %bb.dg ], [ %.131717961, %bb.di ], [ %.131717961, %bb.dh ], [ %.131717961, %bb.do ], [ %i.adu, %bb.dp ], [ %i.adn, %bb.dn ], [ %.131717961, %.thread774 ], [ %i.adp, %.thread776 ]
  %i.adv = add nuw nsw i32 %.31768959, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.adv, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph964, !llvm.loop !976

._crit_edge:                                      ; preds = %bb.dq, %.preheader915
  %.41690.lcssa = phi ptr [ %.31689.lcssa, %.preheader915 ], [ %i.abv, %bb.dq ] ; 2 uses
  %.16.lcssa = phi ptr [ %.12.lcssa, %.preheader915 ], [ %.19, %bb.dq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.adw = or disjoint i64 %indvars.iv.next, 3
  %i.adx = icmp samesign ult i64 %i.adw, %i.ar
  br i1 %i.adx, label %bb.b, label %.preheader913.loopexit, !llvm.loop !977

.preheader909.loopexit:                           ; preds = %._crit_edge1020
  %i.ady = trunc nuw nsw i64 %indvars.iv.next1110 to i32
  br label %.preheader909

.preheader909:                                    ; preds = %.preheader909.loopexit, %.preheader913
  %.11702.lcssa = phi i32 [ %.01701.lcssa, %.preheader913 ], [ %i.ady, %.preheader909.loopexit ] ; 2 uses
  %.51691.lcssa = phi ptr [ %.01686.lcssa, %.preheader913 ], [ %.91695.lcssa, %.preheader909.loopexit ]
  %.20.lcssa = phi ptr [ %.01674.lcssa, %.preheader913 ], [ %.33.lcssa, %.preheader909.loopexit ]
  %i.adz = icmp slt i32 %.11702.lcssa, %4
  br i1 %i.adz, label %.lr.ph1078, label %._crit_edge1079

.lr.ph1078:                                       ; preds = %.preheader909
  %.not = icmp eq i32 %9, 0                       ; 9 uses
  %i.aea = sext i32 %5 to i64                     ; 3 uses
  %i.aeb = mul i64 %i.k, %i.aea                   ; 2 uses
  %i.aec = mul nsw i32 %i.b, %5
  %i.aed = sext i32 %i.aec to i64                 ; 2 uses
  %i.aee = icmp eq i32 %2, 0
  %or.cond21 = icmp ult i32 %2, 3                 ; 5 uses
  %i.aef = sext i32 %3 to i64                     ; 4 uses
  %i.aeg = icmp sgt i32 %6, 7
  %i.aeh = add i32 %2, -3
  %or.cond27 = icmp ult i32 %i.aeh, 2             ; 4 uses
  %i.aei = insertelement <4 x float> poison, float %8, i64 0
  %i.aej = shufflevector <4 x float> %i.aei, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aek = fcmp fast une float %7, 1.000000e+00   ; 2 uses
  %i.ael = insertelement <4 x float> poison, float %7, i64 0
  %i.aem = shufflevector <4 x float> %i.ael, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aen = icmp eq i32 %10, 1                     ; 4 uses
  %i.aeo = icmp eq i64 %i.k, 1                    ; 4 uses
  %.idx1802 = shl i64 %i.k, 2                     ; 3 uses
  %.idx1803 = mul i64 %i.k, 6                     ; 2 uses
  %.idx1804 = shl i64 %i.k, 3                     ; 6 uses
  %.idx1805 = mul i64 %i.k, 10
  %.idx1806 = mul i64 %i.k, 12                    ; 3 uses
  %.idx1807 = mul i64 %i.k, 14
  %.idx1808 = shl i64 %i.k, 4                     ; 4 uses
  %.idx1813 = mul i64 %i.k, 20
  %.idx1814 = mul i64 %i.k, 24
  %.idx1815 = mul i64 %i.k, 28
  %.idx1816 = shl i64 %i.k, 5
  %i.aep = and i32 %6, -8
  %i.aeq = zext nneg i32 %.11702.lcssa to i64
  %i.aer = sext i32 %i.b to i64
  %wide.trip.count = zext i32 %4 to i64
  %i.aes = insertelement <2 x i1> poison, i1 %or.cond21, i64 0
  %i.aet = shufflevector <2 x i1> %i.aes, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aeu = insertelement <2 x float> poison, float %8, i64 0
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = insertelement <2 x float> poison, float %7, i64 0
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.gq

bb.dr:                                            ; preds = %.lr.ph1026, %._crit_edge1020
  %indvars.iv1109 = phi i64 [ %i.bs, %.lr.ph1026 ], [ %indvars.iv.next1110, %._crit_edge1020 ] ; 5 uses
  %.201025 = phi ptr [ %.01674.lcssa, %.lr.ph1026 ], [ %.33.lcssa, %._crit_edge1020 ] ; 4 uses
  %.516911024 = phi ptr [ %.01686.lcssa, %.lr.ph1026 ], [ %.91695.lcssa, %._crit_edge1020 ] ; 2 uses
  %i.aey = load ptr, ptr %1, align 8, !tbaa !23   ; 3 uses
  br i1 %.not1817, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.aey, i64 %i.bd
  %i.afa = add nsw i64 %indvars.iv1109, %i.bh
  %i.afb = mul nsw i64 %i.afa, %i.bu              ; 2 uses
  %i.afc = getelementptr inbounds [2 x i8], ptr %i.aez, i64 %i.afb
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.afd = add nsw i64 %indvars.iv1109, %i.bh
  %i.afe = mul i64 %i.k, %i.afd                   ; 2 uses
  %i.aff = getelementptr inbounds nuw [2 x i8], ptr %i.aey, i64 %i.afe
  %i.afg = getelementptr inbounds [2 x i8], ptr %i.aff, i64 %i.bf
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.sink1189 = phi i64 [ %i.afe, %bb.dt ], [ %i.bd, %bb.ds ]
  %.sink1188 = phi i64 [ %i.bf, %bb.dt ], [ %i.afb, %bb.ds ]
  %.01752 = phi ptr [ %i.afg, %bb.dt ], [ %i.afc, %bb.ds ] ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %.sink1189
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %.sink1188 ; 2 uses
  %.not1818 = icmp eq ptr %.201025, null
  br i1 %.not1818, label %.thread794, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  br i1 %i.bg, label %.thread778, label %bb.dw

.thread778:                                       ; preds = %bb.dv
  %i.afj = load float, ptr %.201025, align 4, !tbaa !67
  %i.afk = fmul fast float %i.afj, %8             ; 2 uses
  %i.afl = insertelement <4 x float> poison, float %i.afk, i64 0
  %i.afm = shufflevector <4 x float> %i.afl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afk, i64 0
  br label %.thread794

bb.dw:                                            ; preds = %bb.dv
  br i1 %or.cond11, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.afo = load ptr, ptr %0, align 8, !tbaa !23
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.bh
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv1109 ; 2 uses
  %i.afr = load <2 x float>, ptr %i.afq, align 4, !tbaa !67
  %i.afs = fmul fast <2 x float> %i.afr, %i.bw    ; 3 uses
  %i.aft = shufflevector <2 x float> %i.afs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.afu = shufflevector <2 x float> %i.afs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread794

bb.dy:                                            ; preds = %bb.dw
  switch i32 %2, label %.thread794 [
    i32 3, label %bb.dz
    i32 4, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.afv = load ptr, ptr %0, align 8, !tbaa !23
  %i.afw = add nsw i64 %indvars.iv1109, %i.bh
  %i.afx = mul i64 %i.t, %i.afw
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.afx
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.bc
  br label %.thread794

bb.ea:                                            ; preds = %bb.dy
  %i.aga = load ptr, ptr %0, align 8, !tbaa !23
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.aga, i64 %i.bc
  br label %.thread794

.thread794:                                       ; preds = %bb.dy, %bb.dx, %.thread778, %bb.dz, %bb.ea, %bb.du
  %.2668 = phi nsz <4 x float> [ zeroinitializer, %bb.du ], [ zeroinitializer, %bb.ea ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %bb.dz ], [ %i.afm, %.thread778 ], [ %i.aft, %bb.dx ] ; 2 uses
  %.1659 = phi nsz <4 x float> [ zeroinitializer, %bb.du ], [ zeroinitializer, %bb.ea ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %bb.dz ], [ zeroinitializer, %.thread778 ], [ %i.afu, %bb.dx ] ; 2 uses
  %.23 = phi ptr [ null, %bb.du ], [ %i.agb, %bb.ea ], [ %.201025, %bb.dy ], [ %i.afz, %bb.dz ], [ %.201025, %.thread778 ], [ %i.afq, %bb.dx ] ; 2 uses
  %i.agc = phi <2 x float> [ zeroinitializer, %bb.du ], [ zeroinitializer, %bb.ea ], [ zeroinitializer, %bb.dy ], [ zeroinitializer, %bb.dz ], [ %i.afn, %.thread778 ], [ %i.afs, %bb.dx ] ; 5 uses
  br i1 %i.bi, label %.lr.ph982, label %.preheader912

.preheader912:                                    ; preds = %bb.ez, %.thread794
  %.3669.lcssa = phi <4 x float> [ %.2668, %.thread794 ], [ %.5671, %bb.ez ]
  %.2660.lcssa = phi <4 x float> [ %.1659, %.thread794 ], [ %.4662, %bb.ez ]
  %.11753.lcssa = phi ptr [ %.01752, %.thread794 ], [ %.31755, %bb.ez ] ; 2 uses
  %.11744.lcssa = phi ptr [ %i.afi, %.thread794 ], [ %.21745, %bb.ez ] ; 2 uses
  %.01734.lcssa = phi i32 [ 0, %.thread794 ], [ %i.br, %bb.ez ] ; 3 uses
  %.61692.lcssa = phi ptr [ %.516911024, %.thread794 ], [ %i.agm, %bb.ez ] ; 2 uses
  %.24.lcssa = phi ptr [ %.23, %.thread794 ], [ %.26, %bb.ez ] ; 2 uses
  %i.agd = or disjoint i32 %.01734.lcssa, 3
  %i.age = icmp slt i32 %i.agd, %6
  br i1 %i.age, label %.lr.ph997, label %.preheader911

.lr.ph982:                                        ; preds = %.thread794, %bb.ez
  %.24981 = phi ptr [ %.26, %bb.ez ], [ %.23, %.thread794 ] ; 11 uses
  %.61692980 = phi ptr [ %i.agm, %bb.ez ], [ %.516911024, %.thread794 ] ; 5 uses
  %.01734979 = phi i32 [ %i.akr, %bb.ez ], [ 0, %.thread794 ]
  %.11744978 = phi ptr [ %.21745, %bb.ez ], [ %i.afi, %.thread794 ] ; 23 uses
  %.11753977 = phi ptr [ %.31755, %bb.ez ], [ %.01752, %.thread794 ] ; 18 uses
  %.2660976 = phi <4 x float> [ %.4662, %bb.ez ], [ %.1659, %.thread794 ] ; 6 uses
  %.3669975 = phi <4 x float> [ %.5671, %bb.ez ], [ %.2668, %.thread794 ] ; 10 uses
  %i.agf = load <4 x float>, ptr %.61692980, align 16, !tbaa !87 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.61692980, i64 16
  %i.agh = load <4 x float>, ptr %i.agg, align 16, !tbaa !87 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.61692980, i64 32
  %i.agj = load <4 x float>, ptr %i.agi, align 16, !tbaa !87 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.61692980, i64 48
  %i.agl = load <4 x float>, ptr %i.agk, align 16, !tbaa !87 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.61692980, i64 64 ; 2 uses
  %i.agn = shufflevector <4 x float> %i.agf, <4 x float> %i.agj, <4 x i32> <i32 0, i32 5, i32 1, i32 4> ; 2 uses
  %i.ago = shufflevector <4 x float> %i.agf, <4 x float> %i.agj, <4 x i32> <i32 2, i32 7, i32 3, i32 6> ; 2 uses
  %i.agp = shufflevector <4 x float> %i.agh, <4 x float> %i.agl, <4 x i32> <i32 0, i32 5, i32 1, i32 4> ; 2 uses
  %i.agq = shufflevector <4 x float> %i.agh, <4 x float> %i.agl, <4 x i32> <i32 2, i32 7, i32 3, i32 6> ; 2 uses
  %i.agr = shufflevector <4 x float> %i.agn, <4 x float> %i.ago, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 6 uses
  %i.ags = shufflevector <4 x float> %i.agp, <4 x float> %i.agq, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 6 uses
  %i.agt = shufflevector <4 x float> %i.agn, <4 x float> %i.ago, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.agu = shufflevector <4 x float> %i.agp, <4 x float> %i.agq, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.agv = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 6 uses
  %i.agw = shufflevector <4 x float> %i.agu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 6 uses
  %.not1826 = icmp eq ptr %.24981, null
  br i1 %.not1826, label %.thread813, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph982
  br i1 %i.bg, label %.thread800, label %bb.ec

.thread800:                                       ; preds = %bb.eb
  %i.agx = fadd fast <4 x float> %.3669975, %i.agr
  %i.agy = fadd fast <4 x float> %.3669975, %i.ags
  %i.agz = fadd fast <4 x float> %i.agv, %.3669975
  %i.aha = fadd fast <4 x float> %i.agw, %.3669975
  br label %.thread813

bb.ec:                                            ; preds = %bb.eb
  br i1 %or.cond11, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ahb = fadd fast <4 x float> %.3669975, %i.agr
  %i.ahc = fadd fast <4 x float> %.3669975, %i.ags
  %i.ahd = fadd fast <4 x float> %i.agv, %.2660976
  %i.ahe = fadd fast <4 x float> %i.agw, %.2660976
  br label %.thread813

bb.ee:                                            ; preds = %bb.ec
  switch i32 %2, label %.thread813 [
    i32 3, label %bb.ef
    i32 4, label %bb.ei
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.ahf = load <4 x float>, ptr %.24981, align 1, !tbaa !87 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.24981, i64 16
  %i.ahh = load <4 x float>, ptr %i.ahg, align 1, !tbaa !87 ; 3 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %.24981, i64 %i.t ; 2 uses
  %i.ahj = load <4 x float>, ptr %i.ahi, align 1, !tbaa !87 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %i.ahl = load <4 x float>, ptr %i.ahk, align 1, !tbaa !87 ; 2 uses
  br i1 %i.bl, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahm = fmul fast <4 x float> %i.ahf, %i.bk
  %i.ahn = fmul fast <4 x float> %i.ahh, %i.bk
  %i.aho = fmul fast <4 x float> %i.ahj, %i.bk
  %i.ahp = fmul fast <4 x float> %i.ahl, %i.bk
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %.pn886 = phi <4 x float> [ %i.ahm, %bb.eg ], [ %i.ahf, %bb.ef ]
  %.pn887 = phi <4 x float> [ %i.ahn, %bb.eg ], [ %i.ahh, %bb.ef ]
  %.pn1080 = phi <4 x float> [ %i.aho, %bb.eg ], [ %i.ahj, %bb.ef ]
  %.pn1081 = phi <4 x float> [ %i.ahp, %bb.eg ], [ %i.ahl, %bb.ef ]
  %.2636 = fadd fast <4 x float> %.pn1081, %i.agw
  %.2642 = fadd fast <4 x float> %.pn1080, %i.agv
  %.2648 = fadd fast <4 x float> %.pn887, %i.ags
  %.2654 = fadd fast <4 x float> %.pn886, %i.agr
  %i.ahq = getelementptr inbounds nuw i8, ptr %.24981, i64 32
  br label %.thread813

bb.ei:                                            ; preds = %bb.ee
  %i.ahr = load <4 x float>, ptr %.24981, align 1, !tbaa !87
  %i.ahs = getelementptr inbounds nuw i8, ptr %.24981, i64 16
  %i.aht = load <4 x float>, ptr %i.ahs, align 1, !tbaa !87
  %i.ahu = fmul fast <4 x float> %i.ahr, %i.bk    ; 3 uses
  %i.ahv = fmul fast <4 x float> %i.aht, %i.bk    ; 3 uses
  %i.ahw = fadd fast <4 x float> %i.ahu, %i.agr
  %i.ahx = fadd fast <4 x float> %i.ahv, %i.ags
  %i.ahy = fadd fast <4 x float> %i.ahu, %i.agv
  %i.ahz = fadd fast <4 x float> %i.ahv, %i.agw
  %i.aia = getelementptr inbounds nuw i8, ptr %.24981, i64 32
  br label %.thread813

.thread813:                                       ; preds = %bb.ee, %bb.ed, %.thread800, %bb.eh, %bb.ei, %.lr.ph982
  %.5671 = phi nsz <4 x float> [ %.3669975, %.lr.ph982 ], [ %i.ahu, %bb.ei ], [ %.3669975, %bb.ee ], [ %i.ahf, %bb.eh ], [ %.3669975, %.thread800 ], [ %.3669975, %bb.ed ] ; 2 uses
  %.4662 = phi nsz <4 x float> [ %.2660976, %.lr.ph982 ], [ %i.ahv, %bb.ei ], [ %.2660976, %bb.ee ], [ %i.ahh, %bb.eh ], [ %.2660976, %.thread800 ], [ %.2660976, %bb.ed ] ; 2 uses
  %.4656 = phi nsz <4 x float> [ %i.agr, %.lr.ph982 ], [ %i.ahw, %bb.ei ], [ %i.agr, %bb.ee ], [ %.2654, %bb.eh ], [ %i.agx, %.thread800 ], [ %i.ahb, %bb.ed ] ; 2 uses
  %.4650 = phi nsz <4 x float> [ %i.ags, %.lr.ph982 ], [ %i.ahx, %bb.ei ], [ %i.ags, %bb.ee ], [ %.2648, %bb.eh ], [ %i.agy, %.thread800 ], [ %i.ahc, %bb.ed ] ; 2 uses
  %.4644 = phi nsz <4 x float> [ %i.agv, %.lr.ph982 ], [ %i.ahy, %bb.ei ], [ %i.agv, %bb.ee ], [ %.2642, %bb.eh ], [ %i.agz, %.thread800 ], [ %i.ahd, %bb.ed ] ; 2 uses
  %.4638 = phi nsz <4 x float> [ %i.agw, %.lr.ph982 ], [ %i.ahz, %bb.ei ], [ %i.agw, %bb.ee ], [ %.2636, %bb.eh ], [ %i.aha, %.thread800 ], [ %i.ahe, %bb.ed ] ; 2 uses
  %.26 = phi ptr [ null, %.lr.ph982 ], [ %i.aia, %bb.ei ], [ %.24981, %bb.ee ], [ %i.ahq, %bb.eh ], [ %.24981, %.thread800 ], [ %.24981, %bb.ed ] ; 2 uses
  br i1 %i.bm, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.thread813
  %i.aib = fmul fast <4 x float> %.4656, %i.bo
  %i.aic = fmul fast <4 x float> %.4650, %i.bo
  %i.aid = fmul fast <4 x float> %.4644, %i.bo
  %i.aie = fmul fast <4 x float> %.4638, %i.bo
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread813
  %.5657 = phi nsz <4 x float> [ %i.aib, %bb.ej ], [ %.4656, %.thread813 ] ; 8 uses
  %.5651 = phi nsz <4 x float> [ %i.aic, %bb.ej ], [ %.4650, %.thread813 ] ; 8 uses
  %.5645 = phi nsz <4 x float> [ %i.aid, %bb.ej ], [ %.4644, %.thread813 ] ; 8 uses
  %.5639 = phi nsz <4 x float> [ %i.aie, %bb.ej ], [ %.4638, %.thread813 ] ; 8 uses
  br i1 %i.bp, label %bb.el, label %bb.es

bb.el:                                            ; preds = %bb.ek
  br i1 %.not1817, label %bb.er, label %bb.em

bb.em:                                            ; preds = %bb.el
  switch i32 %i.b, label %bb.eq [
    i32 8, label %bb.en
    i32 4, label %bb.eo
    i32 1, label %bb.ep
  ]

bb.en:                                            ; preds = %bb.em
  store <4 x float> %.5657, ptr %.11744978, align 1, !tbaa !87
  %i.aif = getelementptr inbounds nuw i8, ptr %.11744978, i64 16
  store <4 x float> %.5651, ptr %i.aif, align 1, !tbaa !87
  %i.aig = getelementptr inbounds nuw i8, ptr %.11744978, i64 32
  store <4 x float> %.5645, ptr %i.aig, align 1, !tbaa !87
  %i.aih = getelementptr inbounds nuw i8, ptr %.11744978, i64 48
  store <4 x float> %.5639, ptr %i.aih, align 1, !tbaa !87
  br label %bb.eq

bb.eo:                                            ; preds = %bb.em
  store <4 x float> %.5657, ptr %.11744978, align 1, !tbaa !87
  %i.aii = getelementptr inbounds nuw i8, ptr %.11744978, i64 16
  store <4 x float> %.5645, ptr %i.aii, align 1, !tbaa !87
  %i.aij = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx1828 ; 2 uses
  store <4 x float> %.5651, ptr %i.aij, align 1, !tbaa !87
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  store <4 x float> %.5639, ptr %i.aik, align 1, !tbaa !87
  br label %bb.eq

bb.ep:                                            ; preds = %bb.em
  %.sroa.067.0.vec.extract = extractelement <4 x float> %.5657, i64 0
  store float %.sroa.067.0.vec.extract, ptr %.11744978, align 4, !tbaa !67
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.5645, i64 0
  %i.ail = getelementptr inbounds nuw i8, ptr %.11744978, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.ail, align 4, !tbaa !67
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %.11744978, i64 %i.k
  %i.ain = shufflevector <4 x float> %.5657, <4 x float> %.5645, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ain, ptr %i.aim, align 4, !tbaa !67
  %i.aio = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx890
  %i.aip = shufflevector <4 x float> %.5657, <4 x float> %.5645, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aip, ptr %i.aio, align 4, !tbaa !67
  %i.aiq = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx892
  %i.air = shufflevector <4 x float> %.5657, <4 x float> %.5645, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.air, ptr %i.aiq, align 4, !tbaa !67
  %.sroa.768.16.vec.extract = extractelement <4 x float> %.5651, i64 0
  %i.ais = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx1828 ; 2 uses
  store float %.sroa.768.16.vec.extract, ptr %i.ais, align 4, !tbaa !67
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.5639, i64 0
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.ait, align 4, !tbaa !67
  %i.aiu = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx897
  %i.aiv = shufflevector <4 x float> %.5651, <4 x float> %.5639, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aiv, ptr %i.aiu, align 4, !tbaa !67
  %i.aiw = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx898
  %i.aix = shufflevector <4 x float> %.5651, <4 x float> %.5639, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aix, ptr %i.aiw, align 4, !tbaa !67
  %i.aiy = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx899
  %i.aiz = shufflevector <4 x float> %.5651, <4 x float> %.5639, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aiz, ptr %i.aiy, align 4, !tbaa !67
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.ep
  %i.aja = getelementptr inbounds nuw i8, ptr %.11744978, i64 %.idx1830
  br label %bb.ez

bb.er:                                            ; preds = %bb.el
  store <4 x float> %.5657, ptr %.11744978, align 1, !tbaa !87
  %i.ajb = getelementptr inbounds nuw i8, ptr %.11744978, i64 16
  store <4 x float> %.5651, ptr %i.ajb, align 1, !tbaa !87
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.11744978, i64 %i.k ; 2 uses
  store <4 x float> %.5645, ptr %i.ajc, align 1, !tbaa !87
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 16
  store <4 x float> %.5639, ptr %i.ajd, align 1, !tbaa !87
  %i.aje = getelementptr inbounds nuw i8, ptr %.11744978, i64 32
  br label %bb.ez

bb.es:                                            ; preds = %bb.ek
  %i.ajf = bitcast <4 x float> %.5657 to <8 x i16>
  %i.ajg = bitcast <4 x float> %.5651 to <8 x i16>
  %i.ajh = shufflevector <8 x i16> %i.ajf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aji = shufflevector <8 x i16> %i.ajg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajj = bitcast <8 x i16> %i.ajh to <4 x float> ; 2 uses
  %i.ajk = bitcast <8 x i16> %i.aji to <4 x float> ; 2 uses
  %i.ajl = shufflevector <4 x float> %i.ajj, <4 x float> %i.ajk, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %i.ajm = bitcast <4 x float> %.5645 to <8 x i16>
  %i.ajn = bitcast <4 x float> %.5639 to <8 x i16>
  %i.ajo = shufflevector <8 x i16> %i.ajm, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajp = shufflevector <8 x i16> %i.ajn, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajq = bitcast <8 x i16> %i.ajo to <4 x float> ; 2 uses
  %i.ajr = bitcast <8 x i16> %i.ajp to <4 x float> ; 2 uses
  %i.ajs = shufflevector <4 x float> %i.ajq, <4 x float> %i.ajr, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  br i1 %.not1817, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  switch i32 %i.b, label %bb.ex [
    i32 8, label %bb.eu
    i32 4, label %bb.ev
    i32 1, label %bb.ew
  ]

bb.eu:                                            ; preds = %bb.et
  store <4 x float> %i.ajl, ptr %.11753977, align 1, !tbaa !87
  %i.ajt = getelementptr inbounds nuw i8, ptr %.11753977, i64 16
  store <4 x float> %i.ajs, ptr %i.ajt, align 1, !tbaa !87
  br label %bb.ex

bb.ev:                                            ; preds = %bb.et
  %i.aju = shufflevector <4 x float> %i.ajj, <4 x float> %i.ajq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.aju, ptr %.11753977, align 1, !tbaa !87
  %i.ajv = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx890
  %i.ajw = shufflevector <4 x float> %i.ajk, <4 x float> %i.ajr, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ajw, ptr %i.ajv, align 1, !tbaa !87
  br label %bb.ex

bb.ew:                                            ; preds = %bb.et
  %i.ajx = bitcast <4 x float> %i.ajl to <8 x i16> ; 8 uses
  %i.ajy = bitcast <4 x float> %i.ajs to <8 x i16> ; 8 uses
  %i.ajz = shufflevector <8 x i16> %i.ajx, <8 x i16> %i.ajy, <2 x i32> <i32 0, i32 8>
  store <2 x i16> %i.ajz, ptr %.11753977, align 2, !tbaa !105
  %i.aka = getelementptr inbounds nuw [2 x i8], ptr %.11753977, i64 %i.k
  %i.akb = shufflevector <8 x i16> %i.ajx, <8 x i16> %i.ajy, <2 x i32> <i32 1, i32 9>
  store <2 x i16> %i.akb, ptr %i.aka, align 2, !tbaa !105
  %.sroa.064.4.vec.extract = extractelement <8 x i16> %i.ajx, i64 2
  %i.akc = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx888 ; 2 uses
  store i16 %.sroa.064.4.vec.extract, ptr %i.akc, align 2, !tbaa !105
  %.sroa.11.20.vec.extract = extractelement <8 x i16> %i.ajy, i64 2
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 2
  store i16 %.sroa.11.20.vec.extract, ptr %i.akd, align 2, !tbaa !105
  %.sroa.064.6.vec.extract = extractelement <8 x i16> %i.ajx, i64 3
  %i.ake = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx889 ; 2 uses
  store i16 %.sroa.064.6.vec.extract, ptr %i.ake, align 2, !tbaa !105
  %.sroa.11.22.vec.extract = extractelement <8 x i16> %i.ajy, i64 3
  %i.akf = getelementptr i8, ptr %i.ake, i64 2
  store i16 %.sroa.11.22.vec.extract, ptr %i.akf, align 2, !tbaa !105
  %.sroa.064.8.vec.extract = extractelement <8 x i16> %i.ajx, i64 4
  %i.akg = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx890 ; 2 uses
  store i16 %.sroa.064.8.vec.extract, ptr %i.akg, align 2, !tbaa !105
  %.sroa.11.24.vec.extract = extractelement <8 x i16> %i.ajy, i64 4
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 2
  store i16 %.sroa.11.24.vec.extract, ptr %i.akh, align 2, !tbaa !105
  %.sroa.064.10.vec.extract = extractelement <8 x i16> %i.ajx, i64 5
  %i.aki = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx891 ; 2 uses
  store i16 %.sroa.064.10.vec.extract, ptr %i.aki, align 2, !tbaa !105
  %.sroa.11.26.vec.extract = extractelement <8 x i16> %i.ajy, i64 5
  %i.akj = getelementptr i8, ptr %i.aki, i64 2
  store i16 %.sroa.11.26.vec.extract, ptr %i.akj, align 2, !tbaa !105
  %.sroa.064.12.vec.extract = extractelement <8 x i16> %i.ajx, i64 6
  %i.akk = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx892 ; 2 uses
  store i16 %.sroa.064.12.vec.extract, ptr %i.akk, align 2, !tbaa !105
  %.sroa.11.28.vec.extract = extractelement <8 x i16> %i.ajy, i64 6
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 2
  store i16 %.sroa.11.28.vec.extract, ptr %i.akl, align 2, !tbaa !105
  %.sroa.064.14.vec.extract = extractelement <8 x i16> %i.ajx, i64 7
  %i.akm = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx893 ; 2 uses
  store i16 %.sroa.064.14.vec.extract, ptr %i.akm, align 2, !tbaa !105
  %.sroa.11.30.vec.extract = extractelement <8 x i16> %i.ajy, i64 7
  %i.akn = getelementptr i8, ptr %i.akm, i64 2
  store i16 %.sroa.11.30.vec.extract, ptr %i.akn, align 2, !tbaa !105
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.ew
  %i.ako = getelementptr inbounds nuw i8, ptr %.11753977, i64 %.idx1828
  br label %bb.ez

bb.ey:                                            ; preds = %bb.es
  store <4 x float> %i.ajl, ptr %.11753977, align 1, !tbaa !87
  %i.akp = getelementptr inbounds nuw [2 x i8], ptr %.11753977, i64 %i.k
  store <4 x float> %i.ajs, ptr %i.akp, align 1, !tbaa !87
  %i.akq = getelementptr inbounds nuw i8, ptr %.11753977, i64 16
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey, %bb.eq, %bb.er
  %.31755 = phi ptr [ %.11753977, %bb.eq ], [ %.11753977, %bb.er ], [ %i.ako, %bb.ex ], [ %i.akq, %bb.ey ] ; 2 uses
  %.21745 = phi ptr [ %i.aja, %bb.eq ], [ %i.aje, %bb.er ], [ %.11744978, %bb.ex ], [ %.11744978, %bb.ey ] ; 2 uses
  %i.akr = add nuw nsw i32 %.01734979, 8          ; 2 uses
  %i.aks = or disjoint i32 %i.akr, 7
  %i.akt = icmp slt i32 %i.aks, %6
  br i1 %i.akt, label %.lr.ph982, label %.preheader912, !llvm.loop !978

.preheader911:                                    ; preds = %bb.fs, %.preheader912
  %.41756.lcssa = phi ptr [ %.11753.lcssa, %.preheader912 ], [ %.61758, %bb.fs ] ; 2 uses
  %.31746.lcssa = phi ptr [ %.11744.lcssa, %.preheader912 ], [ %.41747, %bb.fs ] ; 2 uses
  %.11735.lcssa = phi i32 [ %.01734.lcssa, %.preheader912 ], [ %i.ang, %bb.fs ] ; 3 uses
  %.71693.lcssa = phi ptr [ %.61692.lcssa, %.preheader912 ], [ %i.alc, %bb.fs ] ; 2 uses
  %.27.lcssa = phi ptr [ %.24.lcssa, %.preheader912 ], [ %.29, %bb.fs ] ; 2 uses
  %i.aku = or disjoint i32 %.11735.lcssa, 1
  %i.akv = icmp slt i32 %i.aku, %6
  br i1 %i.akv, label %.lr.ph1008.preheader, label %.preheader910

.lr.ph1008.preheader:                             ; preds = %.preheader911
  %i.akw = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akx = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aky = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1008

.lr.ph997:                                        ; preds = %.preheader912, %bb.fs
  %.27996 = phi ptr [ %.29, %bb.fs ], [ %.24.lcssa, %.preheader912 ] ; 9 uses
  %.71693995 = phi ptr [ %i.alc, %bb.fs ], [ %.61692.lcssa, %.preheader912 ] ; 3 uses
  %.11735994 = phi i32 [ %i.ang, %bb.fs ], [ %.01734.lcssa, %.preheader912 ]
  %.31746993 = phi ptr [ %.41747, %bb.fs ], [ %.11744.lcssa, %.preheader912 ] ; 13 uses
  %.41756992 = phi ptr [ %.61758, %bb.fs ], [ %.11753.lcssa, %.preheader912 ] ; 11 uses
  %.5663991 = phi <4 x float> [ %.7665, %bb.fs ], [ %.2660.lcssa, %.preheader912 ] ; 6 uses
  %.6672990 = phi <4 x float> [ %.8674, %bb.fs ], [ %.3669.lcssa, %.preheader912 ] ; 7 uses
  %i.akz = load <4 x float>, ptr %.71693995, align 16, !tbaa !87 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.71693995, i64 16
  %i.alb = load <4 x float>, ptr %i.ala, align 16, !tbaa !87 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.71693995, i64 32 ; 2 uses
  %i.ald = shufflevector <4 x float> %i.akz, <4 x float> %i.alb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ale = shufflevector <4 x float> %i.akz, <4 x float> %i.alb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.alf = shufflevector <4 x float> %i.ald, <4 x float> %i.ale, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 6 uses
  %i.alg = shufflevector <4 x float> %i.ald, <4 x float> %i.ale, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.alh = shufflevector <4 x float> %i.alg, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 6 uses
  %.not1823 = icmp eq ptr %.27996, null
  br i1 %.not1823, label %.thread830, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph997
  br i1 %i.bg, label %.thread821, label %bb.fb

.thread821:                                       ; preds = %bb.fa
  %i.ali = fadd fast <4 x float> %.6672990, %i.alf
  %i.alj = fadd fast <4 x float> %i.alh, %.6672990
  br label %.thread830

bb.fb:                                            ; preds = %bb.fa
  br i1 %or.cond11, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.alk = fadd fast <4 x float> %.6672990, %i.alf
  %i.all = fadd fast <4 x float> %i.alh, %.5663991
  br label %.thread830

bb.fd:                                            ; preds = %bb.fb
  switch i32 %2, label %.thread830 [
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.alm = load <4 x float>, ptr %.27996, align 1, !tbaa !87 ; 3 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.27996, i64 %i.t
  %i.alo = load <4 x float>, ptr %i.aln, align 1, !tbaa !87 ; 3 uses
  %i.alp = fmul fast <4 x float> %i.alm, %i.bk
  %i.alq = fmul fast <4 x float> %i.alo, %i.bk
  %.pn = select i1 %i.bl, <4 x float> %i.alm, <4 x float> %i.alp
  %.2603.v = select i1 %i.bl, <4 x float> %i.alo, <4 x float> %i.alq
  %.2603 = fadd fast <4 x float> %.2603.v, %i.alh
  %.2609 = fadd fast <4 x float> %.pn, %i.alf
  %i.alr = getelementptr inbounds nuw i8, ptr %.27996, i64 16
  br label %.thread830

bb.ff:                                            ; preds = %bb.fd
  %i.als = load <4 x float>, ptr %.27996, align 1, !tbaa !87
  %i.alt = fmul fast <4 x float> %i.als, %i.bk    ; 3 uses
  %i.alu = fadd fast <4 x float> %i.alt, %i.alf
  %i.alv = fadd fast <4 x float> %i.alt, %i.alh
  %i.alw = getelementptr inbounds nuw i8, ptr %.27996, i64 16
  br label %.thread830

.thread830:                                       ; preds = %bb.fd, %bb.fc, %.thread821, %bb.fe, %bb.ff, %.lr.ph997
  %.8674 = phi nsz <4 x float> [ %.6672990, %.lr.ph997 ], [ %i.alt, %bb.ff ], [ %.6672990, %bb.fd ], [ %i.alm, %bb.fe ], [ %.6672990, %.thread821 ], [ %.6672990, %bb.fc ]
  %.7665 = phi nsz <4 x float> [ %.5663991, %.lr.ph997 ], [ %.5663991, %bb.ff ], [ %.5663991, %bb.fd ], [ %i.alo, %bb.fe ], [ %.5663991, %.thread821 ], [ %.5663991, %bb.fc ]
  %.4611 = phi nsz <4 x float> [ %i.alf, %.lr.ph997 ], [ %i.alu, %bb.ff ], [ %i.alf, %bb.fd ], [ %.2609, %bb.fe ], [ %i.ali, %.thread821 ], [ %i.alk, %bb.fc ] ; 2 uses
  %.4605 = phi nsz <4 x float> [ %i.alh, %.lr.ph997 ], [ %i.alv, %bb.ff ], [ %i.alh, %bb.fd ], [ %.2603, %bb.fe ], [ %i.alj, %.thread821 ], [ %i.all, %bb.fc ] ; 2 uses
  %.29 = phi ptr [ null, %.lr.ph997 ], [ %i.alw, %bb.ff ], [ %.27996, %bb.fd ], [ %i.alr, %bb.fe ], [ %.27996, %.thread821 ], [ %.27996, %bb.fc ] ; 2 uses
  %i.alx = fmul fast <4 x float> %.4611, %i.bo
  %i.aly = fmul fast <4 x float> %.4605, %i.bo
  %.5612 = select nsz i1 %i.bm, <4 x float> %i.alx, <4 x float> %.4611 ; 7 uses
  %.5606 = select nsz i1 %i.bm, <4 x float> %i.aly, <4 x float> %.4605 ; 7 uses
  br i1 %i.bp, label %bb.fg, label %bb.fm

bb.fg:                                            ; preds = %.thread830
  br i1 %.not1817, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  switch i32 %i.b, label %bb.fk [
    i32 4, label %bb.fi
    i32 1, label %bb.fj
  ]

bb.fi:                                            ; preds = %bb.fh
  store <4 x float> %.5612, ptr %.31746993, align 1, !tbaa !87
  %i.alz = getelementptr inbounds nuw i8, ptr %.31746993, i64 16
  store <4 x float> %.5606, ptr %i.alz, align 1, !tbaa !87
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %.sroa.037.0.vec.extract = extractelement <4 x float> %.5612, i64 0
  store float %.sroa.037.0.vec.extract, ptr %.31746993, align 4, !tbaa !67
  %.sroa.738.16.vec.extract = extractelement <4 x float> %.5606, i64 0
  %i.ama = getelementptr inbounds nuw i8, ptr %.31746993, i64 4
  store float %.sroa.738.16.vec.extract, ptr %i.ama, align 4, !tbaa !67
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.31746993, i64 %i.k
  %i.amc = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.amc, ptr %i.amb, align 4, !tbaa !67
  %i.amd = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx890
  %i.ame = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ame, ptr %i.amd, align 4, !tbaa !67
  %i.amf = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx892
  %i.amg = shufflevector <4 x float> %.5612, <4 x float> %.5606, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.amg, ptr %i.amf, align 4, !tbaa !67
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fh, %bb.fj
  %i.amh = getelementptr inbounds nuw i8, ptr %.31746993, i64 %.idx1828
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fg
  store <4 x float> %.5612, ptr %.31746993, align 1, !tbaa !87
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.31746993, i64 %i.k
  store <4 x float> %.5606, ptr %i.ami, align 1, !tbaa !87
  %i.amj = getelementptr inbounds nuw i8, ptr %.31746993, i64 16
  br label %bb.fs

bb.fm:                                            ; preds = %.thread830
  %i.amk = bitcast <4 x float> %.5612 to <8 x i16>
  %i.aml = bitcast <4 x float> %.5606 to <8 x i16>
  %i.amm = shufflevector <8 x i16> %i.amk, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amn = shufflevector <8 x i16> %i.aml, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amo = bitcast <8 x i16> %i.amm to <4 x float>
  %i.amp = bitcast <8 x i16> %i.amn to <4 x float>
  %i.amq = shufflevector <4 x float> %i.amo, <4 x float> %i.amp, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  br i1 %.not1817, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  switch i32 %i.b, label %bb.fq [
    i32 4, label %bb.fo
    i32 1, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  store <4 x float> %i.amq, ptr %.41756992, align 1, !tbaa !87
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.amr = bitcast <4 x float> %i.amq to <8 x i16> ; 6 uses
  %i.ams = shufflevector <8 x i16> %i.amr, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.ams, ptr %.41756992, align 2, !tbaa !105
  %i.amt = getelementptr inbounds nuw [2 x i8], ptr %.41756992, i64 %i.k
  %i.amu = shufflevector <8 x i16> %i.amr, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.amu, ptr %i.amt, align 2, !tbaa !105
  %.sroa.035.4.vec.extract = extractelement <8 x i16> %i.amr, i64 2
  %i.amv = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx888 ; 2 uses
  store i16 %.sroa.035.4.vec.extract, ptr %i.amv, align 2, !tbaa !105
  %.sroa.035.12.vec.extract = extractelement <8 x i16> %i.amr, i64 6
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 2
  store i16 %.sroa.035.12.vec.extract, ptr %i.amw, align 2, !tbaa !105
  %.sroa.035.6.vec.extract = extractelement <8 x i16> %i.amr, i64 3
  %i.amx = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx889 ; 2 uses
  store i16 %.sroa.035.6.vec.extract, ptr %i.amx, align 2, !tbaa !105
  %.sroa.035.14.vec.extract = extractelement <8 x i16> %i.amr, i64 7
  %i.amy = getelementptr i8, ptr %i.amx, i64 2
  store i16 %.sroa.035.14.vec.extract, ptr %i.amy, align 2, !tbaa !105
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fo, %bb.fn, %bb.fp
  %i.amz = getelementptr inbounds nuw i8, ptr %.41756992, i64 %.idx890
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fm
  %i.ana = bitcast <4 x float> %i.amq to <2 x i64>
  %i.anb = extractelement <2 x i64> %i.ana, i64 0
  store i64 %i.anb, ptr %.41756992, align 1, !tbaa !87
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %.41756992, i64 %i.k
  %i.and = bitcast <4 x float> %i.amq to <2 x i64>
  %i.ane = extractelement <2 x i64> %i.and, i64 1
  store i64 %i.ane, ptr %i.anc, align 1, !tbaa !87
  %i.anf = getelementptr inbounds nuw i8, ptr %.41756992, i64 8
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr, %bb.fk, %bb.fl
  %.61758 = phi ptr [ %.41756992, %bb.fk ], [ %.41756992, %bb.fl ], [ %i.amz, %bb.fq ], [ %i.anf, %bb.fr ] ; 2 uses
  %.41747 = phi ptr [ %i.amh, %bb.fk ], [ %i.amj, %bb.fl ], [ %.31746993, %bb.fq ], [ %.31746993, %bb.fr ] ; 2 uses
  %i.ang = add nuw nsw i32 %.11735994, 4          ; 3 uses
  %i.anh = or disjoint i32 %i.ang, 3
  %i.ani = icmp slt i32 %i.anh, %6
  br i1 %i.ani, label %.lr.ph997, label %.preheader911, !llvm.loop !979

.preheader910:                                    ; preds = %bb.gf, %.preheader911
  %.71759.lcssa = phi ptr [ %.41756.lcssa, %.preheader911 ], [ %.91761, %bb.gf ]
  %.51748.lcssa = phi ptr [ %.31746.lcssa, %.preheader911 ], [ %.61749, %bb.gf ]
  %.21736.lcssa = phi i32 [ %.11735.lcssa, %.preheader911 ], [ %i.apm, %bb.gf ] ; 2 uses
  %.81694.lcssa = phi ptr [ %.71693.lcssa, %.preheader911 ], [ %i.ano, %bb.gf ] ; 2 uses
  %.30.lcssa = phi ptr [ %.27.lcssa, %.preheader911 ], [ %.32, %bb.gf ] ; 2 uses
  %i.anj = icmp slt i32 %.21736.lcssa, %6
  br i1 %i.anj, label %.lr.ph1019.preheader, label %._crit_edge1020

.lr.ph1019.preheader:                             ; preds = %.preheader910
  %i.ank = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1019

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.gf
  %.301007 = phi ptr [ %.32, %bb.gf ], [ %.27.lcssa, %.lr.ph1008.preheader ] ; 9 uses
  %.816941006 = phi ptr [ %i.ano, %bb.gf ], [ %.71693.lcssa, %.lr.ph1008.preheader ] ; 3 uses
  %.217361005 = phi i32 [ %i.apm, %bb.gf ], [ %.11735.lcssa, %.lr.ph1008.preheader ]
  %.517481004 = phi ptr [ %.61749, %bb.gf ], [ %.31746.lcssa, %.lr.ph1008.preheader ] ; 7 uses
  %.717591003 = phi ptr [ %.91761, %bb.gf ], [ %.41756.lcssa, %.lr.ph1008.preheader ] ; 7 uses
  %i.anl = load <2 x float>, ptr %.816941006, align 4, !tbaa !67 ; 6 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.816941006, i64 8
  %i.ann = load <2 x float>, ptr %i.anm, align 4, !tbaa !67 ; 6 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.816941006, i64 16 ; 2 uses
  %.not1820 = icmp eq ptr %.301007, null
  br i1 %.not1820, label %.thread849, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph1008
  br i1 %i.bg, label %.thread836, label %bb.fu

.thread836:                                       ; preds = %bb.ft
  %i.anp = fadd fast <2 x float> %i.anl, %i.aky
  %i.anq = fadd fast <2 x float> %i.ann, %i.aky
  br label %.thread849

bb.fu:                                            ; preds = %bb.ft
  br i1 %or.cond11, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.anr = fadd fast <2 x float> %i.anl, %i.akw
  %i.ans = fadd fast <2 x float> %i.ann, %i.akx
  br label %.thread849

bb.fw:                                            ; preds = %bb.fu
  switch i32 %2, label %.thread849 [
    i32 3, label %bb.fx
    i32 4, label %bb.fy
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.ant = load <2 x float>, ptr %.301007, align 4, !tbaa !67
  %i.anu = fmul fast <2 x float> %i.ant, %i.bw
  %i.anv = fadd fast <2 x float> %i.anu, %i.anl
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %.301007, i64 %i.t
  %i.anx = load <2 x float>, ptr %i.anw, align 4, !tbaa !67
  %i.any = fmul fast <2 x float> %i.anx, %i.bw
  %i.anz = fadd fast <2 x float> %i.any, %i.ann
  %i.aoa = getelementptr inbounds nuw i8, ptr %.301007, i64 8
  br label %.thread849

bb.fy:                                            ; preds = %bb.fw
  %i.aob = load <2 x float>, ptr %.301007, align 4, !tbaa !67
  %i.aoc = fmul fast <2 x float> %i.aob, %i.bw    ; 2 uses
  %i.aod = fadd fast <2 x float> %i.aoc, %i.anl
  %i.aoe = fadd fast <2 x float> %i.aoc, %i.ann
  %i.aof = getelementptr inbounds nuw i8, ptr %.301007, i64 8
  br label %.thread849

.thread849:                                       ; preds = %bb.fw, %bb.fv, %.thread836, %bb.fx, %bb.fy, %.lr.ph1008
  %.32 = phi ptr [ %i.aof, %bb.fy ], [ %.301007, %bb.fw ], [ null, %.lr.ph1008 ], [ %i.aoa, %bb.fx ], [ %.301007, %.thread836 ], [ %.301007, %bb.fv ] ; 2 uses
  %i.aog = phi <2 x float> [ %i.aoe, %bb.fy ], [ %i.ann, %bb.fw ], [ %i.ann, %.lr.ph1008 ], [ %i.anz, %bb.fx ], [ %i.anq, %.thread836 ], [ %i.ans, %bb.fv ]
  %i.aoh = phi <2 x float> [ %i.aod, %bb.fy ], [ %i.anl, %bb.fw ], [ %i.anl, %.lr.ph1008 ], [ %i.anv, %bb.fx ], [ %i.anp, %.thread836 ], [ %i.anr, %bb.fv ]
  %i.aoi = fmul fast <2 x float> %i.aoh, %i.by    ; 4 uses
  %i.aoj = fmul fast <2 x float> %i.aog, %i.by    ; 5 uses
  br i1 %i.bp, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %.thread849
  %i.aok = extractelement <2 x float> %i.aoi, i64 0
  store float %i.aok, ptr %.517481004, align 4, !tbaa !67
  %i.aol = getelementptr inbounds nuw i8, ptr %.517481004, i64 4 ; 2 uses
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %.517481004, i64 %i.k ; 3 uses
  %i.aon = getelementptr i8, ptr %i.aom, i64 4    ; 2 uses
  br i1 %.not1817, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aoo = extractelement <2 x float> %i.aoj, i64 0
  store float %i.aoo, ptr %i.aol, align 4, !tbaa !67
  %i.aop = extractelement <2 x float> %i.aoi, i64 1
  store float %i.aop, ptr %i.aom, align 4, !tbaa !67
  %i.aoq = extractelement <2 x float> %i.aoj, i64 1
  store float %i.aoq, ptr %i.aon, align 4, !tbaa !67
  %i.aor = getelementptr inbounds nuw i8, ptr %.517481004, i64 %.idx890
  br label %bb.gf

bb.gb:                                            ; preds = %bb.fz
  %i.aos = extractelement <2 x float> %i.aoi, i64 1
  store float %i.aos, ptr %i.aol, align 4, !tbaa !67
  %i.aot = extractelement <2 x float> %i.aoj, i64 0
  store float %i.aot, ptr %i.aom, align 4, !tbaa !67
  %i.aou = extractelement <2 x float> %i.aoj, i64 1
  store float %i.aou, ptr %i.aon, align 4, !tbaa !67
  %i.aov = getelementptr inbounds nuw i8, ptr %.517481004, i64 8
  br label %bb.gf

bb.gc:                                            ; preds = %.thread849
  %i.aow = bitcast <2 x float> %i.aoi to <2 x i32>
  %i.aox = lshr <2 x i32> %i.aow, splat (i32 16)  ; 2 uses
  %i.aoy = bitcast <2 x i32> %i.aox to <4 x i16>
  %i.aoz = extractelement <4 x i16> %i.aoy, i64 0
  %i.apa = bitcast <2 x i32> %i.aox to <4 x i16>
  %i.apb = extractelement <4 x i16> %i.apa, i64 2 ; 2 uses
  %i.apc = bitcast <2 x float> %i.aoj to <2 x i32>
  %i.apd = lshr <2 x i32> %i.apc, splat (i32 16)
  %i.ape = trunc nuw <2 x i32> %i.apd to <2 x i16> ; 3 uses
  store i16 %i.aoz, ptr %.717591003, align 2, !tbaa !105
  %i.apf = getelementptr inbounds nuw i8, ptr %.717591003, i64 2 ; 2 uses
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %.717591003, i64 %i.k ; 3 uses
  br i1 %.not1817, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aph = getelementptr i8, ptr %i.apg, i64 2
  %i.api = extractelement <2 x i16> %i.ape, i64 0
  store i16 %i.api, ptr %i.apf, align 2, !tbaa !105
  store i16 %i.apb, ptr %i.apg, align 2, !tbaa !105
  %i.apj = extractelement <2 x i16> %i.ape, i64 1
  store i16 %i.apj, ptr %i.aph, align 2, !tbaa !105
  %i.apk = getelementptr inbounds nuw i8, ptr %.717591003, i64 %.idx888
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  store i16 %i.apb, ptr %i.apf, align 2, !tbaa !105
  store <2 x i16> %i.ape, ptr %i.apg, align 2, !tbaa !105
  %i.apl = getelementptr inbounds nuw i8, ptr %.717591003, i64 4
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge, %bb.ga, %bb.gb
  %.91761 = phi ptr [ %.717591003, %bb.ga ], [ %.717591003, %bb.gb ], [ %i.apk, %bb.gd ], [ %i.apl, %bb.ge ] ; 2 uses
  %.61749 = phi ptr [ %i.aor, %bb.ga ], [ %i.aov, %bb.gb ], [ %.517481004, %bb.gd ], [ %.517481004, %bb.ge ] ; 2 uses
  %i.apm = add nuw nsw i32 %.217361005, 2         ; 3 uses
  %i.apn = or disjoint i32 %i.apm, 1
  %i.apo = icmp slt i32 %i.apn, %6
  br i1 %i.apo, label %.lr.ph1008, label %.preheader910, !llvm.loop !980

.lr.ph1019:                                       ; preds = %.lr.ph1019.preheader, %bb.gp
  %.331018 = phi ptr [ %.35, %bb.gp ], [ %.30.lcssa, %.lr.ph1019.preheader ] ; 7 uses
  %.916951017 = phi ptr [ %i.apq, %bb.gp ], [ %.81694.lcssa, %.lr.ph1019.preheader ] ; 2 uses
  %.317371016 = phi i32 [ %i.arc, %bb.gp ], [ %.21736.lcssa, %.lr.ph1019.preheader ]
  %.717501015 = phi ptr [ %.81751, %bb.gp ], [ %.51748.lcssa, %.lr.ph1019.preheader ] ; 7 uses
  %.1017621014 = phi ptr [ %.121764, %bb.gp ], [ %.71759.lcssa, %.lr.ph1019.preheader ] ; 7 uses
  %i.app = load <2 x float>, ptr %.916951017, align 4, !tbaa !67 ; 4 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %.916951017, i64 8 ; 2 uses
  %.not1819 = icmp eq ptr %.331018, null
  br i1 %.not1819, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph1019
  %i.apr = fadd fast <2 x float> %i.app, %i.ank
  %i.aps = select <2 x i1> %i.ca, <2 x float> %i.apr, <2 x float> %i.app ; 3 uses
  %i.apt = fadd fast <2 x float> %i.aps, %i.agc
  %i.apu = select <2 x i1> %i.cc, <2 x float> %i.apt, <2 x float> %i.aps
  switch i32 %2, label %bb.gi [
    i32 3, label %.thread855
    i32 4, label %bb.gh
  ]

.thread855:                                       ; preds = %bb.gg
  %i.apv = load float, ptr %.331018, align 4, !tbaa !67
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %.331018, i64 %i.t
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !67
  %i.apy = insertelement <2 x float> poison, float %i.apv, i64 0
  %i.apz = insertelement <2 x float> %i.apy, float %i.apx, i64 1
  %i.aqa = fmul fast <2 x float> %i.apz, %i.bw
  %i.aqb = fadd fast <2 x float> %i.aqa, %i.app
  %i.aqc = getelementptr inbounds nuw i8, ptr %.331018, i64 4
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aqd = load float, ptr %.331018, align 4, !tbaa !67
  %i.aqe = fmul fast float %i.aqd, %8
  %i.aqf = insertelement <2 x float> poison, float %i.aqe, i64 0
  %i.aqg = shufflevector <2 x float> %i.aqf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqh = fadd fast <2 x float> %i.aqg, %i.aps
  %i.aqi = getelementptr inbounds nuw i8, ptr %.331018, i64 4
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gg, %.thread855, %bb.gh, %.lr.ph1019
  %.35 = phi ptr [ %i.aqi, %bb.gh ], [ %.331018, %bb.gg ], [ null, %.lr.ph1019 ], [ %i.aqc, %.thread855 ] ; 2 uses
  %i.aqj = phi <2 x float> [ %i.aqh, %bb.gh ], [ %i.apu, %bb.gg ], [ %i.app, %.lr.ph1019 ], [ %i.aqb, %.thread855 ]
  %i.aqk = fmul fast <2 x float> %i.aqj, %i.ce    ; 4 uses
  br i1 %i.bp, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %bb.gi
  %i.aql = extractelement <2 x float> %i.aqk, i64 0
  store float %i.aql, ptr %.717501015, align 4, !tbaa !67
  br i1 %.not1817, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aqm = getelementptr inbounds nuw i8, ptr %.717501015, i64 4
  %i.aqn = extractelement <2 x float> %i.aqk, i64 1
  store float %i.aqn, ptr %i.aqm, align 4, !tbaa !67
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %.717501015, i64 %i.k
  br label %bb.gp

bb.gl:                                            ; preds = %bb.gj
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %.717501015, i64 %i.k
  %i.aqq = extractelement <2 x float> %i.aqk, i64 1
  store float %i.aqq, ptr %i.aqp, align 4, !tbaa !67
  %i.aqr = getelementptr inbounds nuw i8, ptr %.717501015, i64 4
  br label %bb.gp

bb.gm:                                            ; preds = %bb.gi
  %i.aqs = bitcast <2 x float> %i.aqk to <2 x i32>
  %i.aqt = lshr <2 x i32> %i.aqs, splat (i32 16)  ; 2 uses
  %i.aqu = bitcast <2 x i32> %i.aqt to <4 x i16>
  %i.aqv = extractelement <4 x i16> %i.aqu, i64 0
  %i.aqw = bitcast <2 x i32> %i.aqt to <4 x i16>
  %i.aqx = extractelement <4 x i16> %i.aqw, i64 2 ; 2 uses
  store i16 %i.aqv, ptr %.1017621014, align 2, !tbaa !105
  br i1 %.not1817, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aqy = getelementptr inbounds nuw i8, ptr %.1017621014, i64 2
  store i16 %i.aqx, ptr %i.aqy, align 2, !tbaa !105
  %i.aqz = getelementptr inbounds nuw [2 x i8], ptr %.1017621014, i64 %i.k
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.ara = getelementptr inbounds nuw [2 x i8], ptr %.1017621014, i64 %i.k
  store i16 %i.aqx, ptr %i.ara, align 2, !tbaa !105
  %i.arb = getelementptr inbounds nuw i8, ptr %.1017621014, i64 2
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go, %bb.gk, %bb.gl
end_hunk_0
