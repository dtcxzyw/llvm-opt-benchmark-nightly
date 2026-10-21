Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr [4 x i8], ptr %i.ajc, i64 %i.apw ; 2 uses
  %i.apy = getelementptr i8, ptr %i.apx, i64 -12
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !21
  %i.aqa = getelementptr i8, ptr %i.apx, i64 -8
  %i.aqb = insertelement <2 x float> poison, float %i.apz, i64 0
  %i.aqc = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.aqc, ptr %i.aqa, align 4, !tbaa !21
  %i.aqd = trunc i64 %indvars.iv72.i.i to i32
  %i.aqe = add i32 %i.aqd, 5
  %i.aqf = mul i32 %.05.lcssa.i775822, %i.aqe
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = getelementptr [4 x i8], ptr %i.ajc, i64 %i.aqg ; 2 uses
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -12
  %i.aqj = load float, ptr %i.aqi, align 4, !tbaa !21
  %i.aqk = getelementptr i8, ptr %i.aqh, i64 -8
  %i.aql = insertelement <2 x float> poison, float %i.aqj, i64 0
  %i.aqm = shufflevector <2 x float> %i.aql, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.aqm, ptr %i.aqk, align 4, !tbaa !21
  %i.aqn = trunc i64 %indvars.iv72.i.i to i32
  %i.aqo = add i32 %i.aqn, 6
  %i.aqp = mul i32 %.05.lcssa.i775822, %i.aqo
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = getelementptr [4 x i8], ptr %i.ajc, i64 %i.aqq ; 2 uses
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 -12
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !21
  %i.aqu = getelementptr i8, ptr %i.aqr, i64 -8
  %i.aqv = insertelement <2 x float> poison, float %i.aqt, i64 0
  %i.aqw = shufflevector <2 x float> %i.aqv, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.aqw, ptr %i.aqu, align 4, !tbaa !21
  %i.aqx = trunc i64 %indvars.iv72.i.i to i32
  %i.aqy = add i32 %i.aqx, 7
  %i.aqz = mul i32 %.05.lcssa.i775822, %i.aqy
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr [4 x i8], ptr %i.ajc, i64 %i.ara ; 2 uses
  %i.arc = getelementptr i8, ptr %i.arb, i64 -12
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !21
  %i.are = getelementptr i8, ptr %i.arb, i64 -8
  %i.arf = insertelement <2 x float> poison, float %i.ard, i64 0
  %i.arg = shufflevector <2 x float> %i.arf, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.arg, ptr %i.are, align 4, !tbaa !21
  %indvars.iv.next73.i.i.7 = add nuw nsw i64 %indvars.iv72.i.i, 8 ; 3 uses
  %i.arh = trunc nuw nsw i64 %indvars.iv.next73.i.i.7 to i32
  %i.ari = mul i32 %.05.lcssa.i775822, %i.arh
  %i.arj = sext i32 %i.ari to i64
  %i.ark = getelementptr [4 x i8], ptr %i.ajc, i64 %i.arj ; 2 uses
  %i.arl = getelementptr i8, ptr %i.ark, i64 -12
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !21
  %i.arn = getelementptr i8, ptr %i.ark, i64 -8
  %i.aro = insertelement <2 x float> poison, float %i.arm, i64 0
  %i.arp = shufflevector <2 x float> %i.aro, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.arp, ptr %i.arn, align 4, !tbaa !21
  %niter1698.next.7 = add i64 %niter1698, 8       ; 2 uses
  %niter1698.ncmp.7 = icmp eq i64 %niter1698.next.7, %unroll_iter1697
  br i1 %niter1698.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph64.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph64.i.i
  %lcmp.mod1695.not = icmp eq i64 %xtraiter1693, 0
  br i1 %lcmp.mod1695.not, label %.loopexit.i.i, label %.lr.ph64.i.i.epil.preheader

.lr.ph64.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph64.i.i.preheader
  %indvars.iv72.i.i.epil.init = phi i64 [ 1, %.lr.ph64.i.i.preheader ], [ %indvars.iv.next73.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1696 = icmp ne i64 %xtraiter1693, 0
  tail call void @llvm.assume(i1 %lcmp.mod1696)
  br label %.lr.ph64.i.i.epil

.lr.ph64.i.i.epil:                                ; preds = %.lr.ph64.i.i.epil, %.lr.ph64.i.i.epil.preheader
  %indvars.iv72.i.i.epil = phi i64 [ %indvars.iv.next73.i.i.epil, %.lr.ph64.i.i.epil ], [ %indvars.iv72.i.i.epil.init, %.lr.ph64.i.i.epil.preheader ]
  %epil.iter1694 = phi i64 [ %epil.iter1694.next, %.lr.ph64.i.i.epil ], [ 0, %.lr.ph64.i.i.epil.preheader ]
  %indvars.iv.next73.i.i.epil = add nuw nsw i64 %indvars.iv72.i.i.epil, 1 ; 2 uses
  %i.arq = trunc nuw nsw i64 %indvars.iv.next73.i.i.epil to i32
  %i.arr = mul i32 %.05.lcssa.i775822, %i.arq
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr [4 x i8], ptr %i.ajc, i64 %i.ars ; 2 uses
  %i.aru = getelementptr i8, ptr %i.art, i64 -12
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !21
  %i.arw = getelementptr i8, ptr %i.art, i64 -8
  %i.arx = insertelement <2 x float> poison, float %i.arv, i64 0
  %i.ary = shufflevector <2 x float> %i.arx, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ary, ptr %i.arw, align 4, !tbaa !21
  %epil.iter1694.next = add i64 %epil.iter1694, 1 ; 2 uses
  %epil.iter1694.cmp.not = icmp eq i64 %epil.iter1694.next, %xtraiter1693
  br i1 %epil.iter1694.cmp.not, label %.loopexit.i.i, label %.lr.ph64.i.i.epil, !llvm.loop !96

.loopexit.i.i.loopexit1388.unr-lcssa:             ; preds = %.lr.ph62.i.i
  %lcmp.mod1689.not = icmp eq i64 %xtraiter1687, 0
  br i1 %lcmp.mod1689.not, label %.loopexit.i.i, label %.lr.ph62.i.i.epil.preheader

.lr.ph62.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit1388.unr-lcssa, %.lr.ph62.i.i.preheader
  %indvars.iv67.i.i.epil.init = phi i64 [ 1, %.lr.ph62.i.i.preheader ], [ %indvars.iv.next68.i.i.7, %.loopexit.i.i.loopexit1388.unr-lcssa ]
  %lcmp.mod1690 = icmp ne i64 %xtraiter1687, 0
  tail call void @llvm.assume(i1 %lcmp.mod1690)
  br label %.lr.ph62.i.i.epil

.lr.ph62.i.i.epil:                                ; preds = %.lr.ph62.i.i.epil, %.lr.ph62.i.i.epil.preheader
  %indvars.iv67.i.i.epil = phi i64 [ %indvars.iv.next68.i.i.epil, %.lr.ph62.i.i.epil ], [ %indvars.iv67.i.i.epil.init, %.lr.ph62.i.i.epil.preheader ]
  %epil.iter1688 = phi i64 [ %epil.iter1688.next, %.lr.ph62.i.i.epil ], [ 0, %.lr.ph62.i.i.epil.preheader ]
  %indvars.iv.next68.i.i.epil = add nuw nsw i64 %indvars.iv67.i.i.epil, 1 ; 2 uses
  %i.arz = trunc nuw nsw i64 %indvars.iv.next68.i.i.epil to i32
  %i.asa = mul i32 %.05.lcssa.i775822, %i.arz
  %i.asb = sext i32 %i.asa to i64
  %i.asc = getelementptr [4 x i8], ptr %i.ajc, i64 %i.asb ; 2 uses
  %i.asd = getelementptr i8, ptr %i.asc, i64 -8
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !21
  %i.asf = getelementptr i8, ptr %i.asc, i64 -4
  store float %i.ase, ptr %i.asf, align 4, !tbaa !21
  %epil.iter1688.next = add i64 %epil.iter1688, 1 ; 2 uses
  %epil.iter1688.cmp.not = icmp eq i64 %epil.iter1688.next, %xtraiter1687
  br i1 %epil.iter1688.cmp.not, label %.loopexit.i.i, label %.lr.ph62.i.i.epil, !llvm.loop !97

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit1388.unr-lcssa, %.lr.ph62.i.i.epil, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph64.i.i.epil, %._crit_edge25.split..loopexit.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge25.split..loopexit.i_crit_edge.i ], [ %i.ajr, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.ajr, %.lr.ph64.i.i.epil ], [ %i.ajr, %.lr.ph62.i.i.epil ], [ %i.ajr, %.loopexit.i.i.loopexit1388.unr-lcssa ] ; 2 uses
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %.pre-phi.i
  %i.ash = shl nsw i64 %.pre-phi.i, 2             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ajc, ptr align 4 %i.asg, i64 %i.ash, i1 false)
  %i.asi = and i32 %.05.lcssa.i783, 1
  %.not57.i.i = icmp eq i32 %i.asi, 0
  %i.asj = add nsw i32 %.05.lcssa.i783, -2
  %i.ask = mul nsw i32 %i.asj, %.05.lcssa.i775822
  %i.asl = sext i32 %i.ask to i64                 ; 2 uses
  br i1 %.not57.i.i, label %bb.ai, label %gauss_expand.exit

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %i.asl
  %i.asn = add nsw i32 %.05.lcssa.i783, -3
  %i.aso = mul nsw i32 %i.asn, %.05.lcssa.i775822
  %i.asp = sext i32 %i.aso to i64
  %i.asq = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %i.asp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.asm, ptr align 4 %i.asq, i64 %i.ash, i1 false)
  br label %gauss_expand.exit

._crit_edge.i:                                    ; preds = %ll_expand_gaussian.exit.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %iter.check1277, label %.preheader.i794

bb.aj:                                            ; preds = %ll_expand_gaussian.exit.i, %.preheader.i794
  %indvars.iv.i = phi i64 [ 1, %.preheader.i794 ], [ %indvars.iv.next.i, %ll_expand_gaussian.exit.i ] ; 3 uses
  %i.asr = trunc nuw nsw i64 %indvars.iv.i to i32 ; 2 uses
  %i.ass = lshr i32 %i.asr, 1
  %i.ast = add nsw i32 %i.ass, %i.ajn             ; 12 uses
  %i.asu = and i32 %i.asr, 1
  %i.asv = or disjoint i32 %i.asu, %i.ajp
  switch i32 %i.asv, label %default.unreachable [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.asw = sub nsw i32 %i.ast, %i.aji
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.asx ; 3 uses
  %i.asz = load float, ptr %i.asy, align 4, !tbaa !21
  %i.ata = sext i32 %i.ast to i64
  %i.atb = getelementptr [4 x i8], ptr %i.aja, i64 %i.ata ; 3 uses
  %i.atc = getelementptr i8, ptr %i.atb, i64 -4
  %i.atd = load float, ptr %i.atc, align 4, !tbaa !21
  %i.ate = fadd reassoc nsz arcp contract afn float %i.atd, %i.asz
  %i.atf = load float, ptr %i.atb, align 4, !tbaa !21
  %i.atg = fmul reassoc nsz arcp contract afn float %i.atf, 6.000000e+00
  %i.ath = fadd reassoc nsz arcp contract afn float %i.ate, %i.atg
  %i.ati = getelementptr i8, ptr %i.atb, i64 4
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !21
  %i.atk = fadd reassoc nsz arcp contract afn float %i.ath, %i.atj
  %i.atl = add nsw i32 %i.ast, %i.aji
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.atm ; 2 uses
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !21
  %i.atp = fadd reassoc nsz arcp contract afn float %i.atk, %i.ato
  %i.atq = fmul reassoc nsz arcp contract afn float %i.atp, 6.000000e+00
  %i.atr = getelementptr i8, ptr %i.asy, i64 -4
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !21
  %i.att = fadd reassoc nsz arcp contract afn float %i.ats, %i.atq
  %i.atu = getelementptr i8, ptr %i.asy, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !21
  %i.atw = add i32 %i.ast, %i.ajh
  %i.atx = sext i32 %i.atw to i64
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.atx
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !21
  %i.aua = getelementptr i8, ptr %i.atn, i64 4
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !21
  %i.auc = fadd reassoc nsz arcp contract afn float %i.atz, %i.atv
  %i.aud = fadd reassoc nsz arcp contract afn float %i.auc, %i.att
  %i.aue = fadd reassoc nsz arcp contract afn float %i.aud, %i.aub
  %i.auf = fmul reassoc nsz arcp contract afn float %i.aue, 1.562500e-02
  br label %ll_expand_gaussian.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.aug = sext i32 %i.ast to i64
  %i.auh = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.aug ; 2 uses
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !21
  %i.auj = getelementptr i8, ptr %i.auh, i64 4
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !21
  %i.aul = fadd reassoc nsz arcp contract afn float %i.auk, %i.aui
  %i.aum = fpext reassoc nsz arcp contract afn float %i.aul to double
  %.reass21.i = fmul reassoc nsz arcp contract afn double %i.aum, 3.750000e-01
  %i.aun = sub nsw i32 %i.ast, %i.aji
  %i.auo = sext i32 %i.aun to i64
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.auo
  %i.auq = add nsw i32 %i.ast, %i.aji
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.aur
  %9 = load <2 x float>, ptr %i.aup, align 4, !tbaa !21
  %10 = load <2 x float>, ptr %i.aus, align 4, !tbaa !21
  %11 = shufflevector <2 x float> %10, <2 x float> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %11)
  %i.aut = fpext reassoc nsz arcp contract afn float %12 to double
  %.reass22.i = fmul reassoc nsz arcp contract afn double %i.aut, 6.250000e-02
  %i.auu = fadd reassoc nsz arcp contract afn double %.reass22.i, %.reass21.i
  %i.auv = fptrunc reassoc nsz arcp contract afn double %i.auu to float
  br label %ll_expand_gaussian.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.auw = sext i32 %i.ast to i64
  %i.aux = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.auw ; 2 uses
  %i.auy = add nsw i32 %i.ast, %i.aji
  %i.auz = sext i32 %i.auy to i64
  %i.ava = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.auz
  %i.avb = getelementptr i8, ptr %i.aux, i64 -4
  %i.avc = load float, ptr %i.avb, align 4, !tbaa !21
  %i.avd = add i32 %i.ast, %i.ajh
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.ave
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !21
  %i.avh = load <2 x float>, ptr %i.aux, align 4, !tbaa !21
  %i.avi = load <2 x float>, ptr %i.ava, align 4, !tbaa !21
  %i.avj = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avg, i64 1
  %i.avk = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avc, i64 1
  %i.avl = fadd reassoc nsz arcp contract afn <2 x float> %i.avi, %i.avj
  %i.avm = fadd reassoc nsz arcp contract afn <2 x float> %i.avk, %i.avh
  %i.avn = fadd reassoc nsz arcp contract afn <2 x float> %i.avl, %i.avm
  %i.avo = fpext <2 x float> %i.avn to <2 x double> ; 2 uses
  %i.avp = extractelement <2 x double> %i.avo, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn double %i.avp, 3.750000e-01
  %i.avq = extractelement <2 x double> %i.avo, i64 1
  %.reass20.i = fmul reassoc nsz arcp contract afn double %i.avq, 6.250000e-02
  %i.avr = fadd reassoc nsz arcp contract afn double %.reass20.i, %.reass.i
  %i.avs = fptrunc reassoc nsz arcp contract afn double %i.avr to float
  br label %ll_expand_gaussian.exit.i

default.unreachable:                              ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.aj
  %i.avt = sext i32 %i.ast to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.avt
  %i.avv = add nsw i32 %i.ast, %i.aji
  %i.avw = sext i32 %i.avv to i64
  %i.avx = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.avw
  %13 = load <2 x float>, ptr %i.avu, align 4, !tbaa !21
  %14 = load <2 x float>, ptr %i.avx, align 4, !tbaa !21
  %15 = shufflevector <2 x float> %14, <2 x float> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %16 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %15)
  %i.avy = fmul reassoc nsz arcp contract afn float %16, 2.500000e-01
  br label %ll_expand_gaussian.exit.i

ll_expand_gaussian.exit.i:                        ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i = phi nsz float [ %i.auf, %bb.ak ], [ %i.auv, %bb.al ], [ %i.avs, %bb.am ], [ %i.avy, %bb.an ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %.0.i.i, ptr %gep.i, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i795 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i795, label %._crit_edge.i, label %bb.aj

gauss_expand.exit:                                ; preds = %.loopexit.i.i, %bb.ai
  %i.avz = mul nsw i32 %.pre-phi, %.05.lcssa.i775822
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %i.awa
  %i.awc = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %i.asl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.awb, ptr align 4 %i.awc, i64 %i.ash, i1 false)
  %i.awd = icmp sgt i32 %.05.lcssa.i783, 0
  %i.awe = icmp sgt i32 %.05.lcssa.i775822, 0
  %or.cond1143 = select i1 %i.awd, i1 %i.awe, i1 false
  br i1 %or.cond1143, label %.preheader846.lr.ph.split, label %._crit_edge899.split

.preheader846.lr.ph.split:                        ; preds = %gauss_expand.exit
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1041
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !17
  %i.awh = zext nneg i32 %.05.lcssa.i775822 to i64 ; 2 uses
  %wide.trip.count1039 = zext nneg i32 %.05.lcssa.i783 to i64
  br label %.preheader846

.preheader846:                                    ; preds = %.preheader846.lr.ph.split, %._crit_edge897
  %indvars.iv1036 = phi i64 [ 0, %.preheader846.lr.ph.split ], [ %indvars.iv.next1037, %._crit_edge897 ] ; 3 uses
  %i.awi = mul nuw nsw i64 %indvars.iv1036, %i.awh
  %i.awj = trunc nuw nsw i64 %indvars.iv1036 to i32 ; 2 uses
  br label %bb.ao

._crit_edge899.split:                             ; preds = %._crit_edge897, %gauss_expand.exit
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -1
  %i.awk = icmp sgt i64 %indvars.iv1041, 0
  %indvar.next1669 = add i64 %indvar1668, 1
  br i1 %i.awk, label %bb.ah, label %.preheader844.preheader

._crit_edge897:                                   ; preds = %.critedge
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 2 uses
  %exitcond1040.not = icmp eq i64 %indvars.iv.next1037, %wide.trip.count1039
  br i1 %exitcond1040.not, label %._crit_edge899.split, label %.preheader846

bb.ao:                                            ; preds = %.preheader846, %.critedge
  %indvars.iv1031 = phi i64 [ 0, %.preheader846 ], [ %indvars.iv.next1032, %.critedge ] ; 3 uses
  %i.awl = add nuw nsw i64 %indvars.iv1031, %i.awi ; 2 uses
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.awl
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !21 ; 5 uses
  %i.awo = fcmp reassoc nsz arcp contract afn ugt float %.pre1075, %i.awn
  br i1 %i.awo, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.awp = fcmp reassoc nsz arcp contract afn ugt float %i.ahr, %i.awn
  br i1 %i.awp, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.awq = fcmp reassoc nsz arcp contract afn ugt float %i.ahs, %i.awn
  br i1 %i.awq, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.awr = fcmp reassoc nsz arcp contract afn ugt float %i.aht, %i.awn
  %spec.select1144 = select i1 %i.awr, i32 4, i32 5
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0529.lcssa = phi i32 [ 3, %bb.aq ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ %spec.select1144, %bb.ar ] ; 2 uses
  %i.aws = add nsw i32 %.0529.lcssa, -1
  %i.awt = zext nneg i32 %i.aws to i64            ; 2 uses
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.awt
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !21 ; 2 uses
  %i.aww = fsub reassoc nsz arcp contract afn float %i.awn, %i.awv
  %i.awx = zext nneg i32 %.0529.lcssa to i64      ; 2 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.awx
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !21
  %i.axa = fsub reassoc nsz arcp contract afn float %i.awz, %i.awv
  %i.axb = fdiv reassoc nsz arcp contract afn float %i.aww, %i.axa ; 3 uses
  %i.axc = fcmp reassoc nsz arcp contract afn ogt float %i.axb, 0.000000e+00
  %i.axd = fcmp reassoc nsz arcp contract afn olt float %i.axb, 1.000000e+00
  %spec.select644 = select reassoc nsz arcp contract afn i1 %i.axd, float %i.axb, float 1.000000e+00
  %i.axe = select reassoc nsz arcp contract afn i1 %i.axc, float %spec.select644, float 0.000000e+00
  %i.axf = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.awt ; 2 uses
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.axf, i64 %i.aiy
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !17
  %i.axi = getelementptr inbounds nuw [8 x i8], ptr %i.axf, i64 %indvars.iv1041
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !17
  %i.axk = trunc nuw nsw i64 %indvars.iv1031 to i32 ; 2 uses
  %i.axl = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axh, ptr noundef %i.axj, i32 noundef %i.axk, i32 noundef %i.awj, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783) ; 2 uses
  %i.axm = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.awx ; 2 uses
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.axm, i64 %i.aiy
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !17
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %i.axm, i64 %indvars.iv1041
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !17
  %i.axr = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axo, ptr noundef %i.axq, i32 noundef %i.axk, i32 noundef %i.awj, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783)
  %i.axs = fsub reassoc nsz arcp contract afn float %i.axr, %i.axl
  %i.axt = fmul reassoc nsz arcp contract afn float %i.axs, %i.axe
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.awl ; 2 uses
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !21
  %i.axw = fadd reassoc nsz arcp contract afn float %i.axv, %i.axl
  %i.axx = fadd reassoc nsz arcp contract afn float %i.axw, %i.axt
  store float %i.axx, ptr %i.axu, align 4, !tbaa !21
  %indvars.iv.next1032 = add nuw nsw i64 %indvars.iv1031, 1 ; 2 uses
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1032, %i.awh
  br i1 %exitcond1035.not, label %._crit_edge897, label %bb.ao

.preheader844:                                    ; preds = %.preheader844.preheader, %._crit_edge905
  %indvars.iv1049 = phi i64 [ 0, %.preheader844.preheader ], [ %indvars.iv.next1050, %._crit_edge905 ] ; 3 uses
  %i.axy = add nuw nsw i64 %indvars.iv1049, %i.ahv
  %i.axz = mul nsw i64 %i.axy, %i.ahw
  %i.aya = mul nuw nsw i64 %indvars.iv1049, %i.ahx ; 4 uses
  %gep1142 = getelementptr [4 x i8], ptr %invariant.gep1141, i64 %i.axz ; 4 uses
  %brmerge1774 = select i1 %min.iters.check1303, i1 true, i1 %conflict.rdx
  br i1 %brmerge1774, label %scalar.ph.preheader, label %vector.ph1304

scalar.ph.preheader:                              ; preds = %.preheader844, %vector.body1308
  %indvars.iv1044.ph = phi i64 [ %n.vec1305, %vector.body1308 ], [ 0, %.preheader844 ] ; 6 uses
  %i.ayb = sub nsw i64 %wide.trip.count1047, %indvars.iv1044.ph
  %xtraiter1699 = and i64 %i.ayb, 1
  %lcmp.mod1700.not = icmp eq i64 %xtraiter1699, 0
  br i1 %lcmp.mod1700.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ayc = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044.ph
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !21
  %i.aye = fmul reassoc nsz arcp contract afn float %i.ayd, 1.000000e+02
  %i.ayf = add nuw nsw i64 %indvars.iv1044.ph, %i.aya
  %i.ayg = shl nsw i64 %i.ayf, 2                  ; 3 uses
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayg
  store float %i.aye, ptr %i.ayh, align 4, !tbaa !21
  %i.ayi = or disjoint i64 %i.ayg, 1              ; 2 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayi
  %i.ayk = load float, ptr %i.ayj, align 4, !tbaa !21
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayi
  store float %i.ayk, ptr %i.ayl, align 4, !tbaa !21
  %i.aym = or disjoint i64 %i.ayg, 2              ; 2 uses
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aym
  %i.ayo = load float, ptr %i.ayn, align 4, !tbaa !21
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aym
  store float %i.ayo, ptr %i.ayp, align 4, !tbaa !21
  %indvars.iv.next1045.prol = add nuw nsw i64 %indvars.iv1044.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1044.unr = phi i64 [ %indvars.iv1044.ph, %scalar.ph.preheader ], [ %indvars.iv.next1045.prol, %scalar.ph.prol ]
  %i.ayq = icmp eq i64 %indvars.iv1044.ph, %i.ain
  br i1 %i.ayq, label %._crit_edge905, label %scalar.ph

vector.ph1304:                                    ; preds = %.preheader844
  %broadcast.splatinsert1306 = insertelement <4 x i64> poison, i64 %i.aya, i64 0
  %broadcast.splat1307 = shufflevector <4 x i64> %broadcast.splatinsert1306, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1304
  %index1309 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1316, %vector.body1308 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1304 ], [ %vec.ind.next, %vector.body1308 ] ; 2 uses
  %i.ayr = getelementptr [4 x i8], ptr %gep1142, i64 %index1309
  %wide.load1310 = load <4 x float>, ptr %i.ayr, align 4, !tbaa !21, !alias.scope !160
  %i.ays = fmul reassoc nsz arcp contract afn <4 x float> %wide.load1310, splat (float 1.000000e+02)
  %i.ayt = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat1307
  %i.ayu = shl nsw <4 x i64> %i.ayt, splat (i64 2) ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.ayu
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ays, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.ayv = or disjoint <4 x i64> %i.ayu, splat (i64 1) ; 2 uses
  %i.ayw = extractelement <4 x i64> %i.ayv, i64 0
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayw
  %wide.vec1311 = load <16 x float>, ptr %i.ayx, align 4, !tbaa !21, !alias.scope !163 ; 2 uses
  %strided.vec1312 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1313 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.gep1314 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.ayv
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1312, <4 x ptr> align 4 %wide.gep1314, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.ayy = or disjoint <4 x i64> %i.ayu, splat (i64 2)
  %wide.gep1315 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.ayy
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1313, <4 x ptr> align 4 %wide.gep1315, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %index.next1316 = add nuw i64 %index1309, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ayz = icmp eq i64 %index.next1316, %n.vec1305
  br i1 %i.ayz, label %scalar.ph.preheader, label %vector.body1308, !llvm.loop !102

._crit_edge907.split:                             ; preds = %._crit_edge905
  br i1 %.not, label %.thread825.peel, label %bb.as

._crit_edge905:                                   ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1 ; 2 uses
  %exitcond1053.not = icmp eq i64 %indvars.iv.next1050, %wide.trip.count1052
  br i1 %exitcond1053.not, label %._crit_edge907.split, label %.preheader844

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045.1, %scalar.ph ], [ %indvars.iv1044.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aza = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !21
  %i.azc = fmul reassoc nsz arcp contract afn float %i.azb, 1.000000e+02
  %i.azd = add nuw nsw i64 %indvars.iv1044, %i.aya
  %i.aze = shl nsw i64 %i.azd, 2                  ; 3 uses
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aze
  store float %i.azc, ptr %i.azf, align 4, !tbaa !21
  %i.azg = or disjoint i64 %i.aze, 1              ; 2 uses
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azg
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !21
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azg
end_hunk_0
begin_hunk_1_@ll_laplacian:bb.a

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dh = sext i32 %i.q to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr i8, ptr %i.di, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !21
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %i.dn = add nsw i32 %i.q, %i.m
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !21
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dm, %i.dq
  %i.ds = getelementptr i8, ptr %i.dp, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !21
  %i.du = fadd reassoc nsz arcp contract afn float %i.dr, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 2.500000e-01
  br label %ll_expand_gaussian.exit

ll_expand_gaussian.exit:                          ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi nsz float [ %i.be, %bb.f ], [ %i.cg, %bb.g ], [ %i.dg, %bb.h ], [ %i.dv, %bb.i ]
  %i.dw = mul nsw i32 %4, %3
  %i.dx = add nsw i32 %i.dw, %2
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !21
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %.0.i
  ret float %i.eb
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @local_laplacian_memory_use(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = xor i32 %i.b, 31
  %spec.select = select i1 %i.c, i32 30, i32 %i.d ; 3 uses
  %i.e = shl nuw i32 1, %spec.select              ; 2 uses
  %i.f = add nsw i32 %i.e, %0                     ; 2 uses
  %i.g = add nsw i32 %i.e, %1                     ; 2 uses
  %.not36 = icmp eq i32 %spec.select, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %dl.exit31, %bb.a
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %dl.exit31 ]
  ret i64 %.022.lcssa

bb.b:                                             ; preds = %.lr.ph, %dl.exit31
  %.035 = phi i32 [ 0, %.lr.ph ], [ %i.v, %dl.exit31 ] ; 8 uses
  %.02234 = phi i64 [ 0, %.lr.ph ], [ %i.u, %dl.exit31 ]
  %.not = icmp eq i32 %.035, 0
  br i1 %.not, label %dl.exit31, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %.035, 7                    ; 3 uses
  %i.j = icmp samesign ult i32 %.035, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.035, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.056.i = phi i32 [ %i.h, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.k = sdiv i32 %.056.i, 256                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i26.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i26.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i26.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.056.i.epil.init = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ]
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.l, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.l = sdiv i32 %.056.i.epil, 2                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil, !llvm.loop !227

.lr.ph.i26.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i26.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ], [ %i.l, %.lr.ph.i.epil ]
  %xtraiter47 = and i32 %.035, 7                  ; 3 uses
  %i.m = icmp samesign ult i32 %.035, 8
  br i1 %i.m, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter52 = and i32 %.035, 2147483640
  br label %.lr.ph.i26

._crit_edge.loopexit.i30.unr-lcssa:               ; preds = %.lr.ph.i26
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.i26.preheader
  %.056.i28.epil.init = phi i32 [ %i.i, %.lr.ph.i26.preheader ], [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %.056.i28.epil = phi i32 [ %i.n, %.lr.ph.i26.epil ], [ %.056.i28.epil.init, %.lr.ph.i26.epil.preheader ]
  %epil.iter48 = phi i32 [ %epil.iter48.next, %.lr.ph.i26.epil ], [ 0, %.lr.ph.i26.epil.preheader ]
  %i.n = sdiv i32 %.056.i28.epil, 2               ; 2 uses
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil, !llvm.loop !228

._crit_edge.loopexit.i30:                         ; preds = %.lr.ph.i26.epil, %._crit_edge.loopexit.i30.unr-lcssa
  %.lcssa43 = phi i32 [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ], [ %i.n, %.lr.ph.i26.epil ]
  %i.o = add nsw i32 %.lcssa, 1
  %i.p = add nsw i32 %.lcssa43, 1
  br label %dl.exit31

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %.056.i28 = phi i32 [ %i.i, %.lr.ph.i26.preheader.new ], [ %i.q, %.lr.ph.i26 ]
  %niter53 = phi i32 [ 0, %.lr.ph.i26.preheader.new ], [ %niter53.next.7, %.lr.ph.i26 ]
  %i.q = sdiv i32 %.056.i28, 256                  ; 3 uses
  %niter53.next.7 = add i32 %niter53, 8           ; 2 uses
  %niter53.ncmp.7 = icmp eq i32 %niter53.next.7, %unroll_iter52
  br i1 %niter53.ncmp.7, label %._crit_edge.loopexit.i30.unr-lcssa, label %.lr.ph.i26

dl.exit31:                                        ; preds = %bb.b, %._crit_edge.loopexit.i30
  %.in.in = phi i32 [ %i.o, %._crit_edge.loopexit.i30 ], [ %i.f, %bb.b ]
  %.05.lcssa.i24 = phi i32 [ %i.p, %._crit_edge.loopexit.i30 ], [ %i.g, %bb.b ]
  %.in = sext i32 %.in.in to i64
  %i.r = shl nsw i64 %.in, 5
  %i.s = sext i32 %.05.lcssa.i24 to i64
  %i.t = mul i64 %i.r, %i.s
  %i.u = add i64 %i.t, %.02234                    ; 2 uses
  %i.v = add nuw nsw i32 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @local_laplacian_singlebuffer_size(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = sub nsw i32 30, %i.b
  %i.e = shl nuw nsw i32 2, %i.d
  %i.f = select i1 %i.c, i32 1073741824, i32 %i.e ; 2 uses
  %i.g = add nsw i32 %i.f, %0
  %i.h = add nsw i32 %i.f, %1
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = sext i32 %i.h to i64
  %i.l = mul i64 %i.j, %i.k
  ret i64 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"p1 _ZTS12dt_iop_roi_t", !11, i64 0}
!14 = !{!"local_laplacian_boundary_t", !8, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !13, i64 40, !7, i64 48, !8, i64 288}
!15 = !{!14, !12, i64 8}
!16 = !{!14, !8, i64 288}
!17 = !{!12, !12, i64 0}
!18 = !{!14, !8, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!"float", !7, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = !{!14, !13, i64 32}
!27 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !20, i64 16}
!28 = !{!27, !20, i64 16}
!29 = !{!14, !13, i64 40}
!30 = !{!27, !8, i64 8}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !22, !23}
!36 = distinct !{!36, !22, !23}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !22, !23}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !22, !23}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !22, !23}
!49 = distinct !{!49, !22, !23}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !22, !23}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !22, !23}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !22, !23}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !22, !23}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = distinct !{!92, !22, !23}
!93 = distinct !{!93, !22, !23}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !98}
!102 = distinct !{!102, !22, !23}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !165}
!105 = !{!33}
!106 = !{!34}
!107 = !{!39}
!108 = !{!40}
!109 = !{!46}
!110 = !{!47}
!111 = !{!14, !8, i64 16}
!112 = !{!14, !8, i64 24}
!113 = !{!14, !8, i64 28}
!114 = !{!"dt_codepath_t", !8, i64 0}
!115 = !{!"p1 _ZTS6_GList", !11, i64 0}
!116 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!117 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!118 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!119 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!120 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!121 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!122 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!123 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!124 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!125 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!126 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!127 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!128 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!129 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!130 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!131 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!132 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!133 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!134 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!135 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!136 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!137 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!138 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!139 = !{!"dt_pthread_mutex_t", !7, i64 0}
!140 = !{!"p1 omnipotent char", !11, i64 0}
!141 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!142 = !{!"_Bool", !7, i64 0}
!143 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!144 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!145 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!146 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!147 = !{!"", !141, i64 0, !139, i64 8, !7, i64 48, !142, i64 96, !142, i64 97, !143, i64 104, !144, i64 112, !145, i64 120, !146, i64 128, !146, i64 136, !146, i64 144}
!148 = !{!"double", !7, i64 0}
!149 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!150 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!151 = !{!"long", !7, i64 0}
!152 = !{!"p1 int", !11, i64 0}
!153 = !{!"dt_sys_resources_t", !151, i64 0, !151, i64 8, !152, i64 16, !152, i64 24, !8, i64 32}
!154 = !{!"dt_backthumb_t", !148, i64 0, !148, i64 8, !8, i64 16, !8, i64 20}
!155 = !{!"dt_gimp_t", !8, i64 0, !140, i64 8, !140, i64 16, !8, i64 24, !8, i64 28}
!156 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!157 = !{!"dt_splash_t", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !8, i64 32}
!158 = !{!"darktable_t", !114, i64 0, !8, i64 4, !8, i64 8, !115, i64 16, !115, i64 24, !115, i64 32, !115, i64 40, !116, i64 48, !117, i64 56, !118, i64 64, !119, i64 72, !120, i64 80, !121, i64 88, !122, i64 96, !123, i64 104, !124, i64 112, !125, i64 120, !126, i64 128, !127, i64 136, !128, i64 144, !129, i64 152, !130, i64 160, !131, i64 168, !132, i64 176, !133, i64 184, !134, i64 192, !135, i64 200, !136, i64 208, !137, i64 216, !138, i64 224, !7, i64 232, !139, i64 2792, !139, i64 2832, !139, i64 2872, !139, i64 2912, !139, i64 2952, !139, i64 2992, !140, i64 3032, !140, i64 3040, !140, i64 3048, !140, i64 3056, !140, i64 3064, !140, i64 3072, !140, i64 3080, !140, i64 3088, !140, i64 3096, !140, i64 3104, !140, i64 3112, !140, i64 3120, !140, i64 3128, !147, i64 3136, !115, i64 3288, !148, i64 3296, !115, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !149, i64 3520, !150, i64 3528, !153, i64 3536, !154, i64 3576, !155, i64 3600, !157, i64 3632, !8, i64 3672}
!159 = !{!158, !140, i64 3096}
!160 = !{!99}
!161 = !{!100}
!162 = !{!99, !101}
!163 = !{!101}
!164 = !{!14, !8, i64 20}
!165 = !{!"llvm.loop.peeled.count", i32 1}
!166 = distinct !{!166, !22, !23}
!167 = distinct !{!167, !22}
!168 = distinct !{!168, !23, !22}
!169 = distinct !{!169, !23, !22}
!170 = distinct !{!170, !22, !23}
!171 = distinct !{!171, !22, !23}
!172 = distinct !{!172, !22, !23}
!173 = distinct !{!173, !22, !23}
!174 = distinct !{!174, !22, !23}
!175 = distinct !{!175, !22, !23}
!176 = distinct !{!176, !23, !22}
!177 = distinct !{!177, !22, !23}
!178 = distinct !{!178, !22, !23}
end_hunk_1
