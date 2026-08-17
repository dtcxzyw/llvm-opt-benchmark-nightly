inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDASolve:bb.a
  %i.bil = fcmp ugt double %i.bii, %i.bik
  br i1 %i.bil, label %.split.i.i, label %._crit_edge455.i.i

._crit_edge455.i.i:                               ; preds = %bb.hu
  %.pre456.i.i = add nsw i32 %i.bhy, -1
  br label %bb.hx

.split.i.i:                                       ; preds = %bb.hu
  %i.bim = fcmp ult double %i.bif, %i.bie
  br i1 %i.bim, label %bb.hw, label %.thread344.i.i

bb.hv:                                            ; preds = %bb.ht
  %i.bin = fmul double %i.bie, 5.000000e-01
  %i.bio = fcmp ult double %i.bif, %i.bin
  br i1 %i.bio, label %bb.hw, label %.thread344.i.i

bb.hw:                                            ; preds = %bb.hv, %.split.i.i
  store i32 %i.bic, ptr %i.ih, align 8, !tbaa !226
  br label %.thread344.i.i

bb.hx:                                            ; preds = %._crit_edge455.i.i, %bb.hf
  %.pre-phi.i.i = phi i32 [ %.pre456.i.i, %._crit_edge455.i.i ], [ %i.bdc, %bb.hf ] ; 2 uses
  store i32 %.pre-phi.i.i, ptr %i.ih, align 8, !tbaa !226
  br label %.thread344.i.i

.thread344.i.i:                                   ; preds = %bb.hx, %bb.hw, %bb.hv, %.split.i.i, %.thread338.i.i, %.thread338.thread.i.i
  %i.bip = phi i32 [ %i.bic, %bb.hw ], [ %.pre-phi.i.i, %bb.hx ], [ %i.bcw, %.thread338.i.i ], [ %i.bcw, %.thread338.thread.i.i ], [ 1, %bb.hv ], [ %i.bhy, %.split.i.i ]
  %.0284.i.i = phi double [ %i.bib, %bb.hw ], [ %.7274.i, %bb.hx ], [ %.7291.i, %.thread338.i.i ], [ %.7291.i, %.thread338.thread.i.i ], [ %.7291.i, %bb.hv ], [ %.7291.i, %.split.i.i ]
  store double 1.000000e+00, ptr %i.ke, align 8, !tbaa !273
  %i.biq = call double @llvm.fmuladd.f64(double %.0284.i.i, double 2.000000e+00, double 1.000000e-04)
  %i.bir = add nsw i32 %i.bip, 1
  %i.bis = sitofp i32 %i.bir to double
  %i.bit = fdiv double -1.000000e+00, %i.bis
  %i.biu = call double @pow(double noundef %i.biq, double noundef %i.bit) #14 ; 6 uses
  %i.biv = load double, ptr %i.lp, align 8, !tbaa !297
  %i.biw = fcmp ult double %i.biu, %i.biv
  br i1 %i.biw, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %.thread344.i.i
  %i.bix = load double, ptr %i.lq, align 8, !tbaa !298 ; 2 uses
  %i.biy = fcmp olt double %i.biu, %i.bix
  %.326.i.i = select i1 %i.biy, double %i.biu, double %i.bix ; 2 uses
  %i.biz = load double, ptr %i.ik, align 8, !tbaa !216 ; 2 uses
  %i.bja = call double @llvm.fabs.f64(double %i.biz)
  %i.bjb = fmul double %.326.i.i, %i.bja
  %i.bjc = load double, ptr %i.lo, align 8, !tbaa !221
  %i.bjd = fmul double %i.bjc, %i.bjb             ; 2 uses
  %i.bje = fcmp olt double %i.bjd, 1.000000e+00
  %i.bjf = select i1 %i.bje, double 1.000000e+00, double %i.bjd
  %i.bjg = fdiv double %.326.i.i, %i.bjf
  br label %.sink.split.i226.i

bb.hz:                                            ; preds = %.thread344.i.i
  %i.bjh = load double, ptr %i.lr, align 8, !tbaa !299
  %i.bji = fcmp ugt double %i.biu, %i.bjh
  %.pre.i235.i = load double, ptr %i.ik, align 8, !tbaa !216 ; 3 uses
  br i1 %i.bji, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.bjj = load double, ptr %i.ls, align 8, !tbaa !300 ; 2 uses
  %i.bjk = fcmp olt double %i.biu, %i.bjj
  %.327.i.i = select i1 %i.bjk, double %i.biu, double %i.bjj ; 2 uses
  %i.bjl = load double, ptr %i.lt, align 8, !tbaa !301 ; 2 uses
  %i.bjm = fcmp ogt double %.327.i.i, %i.bjl
  %i.bjn = select i1 %i.bjm, double %.327.i.i, double %i.bjl ; 2 uses
  %i.bjo = load double, ptr %i.kc, align 8, !tbaa !222
  %i.bjp = call double @llvm.fabs.f64(double %.pre.i235.i)
  %i.bjq = fdiv double %i.bjo, %i.bjp             ; 2 uses
  %i.bjr = fcmp ogt double %i.bjn, %i.bjq
  %i.bjs = select i1 %i.bjr, double %i.bjn, double %i.bjq
  br label %.sink.split.i226.i

.sink.split.i226.i:                               ; preds = %bb.ia, %bb.hy
  %.sink.i227.i = phi double [ %i.bjs, %bb.ia ], [ %i.bjg, %bb.hy ] ; 2 uses
  %.ph.i.i = phi double [ %.pre.i235.i, %bb.ia ], [ %i.biz, %bb.hy ]
  store double %.sink.i227.i, ptr %i.ke, align 8, !tbaa !273
  %i.bjt = fmul double %.sink.i227.i, %.ph.i.i
  br label %bb.ib

bb.ib:                                            ; preds = %.sink.split.i226.i, %bb.hz
  %i.bju = phi double [ %.pre.i235.i, %bb.hz ], [ %i.bjt, %.sink.split.i226.i ]
  store double %i.bju, ptr %i.ik, align 8, !tbaa !216
  %.pre445.i.i = load i32, ptr %i.ii, align 4, !tbaa !112
  %.pre446.i.i = load i32, ptr %i.ln, align 8, !tbaa !99
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hh, %bb.hg
  %i.bjv = phi i32 [ %i.bdf, %bb.hg ], [ %i.bdf, %bb.hh ], [ %.pre446.i.i, %bb.ib ]
  %i.bjw = phi i32 [ %i.bcw, %bb.hg ], [ %i.bcw, %bb.hh ], [ %.pre445.i.i, %bb.ib ] ; 3 uses
  %i.bjx = icmp slt i32 %i.bjw, %i.bjv
  br i1 %i.bjx, label %bb.id, label %bb.ik

bb.id:                                            ; preds = %bb.ic
  %i.bjy = load ptr, ptr %i.jm, align 8, !tbaa !91
  %i.bjz = sext i32 %i.bjw to i64
  %i.bka = getelementptr [8 x i8], ptr %0, i64 %i.bjz
  %i.bkb = getelementptr i8, ptr %i.bka, i64 352
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !58
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bjy, ptr noundef %i.bkc) #14
  %i.bkd = load i32, ptr %i.hp, align 4, !tbaa !142
  %.not313.i.i = icmp eq i32 %i.bkd, 0
  br i1 %.not313.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bke = load ptr, ptr %i.km, align 8, !tbaa !139
  %i.bkf = load i32, ptr %i.ii, align 4, !tbaa !112
  %i.bkg = sext i32 %i.bkf to i64
  %i.bkh = getelementptr [8 x i8], ptr %0, i64 %i.bkg
  %i.bki = getelementptr i8, ptr %i.bkh, i64 768
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !58
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bke, ptr noundef %i.bkj) #14
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.bkk = load i32, ptr %i.r, align 4, !tbaa !171
  %.not314.i.i = icmp eq i32 %i.bkk, 0            ; 2 uses
  br i1 %.not314.i.i, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.bkl = load i32, ptr %i.z, align 8, !tbaa !194
  %.not315.i.i = icmp eq i32 %i.bkl, 0
  br i1 %.not315.i.i, label %.sink.split.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.bkm = load i32, ptr %i.ib, align 8, !tbaa !149 ; 4 uses
  %i.bkn = icmp sgt i32 %i.bkm, 0
  br i1 %i.bkn, label %.lr.ph.i230.i, label %._crit_edge.i229.i

.lr.ph.i230.i:                                    ; preds = %bb.ih
  %i.bko = load ptr, ptr %i.ic, align 8, !tbaa !101 ; 2 uses
  %wide.trip.count.i231.i = zext nneg i32 %i.bkm to i64 ; 3 uses
  %min.iters.check887 = icmp ult i32 %i.bkm, 4
  br i1 %min.iters.check887, label %scalar.ph886.preheader, label %vector.ph888

vector.ph888:                                     ; preds = %.lr.ph.i230.i
  %n.vec889 = and i64 %wide.trip.count.i231.i, 2147483644 ; 3 uses
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph888
  %index891 = phi i64 [ 0, %vector.ph888 ], [ %index.next892, %vector.body890 ] ; 2 uses
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.bko, i64 %index891 ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bkp, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.bkq, align 8, !tbaa !24
  %index.next892 = add nuw i64 %index891, 4       ; 2 uses
  %i.bkr = icmp eq i64 %index.next892, %n.vec889
  br i1 %i.bkr, label %middle.block893, label %vector.body890, !llvm.loop !302

middle.block893:                                  ; preds = %vector.body890
  %cmp.n894 = icmp eq i64 %n.vec889, %wide.trip.count.i231.i
  br i1 %cmp.n894, label %._crit_edge.i229.i, label %scalar.ph886.preheader

scalar.ph886.preheader:                           ; preds = %.lr.ph.i230.i, %middle.block893
  %indvars.iv.i232.i.ph = phi i64 [ 0, %.lr.ph.i230.i ], [ %n.vec889, %middle.block893 ]
  br label %scalar.ph886

scalar.ph886:                                     ; preds = %scalar.ph886.preheader, %scalar.ph886
  %indvars.iv.i232.i = phi i64 [ %indvars.iv.next.i233.i, %scalar.ph886 ], [ %indvars.iv.i232.i.ph, %scalar.ph886.preheader ] ; 2 uses
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.bko, i64 %indvars.iv.i232.i
  store double 1.000000e+00, ptr %i.bks, align 8, !tbaa !24
  %indvars.iv.next.i233.i = add nuw nsw i64 %indvars.iv.i232.i, 1 ; 2 uses
  %exitcond.not.i234.i = icmp eq i64 %indvars.iv.next.i233.i, %wide.trip.count.i231.i
  br i1 %exitcond.not.i234.i, label %._crit_edge.i229.i, label %scalar.ph886, !llvm.loop !303

._crit_edge.i229.i:                               ; preds = %scalar.ph886, %middle.block893, %bb.ih
  br i1 %.not314.i.i, label %.thread348.i.i, label %bb.ii

bb.ii:                                            ; preds = %._crit_edge.i229.i
  %i.bkt = load ptr, ptr %i.ic, align 8, !tbaa !101
  %i.bku = load ptr, ptr %i.ju, align 8, !tbaa !152
  %i.bkv = load i32, ptr %i.ii, align 4, !tbaa !112
  %i.bkw = sext i32 %i.bkv to i64
  %i.bkx = getelementptr [8 x i8], ptr %0, i64 %i.bkw
  %i.bky = getelementptr i8, ptr %i.bkx, i64 848
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !158
  %i.bla = call i32 @N_VScaleVectorArray(i32 noundef %i.bkm, ptr noundef %i.bkt, ptr noundef %i.bku, ptr noundef %i.bkz) #14 ; 0 uses
  br label %.thread348.i.i

.thread348.i.i:                                   ; preds = %bb.ii, %._crit_edge.i229.i
  %.pr.i = load i32, ptr %i.z, align 8, !tbaa !194
  %.not317.i.i = icmp eq i32 %.pr.i, 0
  %.pre448.i.i = load i32, ptr %i.ii, align 4, !tbaa !112 ; 2 uses
  br i1 %.not317.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %.thread348.i.i
  %i.blb = load i32, ptr %i.ib, align 8, !tbaa !149
  %i.blc = load ptr, ptr %i.ic, align 8, !tbaa !101
  %i.bld = load ptr, ptr %i.lf, align 8, !tbaa !188
  %i.ble = sext i32 %.pre448.i.i to i64
  %i.blf = getelementptr [8 x i8], ptr %0, i64 %i.ble
  %i.blg = getelementptr i8, ptr %i.blf, i64 1024
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !158
  %i.bli = call i32 @N_VScaleVectorArray(i32 noundef %i.blb, ptr noundef %i.blc, ptr noundef %i.bld, ptr noundef %i.blh) #14 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ij, %bb.ig
  %.pre448.i354.i = load i32, ptr %i.ii, align 4, !tbaa !112
  br label %bb.ik

bb.ik:                                            ; preds = %.sink.split.i, %.thread348.i.i, %bb.ic
  %i.blj = phi i32 [ %.pre448.i.i, %.thread348.i.i ], [ %i.bjw, %bb.ic ], [ %.pre448.i354.i, %.sink.split.i ] ; 9 uses
  %i.blk = load ptr, ptr %i.jm, align 8, !tbaa !91
  %i.bll = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 8 uses
  store ptr %i.blk, ptr %i.bll, align 8, !tbaa !58
  %i.blm = sext i32 %i.blj to i64
  %i.bln = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.blm
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !58
  %i.blp = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 9 uses
  store ptr %i.blo, ptr %i.blp, align 8, !tbaa !58
  %.not318354.i.i = icmp slt i32 %i.blj, 1
  br i1 %.not318354.i.i, label %.._crit_edge358_crit_edge.i.i, label %.lr.ph357.preheader.i.i

.._crit_edge358_crit_edge.i.i:                    ; preds = %bb.ik
  %.pre457.i.i = add nsw i32 %i.blj, 1
  br label %._crit_edge358.i.i

.lr.ph357.preheader.i.i:                          ; preds = %bb.ik
  %6 = zext nneg i32 %i.blj to i64                ; 5 uses
  %7 = add nuw i32 %i.blj, 1                      ; 4 uses
  %wide.trip.count396.i.i = zext i32 %7 to i64    ; 2 uses
  %8 = zext nneg i32 %i.blj to i64                ; 2 uses
  %min.iters.check869 = icmp ult i32 %i.blj, 10
  br i1 %min.iters.check869, label %.lr.ph357.i.i.preheader, label %vector.memcheck848

vector.memcheck848:                               ; preds = %.lr.ph357.preheader.i.i
  %scevgep849 = getelementptr i8, ptr %i.bll, i64 8 ; 2 uses
  %i.blq = shl nuw nsw i64 %wide.trip.count396.i.i, 3 ; 3 uses
  %scevgep850 = getelementptr i8, ptr %i.bll, i64 %i.blq ; 2 uses
  %scevgep851 = getelementptr i8, ptr %i.blp, i64 8 ; 2 uses
  %scevgep852 = getelementptr i8, ptr %i.blp, i64 %i.blq ; 2 uses
  %i.blr = shl nuw nsw i64 %6, 3                  ; 2 uses
  %i.bls = sub nsw i64 %i.blr, %i.blq
  %scevgep854 = getelementptr i8, ptr %scevgep853.a, i64 %i.bls ; 2 uses
  %scevgep856 = getelementptr i8, ptr %scevgep855.a, i64 %i.blr ; 2 uses
  %bound0857 = icmp ult ptr %scevgep849, %scevgep852
  %bound1858 = icmp ult ptr %scevgep851, %scevgep850
  %found.conflict859 = and i1 %bound0857, %bound1858
  %bound0860 = icmp ult ptr %scevgep849, %scevgep856
  %bound1861 = icmp ult ptr %scevgep854, %scevgep850
  %found.conflict862 = and i1 %bound0860, %bound1861
  %conflict.rdx863 = or i1 %found.conflict859, %found.conflict862
  %bound0864 = icmp ult ptr %scevgep851, %scevgep856
  %bound1865 = icmp ult ptr %scevgep854, %scevgep852
  %found.conflict866 = and i1 %bound0864, %bound1865
  %conflict.rdx867 = or i1 %conflict.rdx863, %found.conflict866
  br i1 %conflict.rdx867, label %.lr.ph357.i.i.preheader, label %vector.ph870

vector.ph870:                                     ; preds = %vector.memcheck848
  %n.vec871 = and i64 %8, 2147483644              ; 3 uses
  %i.blt = or disjoint i64 %n.vec871, 1
  br label %vector.body872

vector.body872:                                   ; preds = %vector.body872, %vector.ph870
  %index873 = phi i64 [ 0, %vector.ph870 ], [ %index.next882, %vector.body872 ] ; 2 uses
  %i.blu = or disjoint i64 %index873, 1           ; 3 uses
  %i.blv = sub nuw nsw i64 %6, %i.blu
  %i.blw = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.blv ; 4 uses
  %i.blx = getelementptr inbounds i8, ptr %i.blw, i64 -16
  %wide.load874 = load <2 x ptr>, ptr %i.blw, align 8, !tbaa !58, !alias.scope !304
  %wide.load875 = load <2 x ptr>, ptr %i.blx, align 8, !tbaa !58, !alias.scope !304
  %reverse876 = shufflevector <2 x ptr> %wide.load874, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse877 = shufflevector <2 x ptr> %wide.load875, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bly = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %i.blu ; 2 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 16
  store <2 x ptr> %reverse876, ptr %i.bly, align 8, !tbaa !58, !alias.scope !307, !noalias !309
  store <2 x ptr> %reverse877, ptr %i.blz, align 8, !tbaa !58, !alias.scope !307, !noalias !309
  %i.bma = getelementptr inbounds i8, ptr %i.blw, i64 -8
  %i.bmb = getelementptr inbounds i8, ptr %i.blw, i64 -24
  %wide.load878 = load <2 x ptr>, ptr %i.bma, align 8, !tbaa !58, !alias.scope !304
  %wide.load879 = load <2 x ptr>, ptr %i.bmb, align 8, !tbaa !58, !alias.scope !304
  %reverse880 = shufflevector <2 x ptr> %wide.load878, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse881 = shufflevector <2 x ptr> %wide.load879, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bmc = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %i.blu ; 2 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 16
  store <2 x ptr> %reverse880, ptr %i.bmc, align 8, !tbaa !58, !alias.scope !311, !noalias !304
  store <2 x ptr> %reverse881, ptr %i.bmd, align 8, !tbaa !58, !alias.scope !311, !noalias !304
  %index.next882 = add nuw i64 %index873, 4       ; 2 uses
  %i.bme = icmp eq i64 %index.next882, %n.vec871
  br i1 %i.bme, label %middle.block883, label %vector.body872, !llvm.loop !312

middle.block883:                                  ; preds = %vector.body872
  %cmp.n884 = icmp eq i64 %n.vec871, %8
  br i1 %cmp.n884, label %._crit_edge358.i.i, label %.lr.ph357.i.i.preheader

.lr.ph357.i.i.preheader:                          ; preds = %vector.memcheck848, %.lr.ph357.preheader.i.i, %middle.block883
  %indvars.iv393.i.i.ph = phi i64 [ 1, %vector.memcheck848 ], [ 1, %.lr.ph357.preheader.i.i ], [ %i.blt, %middle.block883 ] ; 6 uses
  %9 = zext nneg i32 %i.blj to i64
  %10 = and i32 %i.blj, 1
  %lcmp.mod1129.not.not = icmp eq i32 %10, 0
  br i1 %lcmp.mod1129.not.not, label %.lr.ph357.i.i.prol.loopexit, label %.lr.ph357.i.i.prol

.lr.ph357.i.i.prol:                               ; preds = %.lr.ph357.i.i.preheader
  %i.bmf = sub nuw nsw i64 %6, %indvars.iv393.i.i.ph
  %i.bmg = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.bmf ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 8
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !58
  %i.bmj = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %indvars.iv393.i.i.ph
  store ptr %i.bmi, ptr %i.bmj, align 8, !tbaa !58
  %i.bmk = load ptr, ptr %i.bmg, align 8, !tbaa !58
  %i.bml = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %indvars.iv393.i.i.ph
  store ptr %i.bmk, ptr %i.bml, align 8, !tbaa !58
  %indvars.iv.next394.i.i.prol = add nuw nsw i64 %indvars.iv393.i.i.ph, 1
  br label %.lr.ph357.i.i.prol.loopexit

.lr.ph357.i.i.prol.loopexit:                      ; preds = %.lr.ph357.i.i.prol, %.lr.ph357.i.i.preheader
  %indvars.iv393.i.i.unr = phi i64 [ %indvars.iv393.i.i.ph, %.lr.ph357.i.i.preheader ], [ %indvars.iv.next394.i.i.prol, %.lr.ph357.i.i.prol ]
  %i.bmm = icmp eq i64 %indvars.iv393.i.i.ph, %9
  br i1 %i.bmm, label %._crit_edge358.i.i, label %.lr.ph357.i.i

.lr.ph357.i.i:                                    ; preds = %.lr.ph357.i.i.prol.loopexit, %.lr.ph357.i.i
  %indvars.iv393.i.i = phi i64 [ %indvars.iv.next394.i.i.1, %.lr.ph357.i.i ], [ %indvars.iv393.i.i.unr, %.lr.ph357.i.i.prol.loopexit ] ; 5 uses
  %i.bmn = sub nuw nsw i64 %6, %indvars.iv393.i.i
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.bmn ; 2 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 8
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !58
  %i.bmr = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %indvars.iv393.i.i
  store ptr %i.bmq, ptr %i.bmr, align 8, !tbaa !58
  %i.bms = load ptr, ptr %i.bmo, align 8, !tbaa !58
  %i.bmt = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %indvars.iv393.i.i
  store ptr %i.bms, ptr %i.bmt, align 8, !tbaa !58
  %indvars.iv.next394.i.i = add nuw nsw i64 %indvars.iv393.i.i, 1 ; 3 uses
  %i.bmu = sub nuw nsw i64 %6, %indvars.iv.next394.i.i
  %i.bmv = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.bmu ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 8
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !58
  %i.bmy = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %indvars.iv.next394.i.i
  store ptr %i.bmx, ptr %i.bmy, align 8, !tbaa !58
  %i.bmz = load ptr, ptr %i.bmv, align 8, !tbaa !58
  %i.bna = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %indvars.iv.next394.i.i
  store ptr %i.bmz, ptr %i.bna, align 8, !tbaa !58
  %indvars.iv.next394.i.i.1 = add nuw nsw i64 %indvars.iv393.i.i, 2 ; 2 uses
  %exitcond397.not.i.i.1 = icmp eq i64 %indvars.iv.next394.i.i.1, %wide.trip.count396.i.i
  br i1 %exitcond397.not.i.i.1, label %._crit_edge358.i.i, label %.lr.ph357.i.i, !llvm.loop !313

._crit_edge358.i.i:                               ; preds = %.lr.ph357.i.i.prol.loopexit, %.lr.ph357.i.i, %middle.block883, %.._crit_edge358_crit_edge.i.i
  %.pre-phi458.i.i = phi i32 [ %.pre457.i.i, %.._crit_edge358_crit_edge.i.i ], [ %7, %middle.block883 ], [ %7, %.lr.ph357.i.i ], [ %7, %.lr.ph357.i.i.prol.loopexit ]
  %i.bnb = call i32 @N_VLinearSumVectorArray(i32 noundef %.pre-phi458.i.i, double noundef 1.000000e+00, ptr noundef nonnull %i.blp, double noundef 1.000000e+00, ptr noundef nonnull %i.bll, ptr noundef nonnull %i.blp) #14 ; 0 uses
  %i.bnc = load i32, ptr %i.hp, align 4, !tbaa !142
  %.not319.i.i = icmp eq i32 %i.bnc, 0
  br i1 %.not319.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %._crit_edge358.i.i
  %i.bnd = load ptr, ptr %i.km, align 8, !tbaa !139
  %i.bne = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 8 uses
  store ptr %i.bnd, ptr %i.bne, align 8, !tbaa !58
  %i.bnf = load i32, ptr %i.ii, align 4, !tbaa !112 ; 9 uses
  %i.bng = sext i32 %i.bnf to i64
  %i.bnh = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.bng
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !58
  %i.bnj = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 9 uses
  store ptr %i.bni, ptr %i.bnj, align 8, !tbaa !58
  %.not320359.i.i = icmp slt i32 %i.bnf, 1
  br i1 %.not320359.i.i, label %.._crit_edge363_crit_edge.i.i, label %.lr.ph362.preheader.i.i

.._crit_edge363_crit_edge.i.i:                    ; preds = %bb.il
  %.pre459.i.i = add nsw i32 %i.bnf, 1
  br label %._crit_edge363.i.i

.lr.ph362.preheader.i.i:                          ; preds = %bb.il
  %11 = zext nneg i32 %i.bnf to i64               ; 5 uses
  %12 = add nuw i32 %i.bnf, 1                     ; 4 uses
  %wide.trip.count401.i.i = zext i32 %12 to i64   ; 2 uses
  %13 = zext nneg i32 %i.bnf to i64               ; 2 uses
  %min.iters.check832 = icmp ult i32 %i.bnf, 10
  br i1 %min.iters.check832, label %.lr.ph362.i.i.preheader, label %vector.memcheck815

vector.memcheck815:                               ; preds = %.lr.ph362.preheader.i.i
  %scevgep = getelementptr i8, ptr %i.bne, i64 8  ; 2 uses
  %i.bnk = shl nuw nsw i64 %wide.trip.count401.i.i, 3 ; 3 uses
  %scevgep816 = getelementptr i8, ptr %i.bne, i64 %i.bnk ; 2 uses
  %scevgep817 = getelementptr i8, ptr %i.bnj, i64 8 ; 2 uses
  %scevgep818 = getelementptr i8, ptr %i.bnj, i64 %i.bnk ; 2 uses
  %i.bnl = shl nuw nsw i64 %11, 3                 ; 2 uses
  %i.bnm = sub nsw i64 %i.bnl, %i.bnk
  %scevgep820 = getelementptr i8, ptr %scevgep819, i64 %i.bnm ; 2 uses
  %scevgep822 = getelementptr i8, ptr %scevgep821.a, i64 %i.bnl ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep818
  %bound1 = icmp ult ptr %scevgep817, %scevgep816
  %found.conflict = and i1 %bound0, %bound1
  %bound0823 = icmp ult ptr %scevgep, %scevgep822
  %bound1824 = icmp ult ptr %scevgep820, %scevgep816
  %found.conflict825 = and i1 %bound0823, %bound1824
  %conflict.rdx826 = or i1 %found.conflict, %found.conflict825
  %bound0827 = icmp ult ptr %scevgep817, %scevgep822
  %bound1828 = icmp ult ptr %scevgep820, %scevgep818
  %found.conflict829 = and i1 %bound0827, %bound1828
  %conflict.rdx830 = or i1 %conflict.rdx826, %found.conflict829
  br i1 %conflict.rdx830, label %.lr.ph362.i.i.preheader, label %vector.ph833

vector.ph833:                                     ; preds = %vector.memcheck815
  %n.vec834 = and i64 %13, 2147483644             ; 3 uses
  %i.bnn = or disjoint i64 %n.vec834, 1
  br label %vector.body835

vector.body835:                                   ; preds = %vector.body835, %vector.ph833
  %index836 = phi i64 [ 0, %vector.ph833 ], [ %index.next844, %vector.body835 ] ; 2 uses
  %i.bno = or disjoint i64 %index836, 1           ; 3 uses
  %i.bnp = sub nuw nsw i64 %11, %i.bno
  %i.bnq = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.bnp ; 4 uses
  %i.bnr = getelementptr inbounds i8, ptr %i.bnq, i64 -16
  %wide.load837 = load <2 x ptr>, ptr %i.bnq, align 8, !tbaa !58, !alias.scope !314
  %wide.load838 = load <2 x ptr>, ptr %i.bnr, align 8, !tbaa !58, !alias.scope !314
  %reverse = shufflevector <2 x ptr> %wide.load837, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse839 = shufflevector <2 x ptr> %wide.load838, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bns = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %i.bno ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 16
  store <2 x ptr> %reverse, ptr %i.bns, align 8, !tbaa !58, !alias.scope !317, !noalias !319
  store <2 x ptr> %reverse839, ptr %i.bnt, align 8, !tbaa !58, !alias.scope !317, !noalias !319
  %i.bnu = getelementptr inbounds i8, ptr %i.bnq, i64 -8
  %i.bnv = getelementptr inbounds i8, ptr %i.bnq, i64 -24
  %wide.load840 = load <2 x ptr>, ptr %i.bnu, align 8, !tbaa !58, !alias.scope !314
  %wide.load841 = load <2 x ptr>, ptr %i.bnv, align 8, !tbaa !58, !alias.scope !314
  %reverse842 = shufflevector <2 x ptr> %wide.load840, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse843 = shufflevector <2 x ptr> %wide.load841, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bnw = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %i.bno ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 16
  store <2 x ptr> %reverse842, ptr %i.bnw, align 8, !tbaa !58, !alias.scope !321, !noalias !314
  store <2 x ptr> %reverse843, ptr %i.bnx, align 8, !tbaa !58, !alias.scope !321, !noalias !314
  %index.next844 = add nuw i64 %index836, 4       ; 2 uses
  %i.bny = icmp eq i64 %index.next844, %n.vec834
  br i1 %i.bny, label %middle.block845, label %vector.body835, !llvm.loop !322

middle.block845:                                  ; preds = %vector.body835
  %cmp.n846 = icmp eq i64 %n.vec834, %13
  br i1 %cmp.n846, label %._crit_edge363.i.i, label %.lr.ph362.i.i.preheader

.lr.ph362.i.i.preheader:                          ; preds = %vector.memcheck815, %.lr.ph362.preheader.i.i, %middle.block845
  %indvars.iv398.i.i.ph = phi i64 [ 1, %vector.memcheck815 ], [ 1, %.lr.ph362.preheader.i.i ], [ %i.bnn, %middle.block845 ] ; 6 uses
  %14 = zext nneg i32 %i.bnf to i64
  %15 = and i32 %i.bnf, 1
  %lcmp.mod1132.not.not = icmp eq i32 %15, 0
  br i1 %lcmp.mod1132.not.not, label %.lr.ph362.i.i.prol.loopexit, label %.lr.ph362.i.i.prol

.lr.ph362.i.i.prol:                               ; preds = %.lr.ph362.i.i.preheader
  %i.bnz = sub nuw nsw i64 %11, %indvars.iv398.i.i.ph
  %i.boa = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.bnz ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 8
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !58
  %i.bod = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %indvars.iv398.i.i.ph
  store ptr %i.boc, ptr %i.bod, align 8, !tbaa !58
  %i.boe = load ptr, ptr %i.boa, align 8, !tbaa !58
  %i.bof = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %indvars.iv398.i.i.ph
  store ptr %i.boe, ptr %i.bof, align 8, !tbaa !58
  %indvars.iv.next399.i.i.prol = add nuw nsw i64 %indvars.iv398.i.i.ph, 1
  br label %.lr.ph362.i.i.prol.loopexit

.lr.ph362.i.i.prol.loopexit:                      ; preds = %.lr.ph362.i.i.prol, %.lr.ph362.i.i.preheader
  %indvars.iv398.i.i.unr = phi i64 [ %indvars.iv398.i.i.ph, %.lr.ph362.i.i.preheader ], [ %indvars.iv.next399.i.i.prol, %.lr.ph362.i.i.prol ]
  %i.bog = icmp eq i64 %indvars.iv398.i.i.ph, %14
  br i1 %i.bog, label %._crit_edge363.i.i, label %.lr.ph362.i.i

.lr.ph362.i.i:                                    ; preds = %.lr.ph362.i.i.prol.loopexit, %.lr.ph362.i.i
  %indvars.iv398.i.i = phi i64 [ %indvars.iv.next399.i.i.1, %.lr.ph362.i.i ], [ %indvars.iv398.i.i.unr, %.lr.ph362.i.i.prol.loopexit ] ; 5 uses
  %i.boh = sub nuw nsw i64 %11, %indvars.iv398.i.i
  %i.boi = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.boh ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 8
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !58
  %i.bol = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %indvars.iv398.i.i
  store ptr %i.bok, ptr %i.bol, align 8, !tbaa !58
  %i.bom = load ptr, ptr %i.boi, align 8, !tbaa !58
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %indvars.iv398.i.i
  store ptr %i.bom, ptr %i.bon, align 8, !tbaa !58
  %indvars.iv.next399.i.i = add nuw nsw i64 %indvars.iv398.i.i, 1 ; 3 uses
  %i.boo = sub nuw nsw i64 %11, %indvars.iv.next399.i.i
  %i.bop = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.boo ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !58
  %i.bos = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %indvars.iv.next399.i.i
  store ptr %i.bor, ptr %i.bos, align 8, !tbaa !58
  %i.bot = load ptr, ptr %i.bop, align 8, !tbaa !58
  %i.bou = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %indvars.iv.next399.i.i
  store ptr %i.bot, ptr %i.bou, align 8, !tbaa !58
  %indvars.iv.next399.i.i.1 = add nuw nsw i64 %indvars.iv398.i.i, 2 ; 2 uses
  %exitcond402.not.i.i.1 = icmp eq i64 %indvars.iv.next399.i.i.1, %wide.trip.count401.i.i
  br i1 %exitcond402.not.i.i.1, label %._crit_edge363.i.i, label %.lr.ph362.i.i, !llvm.loop !323

._crit_edge363.i.i:                               ; preds = %.lr.ph362.i.i.prol.loopexit, %.lr.ph362.i.i, %middle.block845, %.._crit_edge363_crit_edge.i.i
  %.pre-phi460.i.i = phi i32 [ %.pre459.i.i, %.._crit_edge363_crit_edge.i.i ], [ %12, %middle.block845 ], [ %12, %.lr.ph362.i.i ], [ %12, %.lr.ph362.i.i.prol.loopexit ]
  %i.bov = call i32 @N_VLinearSumVectorArray(i32 noundef %.pre-phi460.i.i, double noundef 1.000000e+00, ptr noundef nonnull %i.bnj, double noundef 1.000000e+00, ptr noundef nonnull %i.bne, ptr noundef nonnull %i.bnj) #14 ; 0 uses
  br label %bb.im

bb.im:                                            ; preds = %._crit_edge363.i.i, %._crit_edge358.i.i
  %i.bow = load i32, ptr %i.r, align 4, !tbaa !171
  %.not321.i.i = icmp eq i32 %i.bow, 0
  br i1 %.not321.i.i, label %bb.in, label %.preheader351.i.i

.preheader351.i.i:                                ; preds = %bb.im
  %i.box = load i32, ptr %i.ib, align 8, !tbaa !149 ; 5 uses
  %i.boy = icmp sgt i32 %i.box, 0
  %.pre449.i.i = load i32, ptr %i.ii, align 4, !tbaa !112 ; 7 uses
  %.pre450.i.i = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 11 uses
  %.pre450.i.i790 = ptrtoaddr ptr %.pre450.i.i to i64 ; 3 uses
  %.pre451.i.i = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 10 uses
  %.pre451.i.i791 = ptrtoaddr ptr %.pre451.i.i to i64 ; 3 uses
  br i1 %i.boy, label %.lr.ph373.i.i, label %._crit_edge374.i.i

.lr.ph373.i.i:                                    ; preds = %.preheader351.i.i
  %i.boz = load ptr, ptr %i.ju, align 8, !tbaa !152 ; 6 uses
  %i.bpa = ptrtoaddr ptr %i.boz to i64            ; 2 uses
  %i.bpb = sext i32 %.pre449.i.i to i64
  %i.bpc = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.bpb
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !158 ; 6 uses
  %i.bpe = ptrtoaddr ptr %i.bpd to i64            ; 2 uses
  %.not324365.i.i = icmp slt i32 %.pre449.i.i, 1
  br i1 %.not324365.i.i, label %.lr.ph373.split.us.preheader.i.i, label %.lr.ph369.preheader.i.i

.lr.ph369.preheader.i.i:                          ; preds = %.lr.ph373.i.i
  %16 = zext nneg i32 %.pre449.i.i to i64         ; 3 uses
  %wide.trip.count415.i.i = zext nneg i32 %i.box to i64
  %i.bpf = zext nneg i32 %.pre449.i.i to i64      ; 2 uses
  %xtraiter1135 = and i64 %i.bpf, 1
  %i.bpg = icmp eq i32 %.pre449.i.i, 1
  %unroll_iter1140 = and i64 %i.bpf, 2147483646
  %invariant.gep1197 = getelementptr [8 x i8], ptr %i.ht, i64 %16
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1135, 0
  %lcmp.mod1139 = trunc i32 %.pre449.i.i to i1
  br label %.lr.ph369.i.i

.lr.ph373.split.us.preheader.i.i:                 ; preds = %.lr.ph373.i.i
  %wide.trip.count422.i.i = zext nneg i32 %i.box to i64 ; 5 uses
  %min.iters.check802 = icmp ult i32 %i.box, 16
  br i1 %min.iters.check802, label %.lr.ph373.split.us.i.i.preheader, label %vector.memcheck789

vector.memcheck789:                               ; preds = %.lr.ph373.split.us.preheader.i.i
  %i.bph = sub i64 %.pre451.i.i791, %.pre450.i.i790
  %diff.check792 = icmp ugt i64 %i.bph, -32
  %i.bpi = sub i64 %i.bpa, %.pre451.i.i791
  %diff.check793 = icmp ugt i64 %i.bpi, -32
  %conflict.rdx794 = or i1 %diff.check792, %diff.check793
  %i.bpj = sub i64 %.pre451.i.i791, %i.bpe
  %diff.check795 = icmp ugt i64 %i.bpj, -32
  %conflict.rdx796 = or i1 %conflict.rdx794, %diff.check795
  %i.bpk = sub i64 %i.bpa, %.pre450.i.i790
  %diff.check797 = icmp ugt i64 %i.bpk, -32
  %conflict.rdx798 = or i1 %conflict.rdx796, %diff.check797
  %i.bpl = sub i64 %i.bpe, %.pre450.i.i790
  %diff.check799 = icmp ugt i64 %i.bpl, -32
  %conflict.rdx800 = or i1 %conflict.rdx798, %diff.check799
  br i1 %conflict.rdx800, label %.lr.ph373.split.us.i.i.preheader, label %vector.ph803

vector.ph803:                                     ; preds = %vector.memcheck789
  %n.vec804 = and i64 %wide.trip.count422.i.i, 2147483644 ; 3 uses
  br label %vector.body805

vector.body805:                                   ; preds = %vector.body805, %vector.ph803
  %index806 = phi i64 [ 0, %vector.ph803 ], [ %index.next811, %vector.body805 ] ; 5 uses
  %i.bpm = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %index806 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 16
  %wide.load807 = load <2 x ptr>, ptr %i.bpm, align 8, !tbaa !58
  %wide.load808 = load <2 x ptr>, ptr %i.bpn, align 8, !tbaa !58
  %i.bpo = getelementptr inbounds nuw [8 x i8], ptr %.pre451.i.i, i64 %index806 ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 16
  store <2 x ptr> %wide.load807, ptr %i.bpo, align 8, !tbaa !58
  store <2 x ptr> %wide.load808, ptr %i.bpp, align 8, !tbaa !58
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %index806 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 16
  %wide.load809 = load <2 x ptr>, ptr %i.bpq, align 8, !tbaa !58
  %wide.load810 = load <2 x ptr>, ptr %i.bpr, align 8, !tbaa !58
  %i.bps = getelementptr inbounds nuw [8 x i8], ptr %.pre450.i.i, i64 %index806 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 16
  store <2 x ptr> %wide.load809, ptr %i.bps, align 8, !tbaa !58
  store <2 x ptr> %wide.load810, ptr %i.bpt, align 8, !tbaa !58
  %index.next811 = add nuw i64 %index806, 4       ; 2 uses
  %i.bpu = icmp eq i64 %index.next811, %n.vec804
  br i1 %i.bpu, label %middle.block812, label %vector.body805, !llvm.loop !324

middle.block812:                                  ; preds = %vector.body805
  %cmp.n813 = icmp eq i64 %n.vec804, %wide.trip.count422.i.i
  br i1 %cmp.n813, label %._crit_edge374.i.i, label %.lr.ph373.split.us.i.i.preheader

.lr.ph373.split.us.i.i.preheader:                 ; preds = %vector.memcheck789, %.lr.ph373.split.us.preheader.i.i, %middle.block812
  %indvars.iv417.i.i.ph = phi i64 [ 0, %vector.memcheck789 ], [ 0, %.lr.ph373.split.us.preheader.i.i ], [ %n.vec804, %middle.block812 ] ; 7 uses
  %xtraiter1142 = and i64 %wide.trip.count422.i.i, 1
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  br i1 %lcmp.mod1143.not, label %.lr.ph373.split.us.i.i.prol.loopexit, label %.lr.ph373.split.us.i.i.prol

.lr.ph373.split.us.i.i.prol:                      ; preds = %.lr.ph373.split.us.i.i.preheader
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %indvars.iv417.i.i.ph
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !58
  %i.bpx = getelementptr inbounds nuw [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv417.i.i.ph
  store ptr %i.bpw, ptr %i.bpx, align 8, !tbaa !58
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %indvars.iv417.i.i.ph
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !58
  %i.bqa = getelementptr inbounds nuw [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv417.i.i.ph
  store ptr %i.bpz, ptr %i.bqa, align 8, !tbaa !58
  %indvars.iv.next418.i.i.prol = or disjoint i64 %indvars.iv417.i.i.ph, 1
  br label %.lr.ph373.split.us.i.i.prol.loopexit

.lr.ph373.split.us.i.i.prol.loopexit:             ; preds = %.lr.ph373.split.us.i.i.prol, %.lr.ph373.split.us.i.i.preheader
  %indvars.iv417.i.i.unr = phi i64 [ %indvars.iv417.i.i.ph, %.lr.ph373.split.us.i.i.preheader ], [ %indvars.iv.next418.i.i.prol, %.lr.ph373.split.us.i.i.prol ]
  %i.bqb = add nsw i64 %wide.trip.count422.i.i, -1
  %i.bqc = icmp eq i64 %indvars.iv417.i.i.ph, %i.bqb
  br i1 %i.bqc, label %._crit_edge374.i.i, label %.lr.ph373.split.us.i.i

.lr.ph373.split.us.i.i:                           ; preds = %.lr.ph373.split.us.i.i.prol.loopexit, %.lr.ph373.split.us.i.i
  %indvars.iv417.i.i = phi i64 [ %indvars.iv.next418.i.i.1, %.lr.ph373.split.us.i.i ], [ %indvars.iv417.i.i.unr, %.lr.ph373.split.us.i.i.prol.loopexit ] ; 6 uses
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %indvars.iv417.i.i
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !58
  %i.bqf = getelementptr inbounds nuw [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv417.i.i
  store ptr %i.bqe, ptr %i.bqf, align 8, !tbaa !58
  %i.bqg = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %indvars.iv417.i.i
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !58
  %i.bqi = getelementptr inbounds nuw [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv417.i.i
  store ptr %i.bqh, ptr %i.bqi, align 8, !tbaa !58
  %indvars.iv.next418.i.i = add nuw nsw i64 %indvars.iv417.i.i, 1 ; 4 uses
  %i.bqj = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %indvars.iv.next418.i.i
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !58
  %i.bql = getelementptr inbounds nuw [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv.next418.i.i
  store ptr %i.bqk, ptr %i.bql, align 8, !tbaa !58
  %i.bqm = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %indvars.iv.next418.i.i
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !58
  %i.bqo = getelementptr inbounds nuw [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv.next418.i.i
  store ptr %i.bqn, ptr %i.bqo, align 8, !tbaa !58
  %indvars.iv.next418.i.i.1 = add nuw nsw i64 %indvars.iv417.i.i, 2 ; 2 uses
  %exitcond423.not.i.i.1 = icmp eq i64 %indvars.iv.next418.i.i.1, %wide.trip.count422.i.i
  br i1 %exitcond423.not.i.i.1, label %._crit_edge374.i.i, label %.lr.ph373.split.us.i.i, !llvm.loop !325

.lr.ph369.i.i:                                    ; preds = %._crit_edge370.i.i, %.lr.ph369.preheader.i.i
  %indvars.iv412.i.i = phi i64 [ 0, %.lr.ph369.preheader.i.i ], [ %indvars.iv.next413.i.i, %._crit_edge370.i.i ] ; 9 uses
  %.0372.i.i = phi i32 [ 0, %.lr.ph369.preheader.i.i ], [ %i.bsa, %._crit_edge370.i.i ] ; 2 uses
  %i.bqp = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %indvars.iv412.i.i
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !58
  %i.bqr = sext i32 %.0372.i.i to i64             ; 2 uses
  %i.bqs = getelementptr inbounds [8 x i8], ptr %.pre451.i.i, i64 %i.bqr
  store ptr %i.bqq, ptr %i.bqs, align 8, !tbaa !58
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %indvars.iv412.i.i
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !58
  %i.bqv = getelementptr inbounds [8 x i8], ptr %.pre450.i.i, i64 %i.bqr
  store ptr %i.bqu, ptr %i.bqv, align 8, !tbaa !58
  %.1364.i.i = add i32 %.0372.i.i, 1
  %i.bqw = sext i32 %.1364.i.i to i64             ; 2 uses
  br i1 %i.bpg, label %.epil.preheader1134, label %.lr.ph369.i.i.new

.lr.ph369.i.i.new:                                ; preds = %.lr.ph369.i.i, %.lr.ph369.i.i.new
  %indvars.iv405.i.i = phi i64 [ %indvars.iv.next406.i.i.1, %.lr.ph369.i.i.new ], [ 1, %.lr.ph369.i.i ] ; 3 uses
  %indvars.iv403.i.i = phi i64 [ %indvars.iv.next404.i.i.1, %.lr.ph369.i.i.new ], [ %i.bqw, %.lr.ph369.i.i ] ; 4 uses
  %niter1141 = phi i64 [ %niter1141.next.1, %.lr.ph369.i.i.new ], [ 0, %.lr.ph369.i.i ]
  %i.bqx = sub nuw nsw i64 %16, %indvars.iv405.i.i
  %i.bqy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.bqx ; 2 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 8
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !158
  %i.brb = getelementptr inbounds nuw [8 x i8], ptr %i.bra, i64 %indvars.iv412.i.i
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !58
  %i.brd = getelementptr inbounds [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv403.i.i
  store ptr %i.brc, ptr %i.brd, align 8, !tbaa !58
  %i.bre = load ptr, ptr %i.bqy, align 8, !tbaa !158 ; 2 uses
  %i.brf = getelementptr inbounds nuw [8 x i8], ptr %i.bre, i64 %indvars.iv412.i.i
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !58
  %i.brh = getelementptr inbounds [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv403.i.i
  store ptr %i.brg, ptr %i.brh, align 8, !tbaa !58
  %indvars.iv.next406.i.i.neg = xor i64 %indvars.iv405.i.i, -1
  %indvars.iv.next404.i.i = add nsw i64 %indvars.iv403.i.i, 1 ; 2 uses
  %gep1198 = getelementptr [8 x i8], ptr %invariant.gep1197, i64 %indvars.iv.next406.i.i.neg
  %i.bri = getelementptr inbounds nuw [8 x i8], ptr %i.bre, i64 %indvars.iv412.i.i
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !58
  %i.brk = getelementptr inbounds [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv.next404.i.i
  store ptr %i.brj, ptr %i.brk, align 8, !tbaa !58
  %i.brl = load ptr, ptr %gep1198, align 8, !tbaa !158
  %i.brm = getelementptr inbounds nuw [8 x i8], ptr %i.brl, i64 %indvars.iv412.i.i
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !58
  %i.bro = getelementptr inbounds [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv.next404.i.i
  store ptr %i.brn, ptr %i.bro, align 8, !tbaa !58
  %indvars.iv.next406.i.i.1 = add nuw nsw i64 %indvars.iv405.i.i, 2 ; 2 uses
  %indvars.iv.next404.i.i.1 = add nsw i64 %indvars.iv403.i.i, 2 ; 3 uses
  %niter1141.next.1 = add nuw i64 %niter1141, 2   ; 2 uses
  %niter1141.ncmp.1 = icmp eq i64 %niter1141.next.1, %unroll_iter1140
  br i1 %niter1141.ncmp.1, label %._crit_edge370.i.i.unr-lcssa, label %.lr.ph369.i.i.new

._crit_edge370.i.i.unr-lcssa:                     ; preds = %.lr.ph369.i.i.new
  br i1 %lcmp.mod1137.not, label %._crit_edge370.i.i, label %.epil.preheader1134

.epil.preheader1134:                              ; preds = %._crit_edge370.i.i.unr-lcssa, %.lr.ph369.i.i
  %indvars.iv405.i.i.epil.init = phi i64 [ 1, %.lr.ph369.i.i ], [ %indvars.iv.next406.i.i.1, %._crit_edge370.i.i.unr-lcssa ]
  %indvars.iv403.i.i.epil.init = phi i64 [ %i.bqw, %.lr.ph369.i.i ], [ %indvars.iv.next404.i.i.1, %._crit_edge370.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1139)
  %i.brp = sub nuw nsw i64 %16, %indvars.iv405.i.i.epil.init
  %i.brq = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.brp ; 2 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 8
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !158
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.brs, i64 %indvars.iv412.i.i
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !58
  %i.brv = getelementptr inbounds [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv403.i.i.epil.init
  store ptr %i.bru, ptr %i.brv, align 8, !tbaa !58
  %i.brw = load ptr, ptr %i.brq, align 8, !tbaa !158
  %i.brx = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv412.i.i
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !58
  %i.brz = getelementptr inbounds [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv403.i.i.epil.init
  store ptr %i.bry, ptr %i.brz, align 8, !tbaa !58
  %indvars.iv.next404.i.i.epil = add nsw i64 %indvars.iv403.i.i.epil.init, 1
  br label %._crit_edge370.i.i

._crit_edge370.i.i:                               ; preds = %._crit_edge370.i.i.unr-lcssa, %.epil.preheader1134
  %indvars.iv.next404.i.i.lcssa = phi i64 [ %indvars.iv.next404.i.i.1, %._crit_edge370.i.i.unr-lcssa ], [ %indvars.iv.next404.i.i.epil, %.epil.preheader1134 ]
  %i.bsa = trunc nsw i64 %indvars.iv.next404.i.i.lcssa to i32
  %indvars.iv.next413.i.i = add nuw nsw i64 %indvars.iv412.i.i, 1 ; 2 uses
  %exitcond416.not.i.i = icmp eq i64 %indvars.iv.next413.i.i, %wide.trip.count415.i.i
  br i1 %exitcond416.not.i.i, label %._crit_edge374.i.i, label %.lr.ph369.i.i

._crit_edge374.i.i:                               ; preds = %._crit_edge370.i.i, %.lr.ph373.split.us.i.i.prol.loopexit, %.lr.ph373.split.us.i.i, %middle.block812, %.preheader351.i.i
  %i.bsb = add nsw i32 %.pre449.i.i, 1
  %i.bsc = mul nsw i32 %i.bsb, %i.box
  %i.bsd = call i32 @N_VLinearSumVectorArray(i32 noundef %i.bsc, double noundef 1.000000e+00, ptr noundef %.pre450.i.i, double noundef 1.000000e+00, ptr noundef %.pre451.i.i, ptr noundef %.pre450.i.i) #14 ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %._crit_edge374.i.i, %bb.im
  %i.bse = load i32, ptr %i.z, align 8, !tbaa !194
  %.not322.i.i = icmp eq i32 %i.bse, 0
  br i1 %.not322.i.i, label %IDAStep.exit.thread461, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.in
  %i.bsf = load i32, ptr %i.ib, align 8, !tbaa !149 ; 5 uses
  %i.bsg = icmp sgt i32 %i.bsf, 0
  %.pre452.i.i = load i32, ptr %i.ii, align 4, !tbaa !112 ; 7 uses
  %.pre453.i.i = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 11 uses
  %.pre453.i.i767 = ptrtoaddr ptr %.pre453.i.i to i64 ; 3 uses
  %.pre454.i.i = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 10 uses
  %.pre454.i.i768 = ptrtoaddr ptr %.pre454.i.i to i64 ; 3 uses
  br i1 %i.bsg, label %.lr.ph386.i.i, label %._crit_edge387.i.i

.lr.ph386.i.i:                                    ; preds = %.preheader.i.i
  %i.bsh = load ptr, ptr %i.lf, align 8, !tbaa !188 ; 6 uses
  %i.bsi = ptrtoaddr ptr %i.bsh to i64            ; 2 uses
  %i.bsj = sext i32 %.pre452.i.i to i64
  %i.bsk = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.bsj
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !158 ; 6 uses
  %i.bsm = ptrtoaddr ptr %i.bsl to i64            ; 2 uses
  %.not323377.i.i = icmp slt i32 %.pre452.i.i, 1
  br i1 %.not323377.i.i, label %.lr.ph386.split.us.preheader.i.i, label %.lr.ph381.preheader.i.i

.lr.ph381.preheader.i.i:                          ; preds = %.lr.ph386.i.i
  %17 = zext nneg i32 %.pre452.i.i to i64         ; 3 uses
  %wide.trip.count436.i.i = zext nneg i32 %i.bsf to i64
  %i.bsn = zext nneg i32 %.pre452.i.i to i64      ; 2 uses
  %xtraiter1146 = and i64 %i.bsn, 1
  %i.bso = icmp eq i32 %.pre452.i.i, 1
  %unroll_iter1151 = and i64 %i.bsn, 2147483646
  %invariant.gep1199 = getelementptr [8 x i8], ptr %i.hw, i64 %17
  %lcmp.mod1148.not = icmp eq i64 %xtraiter1146, 0
  %lcmp.mod1150 = trunc i32 %.pre452.i.i to i1
  br label %.lr.ph381.i.i

.lr.ph386.split.us.preheader.i.i:                 ; preds = %.lr.ph386.i.i
  %wide.trip.count443.i.i = zext nneg i32 %i.bsf to i64 ; 5 uses
  %min.iters.check777 = icmp ult i32 %i.bsf, 16
  br i1 %min.iters.check777, label %.lr.ph386.split.us.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph386.split.us.preheader.i.i
  %i.bsp = sub i64 %.pre454.i.i768, %.pre453.i.i767
  %diff.check = icmp ugt i64 %i.bsp, -32
  %i.bsq = sub i64 %i.bsi, %.pre454.i.i768
  %diff.check769 = icmp ugt i64 %i.bsq, -32
  %conflict.rdx = or i1 %diff.check, %diff.check769
  %i.bsr = sub i64 %.pre454.i.i768, %i.bsm
  %diff.check770 = icmp ugt i64 %i.bsr, -32
  %conflict.rdx771 = or i1 %conflict.rdx, %diff.check770
  %i.bss = sub i64 %i.bsi, %.pre453.i.i767
  %diff.check772 = icmp ugt i64 %i.bss, -32
  %conflict.rdx773 = or i1 %conflict.rdx771, %diff.check772
  %i.bst = sub i64 %i.bsm, %.pre453.i.i767
  %diff.check774 = icmp ugt i64 %i.bst, -32
  %conflict.rdx775 = or i1 %conflict.rdx773, %diff.check774
  br i1 %conflict.rdx775, label %.lr.ph386.split.us.i.i.preheader, label %vector.ph778

vector.ph778:                                     ; preds = %vector.memcheck
  %n.vec779 = and i64 %wide.trip.count443.i.i, 2147483644 ; 3 uses
  br label %vector.body780

vector.body780:                                   ; preds = %vector.body780, %vector.ph778
  %index781 = phi i64 [ 0, %vector.ph778 ], [ %index.next785, %vector.body780 ] ; 5 uses
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %index781 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bsu, align 8, !tbaa !58
  %wide.load782 = load <2 x ptr>, ptr %i.bsv, align 8, !tbaa !58
  %i.bsw = getelementptr inbounds nuw [8 x i8], ptr %.pre454.i.i, i64 %index781 ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 16
  store <2 x ptr> %wide.load, ptr %i.bsw, align 8, !tbaa !58
  store <2 x ptr> %wide.load782, ptr %i.bsx, align 8, !tbaa !58
  %i.bsy = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %index781 ; 2 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 16
  %wide.load783 = load <2 x ptr>, ptr %i.bsy, align 8, !tbaa !58
  %wide.load784 = load <2 x ptr>, ptr %i.bsz, align 8, !tbaa !58
  %i.bta = getelementptr inbounds nuw [8 x i8], ptr %.pre453.i.i, i64 %index781 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 16
  store <2 x ptr> %wide.load783, ptr %i.bta, align 8, !tbaa !58
  store <2 x ptr> %wide.load784, ptr %i.btb, align 8, !tbaa !58
  %index.next785 = add nuw i64 %index781, 4       ; 2 uses
  %i.btc = icmp eq i64 %index.next785, %n.vec779
  br i1 %i.btc, label %middle.block786, label %vector.body780, !llvm.loop !326

middle.block786:                                  ; preds = %vector.body780
  %cmp.n787 = icmp eq i64 %n.vec779, %wide.trip.count443.i.i
  br i1 %cmp.n787, label %._crit_edge387.i.i, label %.lr.ph386.split.us.i.i.preheader

.lr.ph386.split.us.i.i.preheader:                 ; preds = %vector.memcheck, %.lr.ph386.split.us.preheader.i.i, %middle.block786
  %indvars.iv438.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph386.split.us.preheader.i.i ], [ %n.vec779, %middle.block786 ] ; 7 uses
  %xtraiter1153 = and i64 %wide.trip.count443.i.i, 1
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1153, 0
  br i1 %lcmp.mod1154.not, label %.lr.ph386.split.us.i.i.prol.loopexit, label %.lr.ph386.split.us.i.i.prol

.lr.ph386.split.us.i.i.prol:                      ; preds = %.lr.ph386.split.us.i.i.preheader
  %i.btd = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %indvars.iv438.i.i.ph
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !58
  %i.btf = getelementptr inbounds nuw [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv438.i.i.ph
  store ptr %i.bte, ptr %i.btf, align 8, !tbaa !58
  %i.btg = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %indvars.iv438.i.i.ph
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !58
  %i.bti = getelementptr inbounds nuw [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv438.i.i.ph
  store ptr %i.bth, ptr %i.bti, align 8, !tbaa !58
  %indvars.iv.next439.i.i.prol = or disjoint i64 %indvars.iv438.i.i.ph, 1
  br label %.lr.ph386.split.us.i.i.prol.loopexit

.lr.ph386.split.us.i.i.prol.loopexit:             ; preds = %.lr.ph386.split.us.i.i.prol, %.lr.ph386.split.us.i.i.preheader
  %indvars.iv438.i.i.unr = phi i64 [ %indvars.iv438.i.i.ph, %.lr.ph386.split.us.i.i.preheader ], [ %indvars.iv.next439.i.i.prol, %.lr.ph386.split.us.i.i.prol ]
  %i.btj = add nsw i64 %wide.trip.count443.i.i, -1
  %i.btk = icmp eq i64 %indvars.iv438.i.i.ph, %i.btj
  br i1 %i.btk, label %._crit_edge387.i.i, label %.lr.ph386.split.us.i.i

.lr.ph386.split.us.i.i:                           ; preds = %.lr.ph386.split.us.i.i.prol.loopexit, %.lr.ph386.split.us.i.i
  %indvars.iv438.i.i = phi i64 [ %indvars.iv.next439.i.i.1, %.lr.ph386.split.us.i.i ], [ %indvars.iv438.i.i.unr, %.lr.ph386.split.us.i.i.prol.loopexit ] ; 6 uses
  %i.btl = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %indvars.iv438.i.i
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !58
  %i.btn = getelementptr inbounds nuw [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv438.i.i
  store ptr %i.btm, ptr %i.btn, align 8, !tbaa !58
  %i.bto = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %indvars.iv438.i.i
  %i.btp = load ptr, ptr %i.bto, align 8, !tbaa !58
  %i.btq = getelementptr inbounds nuw [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv438.i.i
  store ptr %i.btp, ptr %i.btq, align 8, !tbaa !58
  %indvars.iv.next439.i.i = add nuw nsw i64 %indvars.iv438.i.i, 1 ; 4 uses
  %i.btr = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %indvars.iv.next439.i.i
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !58
  %i.btt = getelementptr inbounds nuw [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv.next439.i.i
  store ptr %i.bts, ptr %i.btt, align 8, !tbaa !58
  %i.btu = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %indvars.iv.next439.i.i
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !58
  %i.btw = getelementptr inbounds nuw [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv.next439.i.i
  store ptr %i.btv, ptr %i.btw, align 8, !tbaa !58
  %indvars.iv.next439.i.i.1 = add nuw nsw i64 %indvars.iv438.i.i, 2 ; 2 uses
  %exitcond444.not.i.i.1 = icmp eq i64 %indvars.iv.next439.i.i.1, %wide.trip.count443.i.i
  br i1 %exitcond444.not.i.i.1, label %._crit_edge387.i.i, label %.lr.ph386.split.us.i.i, !llvm.loop !327

.lr.ph381.i.i:                                    ; preds = %._crit_edge382.i.i, %.lr.ph381.preheader.i.i
  %indvars.iv433.i.i = phi i64 [ 0, %.lr.ph381.preheader.i.i ], [ %indvars.iv.next434.i.i, %._crit_edge382.i.i ] ; 9 uses
  %.2385.i.i = phi i32 [ 0, %.lr.ph381.preheader.i.i ], [ %i.bvi, %._crit_edge382.i.i ] ; 2 uses
  %i.btx = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %indvars.iv433.i.i
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !58
  %i.btz = sext i32 %.2385.i.i to i64             ; 2 uses
  %i.bua = getelementptr inbounds [8 x i8], ptr %.pre454.i.i, i64 %i.btz
  store ptr %i.bty, ptr %i.bua, align 8, !tbaa !58
  %i.bub = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %indvars.iv433.i.i
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !58
  %i.bud = getelementptr inbounds [8 x i8], ptr %.pre453.i.i, i64 %i.btz
  store ptr %i.buc, ptr %i.bud, align 8, !tbaa !58
  %.3376.i.i = add i32 %.2385.i.i, 1
  %i.bue = sext i32 %.3376.i.i to i64             ; 2 uses
  br i1 %i.bso, label %.epil.preheader1145, label %.lr.ph381.i.i.new

.lr.ph381.i.i.new:                                ; preds = %.lr.ph381.i.i, %.lr.ph381.i.i.new
  %indvars.iv426.i.i = phi i64 [ %indvars.iv.next427.i.i.1, %.lr.ph381.i.i.new ], [ 1, %.lr.ph381.i.i ] ; 3 uses
  %indvars.iv424.i.i = phi i64 [ %indvars.iv.next425.i.i.1, %.lr.ph381.i.i.new ], [ %i.bue, %.lr.ph381.i.i ] ; 4 uses
  %niter1152 = phi i64 [ %niter1152.next.1, %.lr.ph381.i.i.new ], [ 0, %.lr.ph381.i.i ]
  %i.buf = sub nuw nsw i64 %17, %indvars.iv426.i.i
  %i.bug = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.buf ; 2 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 8
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !158
  %i.buj = getelementptr inbounds nuw [8 x i8], ptr %i.bui, i64 %indvars.iv433.i.i
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !58
  %i.bul = getelementptr inbounds [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv424.i.i
  store ptr %i.buk, ptr %i.bul, align 8, !tbaa !58
  %i.bum = load ptr, ptr %i.bug, align 8, !tbaa !158 ; 2 uses
  %i.bun = getelementptr inbounds nuw [8 x i8], ptr %i.bum, i64 %indvars.iv433.i.i
  %i.buo = load ptr, ptr %i.bun, align 8, !tbaa !58
  %i.bup = getelementptr inbounds [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv424.i.i
  store ptr %i.buo, ptr %i.bup, align 8, !tbaa !58
  %indvars.iv.next427.i.i.neg = xor i64 %indvars.iv426.i.i, -1
  %indvars.iv.next425.i.i = add nsw i64 %indvars.iv424.i.i, 1 ; 2 uses
  %gep1200 = getelementptr [8 x i8], ptr %invariant.gep1199, i64 %indvars.iv.next427.i.i.neg
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %i.bum, i64 %indvars.iv433.i.i
  %i.bur = load ptr, ptr %i.buq, align 8, !tbaa !58
  %i.bus = getelementptr inbounds [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv.next425.i.i
  store ptr %i.bur, ptr %i.bus, align 8, !tbaa !58
  %i.but = load ptr, ptr %gep1200, align 8, !tbaa !158
  %i.buu = getelementptr inbounds nuw [8 x i8], ptr %i.but, i64 %indvars.iv433.i.i
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !58
  %i.buw = getelementptr inbounds [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv.next425.i.i
  store ptr %i.buv, ptr %i.buw, align 8, !tbaa !58
  %indvars.iv.next427.i.i.1 = add nuw nsw i64 %indvars.iv426.i.i, 2 ; 2 uses
  %indvars.iv.next425.i.i.1 = add nsw i64 %indvars.iv424.i.i, 2 ; 3 uses
  %niter1152.next.1 = add nuw i64 %niter1152, 2   ; 2 uses
  %niter1152.ncmp.1 = icmp eq i64 %niter1152.next.1, %unroll_iter1151
  br i1 %niter1152.ncmp.1, label %._crit_edge382.i.i.unr-lcssa, label %.lr.ph381.i.i.new

._crit_edge382.i.i.unr-lcssa:                     ; preds = %.lr.ph381.i.i.new
  br i1 %lcmp.mod1148.not, label %._crit_edge382.i.i, label %.epil.preheader1145

.epil.preheader1145:                              ; preds = %._crit_edge382.i.i.unr-lcssa, %.lr.ph381.i.i
  %indvars.iv426.i.i.epil.init = phi i64 [ 1, %.lr.ph381.i.i ], [ %indvars.iv.next427.i.i.1, %._crit_edge382.i.i.unr-lcssa ]
  %indvars.iv424.i.i.epil.init = phi i64 [ %i.bue, %.lr.ph381.i.i ], [ %indvars.iv.next425.i.i.1, %._crit_edge382.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1150)
  %i.bux = sub nuw nsw i64 %17, %indvars.iv426.i.i.epil.init
  %i.buy = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.bux ; 2 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 8
  %i.bva = load ptr, ptr %i.buz, align 8, !tbaa !158
  %i.bvb = getelementptr inbounds nuw [8 x i8], ptr %i.bva, i64 %indvars.iv433.i.i
  %i.bvc = load ptr, ptr %i.bvb, align 8, !tbaa !58
  %i.bvd = getelementptr inbounds [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv424.i.i.epil.init
  store ptr %i.bvc, ptr %i.bvd, align 8, !tbaa !58
  %i.bve = load ptr, ptr %i.buy, align 8, !tbaa !158
  %i.bvf = getelementptr inbounds nuw [8 x i8], ptr %i.bve, i64 %indvars.iv433.i.i
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !58
  %i.bvh = getelementptr inbounds [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv424.i.i.epil.init
  store ptr %i.bvg, ptr %i.bvh, align 8, !tbaa !58
  %indvars.iv.next425.i.i.epil = add nsw i64 %indvars.iv424.i.i.epil.init, 1
  br label %._crit_edge382.i.i

._crit_edge382.i.i:                               ; preds = %._crit_edge382.i.i.unr-lcssa, %.epil.preheader1145
  %indvars.iv.next425.i.i.lcssa = phi i64 [ %indvars.iv.next425.i.i.1, %._crit_edge382.i.i.unr-lcssa ], [ %indvars.iv.next425.i.i.epil, %.epil.preheader1145 ]
  %i.bvi = trunc nsw i64 %indvars.iv.next425.i.i.lcssa to i32
  %indvars.iv.next434.i.i = add nuw nsw i64 %indvars.iv433.i.i, 1 ; 2 uses
  %exitcond437.not.i.i = icmp eq i64 %indvars.iv.next434.i.i, %wide.trip.count436.i.i
  br i1 %exitcond437.not.i.i, label %._crit_edge387.i.i, label %.lr.ph381.i.i

._crit_edge387.i.i:                               ; preds = %._crit_edge382.i.i, %.lr.ph386.split.us.i.i.prol.loopexit, %.lr.ph386.split.us.i.i, %middle.block786, %.preheader.i.i
  %i.bvj = add nsw i32 %.pre452.i.i, 1
  %i.bvk = mul nsw i32 %i.bvj, %i.bsf
  %i.bvl = call i32 @N_VLinearSumVectorArray(i32 noundef %i.bvk, double noundef 1.000000e+00, ptr noundef %.pre453.i.i, double noundef 1.000000e+00, ptr noundef %.pre454.i.i, ptr noundef %.pre453.i.i) #14 ; 0 uses
  br label %IDAStep.exit.thread461

IDAStep.exit.thread461:                           ; preds = %bb.in, %._crit_edge387.i.i
  %i.bvm = load ptr, ptr %i.jm, align 8, !tbaa !91 ; 2 uses
  call void @N_VScale(double noundef %.186.i398.i, ptr noundef %i.bvm, ptr noundef %i.bvm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.io

IDAStep.exit.thread:                              ; preds = %bb.fv, %bb.eu, %bb.ev
  %.0.i452.ph = phi i32 [ -11, %bb.eu ], [ -11, %bb.ev ], [ -8, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.loopexit

IDAStep.exit:                                     ; preds = %select.unfold.i, %IDAQuadNls.exit.thread.i, %select.unfold325.i, %IDAQuadSensTestError.exit.thread.i
  %.0.i452 = phi i32 [ %i.akb, %select.unfold.i ], [ %i.avm, %select.unfold325.i ], [ %i.bct, %IDAQuadSensTestError.exit.thread.i ], [ %i.ano, %IDAQuadNls.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %.not428 = icmp eq i32 %.0.i452, 0
  br i1 %.not428, label %bb.io, label %.loopexit

.loopexit:                                        ; preds = %IDAStep.exit, %IDAStep.exit.thread
  %.0.i452460 = phi i32 [ %.0.i452.ph, %IDAStep.exit.thread ], [ %.0.i452, %IDAStep.exit ]
  %i.bvn = call fastcc i32 @IDAHandleFailure(ptr noundef %0, i32 noundef %.0.i452460)
  %i.bvo = load double, ptr %i.ig, align 8, !tbaa !104 ; 3 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.bvo, ptr %i.bvp, align 8, !tbaa !233
  store double %i.bvo, ptr %2, align 8, !tbaa !24
  %i.bvq = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.bvo, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %IDAStopTest2.exit.thread

bb.io:                                            ; preds = %IDAStep.exit.thread461, %IDAStep.exit
  %i.bvr = add nuw nsw i64 %.0368, 1
  %i.bvs = load i32, ptr %i.iw, align 8, !tbaa !223
  %.not429 = icmp eq i32 %i.bvs, 0
  br i1 %.not429, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.bvt = load double, ptr %i.id, align 8, !tbaa !21
  %i.bvu = fmul double %i.bvt, 1.000000e+02
  %i.bvv = load double, ptr %i.ig, align 8, !tbaa !104 ; 2 uses
  %i.bvw = call double @llvm.fabs.f64(double %i.bvv)
  %i.bvx = load double, ptr %i.ik, align 8, !tbaa !216
  %i.bvy = call double @llvm.fabs.f64(double %i.bvx)
  %i.bvz = fadd double %i.bvw, %i.bvy
  %i.bwa = fmul double %i.bvu, %i.bvz
  %i.bwb = load double, ptr %i.ix, align 8, !tbaa !224 ; 2 uses
  %i.bwc = fsub double %i.bvv, %i.bwb
  %i.bwd = call double @llvm.fabs.f64(double %i.bwc)
  %i.bwe = fcmp ugt double %i.bwd, %i.bwa
  br i1 %i.bwe, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  store double %i.bwb, ptr %i.ig, align 8, !tbaa !104
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ip, %bb.iq, %bb.io
  %i.bwf = load i32, ptr %i.lv, align 8, !tbaa !118
  %i.bwg = icmp sgt i32 %i.bwf, 0
  br i1 %i.bwg, label %bb.is, label %.thread464

bb.is:                                            ; preds = %bb.ir
  %i.bwh = call fastcc i32 @IDARcheck3(ptr noundef %0, double noundef %1, i32 noundef %5)
  switch i32 %i.bwh, label %bb.iv [
    i32 1, label %bb.it
    i32 -10, label %bb.iu
  ]

bb.it:                                            ; preds = %bb.is
  %i.bwi = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store i32 1, ptr %i.bwi, align 8, !tbaa !115
  %i.bwj = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.bwk = load double, ptr %i.bwj, align 8, !tbaa !232 ; 2 uses
  store double %i.bwk, ptr %2, align 8, !tbaa !24
  %i.bwl = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.bwk, ptr %i.bwl, align 8, !tbaa !233
  br label %IDAStopTest2.exit.thread

bb.iu:                                            ; preds = %bb.is
  %i.bwm = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.bwn = load double, ptr %i.bwm, align 8, !tbaa !232
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 3038, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.bwn)
  br label %IDAStopTest2.exit.thread

bb.iv:                                            ; preds = %bb.is
  %i.bwo = load i64, ptr %i.ah, align 8, !tbaa !214
  %i.bwp = icmp eq i64 %i.bwo, 1
  br i1 %i.bwp, label %.preheader, label %.thread464

.preheader:                                       ; preds = %bb.iv
  %i.bwq = load i32, ptr %i.lv, align 8, !tbaa !118 ; 2 uses
  %i.bwr = icmp sgt i32 %i.bwq, 0
  br i1 %i.bwr, label %.lr.ph551, label %.thread464

.lr.ph551:                                        ; preds = %.preheader
  %i.bws = load ptr, ptr %i.lw, align 8, !tbaa !209
  %wide.trip.count599 = zext nneg i32 %i.bwq to i64
  br label %bb.ix

bb.iw:                                            ; preds = %bb.ix
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %.thread464, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph551, %bb.iw
  %indvars.iv596 = phi i64 [ 0, %.lr.ph551 ], [ %indvars.iv.next597, %bb.iw ] ; 2 uses
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %i.bws, i64 %indvars.iv596
  %i.bwu = load i32, ptr %i.bwt, align 4, !tbaa !29
  %.not430 = icmp eq i32 %i.bwu, 0
  br i1 %.not430, label %bb.iy, label %bb.iw

bb.iy:                                            ; preds = %bb.ix
  %i.bwv = load i32, ptr %i.lx, align 8, !tbaa !119
  %i.bww = icmp sgt i32 %i.bwv, 0
  br i1 %i.bww, label %bb.iz, label %.thread464

bb.iz:                                            ; preds = %bb.iy
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 3062, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48)
  br label %.thread464

.thread464:                                       ; preds = %bb.iw, %.preheader, %bb.iv, %bb.iz, %bb.iy, %bb.ir
  %i.bwx = load i32, ptr %i.iw, align 8, !tbaa !223
  %.not.i454 = icmp eq i32 %i.bwx, 0
  br i1 %.not.i454, label %bb.jf, label %bb.ja

bb.ja:                                            ; preds = %.thread464
  %i.bwy = load double, ptr %i.id, align 8, !tbaa !21 ; 2 uses
  %i.bwz = fmul double %i.bwy, 1.000000e+02
  %i.bxa = load double, ptr %i.ig, align 8, !tbaa !104 ; 4 uses
  %i.bxb = call double @llvm.fabs.f64(double %i.bxa)
  %i.bxc = load double, ptr %i.ik, align 8, !tbaa !216 ; 4 uses
  %i.bxd = call double @llvm.fabs.f64(double %i.bxc)
  %i.bxe = fadd double %i.bxb, %i.bxd
  %i.bxf = fmul double %i.bwz, %i.bxe             ; 2 uses
  %i.bxg = load double, ptr %i.ix, align 8, !tbaa !224 ; 5 uses
  %i.bxh = fsub double %i.bxa, %i.bxg
  %i.bxi = call double @llvm.fabs.f64(double %i.bxh)
  %i.bxj = fcmp ugt double %i.bxi, %i.bxf
  br i1 %i.bxj, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bxk = fsub double %1, %i.bxg                 ; 2 uses
  %i.bxl = fmul double %i.bxc, %i.bxk
  %i.bxm = fcmp ult double %i.bxl, 0.000000e+00
  %i.bxn = call double @llvm.fabs.f64(double %i.bxk)
  %i.bxo = fcmp ugt double %i.bxn, %i.bxf
  %or.cond.i = and i1 %i.bxm, %i.bxo
  br i1 %or.cond.i, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bxp = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.bxg, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.bxq = load double, ptr %i.ix, align 8, !tbaa !224 ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.bxq, ptr %i.bxr, align 8, !tbaa !233
  store double %i.bxq, ptr %2, align 8, !tbaa !24
  store i32 0, ptr %i.iw, align 8, !tbaa !223
  br label %IDAStopTest2.exit.thread

bb.jd:                                            ; preds = %bb.ja
  %i.bxs = fadd double %i.bxa, %i.bxc
  %i.bxt = fsub double %i.bxs, %i.bxg
  %i.bxu = fmul double %i.bxc, %i.bxt
  %i.bxv = fcmp ogt double %i.bxu, 0.000000e+00
  br i1 %i.bxv, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.bxw = fsub double %i.bxg, %i.bxa
  %i.bxx = call double @llvm.fmuladd.f64(double %i.bwy, double -4.000000e+00, double 1.000000e+00)
  %i.bxy = fmul double %i.bxx, %i.bxw
  store double %i.bxy, ptr %i.ik, align 8, !tbaa !216
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd, %bb.jb, %.thread464
end_hunk_0
begin_hunk_1_@IDAHandleFailure:bb.a
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.n = load double, ptr %i.m, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 5793, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74, double noundef %i.n)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.p = load double, ptr %i.o, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 5798, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75, double noundef %i.p)
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.r = load double, ptr %i.q, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -33, i32 noundef 5803, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, double noundef %i.r)
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.t = load double, ptr %i.s, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -31, i32 noundef 5808, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.66, double noundef %i.t)
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.v = load double, ptr %i.u, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -42, i32 noundef 5813, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77, double noundef %i.v)
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load double, ptr %i.w, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -41, i32 noundef 5818, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, double noundef %i.x)
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.z = load double, ptr %i.y, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -53, i32 noundef 5823, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, double noundef %i.z)
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -51, i32 noundef 5828, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.68, double noundef %i.ab)
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 5833, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, double noundef %i.ad)
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 5838, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.af = load double, ptr %i.ae, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 5842, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81, double noundef %i.af)
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -16, i32 noundef 5847, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, double noundef %i.ah)
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -17, i32 noundef 5851, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.83, double noundef %i.aj)
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -99, i32 noundef 5857, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -99, %bb.s ], [ -3, %bb.b ], [ -4, %bb.c ], [ -6, %bb.d ], [ -7, %bb.e ], [ -9, %bb.f ], [ -8, %bb.g ], [ -33, %bb.h ], [ -31, %bb.i ], [ -42, %bb.j ], [ -41, %bb.k ], [ -53, %bb.l ], [ -51, %bb.m ], [ -11, %bb.n ], [ -20, %bb.o ], [ -20, %bb.p ], [ -16, %bb.q ], [ -17, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @IDAGetDky(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3113, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3122, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.g = load i32, ptr %i.f, align 4, !tbaa !112  ; 2 uses
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3130, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.m = load double, ptr %i.l, align 8, !tbaa !104 ; 4 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.p = load double, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = fcmp olt double %i.p, 0.000000e+00
  %i.u = fneg double %i.s
  %.078 = select i1 %i.t, double %i.u, double %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.w = load double, ptr %i.v, align 8, !tbaa !113
  %i.x = fsub double %i.m, %i.w                   ; 2 uses
  %i.y = fsub double %i.x, %.078
  %i.z = fsub double %1, %i.y
  %i.aa = fmul double %i.p, %i.z
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.i, label %.lr.ph95

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3143, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.x, double noundef %i.m)
  br label %bb.o

.lr.ph95:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.ac = fsub double %1, %i.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ae = sub nsw i32 %i.g, %2                    ; 4 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ag to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  %scevgep113 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.j

.loopexit:                                        ; preds = %bb.m, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %.loopexit
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext115 = shl i64 %indvars.iv101, 32
  %i.ah = ashr exact i64 %sext115, 29
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.ah
  %indvars106 = trunc i64 %indvars.iv101 to i32
  %i.ai = shl nuw nsw i64 %indvar, 3
  %i.aj = add nuw nsw i64 %i.ai, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep100 = getelementptr i8, ptr %i.a, i64 %i.aj
  %i.ak = trunc i64 %indvar to i32
  %i.al = add i32 %i.ae, %i.ak
  %smax = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %indvars106)
  %i.am = trunc i64 %indvar to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %smax, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 8
  %sext = shl i64 %indvars.iv101, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = icmp eq i64 %indvar, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.au = add nsw i64 %indvar, -1                 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !24
  %i.ax = trunc nuw nsw i64 %indvar to i32
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = fmul double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.au
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !24 ; 2 uses
  %i.bc = fdiv double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bc, ptr %i.bd, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.076 = phi double [ 0.000000e+00, %bb.k ], [ %i.bb, %bb.l ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.be = add nuw nsw i64 %indvar, %i.af
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bf = trunc nuw nsw i64 %indvar to i32
  %i.bg = uitofp nneg i32 %i.bf to double
  %load_initial = load double, ptr %scevgep114, align 8
  br label %bb.n

.lr.ph92.preheader:                               ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.ar, i1 false), !tbaa !24
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bp, %bb.n ]
  %indvars.iv97 = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next98, %bb.n ] ; 4 uses
  %.17788 = phi double [ %.076, %.lr.ph ], [ %i.bo, %bb.n ]
  %i.bh = add nsw i64 %indvars.iv97, -1           ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24
  %i.bk = fadd double %i.ac, %.17788
  %i.bl = fmul double %i.bk, %store_forwarded
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bj, double %i.bl)
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bh
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.bp = fdiv double %i.bm, %i.bo                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %i.bp, ptr %i.bq, align 8, !tbaa !24
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %.not83.not = icmp slt i64 %indvars.iv97, %i.be
  br i1 %.not83.not, label %bb.n, label %.lr.ph92.preheader

._crit_edge:                                      ; preds = %.loopexit
  %i.br = add i32 %i.ae, 1
  %i.bs = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = call i32 @N_VLinearCombination(i32 noundef %i.br, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %3) #14
  %.not82 = icmp eq i32 %i.bw, 0
  %. = select i1 %.not82, i32 0, i32 -28
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @IDAGetQuad(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3234, ptr noundef nonnull @__func__.IDAGetQuad, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.c = load double, ptr %i.b, align 8, !tbaa !233 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !24
  %i.d = tail call i32 @IDAGetQuadDky(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @IDAGetQuadDky(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3267, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !142
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -30, i32 noundef 3277, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3285, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !226
  %i.j = icmp sgt i32 %2, %i.i
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3293, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !21
  %i.m = fmul double %i.l, 1.000000e+02
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.o = load double, ptr %i.n, align 8, !tbaa !104 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.q = load double, ptr %i.p, align 8, !tbaa !216 ; 2 uses
  %i.r = fadd double %i.o, %i.q
  %i.s = fmul double %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.u = load double, ptr %i.t, align 8, !tbaa !113
  %i.v = fsub double %i.o, %i.u                   ; 2 uses
  %i.w = fsub double %i.v, %i.s
  %i.x = fsub double %1, %i.w
  %i.y = fmul double %i.q, %i.x
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.k, label %.lr.ph95

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3304, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.v, double noundef %i.o)
  br label %bb.q

.lr.ph95:                                         ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.aa = fsub double %1, %i.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !112
  %i.ae = sub i32 %i.ad, %2                       ; 4 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ag to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  %scevgep113 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.l

.loopexit:                                        ; preds = %bb.o, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph95, %.loopexit
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext115 = shl i64 %indvars.iv101, 32
  %i.ah = ashr exact i64 %sext115, 29
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.ah
  %indvars106 = trunc i64 %indvars.iv101 to i32
  %i.ai = shl nuw nsw i64 %indvar, 3
  %i.aj = add nuw nsw i64 %i.ai, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep100 = getelementptr i8, ptr %i.a, i64 %i.aj
  %i.ak = trunc i64 %indvar to i32
  %i.al = add i32 %i.ae, %i.ak
  %smax = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %indvars106)
  %i.am = trunc i64 %indvar to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %smax, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 8
  %sext = shl i64 %indvars.iv101, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = icmp eq i64 %indvar, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = add nsw i64 %indvar, -1                 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !24
  %i.ax = trunc nuw nsw i64 %indvar to i32
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = fmul double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.au
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !24 ; 2 uses
  %i.bc = fdiv double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bc, ptr %i.bd, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.076 = phi double [ 0.000000e+00, %bb.m ], [ %i.bb, %bb.n ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.be = add nuw nsw i64 %indvar, %i.af
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bf = trunc nuw nsw i64 %indvar to i32
  %i.bg = uitofp nneg i32 %i.bf to double
  %load_initial = load double, ptr %scevgep114, align 8
  br label %bb.p

.lr.ph92.preheader:                               ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.ar, i1 false), !tbaa !24
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bp, %bb.p ]
  %indvars.iv97 = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next98, %bb.p ] ; 4 uses
  %.17788 = phi double [ %.076, %.lr.ph ], [ %i.bo, %bb.p ]
  %i.bh = add nsw i64 %indvars.iv97, -1           ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24
  %i.bk = fadd double %i.aa, %.17788
  %i.bl = fmul double %i.bk, %store_forwarded
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bj, double %i.bl)
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bh
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.bp = fdiv double %i.bm, %i.bo                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %i.bp, ptr %i.bq, align 8, !tbaa !24
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %.not83.not = icmp slt i64 %indvars.iv97, %i.be
  br i1 %.not83.not, label %bb.p, label %.lr.ph92.preheader

._crit_edge:                                      ; preds = %.loopexit
  %i.br = add i32 %i.ae, 1
  %i.bs = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = call i32 @N_VLinearCombination(i32 noundef %i.br, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %3) #14
  %.not82 = icmp eq i32 %i.bw, 0
  %. = select i1 %.not82, i32 0, i32 -28
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -30, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ -26, %bb.k ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3374, ptr noundef nonnull @__func__.IDAGetSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3384, ptr noundef nonnull @__func__.IDAGetSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3393, ptr noundef nonnull @__func__.IDAGetSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.g = load double, ptr %i.f, align 8, !tbaa !233
  store double %i.g, ptr %1, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !149
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !149
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %i.n, i32 noundef 0, i32 noundef %i.q, ptr noundef %i.p) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.018 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -40, %bb.f ], [ 0, %bb.g ], [ %i.r, %.lr.ph ], [ 0, %bb.h ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3524, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3533, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3541, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.h = icmp slt i32 %3, 0
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %.not = icmp slt i32 %3, %i.j
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -43, i32 noundef 3550, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52)
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.m = load i32, ptr %i.l, align 4, !tbaa !112  ; 5 uses
  %i.n = icmp sgt i32 %2, %i.m
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3559, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !21
  %i.q = fmul double %i.p, 1.000000e+02
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.s = load double, ptr %i.r, align 8, !tbaa !104 ; 4 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.v = load double, ptr %i.u, align 8, !tbaa !216 ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %i.t, %i.w
  %i.y = fmul double %i.q, %i.x                   ; 2 uses
  %i.z = fcmp olt double %i.v, 0.000000e+00
  %i.aa = fneg double %i.y
  %.093 = select i1 %i.z, double %i.aa, double %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !113
  %i.ad = fsub double %i.s, %i.ac                 ; 2 uses
  %i.ae = fsub double %i.ad, %.093
  %i.af = fsub double %1, %i.ae
  %i.ag = fmul double %i.v, %i.af
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.n, label %.lr.ph115

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3572, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.ad, double noundef %i.s)
  br label %bb.t

.lr.ph115:                                        ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.ai = fsub double %1, %i.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ak = sub i32 %i.m, %2                        ; 4 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.am to i64
  %.not102107 = icmp slt i32 %i.ak, 1
  %scevgep139 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.o

.loopexit:                                        ; preds = %bb.r, %.lr.ph112.preheader
  %indvars.iv.next125 = add nuw i64 %indvars.iv124, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph118, label %bb.o

.lr.ph118:                                        ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 5 uses
  %i.ao = zext nneg i32 %3 to i64                 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 6 uses
  %i.ar = zext nneg i32 %2 to i64                 ; 7 uses
  %i.as = add nuw i32 %i.m, 1
  %i.at = add i32 %i.m, 1
  %i.au = sub i32 %i.at, %2
  %xtraiter = and i32 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph118, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.ar, %.lr.ph118 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph118 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.prol
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !58
  %i.az = sub nuw nsw i64 %indvars.iv.prol, %i.ar
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !352

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph118
  %indvars.iv.unr = phi i64 [ %i.ar, %.lr.ph118 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bb = icmp ult i32 %i.ak, 3
  br i1 %i.bb, label %._crit_edge, label %.lr.ph118.new

bb.o:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv124 = phi i64 [ 1, %.lr.ph115 ], [ %indvars.iv.next125, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph115 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext141 = shl i64 %indvars.iv124, 32
  %i.bc = ashr exact i64 %sext141, 29
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.bc
  %indvars129 = trunc i64 %indvars.iv124 to i32
  %i.bd = shl nuw nsw i64 %indvar, 3
  %i.be = add nuw nsw i64 %i.bd, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.be
  %scevgep123 = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bf = trunc i64 %indvar to i32
  %i.bg = add i32 %i.ak, %i.bf
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %indvars129)
  %i.bh = trunc i64 %indvar to i32
  %i.bi = xor i32 %i.bh, -1
  %i.bj = add i32 %smax, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 8
  %sext = shl i64 %indvars.iv124, 32
  %i.bn = ashr exact i64 %sext, 32
  %i.bo = icmp eq i64 %indvar, 0
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bp = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !24
  %i.bs = trunc nuw nsw i64 %indvar to i32
  %i.bt = uitofp nneg i32 %i.bs to double
  %i.bu = fmul double %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bp
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %i.bx = fdiv double %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bx, ptr %i.by, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.091 = phi double [ 0.000000e+00, %bb.p ], [ %i.bw, %bb.q ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bz = add nuw nsw i64 %indvar, %i.al
  br i1 %.not102107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ca = trunc nuw nsw i64 %indvar to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %load_initial = load double, ptr %scevgep140, align 8
  br label %bb.s

.lr.ph112.preheader:                              ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123, i64 %i.bm, i1 false), !tbaa !24
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.ck, %bb.s ]
  %indvars.iv120 = phi i64 [ %i.bn, %.lr.ph ], [ %indvars.iv.next121, %bb.s ] ; 4 uses
  %.192108 = phi double [ %.091, %.lr.ph ], [ %i.cj, %bb.s ]
  %i.cc = add nsw i64 %indvars.iv120, -1          ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !24
  %i.cf = fadd double %i.ai, %.192108
  %i.cg = fmul double %i.cf, %store_forwarded
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ce, double %i.cg)
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.cc
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.ck = fdiv double %i.ch, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv120
  store double %i.ck, ptr %i.cl, align 8, !tbaa !24
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %.not102.not = icmp slt i64 %indvars.iv120, %i.bz
  br i1 %.not102.not, label %bb.s, label %.lr.ph112.preheader

.lr.ph118.new:                                    ; preds = %.prol.loopexit, %.lr.ph118.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph118.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !158
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ao
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58
  %i.cq = sub nuw nsw i64 %indvars.iv, %i.ar
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !158
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ao
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58
  %i.cw = sub nuw nsw i64 %indvars.iv.next, %i.ar
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !158
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ao
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !58
  %i.dc = sub nuw nsw i64 %indvars.iv.next.1, %i.ar
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !158
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ao
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = sub nuw nsw i64 %indvars.iv.next.2, %i.ar
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond133.not.3 = icmp eq i32 %i.as, %lftr.wideiv.3
  br i1 %exitcond133.not.3, label %._crit_edge, label %.lr.ph118.new

._crit_edge:                                      ; preds = %.lr.ph118.new, %.prol.loopexit
  %reass.sub = sub nsw i32 %i.m, %2
  %i.dk = add i32 %reass.sub, 1
  %i.dl = zext nneg i32 %2 to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dl
  %i.dn = call i32 @N_VLinearCombination(i32 noundef %i.dk, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.aq, ptr noundef nonnull %4) #14
  %.not101 = icmp eq i32 %i.dn, 0
  %. = select i1 %.not101, i32 0, i32 -28
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.n, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -43, %bb.i ], [ -25, %bb.l ], [ -26, %bb.n ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3430, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3439, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3447, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.h = load i32, ptr %i.g, align 8, !tbaa !226
  %i.i = icmp sgt i32 %2, %i.h
  br i1 %i.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !149
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3455, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !149
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.r, ptr noundef %i.q) ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.preheader, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ 0, %.preheader ], [ %i.s, %.lr.ph ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3485, ptr noundef nonnull @__func__.IDAGetSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.c = load double, ptr %i.b, align 8, !tbaa !233 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !24
  %i.d = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3647, ptr noundef nonnull @__func__.IDAGetQuadSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.d, label %bb.e
end_hunk_1
begin_hunk_2_@IDAGetQuadSens:bb.a
  %i.k = load i32, ptr %i.h, align 8, !tbaa !149
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %i.n, i32 noundef 0, i32 noundef %i.q, ptr noundef %i.p) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.018 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -40, %bb.f ], [ 0, %bb.g ], [ %i.r, %.lr.ph ], [ 0, %bb.h ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3830, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3839, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load i32, ptr %i.g, align 8, !tbaa !194
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, i32 noundef 3847, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %4, null
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3855, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.k = icmp slt i32 %3, 0
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !149
  %.not = icmp slt i32 %3, %i.m
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -43, i32 noundef 3864, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.n = icmp slt i32 %2, 0
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.p = load i32, ptr %i.o, align 4, !tbaa !112  ; 5 uses
  %i.q = icmp sgt i32 %2, %i.p
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3873, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !21
  %i.t = fmul double %i.s, 1.000000e+02
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.v = load double, ptr %i.u, align 8, !tbaa !104 ; 4 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.y = load double, ptr %i.x, align 8, !tbaa !216 ; 3 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fadd double %i.w, %i.z
  %i.ab = fmul double %i.t, %i.aa                 ; 2 uses
  %i.ac = fcmp olt double %i.y, 0.000000e+00
  %i.ad = fneg double %i.ab
  %.095 = select i1 %i.ac, double %i.ad, double %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.af = load double, ptr %i.ae, align 8, !tbaa !113
  %i.ag = fsub double %i.v, %i.af                 ; 2 uses
  %i.ah = fsub double %i.ag, %.095
  %i.ai = fsub double %1, %i.ah
  %i.aj = fmul double %i.y, %i.ai
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.p, label %.lr.ph117

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3886, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.ag, double noundef %i.v)
  br label %bb.v

.lr.ph117:                                        ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.al = fsub double %1, %i.v
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.an = sub i32 %i.p, %2                        ; 4 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ap to i64
  %.not104109 = icmp slt i32 %i.an, 1
  %scevgep141 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.q

.loopexit:                                        ; preds = %bb.t, %.lr.ph114.preheader
  %indvars.iv.next127 = add nuw i64 %indvars.iv126, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph120, label %bb.q

.lr.ph120:                                        ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 5 uses
  %i.ar = zext nneg i32 %3 to i64                 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 6 uses
  %i.au = zext nneg i32 %2 to i64                 ; 7 uses
  %i.av = add nuw i32 %i.p, 1
  %i.aw = add i32 %i.p, 1
  %i.ax = sub i32 %i.aw, %2
  %xtraiter = and i32 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph120, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.au, %.lr.ph120 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph120 ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.prol
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !158
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ar
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58
  %i.bc = sub nuw nsw i64 %indvars.iv.prol, %i.au
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !353

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph120
  %indvars.iv.unr = phi i64 [ %i.au, %.lr.ph120 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.be = icmp ult i32 %i.an, 3
  br i1 %i.be, label %._crit_edge, label %.lr.ph120.new

bb.q:                                             ; preds = %.lr.ph117, %.loopexit
  %indvars.iv126 = phi i64 [ 1, %.lr.ph117 ], [ %indvars.iv.next127, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph117 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext143 = shl i64 %indvars.iv126, 32
  %i.bf = ashr exact i64 %sext143, 29
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.bf
  %indvars131 = trunc i64 %indvars.iv126 to i32
  %i.bg = shl nuw nsw i64 %indvar, 3
  %i.bh = add nuw nsw i64 %i.bg, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bh
  %scevgep125 = getelementptr i8, ptr %i.a, i64 %i.bh
  %i.bi = trunc i64 %indvar to i32
  %i.bj = add i32 %i.an, %i.bi
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 %indvars131)
  %i.bk = trunc i64 %indvar to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %smax, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 8
  %sext = shl i64 %indvars.iv126, 32
  %i.bq = ashr exact i64 %sext, 32
  %i.br = icmp eq i64 %indvar, 0
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bs = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = trunc nuw nsw i64 %indvar to i32
  %i.bw = uitofp nneg i32 %i.bv to double
  %i.bx = fmul double %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bs
  %i.bz = load double, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.ca = fdiv double %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.ca, ptr %i.cb, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.093 = phi double [ 0.000000e+00, %bb.r ], [ %i.bz, %bb.s ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.cc = add nuw nsw i64 %indvar, %i.ao
  br i1 %.not104109, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.cd = trunc nuw nsw i64 %indvar to i32
  %i.ce = uitofp nneg i32 %i.cd to double
  %load_initial = load double, ptr %scevgep142, align 8
  br label %bb.u

.lr.ph114.preheader:                              ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep125, i64 %i.bp, i1 false), !tbaa !24
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.cn, %bb.u ]
  %indvars.iv122 = phi i64 [ %i.bq, %.lr.ph ], [ %indvars.iv.next123, %bb.u ] ; 4 uses
  %.194110 = phi double [ %.093, %.lr.ph ], [ %i.cm, %bb.u ]
  %i.cf = add nsw i64 %indvars.iv122, -1          ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24
  %i.ci = fadd double %i.al, %.194110
  %i.cj = fmul double %i.ci, %store_forwarded
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ch, double %i.cj)
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.cf
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !24 ; 2 uses
  %i.cn = fdiv double %i.ck, %i.cm                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122
  store double %i.cn, ptr %i.co, align 8, !tbaa !24
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %.not104.not = icmp slt i64 %indvars.iv122, %i.cc
  br i1 %.not104.not, label %bb.u, label %.lr.ph114.preheader

.lr.ph120.new:                                    ; preds = %.prol.loopexit, %.lr.ph120.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph120.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !158
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ar
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !58
  %i.ct = sub nuw nsw i64 %indvars.iv, %i.au
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !158
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ar
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !58
  %i.cz = sub nuw nsw i64 %indvars.iv.next, %i.au
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !158
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ar
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !58
  %i.df = sub nuw nsw i64 %indvars.iv.next.1, %i.au
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.df
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ar
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !58
  %i.dl = sub nuw nsw i64 %indvars.iv.next.2, %i.au
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dl
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond135.not.3 = icmp eq i32 %i.av, %lftr.wideiv.3
  br i1 %exitcond135.not.3, label %._crit_edge, label %.lr.ph120.new

._crit_edge:                                      ; preds = %.lr.ph120.new, %.prol.loopexit
  %reass.sub = sub nsw i32 %i.p, %2
  %i.dn = add i32 %reass.sub, 1
  %i.do = zext nneg i32 %2 to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.do
  %i.dq = call i32 @N_VLinearCombination(i32 noundef %i.dn, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.at, ptr noundef nonnull %4) #14
  %.not103 = icmp eq i32 %i.dq, 0
  %. = select i1 %.not103, i32 0, i32 -28
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.p, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -43, %bb.k ], [ -25, %bb.n ], [ -26, %bb.p ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3704, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3713, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load i32, ptr %i.e, align 8, !tbaa !194
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, i32 noundef 3721, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3729, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.k = load i32, ptr %i.j, align 8, !tbaa !226
  %i.l = icmp sgt i32 %2, %i.k
  br i1 %i.l, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !149
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3737, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !149
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.u, ptr noundef %i.t) ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %.preheader, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -25, %bb.k ], [ 0, %.preheader ], [ %i.v, %.lr.ph ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3767, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3776, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load i32, ptr %i.e, align 8, !tbaa !194
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g
end_hunk_2
