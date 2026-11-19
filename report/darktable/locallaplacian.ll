Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %i.aca = sitofp reassoc nsz arcp contract afn i32 %i.abz to float
  %i.acb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.abx, splat (float 5.000000e-01)
  %i.acc = sitofp reassoc nsz arcp contract afn <2 x i32> %i.abv to <2 x float> ; 2 uses
  %i.acd = load ptr, ptr %i.abe, align 8, !tbaa !17 ; 4 uses
  %i.ace = load ptr, ptr %i.abc, align 8, !tbaa !17 ; 4 uses
  %i.acf = zext nneg i32 %.05.lcssa.i727813 to i64 ; 2 uses
  %wide.trip.count1025 = zext nneg i32 %.05.lcssa.i735 to i64
  %i.acg = extractelement <4 x i32> %i.aay, i64 0 ; 3 uses
  %i.ach = extractelement <4 x i32> %i.aay, i64 1 ; 3 uses
  %i.aci = extractelement <4 x i32> %i.aay, i64 2 ; 3 uses
  %i.acj = extractelement <4 x i32> %i.aay, i64 3 ; 3 uses
  br label %.preheader848

.preheader848:                                    ; preds = %.preheader848.lr.ph.split, %._crit_edge889
  %indvars.iv1022 = phi i64 [ 0, %.preheader848.lr.ph.split ], [ %indvars.iv.next1023, %._crit_edge889 ] ; 3 uses
  %i.ack = trunc nuw nsw i64 %indvars.iv1022 to i32
  %i.acl = uitofp nsz nneg i32 %i.ack to float
  %i.acm = fmul reassoc nsz arcp contract afn float %exp2, %i.acl
  %.reass893 = fadd reassoc nsz arcp contract afn float %i.acm, %invariant.op892
  %i.acn = fmul reassoc nsz arcp contract afn float %.reass893, %i.aca
  %i.aco = mul nuw nsw i64 %indvars.iv1022, %i.acf
  %invariant.gep1140 = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.aco
  %i.acp = insertelement <2 x float> poison, float %i.acn, i64 1
  br label %bb.ae

._crit_edge891.split:                             ; preds = %._crit_edge889, %.preheader848.lr.ph, %bb.ad
  %i.acq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not626 = icmp eq ptr %i.acq, null
  br i1 %.not626, label %bb.ag, label %bb.af

._crit_edge889:                                   ; preds = %bb.ae
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %._crit_edge891.split, label %.preheader848

bb.ae:                                            ; preds = %.preheader848, %bb.ae
  %indvars.iv1017 = phi i64 [ 0, %.preheader848 ], [ %indvars.iv.next1018, %bb.ae ] ; 3 uses
  %i.acr = trunc nuw nsw i64 %indvars.iv1017 to i32
  %i.acs = uitofp nsz nneg i32 %i.acr to float
  %i.act = fmul reassoc nsz arcp contract afn float %exp2, %i.acs
  %.reass = fadd reassoc nsz arcp contract afn float %i.act, %invariant.op
  %i.acu = load float, ptr %i.abh, align 4, !tbaa !28
  %i.acv = fmul reassoc nsz arcp contract afn float %.reass, %i.abt
  %i.acw = insertelement <2 x float> poison, float %i.acu, i64 0
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acy = fmul reassoc nsz arcp contract afn <2 x float> %i.acx, %i.aby
  %i.acz = insertelement <2 x float> %i.acp, float %i.acv, i64 0
  %i.ada = fdiv reassoc nsz arcp contract afn <2 x float> %i.acz, %i.acy
  %i.adb = fadd reassoc nsz arcp contract afn <2 x float> %i.acb, %i.ada ; 3 uses
  %i.adc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adb, %i.acc
  %i.add = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.adb, zeroinitializer
  %i.ade = select <2 x i1> %i.add, <2 x float> zeroinitializer, <2 x float> %i.adb
  %i.adf = select <2 x i1> %i.adc, <2 x float> %i.acc, <2 x float> %i.ade
  %i.adg = shufflevector <2 x float> %i.adf, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.adh = fmul reassoc nsz arcp contract afn <4 x float> %i.adg, %i.yy ; 4 uses
  %i.adi = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.adh, %i.aaz
  %i.adj = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adh, zeroinitializer
  %i.adk = select <4 x i1> %i.adj, <4 x float> zeroinitializer, <4 x float> %i.adh
  %i.adl = select <4 x i1> %i.adi, <4 x float> %i.aaz, <4 x float> %i.adk
  %i.adm = fptosi <4 x float> %i.adl to <4 x i32> ; 5 uses
  %i.adn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.adm to <4 x float>
  %i.ado = fsub reassoc nsz arcp contract afn <4 x float> %i.adh, %i.adn ; 6 uses
  %i.adp = extractelement <4 x float> %i.ado, i64 3
  %i.adq = fcmp reassoc nsz arcp contract afn ogt float %i.adp, 1.000000e+00
  %i.adr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ado, zeroinitializer
  %i.ads = extractelement <4 x float> %i.ado, i64 2
  %i.adt = fcmp reassoc nsz arcp contract afn ogt float %i.ads, 1.000000e+00
  %i.adu = extractelement <4 x float> %i.ado, i64 1
  %i.adv = fcmp reassoc nsz arcp contract afn ogt float %i.adu, 1.000000e+00
  %i.adw = extractelement <4 x float> %i.ado, i64 0
  %i.adx = fcmp reassoc nsz arcp contract afn ogt float %i.adw, 1.000000e+00
  %i.ady = select <4 x i1> %i.adr, <4 x float> zeroinitializer, <4 x float> %i.ado ; 4 uses
  %i.adz = extractelement <4 x float> %i.ady, i64 3
  %i.aea = select reassoc nsz arcp contract afn i1 %i.adq, float 1.000000e+00, float %i.adz ; 3 uses
  %i.aeb = extractelement <4 x float> %i.ady, i64 2
  %i.aec = select reassoc nsz arcp contract afn i1 %i.adt, float 1.000000e+00, float %i.aeb
  %i.aed = extractelement <4 x float> %i.ady, i64 1
  %i.aee = select reassoc nsz arcp contract afn i1 %i.adv, float 1.000000e+00, float %i.aed ; 3 uses
  %i.aef = extractelement <4 x float> %i.ady, i64 0
  %i.aeg = select reassoc nsz arcp contract afn i1 %i.adx, float 1.000000e+00, float %i.aef ; 2 uses
  %i.aeh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aea ; 2 uses
  %i.aei = extractelement <4 x i32> %i.adm, i64 2 ; 4 uses
  %.not628 = icmp sgt i32 %.05.lcssa.i751, %i.aei
  %i.aej = tail call i32 @llvm.smax.i32(i32 %i.aei, i32 0)
  %i.aek = select i1 %.not628, i32 %i.aej, i32 %i.aci
  %i.ael = mul nsw i32 %i.aek, %.05.lcssa.i743816 ; 2 uses
  %i.aem = extractelement <4 x i32> %i.adm, i64 3 ; 4 uses
  %.not629 = icmp sgt i32 %.05.lcssa.i743816, %i.aem
  %i.aen = tail call i32 @llvm.smax.i32(i32 %i.aem, i32 0)
  %i.aeo = select i1 %.not629, i32 %i.aen, i32 %i.acj ; 2 uses
  %i.aep = add nsw i32 %i.ael, %i.aeo
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.aeq
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !21
  %i.aet = fmul reassoc nsz arcp contract afn float %i.aeh, %i.aes
  %.not630 = icmp sgt i32 %i.acj, %i.aem
  %i.aeu = tail call i32 @llvm.smax.i32(i32 %i.aem, i32 -1)
  %i.aev = add nsw i32 %i.aeu, 1
  %i.aew = select i1 %.not630, i32 %i.aev, i32 %i.acj ; 2 uses
  %i.aex = add nsw i32 %i.ael, %i.aew
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.aey
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !21
  %i.afb = fmul reassoc nsz arcp contract afn float %i.aea, %i.afa
  %.not631 = icmp sgt i32 %i.aci, %i.aei
  %i.afc = tail call i32 @llvm.smax.i32(i32 %i.aei, i32 -1)
  %i.afd = add nsw i32 %i.afc, 1
  %i.afe = select i1 %.not631, i32 %i.afd, i32 %i.aci
  %i.aff = mul nsw i32 %i.afe, %.05.lcssa.i743816 ; 2 uses
  %i.afg = add nsw i32 %i.aff, %i.aeo
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.afh
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !21
  %i.afk = fmul reassoc nsz arcp contract afn float %i.aeh, %i.afj
  %i.afl = add nsw i32 %i.aff, %i.aew
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.afm
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !21
  %i.afp = fmul reassoc nsz arcp contract afn float %i.aea, %i.afo
  %reass.add = fadd reassoc nsz arcp contract afn float %i.aet, %i.afb ; 2 uses
  %reass.add835 = fadd reassoc nsz arcp contract afn float %i.afp, %i.afk
  %i.afq = fsub reassoc nsz arcp contract afn float %reass.add835, %reass.add
  %i.afr = fmul reassoc nsz arcp contract afn float %i.aec, %i.afq
  %i.afs = fadd reassoc nsz arcp contract afn float %reass.add, %i.afr ; 2 uses
  %i.aft = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aee ; 2 uses
  %i.afu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aeg
  %i.afv = extractelement <4 x i32> %i.adm, i64 0 ; 4 uses
  %.not632 = icmp sgt i32 %.05.lcssa.i767, %i.afv
  %i.afw = tail call i32 @llvm.smax.i32(i32 %i.afv, i32 0)
  %i.afx = select i1 %.not632, i32 %i.afw, i32 %i.acg
  %i.afy = mul nsw i32 %i.afx, %.05.lcssa.i759819 ; 2 uses
  %i.afz = extractelement <4 x i32> %i.adm, i64 1 ; 4 uses
  %.not633 = icmp sgt i32 %.05.lcssa.i759819, %i.afz
  %i.aga = tail call i32 @llvm.smax.i32(i32 %i.afz, i32 0)
  %i.agb = select i1 %.not633, i32 %i.aga, i32 %i.ach ; 2 uses
  %i.agc = add nsw i32 %i.afy, %i.agb
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.agd
  %i.agf = load float, ptr %i.age, align 4, !tbaa !21
  %i.agg = fmul reassoc nsz arcp contract afn float %i.aft, %i.agf
  %.not634 = icmp sgt i32 %i.ach, %i.afz
  %i.agh = tail call i32 @llvm.smax.i32(i32 %i.afz, i32 -1)
  %i.agi = add nsw i32 %i.agh, 1
  %i.agj = select i1 %.not634, i32 %i.agi, i32 %i.ach ; 2 uses
  %i.agk = add nsw i32 %i.afy, %i.agj
  %i.agl = sext i32 %i.agk to i64
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.agl
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !21
  %i.ago = fmul reassoc nsz arcp contract afn float %i.aee, %i.agn
  %.not635 = icmp sgt i32 %i.acg, %i.afv
  %i.agp = tail call i32 @llvm.smax.i32(i32 %i.afv, i32 -1)
  %i.agq = add nsw i32 %i.agp, 1
  %i.agr = select i1 %.not635, i32 %i.agq, i32 %i.acg
  %i.ags = mul nsw i32 %i.agr, %.05.lcssa.i759819 ; 2 uses
  %i.agt = add nsw i32 %i.ags, %i.agb
  %i.agu = sext i32 %i.agt to i64
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.agu
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !21
  %i.agx = fmul reassoc nsz arcp contract afn float %i.aft, %i.agw
  %i.agy = add nsw i32 %i.ags, %i.agj
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.agz
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !21
  %i.ahc = fmul reassoc nsz arcp contract afn float %i.aee, %i.ahb
  %reass.add838 = fadd reassoc nsz arcp contract afn float %i.agg, %i.ago
  %reass.mul839 = fmul reassoc nsz arcp contract afn float %reass.add838, %i.afu
  %reass.add840 = fadd reassoc nsz arcp contract afn float %i.ahc, %i.agx
  %reass.mul841 = fmul reassoc nsz arcp contract afn float %reass.add840, %i.aeg
  %i.ahd = fsub reassoc nsz arcp contract afn float %reass.mul839, %i.afs
  %i.ahe = fadd reassoc nsz arcp contract afn float %i.ahd, %reass.mul841
  %i.ahf = fmul reassoc nsz arcp contract afn float %i.ahe, %i.yv
  %i.ahg = fadd reassoc nsz arcp contract afn float %i.ahf, %i.afs
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1140, i64 %indvars.iv1017
  store float %i.ahg, ptr %gep, align 4, !tbaa !21
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 1 ; 2 uses
  %exitcond1021.not = icmp eq i64 %indvars.iv.next1018, %i.acf
  br i1 %exitcond1021.not, label %._crit_edge889, label %bb.ae

bb.af:                                            ; preds = %._crit_edge891.split
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.3, ptr noundef %i.qa, i32 noundef %.05.lcssa.i727813, i32 noundef %.05.lcssa.i735, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge891.split, %bb.af, %bb.aa, %bb.z
  %i.ahh = icmp sgt i32 %.0528797, 0
  br i1 %i.ahh, label %.lr.ph902, label %.preheader844.preheader

.lr.ph902:                                        ; preds = %bb.ag
  %i.ahi = zext i32 %i.qc to i64                  ; 2 uses
  %.pre1075 = load float, ptr %i.qf, align 4
  %i.ahj = load float, ptr %i.qg, align 8
  %i.ahk = load float, ptr %i.qh, align 4
  %i.ahl = load float, ptr %i.qi, align 16
  br label %bb.ah

.preheader844.preheader:                          ; preds = %._crit_edge899.split, %bb.ag
  %i.ahm = load ptr, ptr %i.f, align 16           ; 3 uses
  %i.ahn = zext nneg i32 %i.ls to i64             ; 3 uses
  %i.aho = sext i32 %.pre to i64                  ; 3 uses
  %i.ahp = zext nneg i32 %2 to i64
  %wide.trip.count1052 = zext nneg i32 %3 to i64  ; 3 uses
  %wide.trip.count1047 = zext nneg i32 %2 to i64  ; 7 uses
  %invariant.gep1141 = getelementptr [4 x i8], ptr %i.ahm, i64 %i.ahn
  %9 = mul nuw nsw i64 %wide.trip.count1052, %wide.trip.count1047
  %i.ahq = shl i64 %9, 4
  %i.ahr = add i64 %i.ahq, -4                     ; 2 uses
  %scevgep1317 = getelementptr i8, ptr %0, i64 %i.ahr
  %scevgep1318 = getelementptr i8, ptr %0, i64 4
  %i.ahs = shl nsw i64 %i.aho, 2
  %i.aht = add nuw nsw i64 %wide.trip.count1052, 4611686018427387903
  %i.ahu = mul i64 %i.aht, %i.aho
  %i.ahv = add nsw i64 %i.ahs, 4
  %i.ahw = mul i64 %i.ahv, %i.ahn                 ; 2 uses
  %i.ahx = add i64 %i.ahu, %wide.trip.count1047
  %i.ahy = shl i64 %i.ahx, 2
  %i.ahz = getelementptr i8, ptr %i.ahm, i64 %i.ahy
  %scevgep1319 = getelementptr i8, ptr %i.ahz, i64 %i.ahw
  %scevgep1320.a = getelementptr i8, ptr %i.ahm, i64 %i.ahw
  %scevgep1321 = getelementptr i8, ptr %1, i64 %i.ahr ; 2 uses
  %min.iters.check1322 = icmp ult i32 %2, 5
  %bound01324 = icmp ult ptr %1, %scevgep1319
  %bound11325 = icmp ult ptr %scevgep1320.a, %scevgep1321
  %found.conflict1326 = and i1 %bound01324, %bound11325
  %stride.check1327 = icmp slt i32 %.pre, 0
  %i.aia = or i1 %found.conflict1326, %stride.check1327
  %bound01328 = icmp ult ptr %1, %scevgep1317
  %bound11329 = icmp ult ptr %scevgep1318, %scevgep1321
  %found.conflict1330 = and i1 %bound01328, %bound11329
  %conflict.rdx = or i1 %i.aia, %found.conflict1330
  %i.aib = and i64 %wide.trip.count1047, 3        ; 2 uses
  %i.aic = icmp eq i64 %i.aib, 0
  %i.aid = select i1 %i.aic, i64 4, i64 %i.aib
  %n.vec1332 = sub nsw i64 %wide.trip.count1047, %i.aid ; 2 uses
  %i.aie = add nsw i64 %wide.trip.count1047, -1
  br label %.preheader844

bb.ah:                                            ; preds = %.lr.ph902, %._crit_edge899.split
  %indvar1691 = phi i64 [ 0, %.lr.ph902 ], [ %indvar.next1692, %._crit_edge899.split ] ; 2 uses
  %indvars.iv1041 = phi i64 [ %i.ahi, %.lr.ph902 ], [ %indvars.iv.next1042, %._crit_edge899.split ] ; 12 uses
  %i.aif = xor i64 %indvar1691, -1
  %i.aig = add i64 %i.aif, %i.ahi                 ; 2 uses
  %.not830 = icmp eq i64 %indvars.iv1041, 0
  br i1 %.not830, label %dl.exit790, label %.lr.ph.i777.preheader

.lr.ph.i777.preheader:                            ; preds = %bb.ah
  %xtraiter1693 = and i64 %indvars.iv1041, 7      ; 3 uses
  %i.aih = icmp ult i64 %i.aig, 7
  br i1 %i.aih, label %.lr.ph.i777.epil.preheader, label %.lr.ph.i777.preheader.new

.lr.ph.i777.preheader.new:                        ; preds = %.lr.ph.i777.preheader
  %unroll_iter1698 = and i64 %indvars.iv1041, -8
  br label %.lr.ph.i777

.lr.ph.i777:                                      ; preds = %.lr.ph.i777, %.lr.ph.i777.preheader.new
  %.056.i779 = phi i32 [ %.pre1079, %.lr.ph.i777.preheader.new ], [ %i.aii, %.lr.ph.i777 ]
  %niter1699 = phi i64 [ 0, %.lr.ph.i777.preheader.new ], [ %niter1699.next.7, %.lr.ph.i777 ]
  %i.aii = sdiv i32 %.056.i779, 256               ; 3 uses
  %niter1699.next.7 = add i64 %niter1699, 8       ; 2 uses
  %niter1699.ncmp.7 = icmp eq i64 %niter1699.next.7, %unroll_iter1698
  br i1 %niter1699.ncmp.7, label %.lr.ph.i785.preheader.unr-lcssa, label %.lr.ph.i777

.lr.ph.i785.preheader.unr-lcssa:                  ; preds = %.lr.ph.i777
  %lcmp.mod1695.not = icmp eq i64 %xtraiter1693, 0
  br i1 %lcmp.mod1695.not, label %.lr.ph.i785.preheader, label %.lr.ph.i777.epil.preheader

.lr.ph.i777.epil.preheader:                       ; preds = %.lr.ph.i785.preheader.unr-lcssa, %.lr.ph.i777.preheader
  %.056.i779.epil.init = phi i32 [ %.pre1079, %.lr.ph.i777.preheader ], [ %i.aii, %.lr.ph.i785.preheader.unr-lcssa ]
  %lcmp.mod1697 = icmp ne i64 %xtraiter1693, 0
  tail call void @llvm.assume(i1 %lcmp.mod1697)
  br label %.lr.ph.i777.epil

.lr.ph.i777.epil:                                 ; preds = %.lr.ph.i777.epil, %.lr.ph.i777.epil.preheader
  %.056.i779.epil = phi i32 [ %i.aij, %.lr.ph.i777.epil ], [ %.056.i779.epil.init, %.lr.ph.i777.epil.preheader ]
  %epil.iter1694 = phi i64 [ %epil.iter1694.next, %.lr.ph.i777.epil ], [ 0, %.lr.ph.i777.epil.preheader ]
  %i.aij = sdiv i32 %.056.i779.epil, 2            ; 2 uses
  %epil.iter1694.next = add i64 %epil.iter1694, 1 ; 2 uses
  %epil.iter1694.cmp.not = icmp eq i64 %epil.iter1694.next, %xtraiter1693
  br i1 %epil.iter1694.cmp.not, label %.lr.ph.i785.preheader, label %.lr.ph.i777.epil, !llvm.loop !90

.lr.ph.i785.preheader:                            ; preds = %.lr.ph.i777.epil, %.lr.ph.i785.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.aii, %.lr.ph.i785.preheader.unr-lcssa ], [ %i.aij, %.lr.ph.i777.epil ]
  %xtraiter1700 = and i64 %indvars.iv1041, 7      ; 3 uses
  %i.aik = icmp ult i64 %i.aig, 7
  br i1 %i.aik, label %.lr.ph.i785.epil.preheader, label %.lr.ph.i785.preheader.new

.lr.ph.i785.preheader.new:                        ; preds = %.lr.ph.i785.preheader
  %unroll_iter1705 = and i64 %indvars.iv1041, -8
  br label %.lr.ph.i785

._crit_edge.loopexit.i789.unr-lcssa:              ; preds = %.lr.ph.i785
  %lcmp.mod1702.not = icmp eq i64 %xtraiter1700, 0
  br i1 %lcmp.mod1702.not, label %._crit_edge.loopexit.i789, label %.lr.ph.i785.epil.preheader

.lr.ph.i785.epil.preheader:                       ; preds = %._crit_edge.loopexit.i789.unr-lcssa, %.lr.ph.i785.preheader
  %.056.i787.epil.init = phi i32 [ %.pre1081, %.lr.ph.i785.preheader ], [ %i.aio, %._crit_edge.loopexit.i789.unr-lcssa ]
  %lcmp.mod1704 = icmp ne i64 %xtraiter1700, 0
  tail call void @llvm.assume(i1 %lcmp.mod1704)
  br label %.lr.ph.i785.epil

.lr.ph.i785.epil:                                 ; preds = %.lr.ph.i785.epil, %.lr.ph.i785.epil.preheader
  %.056.i787.epil = phi i32 [ %i.ail, %.lr.ph.i785.epil ], [ %.056.i787.epil.init, %.lr.ph.i785.epil.preheader ]
  %epil.iter1701 = phi i64 [ %epil.iter1701.next, %.lr.ph.i785.epil ], [ 0, %.lr.ph.i785.epil.preheader ]
  %i.ail = sdiv i32 %.056.i787.epil, 2            ; 2 uses
  %epil.iter1701.next = add i64 %epil.iter1701, 1 ; 2 uses
  %epil.iter1701.cmp.not = icmp eq i64 %epil.iter1701.next, %xtraiter1700
  br i1 %epil.iter1701.cmp.not, label %._crit_edge.loopexit.i789, label %.lr.ph.i785.epil, !llvm.loop !91

._crit_edge.loopexit.i789:                        ; preds = %.lr.ph.i785.epil, %._crit_edge.loopexit.i789.unr-lcssa
  %.lcssa1412 = phi i32 [ %i.aio, %._crit_edge.loopexit.i789.unr-lcssa ], [ %i.ail, %.lr.ph.i785.epil ] ; 2 uses
  %i.aim = add nsw i32 %.lcssa, 1
  %i.ain = add nsw i32 %.lcssa1412, 1
  br label %dl.exit790

.lr.ph.i785:                                      ; preds = %.lr.ph.i785, %.lr.ph.i785.preheader.new
  %.056.i787 = phi i32 [ %.pre1081, %.lr.ph.i785.preheader.new ], [ %i.aio, %.lr.ph.i785 ]
  %niter1706 = phi i64 [ 0, %.lr.ph.i785.preheader.new ], [ %niter1706.next.7, %.lr.ph.i785 ]
  %i.aio = sdiv i32 %.056.i787, 256               ; 3 uses
  %niter1706.next.7 = add i64 %niter1706, 8       ; 2 uses
  %niter1706.ncmp.7 = icmp eq i64 %niter1706.next.7, %unroll_iter1705
  br i1 %niter1706.ncmp.7, label %._crit_edge.loopexit.i789.unr-lcssa, label %.lr.ph.i785

dl.exit790:                                       ; preds = %bb.ah, %._crit_edge.loopexit.i789
  %.pre-phi = phi i32 [ %.pre1081, %bb.ah ], [ %.lcssa1412, %._crit_edge.loopexit.i789 ] ; 5 uses
  %.05.lcssa.i775822 = phi i32 [ %.pre, %bb.ah ], [ %i.aim, %._crit_edge.loopexit.i789 ] ; 32 uses
  %.05.lcssa.i783 = phi i32 [ %.pre1074, %bb.ah ], [ %i.ain, %._crit_edge.loopexit.i789 ] ; 8 uses
  %i.aip = add nuw nsw i64 %indvars.iv1041, 1     ; 3 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aip
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !17 ; 12 uses
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1041
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !17 ; 37 uses
  %i.aiu = and i32 %.pre-phi, -2
  %i.aiv = icmp sgt i32 %.05.lcssa.i783, 2
  br i1 %i.aiv, label %.preheader.lr.ph.i, label %._crit_edge25.split..loopexit.i_crit_edge.i

.preheader.lr.ph.i:                               ; preds = %dl.exit790
  %i.aiw = add i32 %.05.lcssa.i775822, -1         ; 2 uses
  %i.aix = icmp sgt i32 %.05.lcssa.i775822, 2
  %i.aiy = sdiv i32 %i.aiw, 2                     ; 3 uses
  %i.aiz = add nsw i32 %i.aiy, 1                  ; 7 uses
  br i1 %i.aix, label %.preheader.preheader.i, label %iter.check1290

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.aja = and i32 %i.aiw, -2
  %i.ajb = zext nneg i32 %.05.lcssa.i775822 to i64
  %wide.trip.count31.i = zext i32 %i.aiu to i64
  %wide.trip.count.i = zext nneg i32 %i.aja to i64
  br label %.preheader.i794

.preheader.i794:                                  ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv28.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next29.i, %._crit_edge.i ] ; 3 uses
  %i.ajc = trunc nuw i64 %indvars.iv28.i to i32   ; 2 uses
  %i.ajd = lshr i32 %i.ajc, 1
  %i.aje = mul nsw i32 %i.ajd, %i.aiz
  %i.ajf = shl nuw i32 %i.ajc, 1
  %i.ajg = and i32 %i.ajf, 2
  %i.ajh = mul nuw nsw i64 %indvars.iv28.i, %i.ajb
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %i.ajh
  br label %bb.aj

._crit_edge25.split..loopexit.i_crit_edge.i:      ; preds = %dl.exit790
  %.pre.i = sext i32 %.05.lcssa.i775822 to i64
  br label %.loopexit.i.i

iter.check1290:                                   ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.aji = sext i32 %.05.lcssa.i775822 to i64     ; 13 uses
  %wide.trip.count.i.i = zext nneg i32 %.pre-phi to i64 ; 6 uses
  %i.ajj = add nsw i64 %wide.trip.count.i.i, -1   ; 7 uses
  %min.iters.check1277 = icmp ugt i64 %i.ajj, 7
  %ident.check.not = icmp eq i32 %.05.lcssa.i775822, 1
  %or.cond1408 = select i1 %min.iters.check1277, i1 %ident.check.not, i1 false
  br i1 %or.cond1408, label %vector.main.loop.iter.check1278, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1278:                  ; preds = %iter.check1290
  %min.iters.check1279 = icmp ult i64 %i.ajj, 32
  br i1 %min.iters.check1279, label %vec.epilog.ph1294, label %vector.ph1280

vector.ph1280:                                    ; preds = %vector.main.loop.iter.check1278
  %i.ajk = and i64 %i.ajj, 24
  %n.vec1281 = and i64 %i.ajj, -32                ; 4 uses
  %i.ajl = or disjoint i64 %n.vec1281, 1
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.ph1280, %vector.body1282
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1287, %vector.body1282 ] ; 2 uses
  %i.ajm = getelementptr [4 x i8], ptr %i.ait, i64 %index1283 ; 8 uses
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 4
  %i.ajo = getelementptr i8, ptr %i.ajm, i64 8
  %i.ajp = getelementptr i8, ptr %i.ajm, i64 40
  %i.ajq = getelementptr i8, ptr %i.ajm, i64 72
  %i.ajr = getelementptr i8, ptr %i.ajm, i64 104
  %wide.load = load <8 x float>, ptr %i.ajo, align 4, !tbaa !21
  %wide.load1284 = load <8 x float>, ptr %i.ajp, align 4, !tbaa !21
  %wide.load1285 = load <8 x float>, ptr %i.ajq, align 4, !tbaa !21
  %wide.load1286 = load <8 x float>, ptr %i.ajr, align 4, !tbaa !21
  %i.ajs = getelementptr i8, ptr %i.ajm, i64 36
  %i.ajt = getelementptr i8, ptr %i.ajm, i64 68
  %i.aju = getelementptr i8, ptr %i.ajm, i64 100
  store <8 x float> %wide.load, ptr %i.ajn, align 4, !tbaa !21
  store <8 x float> %wide.load1284, ptr %i.ajs, align 4, !tbaa !21
  store <8 x float> %wide.load1285, ptr %i.ajt, align 4, !tbaa !21
  store <8 x float> %wide.load1286, ptr %i.aju, align 4, !tbaa !21
  %index.next1287 = add nuw i64 %index1283, 32    ; 2 uses
  %i.ajv = icmp eq i64 %index.next1287, %n.vec1281
  br i1 %i.ajv, label %middle.block1288, label %vector.body1282, !llvm.loop !92

middle.block1288:                                 ; preds = %vector.body1282
  %cmp.n1289 = icmp eq i64 %i.ajj, %n.vec1281
  br i1 %cmp.n1289, label %._crit_edge.i.i, label %vec.epilog.iter.check1291

vec.epilog.iter.check1291:                        ; preds = %middle.block1288
  %min.epilog.iters.check1293 = icmp eq i64 %i.ajk, 0
  br i1 %min.epilog.iters.check1293, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1294, !prof !31

vec.epilog.ph1294:                                ; preds = %vector.main.loop.iter.check1278, %vec.epilog.iter.check1291
  %vec.epilog.resume.val1295 = phi i64 [ %n.vec1281, %vec.epilog.iter.check1291 ], [ 0, %vector.main.loop.iter.check1278 ]
  %n.vec1296 = and i64 %i.ajj, -8                 ; 3 uses
  %i.ajw = or disjoint i64 %n.vec1296, 1
  br label %vec.epilog.vector.body1297

vec.epilog.vector.body1297:                       ; preds = %vec.epilog.vector.body1297, %vec.epilog.ph1294
  %index1298 = phi i64 [ %vec.epilog.resume.val1295, %vec.epilog.ph1294 ], [ %index.next1300, %vec.epilog.vector.body1297 ] ; 2 uses
  %i.ajx = getelementptr [4 x i8], ptr %i.ait, i64 %index1298 ; 2 uses
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 4
  %i.ajz = getelementptr i8, ptr %i.ajx, i64 8
  %wide.load1299 = load <8 x float>, ptr %i.ajz, align 4, !tbaa !21
  store <8 x float> %wide.load1299, ptr %i.ajy, align 4, !tbaa !21
  %index.next1300 = add nuw i64 %index1298, 8     ; 2 uses
end_hunk_0
