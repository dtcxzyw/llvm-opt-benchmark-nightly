Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  %i.aou = add nuw i64 %.1393923, %index1430      ; 2 uses
  %i.aov = mul nuw nsw i64 %i.aou, 12
  %i.aow = getelementptr i8, ptr %i.aoq, i64 %i.aov ; 2 uses
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aou
  %wide.vec1431 = load <24 x float>, ptr %i.aow, align 4, !tbaa !52, !alias.scope !133, !noalias !135 ; 3 uses
  %strided.vec1432 = shufflevector <24 x float> %wide.vec1431, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1433 = shufflevector <24 x float> %wide.vec1431, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1434 = shufflevector <24 x float> %wide.vec1431, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aoy = fmul <8 x float> %strided.vec1432, %broadcast.splat1428
  %wide.load1435 = load <8 x float>, ptr %i.aox, align 4, !tbaa !52, !alias.scope !137 ; 3 uses
  %i.aoz = fmul <8 x float> %i.aoy, %wide.load1435
  %i.apa = fmul <8 x float> %strided.vec1433, %broadcast.splat1428
  %i.apb = fmul <8 x float> %i.apa, %wide.load1435
  %i.apc = fmul <8 x float> %strided.vec1434, %broadcast.splat1428
  %i.apd = fmul <8 x float> %i.apc, %wide.load1435
  %i.ape = fmul <8 x float> %i.apd, %broadcast.splat1443
  %i.apf = shufflevector <8 x float> %i.aoz, <8 x float> %i.apb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apg = fmul <16 x float> %i.apf, %i.aot
  %i.aph = shufflevector <8 x float> %i.ape, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1444 = shufflevector <16 x float> %i.apg, <16 x float> %i.aph, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1444, ptr %i.aow, align 4, !tbaa !52, !alias.scope !133, !noalias !135
  %index.next1445 = add nuw i64 %index1430, 8     ; 2 uses
  %i.api = icmp eq i64 %index.next1445, %n.vec1426
  br i1 %i.api, label %middle.block1446, label %vector.body1429, !llvm.loop !138

middle.block1446:                                 ; preds = %vector.body1429
  %cmp.n1447 = icmp eq i64 %i.akk, %n.vec1426
  br i1 %cmp.n1447, label %._crit_edge920.2, label %scalar.ph1423.preheader

scalar.ph1423.preheader:                          ; preds = %vector.memcheck1408, %._crit_edge920.1, %middle.block1446
  %.10408918.2.ph = phi i64 [ %.1393923, %vector.memcheck1408 ], [ %.1393923, %._crit_edge920.1 ], [ %i.aor, %middle.block1446 ]
  br label %scalar.ph1423

scalar.ph1423:                                    ; preds = %scalar.ph1423.preheader, %scalar.ph1423
  %.10408918.2 = phi i64 [ %i.aqf, %scalar.ph1423 ], [ %.10408918.2.ph, %scalar.ph1423.preheader ] ; 3 uses
  %.idx501.2 = mul nuw nsw i64 %.10408918.2, 12
  %i.apj = getelementptr i8, ptr %i.aoq, i64 %.idx501.2 ; 4 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918.2 ; 3 uses
  %i.apl = load float, ptr %i.apj, align 4, !tbaa !52
  %i.apm = fmul float %i.apl, %i.ajr
  %i.apn = load float, ptr %i.apk, align 4, !tbaa !52
  %i.apo = fmul float %i.apm, %i.apn
  %i.app = load float, ptr %i.aku, align 4, !tbaa !52
  %i.apq = fmul float %i.apo, %i.app
  store float %i.apq, ptr %i.apj, align 4, !tbaa !52
  %i.apr = getelementptr i8, ptr %i.apj, i64 4    ; 2 uses
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !52
  %i.apt = fmul float %i.aps, %i.ajr
  %i.apu = load float, ptr %i.apk, align 4, !tbaa !52
  %i.apv = fmul float %i.apt, %i.apu
  %i.apw = load float, ptr %i.aku, align 4, !tbaa !52
  %i.apx = fmul float %i.apv, %i.apw
  store float %i.apx, ptr %i.apr, align 4, !tbaa !52
  %i.apy = getelementptr i8, ptr %i.apj, i64 8    ; 2 uses
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !52
  %i.aqa = fmul float %i.apz, %i.ajr
  %i.aqb = load float, ptr %i.apk, align 4, !tbaa !52
  %i.aqc = fmul float %i.aqa, %i.aqb
  %i.aqd = load float, ptr %i.aku, align 4, !tbaa !52
  %i.aqe = fmul float %i.aqc, %i.aqd
  store float %i.aqe, ptr %i.apy, align 4, !tbaa !52
  %i.aqf = add nuw nsw i64 %.10408918.2, 1        ; 2 uses
  %i.aqg = icmp slt i64 %i.aqf, %.pre-phi10541249
  br i1 %i.aqg, label %scalar.ph1423, label %._crit_edge920.2, !llvm.loop !139

._crit_edge920.2:                                 ; preds = %scalar.ph1423, %middle.block1446
  %i.aqh = add nuw nsw i64 %.1393923, 1           ; 2 uses
  %exitcond1018.not = icmp eq i64 %i.aqh, %.pre-phi10541249
  br i1 %exitcond1018.not, label %.preheader848, label %.preheader850, !llvm.loop !140

.preheader847:                                    ; preds = %bb.dt, %.preheader847.preheader.new
  %.2394925 = phi i64 [ 0, %.preheader847.preheader.new ], [ %i.ary, %bb.dt ] ; 7 uses
  %niter1657 = phi i64 [ 0, %.preheader847.preheader.new ], [ %niter1657.next.3, %bb.dt ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.ph, i64 %.2394925
  %i.aqi = mul nuw nsw i64 %.2394925, %i.pc
  %i.aqj = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqi
  br label %bb.dp

.lr.ph928.unr-lcssa:                              ; preds = %bb.dt
  %i.aqk = and i32 %i.pb, 3
  %lcmp.mod1654.not = icmp eq i32 %i.aqk, 0
  br i1 %lcmp.mod1654.not, label %.lr.ph928, label %.preheader847.epil.preheader

.preheader847.epil.preheader:                     ; preds = %.lr.ph928.unr-lcssa, %.preheader847.preheader
  %.2394925.epil.init = phi i64 [ 0, %.preheader847.preheader ], [ %i.ary, %.lr.ph928.unr-lcssa ]
  %i.aql = and i32 %i.pb, 3
  %lcmp.mod1655 = icmp ne i32 %i.aql, 0
  call void @llvm.assume(i1 %lcmp.mod1655)
  br label %.preheader847.epil

.preheader847.epil:                               ; preds = %bb.do, %.preheader847.epil.preheader
  %.2394925.epil = phi i64 [ %i.aqt, %bb.do ], [ %.2394925.epil.init, %.preheader847.epil.preheader ] ; 4 uses
  %epil.iter1653 = phi i64 [ %epil.iter1653.next, %bb.do ], [ 0, %.preheader847.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.ph, i64 %.2394925.epil
  %i.aqm = mul nuw nsw i64 %.2394925.epil, %i.pc
  %i.aqn = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqm
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.preheader847.epil
  %.11409924.epil = phi i64 [ %.2394925.epil, %.preheader847.epil ], [ %i.aqr, %bb.dn ] ; 3 uses
  %i.aqo = getelementptr [4 x i8], ptr %i.aqn, i64 %.11409924.epil
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !52
  %i.aqq = mul nuw nsw i64 %.11409924.epil, %i.pc
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.aqq
  store float %i.aqp, ptr %gep.epil, align 4, !tbaa !52
  %i.aqr = add nuw nsw i64 %.11409924.epil, 1     ; 2 uses
  %i.aqs = icmp slt i64 %i.aqr, %i.pc
  br i1 %i.aqs, label %bb.dn, label %bb.do, !llvm.loop !141

bb.do:                                            ; preds = %bb.dn
  %i.aqt = add nuw nsw i64 %.2394925.epil, 1
  %epil.iter1653.next = add i64 %epil.iter1653, 1 ; 2 uses
  %epil.iter1653.cmp.not = icmp eq i64 %epil.iter1653.next, %xtraiter1652
  br i1 %epil.iter1653.cmp.not, label %.lr.ph928, label %.preheader847.epil, !llvm.loop !142

.lr.ph928:                                        ; preds = %bb.do, %.lr.ph928.unr-lcssa
  %.12410500 = add nuw nsw i64 %i.pc, 1           ; 9 uses
  %xtraiter1659 = and i64 %i.pc, 7
  %i.aqu = icmp ult i32 %i.pb, 8
  br i1 %i.aqu, label %.epil.preheader1658, label %.lr.ph928.new

.lr.ph928.new:                                    ; preds = %.lr.ph928
  %unroll_iter1664 = and i64 %i.pc, 2147483640
  br label %bb.du

bb.dp:                                            ; preds = %.preheader847, %bb.dp
  %.11409924 = phi i64 [ %.2394925, %.preheader847 ], [ %i.aqy, %bb.dp ] ; 3 uses
  %i.aqv = getelementptr [4 x i8], ptr %i.aqj, i64 %.11409924
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !52
  %i.aqx = mul nuw nsw i64 %.11409924, %i.pc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aqx
  store float %i.aqw, ptr %gep, align 4, !tbaa !52
  %i.aqy = add nuw nsw i64 %.11409924, 1          ; 2 uses
  %i.aqz = icmp slt i64 %i.aqy, %i.pc
  br i1 %i.aqz, label %bb.dp, label %.preheader847.1, !llvm.loop !141

.preheader847.1:                                  ; preds = %bb.dp
  %i.ara = or disjoint i64 %.2394925, 1           ; 3 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.ph, i64 %i.ara
  %i.arb = mul nuw nsw i64 %i.ara, %i.pc
  %i.arc = getelementptr [4 x i8], ptr %i.ph, i64 %i.arb
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.preheader847.1
  %.11409924.1 = phi i64 [ %i.ara, %.preheader847.1 ], [ %i.arg, %bb.dq ] ; 3 uses
  %i.ard = getelementptr [4 x i8], ptr %i.arc, i64 %.11409924.1
  %i.are = load float, ptr %i.ard, align 4, !tbaa !52
  %i.arf = mul nuw nsw i64 %.11409924.1, %i.pc
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.arf
  store float %i.are, ptr %gep.1, align 4, !tbaa !52
  %i.arg = add nuw nsw i64 %.11409924.1, 1        ; 2 uses
  %i.arh = icmp slt i64 %i.arg, %i.pc
  br i1 %i.arh, label %bb.dq, label %.preheader847.2, !llvm.loop !141

.preheader847.2:                                  ; preds = %bb.dq
  %i.ari = or disjoint i64 %.2394925, 2           ; 3 uses
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.ph, i64 %i.ari
  %i.arj = mul nuw nsw i64 %i.ari, %i.pc
  %i.ark = getelementptr [4 x i8], ptr %i.ph, i64 %i.arj
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.preheader847.2
  %.11409924.2 = phi i64 [ %i.ari, %.preheader847.2 ], [ %i.aro, %bb.dr ] ; 3 uses
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %.11409924.2
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !52
  %i.arn = mul nuw nsw i64 %.11409924.2, %i.pc
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.arn
  store float %i.arm, ptr %gep.2, align 4, !tbaa !52
  %i.aro = add nuw nsw i64 %.11409924.2, 1        ; 2 uses
  %i.arp = icmp slt i64 %i.aro, %i.pc
  br i1 %i.arp, label %bb.dr, label %.preheader847.3, !llvm.loop !141

.preheader847.3:                                  ; preds = %bb.dr
  %i.arq = or disjoint i64 %.2394925, 3           ; 3 uses
  %invariant.gep.3 = getelementptr [4 x i8], ptr %i.ph, i64 %i.arq
  %i.arr = mul nuw nsw i64 %i.arq, %i.pc
  %i.ars = getelementptr [4 x i8], ptr %i.ph, i64 %i.arr
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.preheader847.3
  %.11409924.3 = phi i64 [ %i.arq, %.preheader847.3 ], [ %i.arw, %bb.ds ] ; 3 uses
  %i.art = getelementptr [4 x i8], ptr %i.ars, i64 %.11409924.3
  %i.aru = load float, ptr %i.art, align 4, !tbaa !52
  %i.arv = mul nuw nsw i64 %.11409924.3, %i.pc
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.arv
  store float %i.aru, ptr %gep.3, align 4, !tbaa !52
  %i.arw = add nuw nsw i64 %.11409924.3, 1        ; 2 uses
  %i.arx = icmp slt i64 %i.arw, %i.pc
  br i1 %i.arx, label %bb.ds, label %bb.dt, !llvm.loop !141

bb.dt:                                            ; preds = %bb.ds
  %i.ary = add nuw nsw i64 %.2394925, 4           ; 2 uses
  %niter1657.next.3 = add i64 %niter1657, 4       ; 2 uses
  %niter1657.ncmp.3 = icmp eq i64 %niter1657.next.3, %unroll_iter1656
  br i1 %niter1657.ncmp.3, label %.lr.ph928.unr-lcssa, label %.preheader847, !llvm.loop !143

bb.du:                                            ; preds = %bb.du, %.lr.ph928.new
  %.12410927 = phi i64 [ 0, %.lr.ph928.new ], [ %i.atm, %bb.du ] ; 9 uses
  %.0435926 = phi float [ 0.000000e+00, %.lr.ph928.new ], [ %i.atl, %bb.du ]
  %niter1665 = phi i64 [ 0, %.lr.ph928.new ], [ %niter1665.next.7, %bb.du ]
  %i.arz = mul i64 %.12410927, %.12410500
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.arz
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !52
  %i.asc = fadd float %.0435926, %i.asb
  %i.asd = or disjoint i64 %.12410927, 1
  %i.ase = mul i64 %i.asd, %.12410500
  %i.asf = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.ase
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !52
  %i.ash = fadd float %i.asc, %i.asg
  %i.asi = or disjoint i64 %.12410927, 2
  %i.asj = mul i64 %i.asi, %.12410500
  %i.ask = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.asj
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !52
  %i.asm = fadd float %i.ash, %i.asl
  %i.asn = or disjoint i64 %.12410927, 3
  %i.aso = mul i64 %i.asn, %.12410500
  %i.asp = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.aso
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !52
  %i.asr = fadd float %i.asm, %i.asq
  %i.ass = or disjoint i64 %.12410927, 4
  %i.ast = mul i64 %i.ass, %.12410500
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.ast
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !52
  %i.asw = fadd float %i.asr, %i.asv
  %i.asx = or disjoint i64 %.12410927, 5
  %i.asy = mul i64 %i.asx, %.12410500
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.asy
  %i.ata = load float, ptr %i.asz, align 4, !tbaa !52
  %i.atb = fadd float %i.asw, %i.ata
  %i.atc = or disjoint i64 %.12410927, 6
  %i.atd = mul i64 %i.atc, %.12410500
  %i.ate = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.atd
  %i.atf = load float, ptr %i.ate, align 4, !tbaa !52
  %i.atg = fadd float %i.atb, %i.atf
  %i.ath = or disjoint i64 %.12410927, 7
  %i.ati = mul i64 %i.ath, %.12410500
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.ati
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !52
  %i.atl = fadd float %i.atg, %i.atk              ; 3 uses
  %i.atm = add nuw nsw i64 %.12410927, 8          ; 2 uses
  %niter1665.next.7 = add i64 %niter1665, 8       ; 2 uses
  %niter1665.ncmp.7 = icmp eq i64 %niter1665.next.7, %unroll_iter1664
  br i1 %niter1665.ncmp.7, label %._crit_edge929.loopexit.unr-lcssa, label %bb.du, !llvm.loop !144

._crit_edge929.loopexit.unr-lcssa:                ; preds = %bb.du
  %i.atn = and i32 %i.pb, 7
  %lcmp.mod1661.not = icmp eq i32 %i.atn, 0
  br i1 %lcmp.mod1661.not, label %._crit_edge929, label %.epil.preheader1658

.epil.preheader1658:                              ; preds = %._crit_edge929.loopexit.unr-lcssa, %.lr.ph928
  %.12410927.epil.init = phi i64 [ 0, %.lr.ph928 ], [ %i.atm, %._crit_edge929.loopexit.unr-lcssa ]
  %.0435926.epil.init = phi float [ 0.000000e+00, %.lr.ph928 ], [ %i.atl, %._crit_edge929.loopexit.unr-lcssa ]
  %i.ato = and i32 %i.pb, 7
  %lcmp.mod1663 = icmp ne i32 %i.ato, 0
  call void @llvm.assume(i1 %lcmp.mod1663)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.epil.preheader1658
  %.12410927.epil = phi i64 [ %.12410927.epil.init, %.epil.preheader1658 ], [ %i.att, %bb.dv ] ; 2 uses
  %.0435926.epil = phi float [ %.0435926.epil.init, %.epil.preheader1658 ], [ %i.ats, %bb.dv ]
  %epil.iter1660 = phi i64 [ 0, %.epil.preheader1658 ], [ %epil.iter1660.next, %bb.dv ]
  %i.atp = mul i64 %.12410927.epil, %.12410500
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.atp
  %i.atr = load float, ptr %i.atq, align 4, !tbaa !52
  %i.ats = fadd float %.0435926.epil, %i.atr      ; 2 uses
  %i.att = add nuw nsw i64 %.12410927.epil, 1
  %epil.iter1660.next = add i64 %epil.iter1660, 1 ; 2 uses
  %epil.iter1660.cmp.not = icmp eq i64 %epil.iter1660.next, %xtraiter1659
  br i1 %epil.iter1660.cmp.not, label %._crit_edge929, label %bb.dv, !llvm.loop !145

._crit_edge929:                                   ; preds = %._crit_edge929.loopexit.unr-lcssa, %bb.dv, %.preheader848
  %.0435.lcssa = phi float [ 0.000000e+00, %.preheader848 ], [ %i.atl, %._crit_edge929.loopexit.unr-lcssa ], [ %i.ats, %bb.dv ] ; 2 uses
  %i.atu = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.atv = fpext float %.0435.lcssa to double     ; 3 uses
  %i.atw = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !30, !range !32, !noundef !33
  %i.atx = trunc nuw i8 %i.atw to i1
  %i.aty = select i1 %i.atx, ptr @.str.70, ptr @.str.71
  %i.atz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atu, ptr noundef nonnull @.str.69, double noundef %i.atv, ptr noundef nonnull %i.aty) #28 ; 0 uses
  %i.aua = load ptr, ptr %i.r, align 8, !tbaa !23
  %.not468 = icmp eq ptr %i.aua, null
  br i1 %.not468, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge929
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %i.aub = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull @.str.72)
          to label %bb.dy unwind label %bb.ec     ; 2 uses

bb.dy:                                            ; preds = %bb.dx
  %i.auc = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i575 = icmp eq ptr %i.aud, null
  br i1 %.not.i.i.i575, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.auc, ptr noundef nonnull %i.aud) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576: ; preds = %bb.dz, %bb.dy
  %i.aue = load ptr, ptr %17, align 8, !tbaa !26  ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aug = icmp eq ptr %i.aue, %i.auf
  br i1 %i.aug, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i577: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576
  %i.auh = load i64, ptr %i.auf, align 8, !tbaa !29
  %i.aui = add i64 %i.auh, 1
  call void @_ZdlPvm(ptr noundef %i.aue, i64 noundef %i.aui) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit579

_ZNSt10filesystem7__cxx114pathD2Ev.exit579:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br i1 %i.alv, label %.preheader845, label %._crit_edge935.split

.preheader845:                                    ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit579, %._crit_edge933
  %.3395934 = phi i64 [ %i.auy, %._crit_edge933 ], [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit579 ] ; 2 uses
  %i.auj = mul nuw nsw i64 %.3395934, %i.pc
  %i.auk = getelementptr [4 x i8], ptr %i.ph, i64 %i.auj
  br label %bb.ea

bb.ea:                                            ; preds = %.preheader845, %bb.ea
  %.13411931 = phi i64 [ 0, %.preheader845 ], [ %i.auu, %bb.ea ] ; 2 uses
  %i.aul = getelementptr [4 x i8], ptr %i.auk, i64 %.13411931 ; 2 uses
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !52
  %i.aun = fpext float %i.aum to double
  %i.auo = getelementptr i8, ptr %i.aul, i64 4
  %i.aup = load <2 x float>, ptr %i.auo, align 4, !tbaa !52
  %i.auq = fpext <2 x float> %i.aup to <2 x double> ; 2 uses
  %i.aur = extractelement <2 x double> %i.auq, i64 0
  %i.aus = extractelement <2 x double> %i.auq, i64 1
  %i.aut = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aub, ptr noundef nonnull @.str.73, double noundef %i.aun, double noundef %i.aur, double noundef %i.aus) #24 ; 0 uses
  %i.auu = add nuw nsw i64 %.13411931, 3          ; 2 uses
  %i.auv = icmp slt i64 %i.auu, %i.pc
  br i1 %i.auv, label %bb.ea, label %._crit_edge933, !llvm.loop !146

bb.eb:                                            ; preds = %bb.dw
  %i.auw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dx
  %i.aux = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #24
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn469 = phi { ptr, i32 } [ %i.aux, %bb.ec ], [ %i.auw, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.loopexit.split-lp

._crit_edge933:                                   ; preds = %bb.ea
  %i.auy = add nuw nsw i64 %.3395934, 1           ; 2 uses
  %exitcond1023.not = icmp eq i64 %i.auy, %i.pc
  br i1 %exitcond1023.not, label %._crit_edge935.split, label %.preheader845, !llvm.loop !147

._crit_edge935.split:                             ; preds = %._crit_edge933, %_ZNSt10filesystem7__cxx114pathD2Ev.exit579
  %i.auz = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.aub)
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ee:                                            ; preds = %._crit_edge935.split, %._crit_edge929
  %i.ava = load ptr, ptr %i.s, align 8, !tbaa !23
  %.not471 = icmp eq ptr %i.ava, null
  br i1 %.not471, label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.avb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.50, i32 noundef 496, i64 noundef range(i64 -2147483648, 2147483648) %i.pc, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader: ; preds = %bb.ef
  br i1 %i.alv, label %.lr.ph942, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge

.lr.ph942:                                        ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 1, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 3 uses
  %.4396941 = phi i64 [ %i.axb, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 5 uses
  %.0423940 = phi float [ %.2425.lcssa, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 2 uses
  %.0429939 = phi float [ %.2431.lcssa, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 2 uses
  %i.avc = mul nuw nsw i64 %.4396941, %i.pc
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.avc ; 11 uses
  %i.ave = getelementptr inbounds nuw [8 x i8], ptr %i.avb, i64 %.4396941
  store ptr %i.avd, ptr %i.ave, align 8, !tbaa !74
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.4396941
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !52 ; 9 uses
  %xtraiter1667 = and i64 %indvars.iv, 7          ; 3 uses
  %i.avh = icmp samesign ult i64 %.4396941, 7
  br i1 %i.avh, label %.epil.preheader1666, label %.lr.ph942.new

.lr.ph942.new:                                    ; preds = %.lr.ph942
  %unroll_iter1673 = and i64 %indvars.iv, 9223372036854775800
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.lr.ph942.new
  %.14412938 = phi i64 [ 0, %.lr.ph942.new ], [ %i.awv, %bb.eg ] ; 9 uses
  %.1424937 = phi float [ %.0423940, %.lr.ph942.new ], [ %.2425.7, %bb.eg ] ; 2 uses
  %.1430936 = phi float [ %.0429939, %.lr.ph942.new ], [ %.2431.7, %bb.eg ] ; 2 uses
  %niter1674 = phi i64 [ 0, %.lr.ph942.new ], [ %niter1674.next.7, %bb.eg ]
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !52 ; 3 uses
  %i.avk = fcmp olt float %i.avj, %.1430936
  %.2431 = select i1 %i.avk, float %i.avj, float %.1430936 ; 2 uses
  %i.avl = fcmp ogt float %i.avg, %.1424937
  %.2425 = select i1 %i.avl, float %i.avj, float %.1424937 ; 2 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 4
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !52 ; 3 uses
  %i.avp = fcmp olt float %i.avo, %.2431
  %.2431.1 = select i1 %i.avp, float %i.avo, float %.2431 ; 2 uses
  %i.avq = fcmp ogt float %i.avg, %.2425
  %.2425.1 = select i1 %i.avq, float %i.avo, float %.2425 ; 2 uses
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 8
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !52 ; 3 uses
  %i.avu = fcmp olt float %i.avt, %.2431.1
  %.2431.2 = select i1 %i.avu, float %i.avt, float %.2431.1 ; 2 uses
  %i.avv = fcmp ogt float %i.avg, %.2425.1
  %.2425.2 = select i1 %i.avv, float %i.avt, float %.2425.1 ; 2 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 12
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !52 ; 3 uses
  %i.avz = fcmp olt float %i.avy, %.2431.2
  %.2431.3 = select i1 %i.avz, float %i.avy, float %.2431.2 ; 2 uses
  %i.awa = fcmp ogt float %i.avg, %.2425.2
  %.2425.3 = select i1 %i.awa, float %i.avy, float %.2425.2 ; 2 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 16
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !52 ; 3 uses
  %i.awe = fcmp olt float %i.awd, %.2431.3
  %.2431.4 = select i1 %i.awe, float %i.awd, float %.2431.3 ; 2 uses
  %i.awf = fcmp ogt float %i.avg, %.2425.3
  %.2425.4 = select i1 %i.awf, float %i.awd, float %.2425.3 ; 2 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 20
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !52 ; 3 uses
  %i.awj = fcmp olt float %i.awi, %.2431.4
  %.2431.5 = select i1 %i.awj, float %i.awi, float %.2431.4 ; 2 uses
  %i.awk = fcmp ogt float %i.avg, %.2425.4
  %.2425.5 = select i1 %i.awk, float %i.awi, float %.2425.4 ; 2 uses
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 24
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !52 ; 3 uses
  %i.awo = fcmp olt float %i.awn, %.2431.5
  %.2431.6 = select i1 %i.awo, float %i.awn, float %.2431.5 ; 2 uses
  %i.awp = fcmp ogt float %i.avg, %.2425.5
  %.2425.6 = select i1 %i.awp, float %i.awn, float %.2425.5 ; 2 uses
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %.14412938
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 28
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !52 ; 3 uses
  %i.awt = fcmp olt float %i.aws, %.2431.6
  %.2431.7 = select i1 %i.awt, float %i.aws, float %.2431.6 ; 3 uses
  %i.awu = fcmp ogt float %i.avg, %.2425.6
  %.2425.7 = select i1 %i.awu, float %i.aws, float %.2425.6 ; 3 uses
  %i.awv = add nuw nsw i64 %.14412938, 8          ; 2 uses
  %niter1674.next.7 = add i64 %niter1674, 8       ; 2 uses
  %niter1674.ncmp.7 = icmp eq i64 %niter1674.next.7, %unroll_iter1673
  br i1 %niter1674.ncmp.7, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.unr-lcssa, label %bb.eg, !llvm.loop !148

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.unr-lcssa: ; preds = %bb.eg
  %lcmp.mod1669.not = icmp eq i64 %xtraiter1667, 0
  br i1 %lcmp.mod1669.not, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit, label %.epil.preheader1666

end_hunk_0
