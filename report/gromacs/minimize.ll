inline.NumInlined: 1769
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3gmx15LegacySimulator8do_lbfgsEv:bb.a
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayb, i64 64 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayb, i64 96 ; 2 uses
  %wide.load1683 = load <8 x float>, ptr %i.ayb, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %wide.load1684 = load <8 x float>, ptr %i.ayc, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %wide.load1685 = load <8 x float>, ptr %i.ayd, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %wide.load1686 = load <8 x float>, ptr %i.aye, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %i.ayf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1676, <8 x float> %wide.load1679, <8 x float> %wide.load1683)
  %i.ayg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1676, <8 x float> %wide.load1680, <8 x float> %wide.load1684)
  %i.ayh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1676, <8 x float> %wide.load1681, <8 x float> %wide.load1685)
  %i.ayi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1676, <8 x float> %wide.load1682, <8 x float> %wide.load1686)
  store <8 x float> %i.ayf, ptr %i.ayb, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  store <8 x float> %i.ayg, ptr %i.ayc, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  store <8 x float> %i.ayh, ptr %i.ayd, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  store <8 x float> %i.ayi, ptr %i.aye, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %index.next1687 = add nuw i64 %index1678, 32    ; 2 uses
  %i.ayj = icmp eq i64 %index.next1687, %n.vec1674
  br i1 %i.ayj, label %middle.block1688, label %vector.body1677, !llvm.loop !841

middle.block1688:                                 ; preds = %vector.body1677
  br i1 %cmp.n1689, label %._crit_edge1086, label %vec.epilog.iter.check1693

vec.epilog.iter.check1693:                        ; preds = %middle.block1688
  br i1 %min.epilog.iters.check1694, label %vec.epilog.scalar.ph1692.preheader, label %vec.epilog.ph1695, !prof !794

vec.epilog.ph1695:                                ; preds = %vector.main.loop.iter.check1671, %vec.epilog.iter.check1693
  %vec.epilog.resume.val1690 = phi i64 [ %n.vec1674, %vec.epilog.iter.check1693 ], [ 0, %vector.main.loop.iter.check1671 ]
  %broadcast.splatinsert1697 = insertelement <4 x float> poison, float %i.axw, i64 0
  %broadcast.splat1698 = shufflevector <4 x float> %broadcast.splatinsert1697, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1699

vec.epilog.vector.body1699:                       ; preds = %vec.epilog.vector.body1699, %vec.epilog.ph1695
  %index1700 = phi i64 [ %vec.epilog.resume.val1690, %vec.epilog.ph1695 ], [ %index.next1703, %vec.epilog.vector.body1699 ] ; 3 uses
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %index1700
  %wide.load1701 = load <4 x float>, ptr %i.ayk, align 4, !tbaa !333, !alias.scope !836
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %index1700 ; 2 uses
  %wide.load1702 = load <4 x float>, ptr %i.ayl, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %i.aym = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1698, <4 x float> %wide.load1701, <4 x float> %wide.load1702)
  store <4 x float> %i.aym, ptr %i.ayl, align 4, !tbaa !333, !alias.scope !839, !noalias !836
  %index.next1703 = add nuw i64 %index1700, 4     ; 2 uses
  %i.ayn = icmp eq i64 %index.next1703, %n.vec1696
  br i1 %i.ayn, label %vec.epilog.middle.block1704, label %vec.epilog.vector.body1699, !llvm.loop !842

vec.epilog.middle.block1704:                      ; preds = %vec.epilog.vector.body1699
  br i1 %cmp.n1705, label %._crit_edge1086, label %vec.epilog.scalar.ph1692.preheader

vec.epilog.scalar.ph1692.preheader:               ; preds = %vector.memcheck1665, %iter.check1691, %vec.epilog.iter.check1693, %vec.epilog.middle.block1704
  %indvars.iv1228.ph = phi i64 [ 0, %iter.check1691 ], [ 0, %vector.memcheck1665 ], [ %n.vec1674, %vec.epilog.iter.check1693 ], [ %n.vec1696, %vec.epilog.middle.block1704 ] ; 4 uses
  %i.ayo = sub nsw i64 %smax1159.pre-phi, %indvars.iv1228.ph
  %xtraiter2051 = and i64 %i.ayo, 7               ; 2 uses
  %lcmp.mod2052.not = icmp eq i64 %xtraiter2051, 0
  br i1 %lcmp.mod2052.not, label %vec.epilog.scalar.ph1692.prol.loopexit, label %vec.epilog.scalar.ph1692.prol

vec.epilog.scalar.ph1692.prol:                    ; preds = %vec.epilog.scalar.ph1692.preheader, %vec.epilog.scalar.ph1692.prol
  %indvars.iv1228.prol = phi i64 [ %indvars.iv.next1229.prol, %vec.epilog.scalar.ph1692.prol ], [ %indvars.iv1228.ph, %vec.epilog.scalar.ph1692.preheader ] ; 3 uses
  %prol.iter2053 = phi i64 [ %prol.iter2053.next, %vec.epilog.scalar.ph1692.prol ], [ 0, %vec.epilog.scalar.ph1692.preheader ]
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv1228.prol
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !333
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1228.prol ; 2 uses
  %i.ays = load float, ptr %i.ayr, align 4, !tbaa !333
  %i.ayt = call float @llvm.fmuladd.f32(float %i.axw, float %i.ayq, float %i.ays)
  store float %i.ayt, ptr %i.ayr, align 4, !tbaa !333
  %indvars.iv.next1229.prol = add nuw nsw i64 %indvars.iv1228.prol, 1 ; 2 uses
  %prol.iter2053.next = add i64 %prol.iter2053, 1 ; 2 uses
  %prol.iter2053.cmp.not = icmp eq i64 %prol.iter2053.next, %xtraiter2051
  br i1 %prol.iter2053.cmp.not, label %vec.epilog.scalar.ph1692.prol.loopexit, label %vec.epilog.scalar.ph1692.prol, !llvm.loop !843

vec.epilog.scalar.ph1692.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1692.prol, %vec.epilog.scalar.ph1692.preheader
  %indvars.iv1228.unr = phi i64 [ %indvars.iv1228.ph, %vec.epilog.scalar.ph1692.preheader ], [ %indvars.iv.next1229.prol, %vec.epilog.scalar.ph1692.prol ]
  %i.ayu = sub nsw i64 %indvars.iv1228.ph, %smax1159.pre-phi
  %i.ayv = icmp ugt i64 %i.ayu, -8
  br i1 %i.ayv, label %._crit_edge1086, label %vec.epilog.scalar.ph1692

.lr.ph1080.new:                                   ; preds = %.lr.ph1080, %.lr.ph1080.new
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223.7, %.lr.ph1080.new ], [ 0, %.lr.ph1080 ] ; 10 uses
  %.04461077 = phi float [ %i.baj, %.lr.ph1080.new ], [ 0.000000e+00, %.lr.ph1080 ]
  %niter2050 = phi i64 [ %niter2050.next.7, %.lr.ph1080.new ], [ 0, %.lr.ph1080 ]
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv1222
  %i.ayx = load float, ptr %i.ayw, align 4, !tbaa !333
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1222
  %i.ayz = load float, ptr %i.ayy, align 4, !tbaa !333
  %i.aza = call float @llvm.fmuladd.f32(float %i.ayx, float %i.ayz, float %.04461077)
  %indvars.iv.next1223 = or disjoint i64 %indvars.iv1222, 1 ; 2 uses
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223
  %i.azc = load float, ptr %i.azb, align 4, !tbaa !333
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !333
  %i.azf = call float @llvm.fmuladd.f32(float %i.azc, float %i.aze, float %i.aza)
  %indvars.iv.next1223.1 = or disjoint i64 %indvars.iv1222, 2 ; 2 uses
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223.1
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !333
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223.1
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !333
  %i.azk = call float @llvm.fmuladd.f32(float %i.azh, float %i.azj, float %i.azf)
  %indvars.iv.next1223.2 = or disjoint i64 %indvars.iv1222, 3 ; 2 uses
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223.2
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !333
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223.2
  %i.azo = load float, ptr %i.azn, align 4, !tbaa !333
  %i.azp = call float @llvm.fmuladd.f32(float %i.azm, float %i.azo, float %i.azk)
  %indvars.iv.next1223.3 = or disjoint i64 %indvars.iv1222, 4 ; 2 uses
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223.3
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !333
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223.3
  %i.azt = load float, ptr %i.azs, align 4, !tbaa !333
  %i.azu = call float @llvm.fmuladd.f32(float %i.azr, float %i.azt, float %i.azp)
  %indvars.iv.next1223.4 = or disjoint i64 %indvars.iv1222, 5 ; 2 uses
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223.4
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !333
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223.4
  %i.azy = load float, ptr %i.azx, align 4, !tbaa !333
  %i.azz = call float @llvm.fmuladd.f32(float %i.azw, float %i.azy, float %i.azu)
  %indvars.iv.next1223.5 = or disjoint i64 %indvars.iv1222, 6 ; 2 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223.5
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !333
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223.5
  %i.bad = load float, ptr %i.bac, align 4, !tbaa !333
  %i.bae = call float @llvm.fmuladd.f32(float %i.bab, float %i.bad, float %i.azz)
  %indvars.iv.next1223.6 = or disjoint i64 %indvars.iv1222, 7 ; 2 uses
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %indvars.iv.next1223.6
  %i.bag = load float, ptr %i.baf, align 4, !tbaa !333
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1223.6
  %i.bai = load float, ptr %i.bah, align 4, !tbaa !333
  %i.baj = call float @llvm.fmuladd.f32(float %i.bag, float %i.bai, float %i.bae) ; 3 uses
  %indvars.iv.next1223.7 = add nuw nsw i64 %indvars.iv1222, 8 ; 2 uses
  %niter2050.next.7 = add nuw nsw i64 %niter2050, 8 ; 2 uses
  %niter2050.ncmp.7 = icmp eq i64 %niter2050.next.7, %unroll_iter2049
  br i1 %niter2050.ncmp.7, label %iter.check1691.unr-lcssa, label %.lr.ph1080.new, !llvm.loop !844

._crit_edge1086:                                  ; preds = %vec.epilog.scalar.ph1692.prol.loopexit, %vec.epilog.scalar.ph1692, %middle.block1688, %vec.epilog.middle.block1704, %._crit_edge1081.thread
  %i.bak = add nuw nsw i32 %.04471088, 1          ; 2 uses
  %exitcond1234.not = icmp eq i32 %i.bak, %spec.select609
  br i1 %exitcond1234.not, label %.preheader991, label %bb.eo, !llvm.loop !845

vec.epilog.scalar.ph1692:                         ; preds = %vec.epilog.scalar.ph1692.prol.loopexit, %vec.epilog.scalar.ph1692
  %indvars.iv1228 = phi i64 [ %indvars.iv.next1229.7, %vec.epilog.scalar.ph1692 ], [ %indvars.iv1228.unr, %vec.epilog.scalar.ph1692.prol.loopexit ] ; 10 uses
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv1228
  %i.bam = load float, ptr %i.bal, align 4, !tbaa !333
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1228 ; 2 uses
  %i.bao = load float, ptr %i.ban, align 4, !tbaa !333
  %i.bap = call float @llvm.fmuladd.f32(float %i.axw, float %i.bam, float %i.bao)
  store float %i.bap, ptr %i.ban, align 4, !tbaa !333
  %indvars.iv.next1229 = add nuw nsw i64 %indvars.iv1228, 1 ; 2 uses
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229
  %i.bar = load float, ptr %i.baq, align 4, !tbaa !333
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229 ; 2 uses
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !333
  %i.bau = call float @llvm.fmuladd.f32(float %i.axw, float %i.bar, float %i.bat)
  store float %i.bau, ptr %i.bas, align 4, !tbaa !333
  %indvars.iv.next1229.1 = add nuw nsw i64 %indvars.iv1228, 2 ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229.1
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !333
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229.1 ; 2 uses
  %i.bay = load float, ptr %i.bax, align 4, !tbaa !333
  %i.baz = call float @llvm.fmuladd.f32(float %i.axw, float %i.baw, float %i.bay)
  store float %i.baz, ptr %i.bax, align 4, !tbaa !333
  %indvars.iv.next1229.2 = add nuw nsw i64 %indvars.iv1228, 3 ; 2 uses
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229.2
  %i.bbb = load float, ptr %i.bba, align 4, !tbaa !333
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229.2 ; 2 uses
  %i.bbd = load float, ptr %i.bbc, align 4, !tbaa !333
  %i.bbe = call float @llvm.fmuladd.f32(float %i.axw, float %i.bbb, float %i.bbd)
  store float %i.bbe, ptr %i.bbc, align 4, !tbaa !333
  %indvars.iv.next1229.3 = add nuw nsw i64 %indvars.iv1228, 4 ; 2 uses
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229.3
  %i.bbg = load float, ptr %i.bbf, align 4, !tbaa !333
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229.3 ; 2 uses
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !333
  %i.bbj = call float @llvm.fmuladd.f32(float %i.axw, float %i.bbg, float %i.bbi)
  store float %i.bbj, ptr %i.bbh, align 4, !tbaa !333
  %indvars.iv.next1229.4 = add nuw nsw i64 %indvars.iv1228, 5 ; 2 uses
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229.4
  %i.bbl = load float, ptr %i.bbk, align 4, !tbaa !333
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229.4 ; 2 uses
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !333
  %i.bbo = call float @llvm.fmuladd.f32(float %i.axw, float %i.bbl, float %i.bbn)
  store float %i.bbo, ptr %i.bbm, align 4, !tbaa !333
  %indvars.iv.next1229.5 = add nuw nsw i64 %indvars.iv1228, 6 ; 2 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229.5
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !333
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229.5 ; 2 uses
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !333
  %i.bbt = call float @llvm.fmuladd.f32(float %i.axw, float %i.bbq, float %i.bbs)
  store float %i.bbt, ptr %i.bbr, align 4, !tbaa !333
  %indvars.iv.next1229.6 = add nuw nsw i64 %indvars.iv1228, 7 ; 2 uses
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.next1229.6
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !333
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1229.6 ; 2 uses
  %i.bbx = load float, ptr %i.bbw, align 4, !tbaa !333
  %i.bby = call float @llvm.fmuladd.f32(float %i.axw, float %i.bbv, float %i.bbx)
  store float %i.bby, ptr %i.bbw, align 4, !tbaa !333
  %indvars.iv.next1229.7 = add nuw nsw i64 %indvars.iv1228, 8 ; 2 uses
  %exitcond1233.not.7 = icmp eq i64 %indvars.iv.next1229.7, %smax1159.pre-phi
  br i1 %exitcond1233.not.7, label %._crit_edge1086, label %vec.epilog.scalar.ph1692, !llvm.loop !846

.preheader990:                                    ; preds = %.lr.ph1092, %middle.block1647, %vec.epilog.middle.block1662, %.preheader991
  br i1 %i.avr, label %.preheader.lr.ph, label %.preheader989

.preheader.lr.ph:                                 ; preds = %.preheader990
  %i.bbz = load ptr, ptr %7, align 8
  %i.bca = load ptr, ptr %6, align 8
  br label %.preheader

.lr.ph1092:                                       ; preds = %.lr.ph1092.preheader, %.lr.ph1092
  %indvars.iv1235 = phi i64 [ %indvars.iv.next1236, %.lr.ph1092 ], [ %indvars.iv1235.ph, %.lr.ph1092.preheader ] ; 2 uses
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1235 ; 2 uses
  %i.bcc = load float, ptr %i.bcb, align 4, !tbaa !333
  %i.bcd = fmul float %i.avq, %i.bcc
  store float %i.bcd, ptr %i.bcb, align 4, !tbaa !333
  %indvars.iv.next1236 = add nuw nsw i64 %indvars.iv1235, 1 ; 2 uses
  %exitcond1240.not = icmp eq i64 %indvars.iv.next1236, %smax1159.pre-phi
  br i1 %exitcond1240.not, label %.preheader990, label %.lr.ph1092, !llvm.loop !847

.preheader989:                                    ; preds = %._crit_edge1101, %.preheader990
  br i1 %.not.i.i.i.i, label %._crit_edge1106, label %.lr.ph1105

.lr.ph1105:                                       ; preds = %.preheader989
  %i.bce = sext i32 %spec.store.select1449 to i64
  %i.bcf = load ptr, ptr %6, align 8
  %i.bcg = getelementptr inbounds nuw [24 x i8], ptr %i.bcf, i64 %i.bce ; 2 uses
  br i1 %i.qv, label %.epil.preheader2065, label %.lr.ph1105.new

.lr.ph1105.new:                                   ; preds = %.lr.ph1105
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !524 ; 2 uses
  br label %bb.es

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1101
  %.04421103 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bfm, %._crit_edge1101 ]
  %.24501102 = phi i32 [ %.0448.lcssa, %.preheader.lr.ph ], [ %spec.store.select10, %._crit_edge1101 ] ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge1101, label %.lr.ph1095

.lr.ph1095:                                       ; preds = %.preheader
  %i.bci = sext i32 %.24501102 to i64             ; 4 uses
  %i.bcj = getelementptr inbounds nuw [24 x i8], ptr %i.bbz, i64 %i.bci
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !524 ; 9 uses
  br i1 %i.qt, label %.epil.preheader2054, label %.lr.ph1095.new

iter.check.unr-lcssa:                             ; preds = %.lr.ph1095.new
  br i1 %lcmp.mod2057.not, label %iter.check, label %.epil.preheader2054

.epil.preheader2054:                              ; preds = %iter.check.unr-lcssa, %.lr.ph1095
  %indvars.iv1241.epil.init = phi i64 [ 0, %.lr.ph1095 ], [ %indvars.iv.next1242.7, %iter.check.unr-lcssa ]
  %.04411093.epil.init = phi float [ 0.000000e+00, %.lr.ph1095 ], [ %i.bfk, %iter.check.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2059)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %.epil.preheader2054
  %indvars.iv1241.epil = phi i64 [ %indvars.iv1241.epil.init, %.epil.preheader2054 ], [ %indvars.iv.next1242.epil, %bb.eq ] ; 3 uses
  %.04411093.epil = phi float [ %.04411093.epil.init, %.epil.preheader2054 ], [ %i.bcp, %bb.eq ]
  %epil.iter2056 = phi i64 [ 0, %.epil.preheader2054 ], [ %epil.iter2056.next, %bb.eq ]
  %i.bcl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1241.epil
  %i.bcm = load float, ptr %i.bcl, align 4, !tbaa !333
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv1241.epil
  %i.bco = load float, ptr %i.bcn, align 4, !tbaa !333
  %i.bcp = call float @llvm.fmuladd.f32(float %i.bcm, float %i.bco, float %.04411093.epil) ; 2 uses
  %indvars.iv.next1242.epil = add nuw nsw i64 %indvars.iv1241.epil, 1
  %epil.iter2056.next = add i64 %epil.iter2056, 1 ; 2 uses
  %epil.iter2056.cmp.not = icmp eq i64 %epil.iter2056.next, %xtraiter2055
  br i1 %epil.iter2056.cmp.not, label %iter.check, label %bb.eq, !llvm.loop !848

iter.check:                                       ; preds = %bb.eq, %iter.check.unr-lcssa
  %.lcssa1936 = phi float [ %i.bfk, %iter.check.unr-lcssa ], [ %i.bcp, %bb.eq ]
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0815.0879885139214121440, i64 %i.bci
  %i.bcr = load float, ptr %i.bcq, align 4, !tbaa !333
  %i.bcs = fmul float %.lcssa1936, %i.bcr
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0806.0927133514181437, i64 %i.bci
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !333
  %i.bcv = fsub float %i.bcu, %i.bcs              ; 11 uses
  %i.bcw = getelementptr inbounds nuw [24 x i8], ptr %i.bca, i64 %i.bci
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !524 ; 13 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep1616 = getelementptr i8, ptr %i.bcx, i64 %i.qd
  %bound0 = icmp ult ptr %.sroa.0824.0, %scevgep1616
  %bound1 = icmp ult ptr %i.bcx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check1617, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bcv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %index ; 4 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 32
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcy, i64 64
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcy, i64 96
  %wide.load = load <8 x float>, ptr %i.bcy, align 4, !tbaa !333, !alias.scope !849
  %wide.load1618 = load <8 x float>, ptr %i.bcz, align 4, !tbaa !333, !alias.scope !849
  %wide.load1619 = load <8 x float>, ptr %i.bda, align 4, !tbaa !333, !alias.scope !849
  %wide.load1620 = load <8 x float>, ptr %i.bdb, align 4, !tbaa !333, !alias.scope !849
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %index ; 5 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 32 ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdc, i64 64 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdc, i64 96 ; 2 uses
  %wide.load1621 = load <8 x float>, ptr %i.bdc, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %wide.load1622 = load <8 x float>, ptr %i.bdd, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %wide.load1623 = load <8 x float>, ptr %i.bde, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %wide.load1624 = load <8 x float>, ptr %i.bdf, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %i.bdg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load, <8 x float> %wide.load1621)
  %i.bdh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load1618, <8 x float> %wide.load1622)
  %i.bdi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load1619, <8 x float> %wide.load1623)
  %i.bdj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load1620, <8 x float> %wide.load1624)
  store <8 x float> %i.bdg, ptr %i.bdc, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  store <8 x float> %i.bdh, ptr %i.bdd, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  store <8 x float> %i.bdi, ptr %i.bde, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  store <8 x float> %i.bdj, ptr %i.bdf, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bdk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdk, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1101, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !794

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert1626 = insertelement <4 x float> poison, float %i.bcv, i64 0
  %broadcast.splat1627 = shufflevector <4 x float> %broadcast.splatinsert1626, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1628 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1631, %vec.epilog.vector.body ] ; 3 uses
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %index1628
  %wide.load1629 = load <4 x float>, ptr %i.bdl, align 4, !tbaa !333, !alias.scope !849
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %index1628 ; 2 uses
  %wide.load1630 = load <4 x float>, ptr %i.bdm, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %i.bdn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1627, <4 x float> %wide.load1629, <4 x float> %wide.load1630)
  store <4 x float> %i.bdn, ptr %i.bdm, align 4, !tbaa !333, !alias.scope !852, !noalias !849
  %index.next1631 = add nuw i64 %index1628, 4     ; 2 uses
  %i.bdo = icmp eq i64 %index.next1631, %n.vec1625
  br i1 %i.bdo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !855

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1632, label %._crit_edge1101, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1247.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1625, %vec.epilog.middle.block ] ; 4 uses
  %i.bdp = sub nsw i64 %smax1159.pre-phi, %indvars.iv1247.ph
  %xtraiter2062 = and i64 %i.bdp, 7               ; 2 uses
  %lcmp.mod2063.not = icmp eq i64 %xtraiter2062, 0
  br i1 %lcmp.mod2063.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv1247.prol = phi i64 [ %indvars.iv.next1248.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv1247.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter2064 = phi i64 [ %prol.iter2064.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv1247.prol
  %i.bdr = load float, ptr %i.bdq, align 4, !tbaa !333
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1247.prol ; 2 uses
  %i.bdt = load float, ptr %i.bds, align 4, !tbaa !333
  %i.bdu = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bdr, float %i.bdt)
  store float %i.bdu, ptr %i.bds, align 4, !tbaa !333
  %indvars.iv.next1248.prol = add nuw nsw i64 %indvars.iv1247.prol, 1 ; 2 uses
  %prol.iter2064.next = add i64 %prol.iter2064, 1 ; 2 uses
  %prol.iter2064.cmp.not = icmp eq i64 %prol.iter2064.next, %xtraiter2062
  br i1 %prol.iter2064.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !856

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv1247.unr = phi i64 [ %indvars.iv1247.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next1248.prol, %vec.epilog.scalar.ph.prol ]
  %i.bdv = sub nsw i64 %indvars.iv1247.ph, %smax1159.pre-phi
  %i.bdw = icmp ugt i64 %i.bdv, -8
  br i1 %i.bdw, label %._crit_edge1101, label %vec.epilog.scalar.ph

.lr.ph1095.new:                                   ; preds = %.lr.ph1095, %.lr.ph1095.new
  %indvars.iv1241 = phi i64 [ %indvars.iv.next1242.7, %.lr.ph1095.new ], [ 0, %.lr.ph1095 ] ; 10 uses
  %.04411093 = phi float [ %i.bfk, %.lr.ph1095.new ], [ 0.000000e+00, %.lr.ph1095 ]
  %niter2061 = phi i64 [ %niter2061.next.7, %.lr.ph1095.new ], [ 0, %.lr.ph1095 ]
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1241
  %i.bdy = load float, ptr %i.bdx, align 4, !tbaa !333
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv1241
  %i.bea = load float, ptr %i.bdz, align 4, !tbaa !333
  %i.beb = call float @llvm.fmuladd.f32(float %i.bdy, float %i.bea, float %.04411093)
  %indvars.iv.next1242 = or disjoint i64 %indvars.iv1241, 1 ; 2 uses
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242
  %i.bed = load float, ptr %i.bec, align 4, !tbaa !333
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242
  %i.bef = load float, ptr %i.bee, align 4, !tbaa !333
  %i.beg = call float @llvm.fmuladd.f32(float %i.bed, float %i.bef, float %i.beb)
  %indvars.iv.next1242.1 = or disjoint i64 %indvars.iv1241, 2 ; 2 uses
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242.1
  %i.bei = load float, ptr %i.beh, align 4, !tbaa !333
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242.1
  %i.bek = load float, ptr %i.bej, align 4, !tbaa !333
  %i.bel = call float @llvm.fmuladd.f32(float %i.bei, float %i.bek, float %i.beg)
  %indvars.iv.next1242.2 = or disjoint i64 %indvars.iv1241, 3 ; 2 uses
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242.2
  %i.ben = load float, ptr %i.bem, align 4, !tbaa !333
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242.2
  %i.bep = load float, ptr %i.beo, align 4, !tbaa !333
  %i.beq = call float @llvm.fmuladd.f32(float %i.ben, float %i.bep, float %i.bel)
  %indvars.iv.next1242.3 = or disjoint i64 %indvars.iv1241, 4 ; 2 uses
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242.3
  %i.bes = load float, ptr %i.ber, align 4, !tbaa !333
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242.3
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !333
  %i.bev = call float @llvm.fmuladd.f32(float %i.bes, float %i.beu, float %i.beq)
  %indvars.iv.next1242.4 = or disjoint i64 %indvars.iv1241, 5 ; 2 uses
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242.4
  %i.bex = load float, ptr %i.bew, align 4, !tbaa !333
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242.4
  %i.bez = load float, ptr %i.bey, align 4, !tbaa !333
  %i.bfa = call float @llvm.fmuladd.f32(float %i.bex, float %i.bez, float %i.bev)
  %indvars.iv.next1242.5 = or disjoint i64 %indvars.iv1241, 6 ; 2 uses
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242.5
  %i.bfc = load float, ptr %i.bfb, align 4, !tbaa !333
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242.5
  %i.bfe = load float, ptr %i.bfd, align 4, !tbaa !333
  %i.bff = call float @llvm.fmuladd.f32(float %i.bfc, float %i.bfe, float %i.bfa)
  %indvars.iv.next1242.6 = or disjoint i64 %indvars.iv1241, 7 ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1242.6
  %i.bfh = load float, ptr %i.bfg, align 4, !tbaa !333
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %indvars.iv.next1242.6
  %i.bfj = load float, ptr %i.bfi, align 4, !tbaa !333
  %i.bfk = call float @llvm.fmuladd.f32(float %i.bfh, float %i.bfj, float %i.bff) ; 3 uses
  %indvars.iv.next1242.7 = add nuw nsw i64 %indvars.iv1241, 8 ; 2 uses
  %niter2061.next.7 = add nuw nsw i64 %niter2061, 8 ; 2 uses
  %niter2061.ncmp.7 = icmp eq i64 %niter2061.next.7, %unroll_iter2060
  br i1 %niter2061.ncmp.7, label %iter.check.unr-lcssa, label %.lr.ph1095.new, !llvm.loop !857

._crit_edge1101:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.bfl = add nsw i32 %.24501102, 1              ; 2 uses
  %.not567 = icmp slt i32 %i.bfl, %spec.select609
  %spec.store.select10 = select i1 %.not567, i32 %i.bfl, i32 0
  %i.bfm = add nuw nsw i32 %.04421103, 1          ; 2 uses
  %exitcond1253.not = icmp eq i32 %i.bfm, %spec.select609
  br i1 %exitcond1253.not, label %.preheader989, label %.preheader, !llvm.loop !858

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv1247 = phi i64 [ %indvars.iv.next1248.7, %vec.epilog.scalar.ph ], [ %indvars.iv1247.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv1247
  %i.bfo = load float, ptr %i.bfn, align 4, !tbaa !333
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1247 ; 2 uses
  %i.bfq = load float, ptr %i.bfp, align 4, !tbaa !333
  %i.bfr = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bfo, float %i.bfq)
  store float %i.bfr, ptr %i.bfp, align 4, !tbaa !333
  %indvars.iv.next1248 = add nuw nsw i64 %indvars.iv1247, 1 ; 2 uses
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !333
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248 ; 2 uses
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !333
  %i.bfw = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bft, float %i.bfv)
  store float %i.bfw, ptr %i.bfu, align 4, !tbaa !333
  %indvars.iv.next1248.1 = add nuw nsw i64 %indvars.iv1247, 2 ; 2 uses
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248.1
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !333
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248.1 ; 2 uses
  %i.bga = load float, ptr %i.bfz, align 4, !tbaa !333
  %i.bgb = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bfy, float %i.bga)
  store float %i.bgb, ptr %i.bfz, align 4, !tbaa !333
  %indvars.iv.next1248.2 = add nuw nsw i64 %indvars.iv1247, 3 ; 2 uses
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248.2
  %i.bgd = load float, ptr %i.bgc, align 4, !tbaa !333
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248.2 ; 2 uses
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !333
  %i.bgg = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bgd, float %i.bgf)
  store float %i.bgg, ptr %i.bge, align 4, !tbaa !333
  %indvars.iv.next1248.3 = add nuw nsw i64 %indvars.iv1247, 4 ; 2 uses
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248.3
  %i.bgi = load float, ptr %i.bgh, align 4, !tbaa !333
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248.3 ; 2 uses
  %i.bgk = load float, ptr %i.bgj, align 4, !tbaa !333
  %i.bgl = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bgi, float %i.bgk)
  store float %i.bgl, ptr %i.bgj, align 4, !tbaa !333
  %indvars.iv.next1248.4 = add nuw nsw i64 %indvars.iv1247, 5 ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248.4
  %i.bgn = load float, ptr %i.bgm, align 4, !tbaa !333
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248.4 ; 2 uses
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !333
  %i.bgq = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bgn, float %i.bgp)
  store float %i.bgq, ptr %i.bgo, align 4, !tbaa !333
  %indvars.iv.next1248.5 = add nuw nsw i64 %indvars.iv1247, 6 ; 2 uses
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248.5
  %i.bgs = load float, ptr %i.bgr, align 4, !tbaa !333
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248.5 ; 2 uses
  %i.bgu = load float, ptr %i.bgt, align 4, !tbaa !333
  %i.bgv = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bgs, float %i.bgu)
  store float %i.bgv, ptr %i.bgt, align 4, !tbaa !333
  %indvars.iv.next1248.6 = add nuw nsw i64 %indvars.iv1247, 7 ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %indvars.iv.next1248.6
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !333
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1248.6 ; 2 uses
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !333
  %i.bha = call float @llvm.fmuladd.f32(float %i.bcv, float %i.bgx, float %i.bgz)
  store float %i.bha, ptr %i.bgy, align 4, !tbaa !333
  %indvars.iv.next1248.7 = add nuw nsw i64 %indvars.iv1247, 8 ; 2 uses
  %exitcond1252.not.7 = icmp eq i64 %indvars.iv.next1248.7, %smax1159.pre-phi
  br i1 %exitcond1252.not.7, label %._crit_edge1101, label %vec.epilog.scalar.ph, !llvm.loop !859

._crit_edge1106.loopexit.unr-lcssa:               ; preds = %bb.ew
  br i1 %lcmp.mod2068.not, label %._crit_edge1106, label %.epil.preheader2065

.epil.preheader2065:                              ; preds = %._crit_edge1106.loopexit.unr-lcssa, %.lr.ph1105
  %indvars.iv1254.epil.init = phi i64 [ 0, %.lr.ph1105 ], [ %indvars.iv.next1255.1, %._crit_edge1106.loopexit.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod2069)
  %i.bhb = lshr i64 %indvars.iv1254.epil.init, 6
  %.zext978.epil = and i64 %i.bhb, 67108863
  %i.bhc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0787.0, i64 %.zext978.epil
  %i.bhd = and i64 %indvars.iv1254.epil.init, 63
  %i.bhe = shl nuw i64 1, %i.bhd
  %i.bhf = load i64, ptr %i.bhc, align 8, !tbaa !13
  %i.bhg = and i64 %i.bhf, %i.bhe
  %.not983.epil = icmp eq i64 %i.bhg, 0
  br i1 %.not983.epil, label %bb.er, label %._crit_edge1106.loopexit.epilog-lcssa

bb.er:                                            ; preds = %.epil.preheader2065
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1254.epil.init
  %i.bhi = load float, ptr %i.bhh, align 4, !tbaa !333
  br label %._crit_edge1106.loopexit.epilog-lcssa

._crit_edge1106.loopexit.epilog-lcssa:            ; preds = %bb.er, %.epil.preheader2065
  %.sink1541.epil = phi float [ %i.bhi, %bb.er ], [ 0.000000e+00, %.epil.preheader2065 ]
  %i.bhj = load ptr, ptr %i.bcg, align 8, !tbaa !524
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %indvars.iv1254.epil.init
  store float %.sink1541.epil, ptr %i.bhk, align 4, !tbaa !333
  br label %._crit_edge1106

._crit_edge1106:                                  ; preds = %._crit_edge1106.loopexit.epilog-lcssa, %._crit_edge1106.loopexit.unr-lcssa, %.preheader989
  br i1 %i.p, label %bb.ex, label %bb.fl

bb.es:                                            ; preds = %bb.ew, %.lr.ph1105.new
  %indvars.iv1254 = phi i64 [ 0, %.lr.ph1105.new ], [ %indvars.iv.next1255.1, %bb.ew ] ; 6 uses
  %niter2071 = phi i64 [ 0, %.lr.ph1105.new ], [ %niter2071.next.1, %bb.ew ]
  %i.bhl = lshr i64 %indvars.iv1254, 6
  %.zext978 = and i64 %i.bhl, 67108863
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0787.0, i64 %.zext978
  %i.bhn = and i64 %indvars.iv1254, 62
  %i.bho = shl nuw nsw i64 1, %i.bhn
  %i.bhp = load i64, ptr %i.bhm, align 8, !tbaa !13 ; 2 uses
  %i.bhq = and i64 %i.bhp, %i.bho
  %.not983 = icmp eq i64 %i.bhq, 0
  br i1 %.not983, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv1254
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !333
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %.sink1541 = phi float [ %i.bhs, %bb.et ], [ 0.000000e+00, %bb.es ]
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %indvars.iv1254
  store float %.sink1541, ptr %i.bht, align 4, !tbaa !333
  %indvars.iv.next1255 = or disjoint i64 %indvars.iv1254, 1 ; 3 uses
  %i.bhu = and i64 %indvars.iv.next1255, 63
  %i.bhv = shl nuw i64 1, %i.bhu
  %i.bhw = and i64 %i.bhp, %i.bhv
  %.not983.1 = icmp eq i64 %i.bhw, 0
  br i1 %.not983.1, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0824.0, i64 %indvars.iv.next1255
  %i.bhy = load float, ptr %i.bhx, align 4, !tbaa !333
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.sink1541.1 = phi float [ %i.bhy, %bb.ev ], [ 0.000000e+00, %bb.eu ]
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %indvars.iv.next1255
  store float %.sink1541.1, ptr %i.bhz, align 4, !tbaa !333
  %indvars.iv.next1255.1 = add nuw nsw i64 %indvars.iv1254, 2 ; 2 uses
  %niter2071.next.1 = add nuw nsw i64 %niter2071, 2 ; 2 uses
  %niter2071.ncmp.1 = icmp eq i64 %niter2071.next.1, %unroll_iter2070
  br i1 %niter2071.ncmp.1, label %._crit_edge1106.loopexit.unr-lcssa, label %bb.es, !llvm.loop !860

bb.ex:                                            ; preds = %._crit_edge1106
  %i.bia = load ptr, ptr %i.fj, align 8, !tbaa !206, !nonnull !66, !align !67
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 48
  %i.bic = load i8, ptr %i.bib, align 8, !tbaa !504, !range !510, !noundef !66
  %i.bid = trunc nuw i8 %i.bic to i1
  br i1 %i.bid, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.bie = load ptr, ptr %i.bf, align 8, !tbaa !190
  %i.bif = load i32, ptr %i.bie, align 8, !tbaa !321
  %i.big = sitofp i32 %i.bif to double
  %i.bih = call double @sqrt(double noundef %i.big) #23
  %i.bii = load ptr, ptr @stderr, align 8, !tbaa !236
  %i.bij = load float, ptr %i.go, align 8, !tbaa !393
  %i.bik = fpext float %i.bij to double
  %i.bil = load <2 x float>, ptr %i.pd, align 4, !tbaa !333
  %i.bim = fpext <2 x float> %i.bil to <2 x double> ; 2 uses
  %i.bin = extractelement <2 x double> %i.bim, i64 0
  %i.bio = fdiv double %i.bin, %i.bih
  %i.bip = load i32, ptr %i.py, align 4, !tbaa !323
  %i.biq = add nsw i32 %i.bip, 1
  %i.bir = extractelement <2 x double> %i.bim, i64 1
  %i.bis = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bii, ptr noundef nonnull @.str.17, i32 noundef %i.sk, double noundef %i.bik, double noundef %i.bio, double noundef %i.bir, i32 noundef %i.biq) #34 ; 0 uses
  %i.bit = load ptr, ptr @stderr, align 8, !tbaa !236
  %i.biu = call i32 @fflush(ptr noundef %i.bit)   ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  %i.biv = uitofp nneg i32 %i.sk to double        ; 3 uses
  %i.biw = load float, ptr %i.pz, align 8, !tbaa !255
  %i.bix = load ptr, ptr %i.ml, align 8, !tbaa !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, i8 0, i64 72, i1 false)
  %i.biy = load ptr, ptr %i.bb, align 8, !tbaa !202
  invoke void @_ZN3gmx12EnergyOutput19addDataAtEnergyStepEbbdfPK14gmx_enerdata_tPK8t_lambdaPA3_KfNS_16PTCouplingArraysEiS9_S9_PK14gmx_ekindata_tPS7_PKNS_11ConstraintsE(ptr noundef nonnull align 8 dereferenceable(392) %9, i1 noundef zeroext false, i1 noundef zeroext false, double noundef %i.biv, float noundef %i.biw, ptr noundef %i.bix, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef nonnull byval(%"struct.gmx::PTCouplingArrays") align 8 %18, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef %i.biy)
          to label %bb.fa unwind label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  %i.biz = load ptr, ptr %i.bj, align 8, !tbaa !78 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 52
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !511 ; 2 uses
  %.not.i717 = icmp eq i32 %i.bjb, 0
  br i1 %.not.i717, label %_Z11do_per_stepll.exit719, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.bjc = sext i32 %i.bjb to i64
  %i.bjd = srem i64 %indvars.iv1260, %i.bjc
  %i.bje = icmp eq i64 %i.bjd, 0
  br label %_Z11do_per_stepll.exit719

_Z11do_per_stepll.exit719:                        ; preds = %bb.fa, %bb.fb
  %.0.i718 = phi i1 [ %i.bje, %bb.fb ], [ false, %bb.fa ] ; 3 uses
  %i.bjf = zext i1 %.0.i718 to i8
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biz, i64 68
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !512 ; 2 uses
  %.not.i720 = icmp eq i32 %i.bjh, 0
  br i1 %.not.i720, label %_Z11do_per_stepll.exit722, label %bb.fc

bb.fc:                                            ; preds = %_Z11do_per_stepll.exit719
  %i.bji = sext i32 %i.bjh to i64
  %i.bjj = srem i64 %indvars.iv1260, %i.bji
  %i.bjk = icmp eq i64 %i.bjj, 0
  br label %_Z11do_per_stepll.exit722

_Z11do_per_stepll.exit722:                        ; preds = %_Z11do_per_stepll.exit719, %bb.fc
  %.0.i721 = phi i1 [ %i.bjk, %bb.fc ], [ false, %_Z11do_per_stepll.exit719 ] ; 2 uses
  %i.bjl = zext i1 %.0.i721 to i8
  %i.bjm = load ptr, ptr %i.el, align 8, !tbaa !195
  invoke void @_ZN3gmx10ImdSession16fillEnergyRecordElb(ptr noundef nonnull align 8 dereferenceable(8) %i.bjm, i64 noundef %indvars.iv1260, i1 noundef zeroext true)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %_Z11do_per_stepll.exit722
  br i1 %.0.i718, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.bjn = load ptr, ptr %i.i, align 8, !tbaa !193
  invoke void @_ZN3gmx12EnergyOutput11printHeaderEP8_IO_FILEld(ptr noundef %i.bjn, i64 noundef %indvars.iv1260, double noundef %i.biv)
          to label %bb.fg unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fj, %bb.fg, %bb.fe, %_Z11do_per_stepll.exit722, %bb.ez
  %i.bjo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %bb.fw

bb.fg:                                            ; preds = %bb.fe, %bb.fd
  %i.bjp = invoke noundef ptr @_Z17mdoutf_get_fp_eneP10gmx_mdoutf(ptr noundef %i.fv)
          to label %bb.fh unwind label %bb.ff

bb.fh:                                            ; preds = %bb.fg
  br i1 %.0.i718, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.bjq = load ptr, ptr %i.i, align 8, !tbaa !193
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  %i.bjr = phi ptr [ %i.bjq, %bb.fi ], [ null, %bb.fh ]
  %i.bjs = load ptr, ptr %i.ew, align 8, !tbaa !200
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 464
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !287
  invoke void @_ZN3gmx12EnergyOutput21printStepToEnergyFileEP9ener_filebbbP8_IO_FILEldP8t_fcdataPNS_3AwhE(ptr noundef nonnull align 8 dereferenceable(392) %9, ptr noundef %i.bjp, i1 noundef zeroext %.0.i721, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.bjr, i64 noundef %indvars.iv1260, double noundef %i.biv, ptr noundef %i.bju, ptr noundef null)
          to label %bb.fk unwind label %bb.ff

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %bb.fl

bb.fl:                                            ; preds = %._crit_edge1106, %bb.fk
  %.1500 = phi i8 [ %i.bjl, %bb.fk ], [ %.0499, %._crit_edge1106 ]
  %.1488 = phi i8 [ %i.bjf, %bb.fk ], [ %.0487, %._crit_edge1106 ]
  %i.bjv = load ptr, ptr %i.el, align 8, !tbaa !195
  %i.bjw = load ptr, ptr %i.bf, align 8, !tbaa !190 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 416
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !324 ; 3 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjw, i64 440
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !191
  %i.bkb = ptrtoint ptr %i.bka to i64
  %i.bkc = ptrtoint ptr %i.bjy to i64
  %i.bkd = sub i64 %i.bkb, %i.bkc
  %i.bke = getelementptr inbounds i8, ptr %i.bjy, i64 %i.bkd
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjw, i64 52
  %i.bkg = invoke noundef zeroext i1 @_ZN3gmx10ImdSession3runElbPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEd(ptr noundef nonnull align 8 dereferenceable(8) %i.bjv, i64 noundef %indvars.iv1260, i1 noundef zeroext true, ptr noundef nonnull %i.bkf, ptr %i.bjy, ptr %i.bke, double noundef 0.000000e+00)
          to label %bb.fm unwind label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %or.cond7 = and i1 %i.p, %i.bkg
  br i1 %or.cond7, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.bkh = load ptr, ptr %i.el, align 8, !tbaa !195
  invoke void @_ZN3gmx10ImdSession24sendPositionsAndEnergiesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bkh)
          to label %bb.fp unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fr, %bb.fn, %bb.fl
  %i.bki = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fp:                                            ; preds = %bb.fn, %bb.fm
  %i.bkj = trunc nuw i8 %.0510 to i1
  br i1 %i.bkj, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bkk = load float, ptr %i.px, align 8, !tbaa !322
  %i.bkl = load ptr, ptr %i.bj, align 8, !tbaa !78
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 504
  %i.bkn = load float, ptr %i.bkm, align 8, !tbaa !237
  %i.bko = fcmp olt float %i.bkk, %i.bkn
  %i.bkp = zext i1 %i.bko to i8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.bkq = phi i8 [ 1, %bb.fp ], [ %i.bkp, %bb.fq ]
end_hunk_0
