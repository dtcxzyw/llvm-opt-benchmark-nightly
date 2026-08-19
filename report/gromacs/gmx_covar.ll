inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  %i.aoz = add nuw i64 %.1393923, %index1436      ; 2 uses
  %i.apa = mul nuw nsw i64 %i.aoz, 12
  %i.apb = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aoz
  %wide.vec1437 = load <24 x float>, ptr %i.apb, align 4, !tbaa !52, !alias.scope !133, !noalias !135 ; 3 uses
  %strided.vec1438 = shufflevector <24 x float> %wide.vec1437, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1439 = shufflevector <24 x float> %wide.vec1437, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1440 = shufflevector <24 x float> %wide.vec1437, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.apd = fmul <8 x float> %strided.vec1438, %broadcast.splat1434
  %wide.load1441 = load <8 x float>, ptr %i.apc, align 4, !tbaa !52, !alias.scope !137 ; 3 uses
  %i.ape = fmul <8 x float> %i.apd, %wide.load1441
  %i.apf = fmul <8 x float> %strided.vec1439, %broadcast.splat1434
  %i.apg = fmul <8 x float> %i.apf, %wide.load1441
  %i.aph = fmul <8 x float> %strided.vec1440, %broadcast.splat1434
  %i.api = fmul <8 x float> %i.aph, %wide.load1441
  %i.apj = fmul <8 x float> %i.api, %broadcast.splat1449
  %i.apk = shufflevector <8 x float> %i.ape, <8 x float> %i.apg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apl = fmul <16 x float> %i.apk, %i.aoy
  %i.apm = shufflevector <8 x float> %i.apj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1450 = shufflevector <16 x float> %i.apl, <16 x float> %i.apm, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1450, ptr %i.apb, align 4, !tbaa !52, !alias.scope !133, !noalias !135
  %index.next1451 = add nuw i64 %index1436, 8     ; 2 uses
  %i.apn = icmp eq i64 %index.next1451, %n.vec1432
  br i1 %i.apn, label %middle.block1452, label %vector.body1435, !llvm.loop !138

middle.block1452:                                 ; preds = %vector.body1435
  %cmp.n1453 = icmp eq i64 %i.akm, %n.vec1432
  br i1 %cmp.n1453, label %._crit_edge920.2, label %scalar.ph1429.preheader

scalar.ph1429.preheader:                          ; preds = %vector.memcheck1413, %._crit_edge920.1, %middle.block1452
  %.10408918.2.ph = phi i64 [ %.1393923, %vector.memcheck1413 ], [ %.1393923, %._crit_edge920.1 ], [ %i.aow, %middle.block1452 ]
  br label %scalar.ph1429

scalar.ph1429:                                    ; preds = %scalar.ph1429.preheader, %scalar.ph1429
  %.10408918.2 = phi i64 [ %i.aqk, %scalar.ph1429 ], [ %.10408918.2.ph, %scalar.ph1429.preheader ] ; 3 uses
  %.idx501.2 = mul nuw nsw i64 %.10408918.2, 12
  %i.apo = getelementptr i8, ptr %i.aov, i64 %.idx501.2 ; 4 uses
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918.2 ; 3 uses
  %i.apq = load float, ptr %i.apo, align 4, !tbaa !52
  %i.apr = fmul float %i.apq, %i.ajt
  %i.aps = load float, ptr %i.app, align 4, !tbaa !52
  %i.apt = fmul float %i.apr, %i.aps
  %i.apu = load float, ptr %i.akw, align 4, !tbaa !52
  %i.apv = fmul float %i.apt, %i.apu
  store float %i.apv, ptr %i.apo, align 4, !tbaa !52
  %i.apw = getelementptr i8, ptr %i.apo, i64 4    ; 2 uses
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !52
  %i.apy = fmul float %i.apx, %i.ajt
  %i.apz = load float, ptr %i.app, align 4, !tbaa !52
  %i.aqa = fmul float %i.apy, %i.apz
  %i.aqb = load float, ptr %i.akw, align 4, !tbaa !52
  %i.aqc = fmul float %i.aqa, %i.aqb
  store float %i.aqc, ptr %i.apw, align 4, !tbaa !52
  %i.aqd = getelementptr i8, ptr %i.apo, i64 8    ; 2 uses
  %i.aqe = load float, ptr %i.aqd, align 4, !tbaa !52
  %i.aqf = fmul float %i.aqe, %i.ajt
  %i.aqg = load float, ptr %i.app, align 4, !tbaa !52
  %i.aqh = fmul float %i.aqf, %i.aqg
  %i.aqi = load float, ptr %i.akw, align 4, !tbaa !52
  %i.aqj = fmul float %i.aqh, %i.aqi
  store float %i.aqj, ptr %i.aqd, align 4, !tbaa !52
  %i.aqk = add nuw nsw i64 %.10408918.2, 1        ; 2 uses
  %i.aql = icmp slt i64 %i.aqk, %.pre-phi10541249
  br i1 %i.aql, label %scalar.ph1429, label %._crit_edge920.2, !llvm.loop !139

._crit_edge920.2:                                 ; preds = %scalar.ph1429, %middle.block1452
  %i.aqm = add nuw nsw i64 %.1393923, 1           ; 2 uses
  %exitcond1018.not = icmp eq i64 %i.aqm, %.pre-phi10541249
  br i1 %exitcond1018.not, label %.preheader848, label %.preheader850, !llvm.loop !140

.preheader847:                                    ; preds = %bb.dt, %.preheader847.preheader.new
  %.2394925 = phi i64 [ 0, %.preheader847.preheader.new ], [ %i.asd, %bb.dt ] ; 7 uses
  %niter1667 = phi i64 [ 0, %.preheader847.preheader.new ], [ %niter1667.next.3, %bb.dt ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.ph, i64 %.2394925
  %i.aqn = mul nuw nsw i64 %.2394925, %i.pc
  %i.aqo = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqn
  br label %bb.dp

.lr.ph928.unr-lcssa:                              ; preds = %bb.dt
  %i.aqp = and i32 %i.pb, 3
  %lcmp.mod1664.not = icmp eq i32 %i.aqp, 0
  br i1 %lcmp.mod1664.not, label %.lr.ph928, label %.preheader847.epil.preheader

.preheader847.epil.preheader:                     ; preds = %.lr.ph928.unr-lcssa, %.preheader847.preheader
  %.2394925.epil.init = phi i64 [ 0, %.preheader847.preheader ], [ %i.asd, %.lr.ph928.unr-lcssa ]
  %i.aqq = and i32 %i.pb, 3
  %lcmp.mod1665 = icmp ne i32 %i.aqq, 0
  call void @llvm.assume(i1 %lcmp.mod1665)
  br label %.preheader847.epil

.preheader847.epil:                               ; preds = %bb.do, %.preheader847.epil.preheader
  %.2394925.epil = phi i64 [ %i.aqy, %bb.do ], [ %.2394925.epil.init, %.preheader847.epil.preheader ] ; 4 uses
  %epil.iter1663 = phi i64 [ %epil.iter1663.next, %bb.do ], [ 0, %.preheader847.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.ph, i64 %.2394925.epil
  %i.aqr = mul nuw nsw i64 %.2394925.epil, %i.pc
  %i.aqs = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqr
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.preheader847.epil
  %.11409924.epil = phi i64 [ %.2394925.epil, %.preheader847.epil ], [ %i.aqw, %bb.dn ] ; 3 uses
  %i.aqt = getelementptr [4 x i8], ptr %i.aqs, i64 %.11409924.epil
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !52
  %i.aqv = mul nuw nsw i64 %.11409924.epil, %i.pc
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.aqv
  store float %i.aqu, ptr %gep.epil, align 4, !tbaa !52
  %i.aqw = add nuw nsw i64 %.11409924.epil, 1     ; 2 uses
  %i.aqx = icmp slt i64 %i.aqw, %i.pc
  br i1 %i.aqx, label %bb.dn, label %bb.do, !llvm.loop !141

bb.do:                                            ; preds = %bb.dn
  %i.aqy = add nuw nsw i64 %.2394925.epil, 1
  %epil.iter1663.next = add i64 %epil.iter1663, 1 ; 2 uses
  %epil.iter1663.cmp.not = icmp eq i64 %epil.iter1663.next, %xtraiter1662
  br i1 %epil.iter1663.cmp.not, label %.lr.ph928, label %.preheader847.epil, !llvm.loop !142

.lr.ph928:                                        ; preds = %bb.do, %.lr.ph928.unr-lcssa
  %.12410500 = add nuw nsw i64 %i.pc, 1           ; 9 uses
  %xtraiter1669 = and i64 %i.pc, 7
  %i.aqz = icmp ult i32 %i.pb, 8
  br i1 %i.aqz, label %.epil.preheader1668, label %.lr.ph928.new

.lr.ph928.new:                                    ; preds = %.lr.ph928
  %unroll_iter1674 = and i64 %i.pc, 2147483640
  br label %bb.du

bb.dp:                                            ; preds = %.preheader847, %bb.dp
  %.11409924 = phi i64 [ %.2394925, %.preheader847 ], [ %i.ard, %bb.dp ] ; 3 uses
  %i.ara = getelementptr [4 x i8], ptr %i.aqo, i64 %.11409924
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !52
  %i.arc = mul nuw nsw i64 %.11409924, %i.pc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.arc
  store float %i.arb, ptr %gep, align 4, !tbaa !52
  %i.ard = add nuw nsw i64 %.11409924, 1          ; 2 uses
  %i.are = icmp slt i64 %i.ard, %i.pc
  br i1 %i.are, label %bb.dp, label %.preheader847.1, !llvm.loop !141

.preheader847.1:                                  ; preds = %bb.dp
  %i.arf = or disjoint i64 %.2394925, 1           ; 3 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.ph, i64 %i.arf
  %i.arg = mul nuw nsw i64 %i.arf, %i.pc
  %i.arh = getelementptr [4 x i8], ptr %i.ph, i64 %i.arg
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.preheader847.1
  %.11409924.1 = phi i64 [ %i.arf, %.preheader847.1 ], [ %i.arl, %bb.dq ] ; 3 uses
  %i.ari = getelementptr [4 x i8], ptr %i.arh, i64 %.11409924.1
  %i.arj = load float, ptr %i.ari, align 4, !tbaa !52
  %i.ark = mul nuw nsw i64 %.11409924.1, %i.pc
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ark
  store float %i.arj, ptr %gep.1, align 4, !tbaa !52
  %i.arl = add nuw nsw i64 %.11409924.1, 1        ; 2 uses
  %i.arm = icmp slt i64 %i.arl, %i.pc
  br i1 %i.arm, label %bb.dq, label %.preheader847.2, !llvm.loop !141

.preheader847.2:                                  ; preds = %bb.dq
  %i.arn = or disjoint i64 %.2394925, 2           ; 3 uses
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.ph, i64 %i.arn
  %i.aro = mul nuw nsw i64 %i.arn, %i.pc
  %i.arp = getelementptr [4 x i8], ptr %i.ph, i64 %i.aro
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.preheader847.2
  %.11409924.2 = phi i64 [ %i.arn, %.preheader847.2 ], [ %i.art, %bb.dr ] ; 3 uses
  %i.arq = getelementptr [4 x i8], ptr %i.arp, i64 %.11409924.2
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !52
  %i.ars = mul nuw nsw i64 %.11409924.2, %i.pc
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ars
  store float %i.arr, ptr %gep.2, align 4, !tbaa !52
  %i.art = add nuw nsw i64 %.11409924.2, 1        ; 2 uses
  %i.aru = icmp slt i64 %i.art, %i.pc
  br i1 %i.aru, label %bb.dr, label %.preheader847.3, !llvm.loop !141

.preheader847.3:                                  ; preds = %bb.dr
  %i.arv = or disjoint i64 %.2394925, 3           ; 3 uses
  %invariant.gep.3 = getelementptr [4 x i8], ptr %i.ph, i64 %i.arv
  %i.arw = mul nuw nsw i64 %i.arv, %i.pc
  %i.arx = getelementptr [4 x i8], ptr %i.ph, i64 %i.arw
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.preheader847.3
  %.11409924.3 = phi i64 [ %i.arv, %.preheader847.3 ], [ %i.asb, %bb.ds ] ; 3 uses
  %i.ary = getelementptr [4 x i8], ptr %i.arx, i64 %.11409924.3
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !52
  %i.asa = mul nuw nsw i64 %.11409924.3, %i.pc
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.asa
  store float %i.arz, ptr %gep.3, align 4, !tbaa !52
  %i.asb = add nuw nsw i64 %.11409924.3, 1        ; 2 uses
  %i.asc = icmp slt i64 %i.asb, %i.pc
  br i1 %i.asc, label %bb.ds, label %bb.dt, !llvm.loop !141

bb.dt:                                            ; preds = %bb.ds
  %i.asd = add nuw nsw i64 %.2394925, 4           ; 2 uses
  %niter1667.next.3 = add i64 %niter1667, 4       ; 2 uses
  %niter1667.ncmp.3 = icmp eq i64 %niter1667.next.3, %unroll_iter1666
  br i1 %niter1667.ncmp.3, label %.lr.ph928.unr-lcssa, label %.preheader847, !llvm.loop !143

bb.du:                                            ; preds = %bb.du, %.lr.ph928.new
  %.12410927 = phi i64 [ 0, %.lr.ph928.new ], [ %i.atr, %bb.du ] ; 9 uses
  %.0435926 = phi float [ 0.000000e+00, %.lr.ph928.new ], [ %i.atq, %bb.du ]
  %niter1675 = phi i64 [ 0, %.lr.ph928.new ], [ %niter1675.next.7, %bb.du ]
  %i.ase = mul nuw nsw i64 %.12410927, %.12410500
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.ase
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !52
  %i.ash = fadd float %.0435926, %i.asg
  %i.asi = or disjoint i64 %.12410927, 1
  %i.asj = mul nuw nsw i64 %i.asi, %.12410500
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.asj
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !52
  %i.asm = fadd float %i.ash, %i.asl
  %i.asn = or disjoint i64 %.12410927, 2
  %i.aso = mul nuw nsw i64 %i.asn, %.12410500
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.aso
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !52
  %i.asr = fadd float %i.asm, %i.asq
  %i.ass = or disjoint i64 %.12410927, 3
  %i.ast = mul nuw nsw i64 %i.ass, %.12410500
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.ast
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !52
  %i.asw = fadd float %i.asr, %i.asv
  %i.asx = or disjoint i64 %.12410927, 4
  %i.asy = mul nuw nsw i64 %i.asx, %.12410500
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.asy
  %i.ata = load float, ptr %i.asz, align 4, !tbaa !52
  %i.atb = fadd float %i.asw, %i.ata
  %i.atc = or disjoint i64 %.12410927, 5
  %i.atd = mul nuw nsw i64 %i.atc, %.12410500
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.atd
  %i.atf = load float, ptr %i.ate, align 4, !tbaa !52
  %i.atg = fadd float %i.atb, %i.atf
  %i.ath = or disjoint i64 %.12410927, 6
  %i.ati = mul nuw nsw i64 %i.ath, %.12410500
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.ati
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !52
  %i.atl = fadd float %i.atg, %i.atk
  %i.atm = or disjoint i64 %.12410927, 7
  %i.atn = mul nuw nsw i64 %i.atm, %.12410500
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.atn
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !52
  %i.atq = fadd float %i.atl, %i.atp              ; 3 uses
  %i.atr = add nuw nsw i64 %.12410927, 8          ; 2 uses
  %niter1675.next.7 = add i64 %niter1675, 8       ; 2 uses
  %niter1675.ncmp.7 = icmp eq i64 %niter1675.next.7, %unroll_iter1674
  br i1 %niter1675.ncmp.7, label %._crit_edge929.loopexit.unr-lcssa, label %bb.du, !llvm.loop !144

._crit_edge929.loopexit.unr-lcssa:                ; preds = %bb.du
  %i.ats = and i32 %i.pb, 7
  %lcmp.mod1671.not = icmp eq i32 %i.ats, 0
  br i1 %lcmp.mod1671.not, label %._crit_edge929, label %.epil.preheader1668

.epil.preheader1668:                              ; preds = %._crit_edge929.loopexit.unr-lcssa, %.lr.ph928
  %.12410927.epil.init = phi i64 [ 0, %.lr.ph928 ], [ %i.atr, %._crit_edge929.loopexit.unr-lcssa ]
  %.0435926.epil.init = phi float [ 0.000000e+00, %.lr.ph928 ], [ %i.atq, %._crit_edge929.loopexit.unr-lcssa ]
  %i.att = and i32 %i.pb, 7
  %lcmp.mod1673 = icmp ne i32 %i.att, 0
  call void @llvm.assume(i1 %lcmp.mod1673)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.epil.preheader1668
  %.12410927.epil = phi i64 [ %.12410927.epil.init, %.epil.preheader1668 ], [ %i.aty, %bb.dv ] ; 2 uses
  %.0435926.epil = phi float [ %.0435926.epil.init, %.epil.preheader1668 ], [ %i.atx, %bb.dv ]
  %epil.iter1670 = phi i64 [ 0, %.epil.preheader1668 ], [ %epil.iter1670.next, %bb.dv ]
  %i.atu = mul nuw nsw i64 %.12410927.epil, %.12410500
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.atu
  %i.atw = load float, ptr %i.atv, align 4, !tbaa !52
  %i.atx = fadd float %.0435926.epil, %i.atw      ; 2 uses
  %i.aty = add nuw nsw i64 %.12410927.epil, 1
  %epil.iter1670.next = add i64 %epil.iter1670, 1 ; 2 uses
  %epil.iter1670.cmp.not = icmp eq i64 %epil.iter1670.next, %xtraiter1669
  br i1 %epil.iter1670.cmp.not, label %._crit_edge929, label %bb.dv, !llvm.loop !145

._crit_edge929:                                   ; preds = %._crit_edge929.loopexit.unr-lcssa, %bb.dv, %.preheader848
  %.0435.lcssa = phi float [ 0.000000e+00, %.preheader848 ], [ %i.atq, %._crit_edge929.loopexit.unr-lcssa ], [ %i.atx, %bb.dv ] ; 2 uses
  %i.atz = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.aua = fpext float %.0435.lcssa to double     ; 3 uses
  %i.aub = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !30, !range !32, !noundef !33
  %i.auc = trunc nuw i8 %i.aub to i1
  %i.aud = select i1 %i.auc, ptr @.str.70, ptr @.str.71
  %i.aue = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atz, ptr noundef nonnull @.str.69, double noundef %i.aua, ptr noundef nonnull %i.aud) #28 ; 0 uses
  %i.auf = load ptr, ptr %i.r, align 8, !tbaa !23
  %.not468 = icmp eq ptr %i.auf, null
  br i1 %.not468, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge929
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %i.aug = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull @.str.72)
          to label %bb.dy unwind label %bb.ec     ; 2 uses

bb.dy:                                            ; preds = %bb.dx
  %i.auh = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i575 = icmp eq ptr %i.aui, null
  br i1 %.not.i.i.i575, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.auh, ptr noundef nonnull %i.aui) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576: ; preds = %bb.dz, %bb.dy
  %i.auj = load ptr, ptr %17, align 8, !tbaa !26  ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aul = icmp eq ptr %i.auj, %i.auk
  br i1 %i.aul, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i577: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576
  %i.aum = load i64, ptr %i.auk, align 8, !tbaa !29
  %i.aun = add i64 %i.aum, 1
  call void @_ZdlPvm(ptr noundef %i.auj, i64 noundef %i.aun) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit579

_ZNSt10filesystem7__cxx114pathD2Ev.exit579:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br i1 %i.ama, label %.preheader845, label %._crit_edge935.split

.preheader845:                                    ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit579, %._crit_edge933
  %.3395934 = phi i64 [ %i.avd, %._crit_edge933 ], [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit579 ] ; 2 uses
  %i.auo = mul nuw nsw i64 %.3395934, %i.pc
  %i.aup = getelementptr [4 x i8], ptr %i.ph, i64 %i.auo
  br label %bb.ea

bb.ea:                                            ; preds = %.preheader845, %bb.ea
  %.13411931 = phi i64 [ 0, %.preheader845 ], [ %i.auz, %bb.ea ] ; 2 uses
  %i.auq = getelementptr [4 x i8], ptr %i.aup, i64 %.13411931 ; 2 uses
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !52
  %i.aus = fpext float %i.aur to double
  %i.aut = getelementptr i8, ptr %i.auq, i64 4
  %i.auu = load <2 x float>, ptr %i.aut, align 4, !tbaa !52
  %i.auv = fpext <2 x float> %i.auu to <2 x double> ; 2 uses
  %i.auw = extractelement <2 x double> %i.auv, i64 0
  %i.aux = extractelement <2 x double> %i.auv, i64 1
  %i.auy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aug, ptr noundef nonnull @.str.73, double noundef %i.aus, double noundef %i.auw, double noundef %i.aux) #24 ; 0 uses
  %i.auz = add nuw nsw i64 %.13411931, 3          ; 2 uses
  %i.ava = icmp slt i64 %i.auz, %i.pc
  br i1 %i.ava, label %bb.ea, label %._crit_edge933, !llvm.loop !146

bb.eb:                                            ; preds = %bb.dw
  %i.avb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dx
  %i.avc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #24
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn469 = phi { ptr, i32 } [ %i.avc, %bb.ec ], [ %i.avb, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.loopexit.split-lp

._crit_edge933:                                   ; preds = %bb.ea
  %i.avd = add nuw nsw i64 %.3395934, 1           ; 2 uses
  %exitcond1023.not = icmp eq i64 %i.avd, %i.pc
  br i1 %exitcond1023.not, label %._crit_edge935.split, label %.preheader845, !llvm.loop !147

._crit_edge935.split:                             ; preds = %._crit_edge933, %_ZNSt10filesystem7__cxx114pathD2Ev.exit579
  %i.ave = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.aug)
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ee:                                            ; preds = %._crit_edge935.split, %._crit_edge929
  %i.avf = load ptr, ptr %i.s, align 8, !tbaa !23
  %.not471 = icmp eq ptr %i.avf, null
  br i1 %.not471, label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.avg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.50, i32 noundef 496, i64 noundef range(i64 -2147483648, 2147483648) %i.pc, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader: ; preds = %bb.ef
  br i1 %i.ama, label %.lr.ph942, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge

.lr.ph942:                                        ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 1, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 3 uses
  %.4396941 = phi i64 [ %i.axg, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 5 uses
  %.0423940 = phi float [ %.2425.lcssa, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 2 uses
  %.0429939 = phi float [ %.2431.lcssa, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader ] ; 2 uses
  %i.avh = mul nuw nsw i64 %.4396941, %i.pc
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.avh ; 11 uses
  %i.avj = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %.4396941
  store ptr %i.avi, ptr %i.avj, align 8, !tbaa !74
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.4396941
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !52 ; 9 uses
  %xtraiter1677 = and i64 %indvars.iv, 7          ; 3 uses
  %i.avm = icmp samesign ult i64 %.4396941, 7
  br i1 %i.avm, label %.epil.preheader1676, label %.lr.ph942.new

.lr.ph942.new:                                    ; preds = %.lr.ph942
  %unroll_iter1683 = and i64 %indvars.iv, 9223372036854775800
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.lr.ph942.new
  %.14412938 = phi i64 [ 0, %.lr.ph942.new ], [ %i.axa, %bb.eg ] ; 9 uses
  %.1424937 = phi float [ %.0423940, %.lr.ph942.new ], [ %.2425.7, %bb.eg ] ; 2 uses
  %.1430936 = phi float [ %.0429939, %.lr.ph942.new ], [ %.2431.7, %bb.eg ] ; 2 uses
  %niter1684 = phi i64 [ 0, %.lr.ph942.new ], [ %niter1684.next.7, %bb.eg ]
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !52 ; 3 uses
  %i.avp = fcmp olt float %i.avo, %.1430936
  %.2431 = select i1 %i.avp, float %i.avo, float %.1430936 ; 2 uses
  %i.avq = fcmp ogt float %i.avl, %.1424937
  %.2425 = select i1 %i.avq, float %i.avo, float %.1424937 ; 2 uses
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 4
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !52 ; 3 uses
  %i.avu = fcmp olt float %i.avt, %.2431
  %.2431.1 = select i1 %i.avu, float %i.avt, float %.2431 ; 2 uses
  %i.avv = fcmp ogt float %i.avl, %.2425
  %.2425.1 = select i1 %i.avv, float %i.avt, float %.2425 ; 2 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 8
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !52 ; 3 uses
  %i.avz = fcmp olt float %i.avy, %.2431.1
  %.2431.2 = select i1 %i.avz, float %i.avy, float %.2431.1 ; 2 uses
  %i.awa = fcmp ogt float %i.avl, %.2425.1
  %.2425.2 = select i1 %i.awa, float %i.avy, float %.2425.1 ; 2 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 12
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !52 ; 3 uses
  %i.awe = fcmp olt float %i.awd, %.2431.2
  %.2431.3 = select i1 %i.awe, float %i.awd, float %.2431.2 ; 2 uses
  %i.awf = fcmp ogt float %i.avl, %.2425.2
  %.2425.3 = select i1 %i.awf, float %i.awd, float %.2425.2 ; 2 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 16
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !52 ; 3 uses
  %i.awj = fcmp olt float %i.awi, %.2431.3
  %.2431.4 = select i1 %i.awj, float %i.awi, float %.2431.3 ; 2 uses
  %i.awk = fcmp ogt float %i.avl, %.2425.3
  %.2425.4 = select i1 %i.awk, float %i.awi, float %.2425.3 ; 2 uses
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 20
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !52 ; 3 uses
  %i.awo = fcmp olt float %i.awn, %.2431.4
  %.2431.5 = select i1 %i.awo, float %i.awn, float %.2431.4 ; 2 uses
  %i.awp = fcmp ogt float %i.avl, %.2425.4
  %.2425.5 = select i1 %i.awp, float %i.awn, float %.2425.4 ; 2 uses
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 24
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !52 ; 3 uses
  %i.awt = fcmp olt float %i.aws, %.2431.5
  %.2431.6 = select i1 %i.awt, float %i.aws, float %.2431.5 ; 2 uses
  %i.awu = fcmp ogt float %i.avl, %.2425.5
  %.2425.6 = select i1 %i.awu, float %i.aws, float %.2425.5 ; 2 uses
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %.14412938
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 28
  %i.awx = load float, ptr %i.aww, align 4, !tbaa !52 ; 3 uses
  %i.awy = fcmp olt float %i.awx, %.2431.6
  %.2431.7 = select i1 %i.awy, float %i.awx, float %.2431.6 ; 3 uses
  %i.awz = fcmp ogt float %i.avl, %.2425.6
  %.2425.7 = select i1 %i.awz, float %i.awx, float %.2425.6 ; 3 uses
  %i.axa = add nuw nsw i64 %.14412938, 8          ; 2 uses
  %niter1684.next.7 = add i64 %niter1684, 8       ; 2 uses
  %niter1684.ncmp.7 = icmp eq i64 %niter1684.next.7, %unroll_iter1683
  br i1 %niter1684.ncmp.7, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.unr-lcssa, label %bb.eg, !llvm.loop !148

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.unr-lcssa: ; preds = %bb.eg
  %lcmp.mod1679.not = icmp eq i64 %xtraiter1677, 0
  br i1 %lcmp.mod1679.not, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit, label %.epil.preheader1676

end_hunk_0
