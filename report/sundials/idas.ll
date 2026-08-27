Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas?download=true
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
  %.0277.i.i = phi double [ %i.bib, %bb.hw ], [ %.7276.i, %bb.hx ], [ %.7293.i, %.thread338.i.i ], [ %.7293.i, %.thread338.thread.i.i ], [ %.7293.i, %bb.hv ], [ %.7293.i, %.split.i.i ]
  store double 1.000000e+00, ptr %i.ke, align 8, !tbaa !273
  %i.biq = call double @llvm.fmuladd.f64(double %.0277.i.i, double 2.000000e+00, double 1.000000e-04)
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
  br label %.sink.split.i227.i

bb.hz:                                            ; preds = %.thread344.i.i
  %i.bjh = load double, ptr %i.lr, align 8, !tbaa !299
  %i.bji = fcmp ugt double %i.biu, %i.bjh
  %.pre.i236.i = load double, ptr %i.ik, align 8, !tbaa !216 ; 3 uses
  br i1 %i.bji, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.bjj = load double, ptr %i.ls, align 8, !tbaa !300 ; 2 uses
  %i.bjk = fcmp olt double %i.biu, %i.bjj
  %.327.i.i = select i1 %i.bjk, double %i.biu, double %i.bjj ; 2 uses
  %i.bjl = load double, ptr %i.lt, align 8, !tbaa !301 ; 2 uses
  %i.bjm = fcmp ogt double %.327.i.i, %i.bjl
  %i.bjn = select i1 %i.bjm, double %.327.i.i, double %i.bjl ; 2 uses
  %i.bjo = load double, ptr %i.kc, align 8, !tbaa !222
  %i.bjp = call double @llvm.fabs.f64(double %.pre.i236.i)
  %i.bjq = fdiv double %i.bjo, %i.bjp             ; 2 uses
  %i.bjr = fcmp ogt double %i.bjn, %i.bjq
  %i.bjs = select i1 %i.bjr, double %i.bjn, double %i.bjq
  br label %.sink.split.i227.i

.sink.split.i227.i:                               ; preds = %bb.ia, %bb.hy
  %.sink.i228.i = phi double [ %i.bjs, %bb.ia ], [ %i.bjg, %bb.hy ] ; 2 uses
  %.ph.i.i = phi double [ %.pre.i236.i, %bb.ia ], [ %i.biz, %bb.hy ]
  store double %.sink.i228.i, ptr %i.ke, align 8, !tbaa !273
  %i.bjt = fmul double %.sink.i228.i, %.ph.i.i
  br label %bb.ib

bb.ib:                                            ; preds = %.sink.split.i227.i, %bb.hz
  %i.bju = phi double [ %.pre.i236.i, %bb.hz ], [ %i.bjt, %.sink.split.i227.i ]
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
  br i1 %i.bkn, label %.lr.ph.i231.i, label %._crit_edge.i230.i

.lr.ph.i231.i:                                    ; preds = %bb.ih
  %i.bko = load ptr, ptr %i.ic, align 8, !tbaa !101 ; 2 uses
  %wide.trip.count.i232.i = zext nneg i32 %i.bkm to i64 ; 3 uses
  %min.iters.check885 = icmp ult i32 %i.bkm, 4
  br i1 %min.iters.check885, label %scalar.ph884.preheader, label %vector.ph886

vector.ph886:                                     ; preds = %.lr.ph.i231.i
  %n.vec887 = and i64 %wide.trip.count.i232.i, 2147483644 ; 3 uses
  br label %vector.body888

vector.body888:                                   ; preds = %vector.body888, %vector.ph886
  %index889 = phi i64 [ 0, %vector.ph886 ], [ %index.next890, %vector.body888 ] ; 2 uses
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.bko, i64 %index889 ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bkp, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.bkq, align 8, !tbaa !24
  %index.next890 = add nuw i64 %index889, 4       ; 2 uses
  %i.bkr = icmp eq i64 %index.next890, %n.vec887
  br i1 %i.bkr, label %middle.block891, label %vector.body888, !llvm.loop !302

middle.block891:                                  ; preds = %vector.body888
  %cmp.n892 = icmp eq i64 %n.vec887, %wide.trip.count.i232.i
  br i1 %cmp.n892, label %._crit_edge.i230.i, label %scalar.ph884.preheader

scalar.ph884.preheader:                           ; preds = %.lr.ph.i231.i, %middle.block891
  %indvars.iv.i233.i.ph = phi i64 [ 0, %.lr.ph.i231.i ], [ %n.vec887, %middle.block891 ]
  br label %scalar.ph884

scalar.ph884:                                     ; preds = %scalar.ph884.preheader, %scalar.ph884
  %indvars.iv.i233.i = phi i64 [ %indvars.iv.next.i234.i, %scalar.ph884 ], [ %indvars.iv.i233.i.ph, %scalar.ph884.preheader ] ; 2 uses
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.bko, i64 %indvars.iv.i233.i
  store double 1.000000e+00, ptr %i.bks, align 8, !tbaa !24
  %indvars.iv.next.i234.i = add nuw nsw i64 %indvars.iv.i233.i, 1 ; 2 uses
  %exitcond.not.i235.i = icmp eq i64 %indvars.iv.next.i234.i, %wide.trip.count.i232.i
  br i1 %exitcond.not.i235.i, label %._crit_edge.i230.i, label %scalar.ph884, !llvm.loop !303

._crit_edge.i230.i:                               ; preds = %scalar.ph884, %middle.block891, %bb.ih
  br i1 %.not314.i.i, label %.thread348.i.i, label %bb.ii

bb.ii:                                            ; preds = %._crit_edge.i230.i
  %i.bkt = load ptr, ptr %i.ic, align 8, !tbaa !101
  %i.bku = load ptr, ptr %i.ju, align 8, !tbaa !152
  %i.bkv = load i32, ptr %i.ii, align 4, !tbaa !112
  %i.bkw = sext i32 %i.bkv to i64
  %i.bkx = getelementptr [8 x i8], ptr %0, i64 %i.bkw
  %i.bky = getelementptr i8, ptr %i.bkx, i64 848
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !158
  %i.bla = call i32 @N_VScaleVectorArray(i32 noundef %i.bkm, ptr noundef %i.bkt, ptr noundef %i.bku, ptr noundef %i.bkz) #14 ; 0 uses
  br label %.thread348.i.i

.thread348.i.i:                                   ; preds = %bb.ii, %._crit_edge.i230.i
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
  %.pre448.i356.i = load i32, ptr %i.ii, align 4, !tbaa !112
  br label %bb.ik

bb.ik:                                            ; preds = %.sink.split.i, %.thread348.i.i, %bb.ic
  %i.blj = phi i32 [ %.pre448.i.i, %.thread348.i.i ], [ %i.bjw, %bb.ic ], [ %.pre448.i356.i, %.sink.split.i ] ; 3 uses
  %i.blk = load ptr, ptr %i.jm, align 8, !tbaa !91
  %i.bll = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 8 uses
  store ptr %i.blk, ptr %i.bll, align 8, !tbaa !58
  %i.blm = sext i32 %i.blj to i64                 ; 6 uses
  %i.bln = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.blm
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !58
  %i.blp = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 9 uses
  store ptr %i.blo, ptr %i.blp, align 8, !tbaa !58
  %.not318354.i.i = icmp slt i32 %i.blj, 1
  %.pre457.i.i = add i32 %i.blj, 1                ; 3 uses
  br i1 %.not318354.i.i, label %._crit_edge358.i.i, label %.lr.ph357.preheader.i.i

.lr.ph357.preheader.i.i:                          ; preds = %bb.ik
  %wide.trip.count396.i.i = zext i32 %.pre457.i.i to i64 ; 5 uses
  %6 = add nsw i64 %wide.trip.count396.i.i, -1    ; 2 uses
  %min.iters.check867 = icmp ult i32 %.pre457.i.i, 11
  br i1 %min.iters.check867, label %.lr.ph357.i.i.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %.lr.ph357.preheader.i.i
  %scevgep847 = getelementptr i8, ptr %i.bll, i64 8 ; 2 uses
  %i.blq = shl nuw nsw i64 %wide.trip.count396.i.i, 3 ; 3 uses
  %scevgep848 = getelementptr i8, ptr %i.bll, i64 %i.blq ; 2 uses
  %scevgep849 = getelementptr i8, ptr %i.blp, i64 8 ; 2 uses
  %scevgep850 = getelementptr i8, ptr %i.blp, i64 %i.blq ; 2 uses
  %i.blr = shl nuw nsw i64 %i.blm, 3              ; 2 uses
  %i.bls = sub nsw i64 %i.blr, %i.blq
  %scevgep852 = getelementptr i8, ptr %scevgep851.a, i64 %i.bls ; 2 uses
  %scevgep854 = getelementptr i8, ptr %scevgep853.a, i64 %i.blr ; 2 uses
  %bound0855 = icmp ult ptr %scevgep847, %scevgep850
  %bound1856 = icmp ult ptr %scevgep849, %scevgep848
  %found.conflict857 = and i1 %bound0855, %bound1856
  %bound0858 = icmp ult ptr %scevgep847, %scevgep854
  %bound1859 = icmp ult ptr %scevgep852, %scevgep848
  %found.conflict860 = and i1 %bound0858, %bound1859
  %conflict.rdx861 = or i1 %found.conflict857, %found.conflict860
  %bound0862 = icmp ult ptr %scevgep849, %scevgep854
  %bound1863 = icmp ult ptr %scevgep852, %scevgep850
  %found.conflict864 = and i1 %bound0862, %bound1863
  %conflict.rdx865 = or i1 %conflict.rdx861, %found.conflict864
  br i1 %conflict.rdx865, label %.lr.ph357.i.i.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %vector.memcheck846
  %n.vec869 = and i64 %6, -4                      ; 3 uses
  %i.blt = or disjoint i64 %n.vec869, 1
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph868
  %index871 = phi i64 [ 0, %vector.ph868 ], [ %index.next880, %vector.body870 ] ; 2 uses
  %i.blu = or disjoint i64 %index871, 1           ; 3 uses
  %i.blv = sub nsw i64 %i.blm, %i.blu
  %i.blw = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.blv ; 4 uses
  %i.blx = getelementptr inbounds i8, ptr %i.blw, i64 -16
  %wide.load872 = load <2 x ptr>, ptr %i.blw, align 8, !tbaa !58, !alias.scope !304
  %wide.load873 = load <2 x ptr>, ptr %i.blx, align 8, !tbaa !58, !alias.scope !304
  %reverse874 = shufflevector <2 x ptr> %wide.load872, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse875 = shufflevector <2 x ptr> %wide.load873, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bly = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %i.blu ; 2 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 16
  store <2 x ptr> %reverse874, ptr %i.bly, align 8, !tbaa !58, !alias.scope !307, !noalias !309
  store <2 x ptr> %reverse875, ptr %i.blz, align 8, !tbaa !58, !alias.scope !307, !noalias !309
  %i.bma = getelementptr inbounds i8, ptr %i.blw, i64 -8
  %i.bmb = getelementptr inbounds i8, ptr %i.blw, i64 -24
  %wide.load876 = load <2 x ptr>, ptr %i.bma, align 8, !tbaa !58, !alias.scope !304
  %wide.load877 = load <2 x ptr>, ptr %i.bmb, align 8, !tbaa !58, !alias.scope !304
  %reverse878 = shufflevector <2 x ptr> %wide.load876, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse879 = shufflevector <2 x ptr> %wide.load877, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bmc = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %i.blu ; 2 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 16
  store <2 x ptr> %reverse878, ptr %i.bmc, align 8, !tbaa !58, !alias.scope !311, !noalias !304
  store <2 x ptr> %reverse879, ptr %i.bmd, align 8, !tbaa !58, !alias.scope !311, !noalias !304
  %index.next880 = add nuw i64 %index871, 4       ; 2 uses
  %i.bme = icmp eq i64 %index.next880, %n.vec869
  br i1 %i.bme, label %middle.block881, label %vector.body870, !llvm.loop !312

middle.block881:                                  ; preds = %vector.body870
  %cmp.n882 = icmp eq i64 %6, %n.vec869
  br i1 %cmp.n882, label %._crit_edge358.i.i, label %.lr.ph357.i.i.preheader

.lr.ph357.i.i.preheader:                          ; preds = %vector.memcheck846, %.lr.ph357.preheader.i.i, %middle.block881
  %indvars.iv393.i.i.ph = phi i64 [ 1, %vector.memcheck846 ], [ 1, %.lr.ph357.preheader.i.i ], [ %i.blt, %middle.block881 ] ; 6 uses
  %7 = and i64 %wide.trip.count396.i.i, 1
  %lcmp.mod1127.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod1127.not.not, label %.lr.ph357.i.i.prol, label %.lr.ph357.i.i.prol.loopexit

.lr.ph357.i.i.prol:                               ; preds = %.lr.ph357.i.i.preheader
  %i.bmf = sub nsw i64 %i.blm, %indvars.iv393.i.i.ph
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
  %8 = add nsw i64 %wide.trip.count396.i.i, -1
  %i.bmm = icmp eq i64 %indvars.iv393.i.i.ph, %8
  br i1 %i.bmm, label %._crit_edge358.i.i, label %.lr.ph357.i.i

.lr.ph357.i.i:                                    ; preds = %.lr.ph357.i.i.prol.loopexit, %.lr.ph357.i.i
  %indvars.iv393.i.i = phi i64 [ %indvars.iv.next394.i.i.1, %.lr.ph357.i.i ], [ %indvars.iv393.i.i.unr, %.lr.ph357.i.i.prol.loopexit ] ; 5 uses
  %i.bmn = sub nsw i64 %i.blm, %indvars.iv393.i.i
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.bmn ; 2 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 8
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !58
  %i.bmr = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %indvars.iv393.i.i
  store ptr %i.bmq, ptr %i.bmr, align 8, !tbaa !58
  %i.bms = load ptr, ptr %i.bmo, align 8, !tbaa !58
  %i.bmt = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %indvars.iv393.i.i
  store ptr %i.bms, ptr %i.bmt, align 8, !tbaa !58
  %indvars.iv.next394.i.i = add nuw nsw i64 %indvars.iv393.i.i, 1 ; 3 uses
  %i.bmu = sub nsw i64 %i.blm, %indvars.iv.next394.i.i
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

._crit_edge358.i.i:                               ; preds = %.lr.ph357.i.i.prol.loopexit, %.lr.ph357.i.i, %middle.block881, %bb.ik
  %i.bnb = call i32 @N_VLinearSumVectorArray(i32 noundef %.pre457.i.i, double noundef 1.000000e+00, ptr noundef nonnull %i.blp, double noundef 1.000000e+00, ptr noundef nonnull %i.bll, ptr noundef nonnull %i.blp) #14 ; 0 uses
  %i.bnc = load i32, ptr %i.hp, align 4, !tbaa !142
  %.not319.i.i = icmp eq i32 %i.bnc, 0
  br i1 %.not319.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %._crit_edge358.i.i
  %i.bnd = load ptr, ptr %i.km, align 8, !tbaa !139
  %i.bne = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 8 uses
  store ptr %i.bnd, ptr %i.bne, align 8, !tbaa !58
  %i.bnf = load i32, ptr %i.ii, align 4, !tbaa !112 ; 3 uses
  %i.bng = sext i32 %i.bnf to i64                 ; 6 uses
  %i.bnh = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.bng
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !58
  %i.bnj = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 9 uses
  store ptr %i.bni, ptr %i.bnj, align 8, !tbaa !58
  %.not320359.i.i = icmp slt i32 %i.bnf, 1
  %.pre459.i.i = add i32 %i.bnf, 1                ; 3 uses
  br i1 %.not320359.i.i, label %._crit_edge363.i.i, label %.lr.ph362.preheader.i.i

.lr.ph362.preheader.i.i:                          ; preds = %bb.il
  %wide.trip.count401.i.i = zext i32 %.pre459.i.i to i64 ; 5 uses
  %9 = add nsw i64 %wide.trip.count401.i.i, -1    ; 2 uses
  %min.iters.check830 = icmp ult i32 %.pre459.i.i, 11
  br i1 %min.iters.check830, label %.lr.ph362.i.i.preheader, label %vector.memcheck813

vector.memcheck813:                               ; preds = %.lr.ph362.preheader.i.i
  %scevgep = getelementptr i8, ptr %i.bne, i64 8  ; 2 uses
  %i.bnk = shl nuw nsw i64 %wide.trip.count401.i.i, 3 ; 3 uses
  %scevgep814 = getelementptr i8, ptr %i.bne, i64 %i.bnk ; 2 uses
  %scevgep815 = getelementptr i8, ptr %i.bnj, i64 8 ; 2 uses
  %scevgep816 = getelementptr i8, ptr %i.bnj, i64 %i.bnk ; 2 uses
  %i.bnl = shl nuw nsw i64 %i.bng, 3              ; 2 uses
  %i.bnm = sub nsw i64 %i.bnl, %i.bnk
  %scevgep818 = getelementptr i8, ptr %scevgep817, i64 %i.bnm ; 2 uses
  %scevgep820 = getelementptr i8, ptr %scevgep819.a, i64 %i.bnl ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep816
  %bound1 = icmp ult ptr %scevgep815, %scevgep814
  %found.conflict = and i1 %bound0, %bound1
  %bound0821 = icmp ult ptr %scevgep, %scevgep820
  %bound1822 = icmp ult ptr %scevgep818, %scevgep814
  %found.conflict823 = and i1 %bound0821, %bound1822
  %conflict.rdx824 = or i1 %found.conflict, %found.conflict823
  %bound0825 = icmp ult ptr %scevgep815, %scevgep820
  %bound1826 = icmp ult ptr %scevgep818, %scevgep816
  %found.conflict827 = and i1 %bound0825, %bound1826
  %conflict.rdx828 = or i1 %conflict.rdx824, %found.conflict827
  br i1 %conflict.rdx828, label %.lr.ph362.i.i.preheader, label %vector.ph831

vector.ph831:                                     ; preds = %vector.memcheck813
  %n.vec832 = and i64 %9, -4                      ; 3 uses
  %i.bnn = or disjoint i64 %n.vec832, 1
  br label %vector.body833

vector.body833:                                   ; preds = %vector.body833, %vector.ph831
  %index834 = phi i64 [ 0, %vector.ph831 ], [ %index.next842, %vector.body833 ] ; 2 uses
  %i.bno = or disjoint i64 %index834, 1           ; 3 uses
  %i.bnp = sub nsw i64 %i.bng, %i.bno
  %i.bnq = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.bnp ; 4 uses
  %i.bnr = getelementptr inbounds i8, ptr %i.bnq, i64 -16
  %wide.load835 = load <2 x ptr>, ptr %i.bnq, align 8, !tbaa !58, !alias.scope !314
  %wide.load836 = load <2 x ptr>, ptr %i.bnr, align 8, !tbaa !58, !alias.scope !314
  %reverse = shufflevector <2 x ptr> %wide.load835, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse837 = shufflevector <2 x ptr> %wide.load836, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bns = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %i.bno ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 16
  store <2 x ptr> %reverse, ptr %i.bns, align 8, !tbaa !58, !alias.scope !317, !noalias !319
  store <2 x ptr> %reverse837, ptr %i.bnt, align 8, !tbaa !58, !alias.scope !317, !noalias !319
  %i.bnu = getelementptr inbounds i8, ptr %i.bnq, i64 -8
  %i.bnv = getelementptr inbounds i8, ptr %i.bnq, i64 -24
  %wide.load838 = load <2 x ptr>, ptr %i.bnu, align 8, !tbaa !58, !alias.scope !314
  %wide.load839 = load <2 x ptr>, ptr %i.bnv, align 8, !tbaa !58, !alias.scope !314
  %reverse840 = shufflevector <2 x ptr> %wide.load838, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse841 = shufflevector <2 x ptr> %wide.load839, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bnw = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %i.bno ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 16
  store <2 x ptr> %reverse840, ptr %i.bnw, align 8, !tbaa !58, !alias.scope !321, !noalias !314
  store <2 x ptr> %reverse841, ptr %i.bnx, align 8, !tbaa !58, !alias.scope !321, !noalias !314
  %index.next842 = add nuw i64 %index834, 4       ; 2 uses
  %i.bny = icmp eq i64 %index.next842, %n.vec832
  br i1 %i.bny, label %middle.block843, label %vector.body833, !llvm.loop !322

middle.block843:                                  ; preds = %vector.body833
  %cmp.n844 = icmp eq i64 %9, %n.vec832
  br i1 %cmp.n844, label %._crit_edge363.i.i, label %.lr.ph362.i.i.preheader

.lr.ph362.i.i.preheader:                          ; preds = %vector.memcheck813, %.lr.ph362.preheader.i.i, %middle.block843
  %indvars.iv398.i.i.ph = phi i64 [ 1, %vector.memcheck813 ], [ 1, %.lr.ph362.preheader.i.i ], [ %i.bnn, %middle.block843 ] ; 6 uses
  %10 = and i64 %wide.trip.count401.i.i, 1
  %lcmp.mod1130.not.not = icmp eq i64 %10, 0
  br i1 %lcmp.mod1130.not.not, label %.lr.ph362.i.i.prol, label %.lr.ph362.i.i.prol.loopexit

.lr.ph362.i.i.prol:                               ; preds = %.lr.ph362.i.i.preheader
  %i.bnz = sub nsw i64 %i.bng, %indvars.iv398.i.i.ph
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
  %11 = add nsw i64 %wide.trip.count401.i.i, -1
  %i.bog = icmp eq i64 %indvars.iv398.i.i.ph, %11
  br i1 %i.bog, label %._crit_edge363.i.i, label %.lr.ph362.i.i

.lr.ph362.i.i:                                    ; preds = %.lr.ph362.i.i.prol.loopexit, %.lr.ph362.i.i
  %indvars.iv398.i.i = phi i64 [ %indvars.iv.next399.i.i.1, %.lr.ph362.i.i ], [ %indvars.iv398.i.i.unr, %.lr.ph362.i.i.prol.loopexit ] ; 5 uses
  %i.boh = sub nsw i64 %i.bng, %indvars.iv398.i.i
  %i.boi = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.boh ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 8
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !58
  %i.bol = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %indvars.iv398.i.i
  store ptr %i.bok, ptr %i.bol, align 8, !tbaa !58
  %i.bom = load ptr, ptr %i.boi, align 8, !tbaa !58
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.bnj, i64 %indvars.iv398.i.i
  store ptr %i.bom, ptr %i.bon, align 8, !tbaa !58
  %indvars.iv.next399.i.i = add nuw nsw i64 %indvars.iv398.i.i, 1 ; 3 uses
  %i.boo = sub nsw i64 %i.bng, %indvars.iv.next399.i.i
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

._crit_edge363.i.i:                               ; preds = %.lr.ph362.i.i.prol.loopexit, %.lr.ph362.i.i, %middle.block843, %bb.il
  %i.bov = call i32 @N_VLinearSumVectorArray(i32 noundef %.pre459.i.i, double noundef 1.000000e+00, ptr noundef nonnull %i.bnj, double noundef 1.000000e+00, ptr noundef nonnull %i.bne, ptr noundef nonnull %i.bnj) #14 ; 0 uses
  br label %bb.im

bb.im:                                            ; preds = %._crit_edge363.i.i, %._crit_edge358.i.i
  %i.bow = load i32, ptr %i.r, align 4, !tbaa !171
  %.not321.i.i = icmp eq i32 %i.bow, 0
  br i1 %.not321.i.i, label %bb.in, label %.preheader351.i.i

.preheader351.i.i:                                ; preds = %bb.im
  %i.box = load i32, ptr %i.ib, align 8, !tbaa !149 ; 5 uses
  %i.boy = icmp sgt i32 %i.box, 0
  %.pre449.i.i = load i32, ptr %i.ii, align 4, !tbaa !112 ; 6 uses
  %.pre450.i.i = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 11 uses
  %.pre450.i.i788 = ptrtoaddr ptr %.pre450.i.i to i64 ; 3 uses
  %.pre451.i.i = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 10 uses
  %.pre451.i.i789 = ptrtoaddr ptr %.pre451.i.i to i64 ; 3 uses
  br i1 %i.boy, label %.lr.ph373.i.i, label %._crit_edge374.i.i

.lr.ph373.i.i:                                    ; preds = %.preheader351.i.i
  %i.boz = load ptr, ptr %i.ju, align 8, !tbaa !152 ; 6 uses
  %i.bpa = ptrtoaddr ptr %i.boz to i64            ; 2 uses
  %i.bpb = sext i32 %.pre449.i.i to i64           ; 4 uses
  %i.bpc = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.bpb
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !158 ; 6 uses
  %i.bpe = ptrtoaddr ptr %i.bpd to i64            ; 2 uses
  %.not324365.i.i = icmp slt i32 %.pre449.i.i, 1
  br i1 %.not324365.i.i, label %.lr.ph373.split.us.preheader.i.i, label %.lr.ph369.preheader.i.i

.lr.ph369.preheader.i.i:                          ; preds = %.lr.ph373.i.i
  %wide.trip.count415.i.i = zext nneg i32 %i.box to i64
  %i.bpf = zext nneg i32 %.pre449.i.i to i64      ; 2 uses
  %xtraiter1133 = and i64 %i.bpf, 1
  %i.bpg = icmp eq i32 %.pre449.i.i, 1
  %unroll_iter1138 = and i64 %i.bpf, 2147483646
  %invariant.gep1195 = getelementptr [8 x i8], ptr %i.ht, i64 %i.bpb
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1133, 0
  %lcmp.mod1137 = trunc i32 %.pre449.i.i to i1
  br label %.lr.ph369.i.i

.lr.ph373.split.us.preheader.i.i:                 ; preds = %.lr.ph373.i.i
  %wide.trip.count422.i.i = zext nneg i32 %i.box to i64 ; 5 uses
  %min.iters.check800 = icmp ult i32 %i.box, 16
  br i1 %min.iters.check800, label %.lr.ph373.split.us.i.i.preheader, label %vector.memcheck787

vector.memcheck787:                               ; preds = %.lr.ph373.split.us.preheader.i.i
  %i.bph = sub i64 %.pre451.i.i789, %.pre450.i.i788
  %diff.check790 = icmp ugt i64 %i.bph, -32
  %i.bpi = sub i64 %i.bpa, %.pre451.i.i789
  %diff.check791 = icmp ugt i64 %i.bpi, -32
  %conflict.rdx792 = or i1 %diff.check790, %diff.check791
  %i.bpj = sub i64 %.pre451.i.i789, %i.bpe
  %diff.check793 = icmp ugt i64 %i.bpj, -32
  %conflict.rdx794 = or i1 %conflict.rdx792, %diff.check793
  %i.bpk = sub i64 %i.bpa, %.pre450.i.i788
  %diff.check795 = icmp ugt i64 %i.bpk, -32
  %conflict.rdx796 = or i1 %conflict.rdx794, %diff.check795
  %i.bpl = sub i64 %i.bpe, %.pre450.i.i788
  %diff.check797 = icmp ugt i64 %i.bpl, -32
  %conflict.rdx798 = or i1 %conflict.rdx796, %diff.check797
  br i1 %conflict.rdx798, label %.lr.ph373.split.us.i.i.preheader, label %vector.ph801

vector.ph801:                                     ; preds = %vector.memcheck787
  %n.vec802 = and i64 %wide.trip.count422.i.i, 2147483644 ; 3 uses
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph801
  %index804 = phi i64 [ 0, %vector.ph801 ], [ %index.next809, %vector.body803 ] ; 5 uses
  %i.bpm = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %index804 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 16
  %wide.load805 = load <2 x ptr>, ptr %i.bpm, align 8, !tbaa !58
  %wide.load806 = load <2 x ptr>, ptr %i.bpn, align 8, !tbaa !58
  %i.bpo = getelementptr inbounds nuw [8 x i8], ptr %.pre451.i.i, i64 %index804 ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 16
  store <2 x ptr> %wide.load805, ptr %i.bpo, align 8, !tbaa !58
  store <2 x ptr> %wide.load806, ptr %i.bpp, align 8, !tbaa !58
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %index804 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 16
  %wide.load807 = load <2 x ptr>, ptr %i.bpq, align 8, !tbaa !58
  %wide.load808 = load <2 x ptr>, ptr %i.bpr, align 8, !tbaa !58
  %i.bps = getelementptr inbounds nuw [8 x i8], ptr %.pre450.i.i, i64 %index804 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 16
  store <2 x ptr> %wide.load807, ptr %i.bps, align 8, !tbaa !58
  store <2 x ptr> %wide.load808, ptr %i.bpt, align 8, !tbaa !58
  %index.next809 = add nuw i64 %index804, 4       ; 2 uses
  %i.bpu = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.bpu, label %middle.block810, label %vector.body803, !llvm.loop !324

middle.block810:                                  ; preds = %vector.body803
  %cmp.n811 = icmp eq i64 %n.vec802, %wide.trip.count422.i.i
  br i1 %cmp.n811, label %._crit_edge374.i.i, label %.lr.ph373.split.us.i.i.preheader

.lr.ph373.split.us.i.i.preheader:                 ; preds = %vector.memcheck787, %.lr.ph373.split.us.preheader.i.i, %middle.block810
  %indvars.iv417.i.i.ph = phi i64 [ 0, %vector.memcheck787 ], [ 0, %.lr.ph373.split.us.preheader.i.i ], [ %n.vec802, %middle.block810 ] ; 7 uses
  %xtraiter1140 = and i64 %wide.trip.count422.i.i, 1
  %lcmp.mod1141.not = icmp eq i64 %xtraiter1140, 0
  br i1 %lcmp.mod1141.not, label %.lr.ph373.split.us.i.i.prol.loopexit, label %.lr.ph373.split.us.i.i.prol

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
  %.0285371.i.i = phi i32 [ 0, %.lr.ph369.preheader.i.i ], [ %i.bsa, %._crit_edge370.i.i ] ; 2 uses
  %i.bqp = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %indvars.iv412.i.i
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !58
  %i.bqr = sext i32 %.0285371.i.i to i64          ; 2 uses
  %i.bqs = getelementptr inbounds [8 x i8], ptr %.pre451.i.i, i64 %i.bqr
  store ptr %i.bqq, ptr %i.bqs, align 8, !tbaa !58
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.bpd, i64 %indvars.iv412.i.i
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !58
  %i.bqv = getelementptr inbounds [8 x i8], ptr %.pre450.i.i, i64 %i.bqr
  store ptr %i.bqu, ptr %i.bqv, align 8, !tbaa !58
  %.1286364.i.i = add i32 %.0285371.i.i, 1
  %i.bqw = sext i32 %.1286364.i.i to i64          ; 2 uses
  br i1 %i.bpg, label %.epil.preheader1132, label %.lr.ph369.i.i.new

.lr.ph369.i.i.new:                                ; preds = %.lr.ph369.i.i, %.lr.ph369.i.i.new
  %indvars.iv405.i.i = phi i64 [ %indvars.iv.next406.i.i.1, %.lr.ph369.i.i.new ], [ 1, %.lr.ph369.i.i ] ; 3 uses
  %indvars.iv403.i.i = phi i64 [ %indvars.iv.next404.i.i.1, %.lr.ph369.i.i.new ], [ %i.bqw, %.lr.ph369.i.i ] ; 4 uses
  %niter1139 = phi i64 [ %niter1139.next.1, %.lr.ph369.i.i.new ], [ 0, %.lr.ph369.i.i ]
  %i.bqx = sub nsw i64 %i.bpb, %indvars.iv405.i.i
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
  %gep1196 = getelementptr [8 x i8], ptr %invariant.gep1195, i64 %indvars.iv.next406.i.i.neg
  %i.bri = getelementptr inbounds nuw [8 x i8], ptr %i.bre, i64 %indvars.iv412.i.i
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !58
  %i.brk = getelementptr inbounds [8 x i8], ptr %.pre451.i.i, i64 %indvars.iv.next404.i.i
  store ptr %i.brj, ptr %i.brk, align 8, !tbaa !58
  %i.brl = load ptr, ptr %gep1196, align 8, !tbaa !158
  %i.brm = getelementptr inbounds nuw [8 x i8], ptr %i.brl, i64 %indvars.iv412.i.i
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !58
  %i.bro = getelementptr inbounds [8 x i8], ptr %.pre450.i.i, i64 %indvars.iv.next404.i.i
  store ptr %i.brn, ptr %i.bro, align 8, !tbaa !58
  %indvars.iv.next406.i.i.1 = add nuw nsw i64 %indvars.iv405.i.i, 2 ; 2 uses
  %indvars.iv.next404.i.i.1 = add nsw i64 %indvars.iv403.i.i, 2 ; 3 uses
  %niter1139.next.1 = add nuw i64 %niter1139, 2   ; 2 uses
  %niter1139.ncmp.1 = icmp eq i64 %niter1139.next.1, %unroll_iter1138
  br i1 %niter1139.ncmp.1, label %._crit_edge370.i.i.unr-lcssa, label %.lr.ph369.i.i.new

._crit_edge370.i.i.unr-lcssa:                     ; preds = %.lr.ph369.i.i.new
  br i1 %lcmp.mod1135.not, label %._crit_edge370.i.i, label %.epil.preheader1132

.epil.preheader1132:                              ; preds = %._crit_edge370.i.i.unr-lcssa, %.lr.ph369.i.i
  %indvars.iv405.i.i.epil.init = phi i64 [ 1, %.lr.ph369.i.i ], [ %indvars.iv.next406.i.i.1, %._crit_edge370.i.i.unr-lcssa ]
  %indvars.iv403.i.i.epil.init = phi i64 [ %i.bqw, %.lr.ph369.i.i ], [ %indvars.iv.next404.i.i.1, %._crit_edge370.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1137)
  %i.brp = sub nsw i64 %i.bpb, %indvars.iv405.i.i.epil.init
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

._crit_edge370.i.i:                               ; preds = %._crit_edge370.i.i.unr-lcssa, %.epil.preheader1132
  %indvars.iv.next404.i.i.lcssa = phi i64 [ %indvars.iv.next404.i.i.1, %._crit_edge370.i.i.unr-lcssa ], [ %indvars.iv.next404.i.i.epil, %.epil.preheader1132 ]
  %i.bsa = trunc nsw i64 %indvars.iv.next404.i.i.lcssa to i32
  %indvars.iv.next413.i.i = add nuw nsw i64 %indvars.iv412.i.i, 1 ; 2 uses
  %exitcond416.not.i.i = icmp eq i64 %indvars.iv.next413.i.i, %wide.trip.count415.i.i
  br i1 %exitcond416.not.i.i, label %._crit_edge374.i.i, label %.lr.ph369.i.i

._crit_edge374.i.i:                               ; preds = %._crit_edge370.i.i, %.lr.ph373.split.us.i.i.prol.loopexit, %.lr.ph373.split.us.i.i, %middle.block810, %.preheader351.i.i
  %i.bsb = add nsw i32 %.pre449.i.i, 1
  %i.bsc = mul nsw i32 %i.bsb, %i.box
  %i.bsd = call i32 @N_VLinearSumVectorArray(i32 noundef %i.bsc, double noundef 1.000000e+00, ptr noundef %.pre450.i.i, double noundef 1.000000e+00, ptr noundef %.pre451.i.i, ptr noundef %.pre450.i.i) #14 ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %._crit_edge374.i.i, %bb.im
  %i.bse = load i32, ptr %i.z, align 8, !tbaa !194
  %.not322.i.i = icmp eq i32 %i.bse, 0
  br i1 %.not322.i.i, label %IDAStep.exit.thread459, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.in
  %i.bsf = load i32, ptr %i.ib, align 8, !tbaa !149 ; 5 uses
  %i.bsg = icmp sgt i32 %i.bsf, 0
  %.pre452.i.i = load i32, ptr %i.ii, align 4, !tbaa !112 ; 6 uses
  %.pre453.i.i = load ptr, ptr %i.iv, align 8, !tbaa !102 ; 11 uses
  %.pre453.i.i765 = ptrtoaddr ptr %.pre453.i.i to i64 ; 3 uses
  %.pre454.i.i = load ptr, ptr %i.lu, align 8, !tbaa !103 ; 10 uses
  %.pre454.i.i766 = ptrtoaddr ptr %.pre454.i.i to i64 ; 3 uses
  br i1 %i.bsg, label %.lr.ph386.i.i, label %._crit_edge387.i.i

.lr.ph386.i.i:                                    ; preds = %.preheader.i.i
  %i.bsh = load ptr, ptr %i.lf, align 8, !tbaa !188 ; 6 uses
  %i.bsi = ptrtoaddr ptr %i.bsh to i64            ; 2 uses
  %i.bsj = sext i32 %.pre452.i.i to i64           ; 4 uses
  %i.bsk = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.bsj
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !158 ; 6 uses
  %i.bsm = ptrtoaddr ptr %i.bsl to i64            ; 2 uses
  %.not323377.i.i = icmp slt i32 %.pre452.i.i, 1
  br i1 %.not323377.i.i, label %.lr.ph386.split.us.preheader.i.i, label %.lr.ph381.preheader.i.i

.lr.ph381.preheader.i.i:                          ; preds = %.lr.ph386.i.i
  %wide.trip.count436.i.i = zext nneg i32 %i.bsf to i64
  %i.bsn = zext nneg i32 %.pre452.i.i to i64      ; 2 uses
  %xtraiter1144 = and i64 %i.bsn, 1
  %i.bso = icmp eq i32 %.pre452.i.i, 1
  %unroll_iter1149 = and i64 %i.bsn, 2147483646
  %invariant.gep1197 = getelementptr [8 x i8], ptr %i.hw, i64 %i.bsj
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1144, 0
  %lcmp.mod1148 = trunc i32 %.pre452.i.i to i1
  br label %.lr.ph381.i.i

.lr.ph386.split.us.preheader.i.i:                 ; preds = %.lr.ph386.i.i
  %wide.trip.count443.i.i = zext nneg i32 %i.bsf to i64 ; 5 uses
  %min.iters.check775 = icmp ult i32 %i.bsf, 16
  br i1 %min.iters.check775, label %.lr.ph386.split.us.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph386.split.us.preheader.i.i
  %i.bsp = sub i64 %.pre454.i.i766, %.pre453.i.i765
  %diff.check = icmp ugt i64 %i.bsp, -32
  %i.bsq = sub i64 %i.bsi, %.pre454.i.i766
  %diff.check767 = icmp ugt i64 %i.bsq, -32
  %conflict.rdx = or i1 %diff.check, %diff.check767
  %i.bsr = sub i64 %.pre454.i.i766, %i.bsm
  %diff.check768 = icmp ugt i64 %i.bsr, -32
  %conflict.rdx769 = or i1 %conflict.rdx, %diff.check768
  %i.bss = sub i64 %i.bsi, %.pre453.i.i765
  %diff.check770 = icmp ugt i64 %i.bss, -32
  %conflict.rdx771 = or i1 %conflict.rdx769, %diff.check770
  %i.bst = sub i64 %i.bsm, %.pre453.i.i765
  %diff.check772 = icmp ugt i64 %i.bst, -32
  %conflict.rdx773 = or i1 %conflict.rdx771, %diff.check772
  br i1 %conflict.rdx773, label %.lr.ph386.split.us.i.i.preheader, label %vector.ph776

vector.ph776:                                     ; preds = %vector.memcheck
  %n.vec777 = and i64 %wide.trip.count443.i.i, 2147483644 ; 3 uses
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph776
  %index779 = phi i64 [ 0, %vector.ph776 ], [ %index.next783, %vector.body778 ] ; 5 uses
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %index779 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bsu, align 8, !tbaa !58
  %wide.load780 = load <2 x ptr>, ptr %i.bsv, align 8, !tbaa !58
  %i.bsw = getelementptr inbounds nuw [8 x i8], ptr %.pre454.i.i, i64 %index779 ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 16
  store <2 x ptr> %wide.load, ptr %i.bsw, align 8, !tbaa !58
  store <2 x ptr> %wide.load780, ptr %i.bsx, align 8, !tbaa !58
  %i.bsy = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %index779 ; 2 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 16
  %wide.load781 = load <2 x ptr>, ptr %i.bsy, align 8, !tbaa !58
  %wide.load782 = load <2 x ptr>, ptr %i.bsz, align 8, !tbaa !58
  %i.bta = getelementptr inbounds nuw [8 x i8], ptr %.pre453.i.i, i64 %index779 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 16
  store <2 x ptr> %wide.load781, ptr %i.bta, align 8, !tbaa !58
  store <2 x ptr> %wide.load782, ptr %i.btb, align 8, !tbaa !58
  %index.next783 = add nuw i64 %index779, 4       ; 2 uses
  %i.btc = icmp eq i64 %index.next783, %n.vec777
  br i1 %i.btc, label %middle.block784, label %vector.body778, !llvm.loop !326

middle.block784:                                  ; preds = %vector.body778
  %cmp.n785 = icmp eq i64 %n.vec777, %wide.trip.count443.i.i
  br i1 %cmp.n785, label %._crit_edge387.i.i, label %.lr.ph386.split.us.i.i.preheader

.lr.ph386.split.us.i.i.preheader:                 ; preds = %vector.memcheck, %.lr.ph386.split.us.preheader.i.i, %middle.block784
  %indvars.iv438.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph386.split.us.preheader.i.i ], [ %n.vec777, %middle.block784 ] ; 7 uses
  %xtraiter1151 = and i64 %wide.trip.count443.i.i, 1
  %lcmp.mod1152.not = icmp eq i64 %xtraiter1151, 0
  br i1 %lcmp.mod1152.not, label %.lr.ph386.split.us.i.i.prol.loopexit, label %.lr.ph386.split.us.i.i.prol

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
  %.2287384.i.i = phi i32 [ 0, %.lr.ph381.preheader.i.i ], [ %i.bvi, %._crit_edge382.i.i ] ; 2 uses
  %i.btx = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %indvars.iv433.i.i
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !58
  %i.btz = sext i32 %.2287384.i.i to i64          ; 2 uses
  %i.bua = getelementptr inbounds [8 x i8], ptr %.pre454.i.i, i64 %i.btz
  store ptr %i.bty, ptr %i.bua, align 8, !tbaa !58
  %i.bub = getelementptr inbounds nuw [8 x i8], ptr %i.bsl, i64 %indvars.iv433.i.i
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !58
  %i.bud = getelementptr inbounds [8 x i8], ptr %.pre453.i.i, i64 %i.btz
  store ptr %i.buc, ptr %i.bud, align 8, !tbaa !58
  %.3288376.i.i = add i32 %.2287384.i.i, 1
  %i.bue = sext i32 %.3288376.i.i to i64          ; 2 uses
  br i1 %i.bso, label %.epil.preheader1143, label %.lr.ph381.i.i.new

.lr.ph381.i.i.new:                                ; preds = %.lr.ph381.i.i, %.lr.ph381.i.i.new
  %indvars.iv426.i.i = phi i64 [ %indvars.iv.next427.i.i.1, %.lr.ph381.i.i.new ], [ 1, %.lr.ph381.i.i ] ; 3 uses
  %indvars.iv424.i.i = phi i64 [ %indvars.iv.next425.i.i.1, %.lr.ph381.i.i.new ], [ %i.bue, %.lr.ph381.i.i ] ; 4 uses
  %niter1150 = phi i64 [ %niter1150.next.1, %.lr.ph381.i.i.new ], [ 0, %.lr.ph381.i.i ]
  %i.buf = sub nsw i64 %i.bsj, %indvars.iv426.i.i
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
  %gep1198 = getelementptr [8 x i8], ptr %invariant.gep1197, i64 %indvars.iv.next427.i.i.neg
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %i.bum, i64 %indvars.iv433.i.i
  %i.bur = load ptr, ptr %i.buq, align 8, !tbaa !58
  %i.bus = getelementptr inbounds [8 x i8], ptr %.pre454.i.i, i64 %indvars.iv.next425.i.i
  store ptr %i.bur, ptr %i.bus, align 8, !tbaa !58
  %i.but = load ptr, ptr %gep1198, align 8, !tbaa !158
  %i.buu = getelementptr inbounds nuw [8 x i8], ptr %i.but, i64 %indvars.iv433.i.i
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !58
  %i.buw = getelementptr inbounds [8 x i8], ptr %.pre453.i.i, i64 %indvars.iv.next425.i.i
  store ptr %i.buv, ptr %i.buw, align 8, !tbaa !58
  %indvars.iv.next427.i.i.1 = add nuw nsw i64 %indvars.iv426.i.i, 2 ; 2 uses
  %indvars.iv.next425.i.i.1 = add nsw i64 %indvars.iv424.i.i, 2 ; 3 uses
  %niter1150.next.1 = add nuw i64 %niter1150, 2   ; 2 uses
  %niter1150.ncmp.1 = icmp eq i64 %niter1150.next.1, %unroll_iter1149
  br i1 %niter1150.ncmp.1, label %._crit_edge382.i.i.unr-lcssa, label %.lr.ph381.i.i.new

._crit_edge382.i.i.unr-lcssa:                     ; preds = %.lr.ph381.i.i.new
  br i1 %lcmp.mod1146.not, label %._crit_edge382.i.i, label %.epil.preheader1143

.epil.preheader1143:                              ; preds = %._crit_edge382.i.i.unr-lcssa, %.lr.ph381.i.i
  %indvars.iv426.i.i.epil.init = phi i64 [ 1, %.lr.ph381.i.i ], [ %indvars.iv.next427.i.i.1, %._crit_edge382.i.i.unr-lcssa ]
  %indvars.iv424.i.i.epil.init = phi i64 [ %i.bue, %.lr.ph381.i.i ], [ %indvars.iv.next425.i.i.1, %._crit_edge382.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1148)
  %i.bux = sub nsw i64 %i.bsj, %indvars.iv426.i.i.epil.init
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

._crit_edge382.i.i:                               ; preds = %._crit_edge382.i.i.unr-lcssa, %.epil.preheader1143
  %indvars.iv.next425.i.i.lcssa = phi i64 [ %indvars.iv.next425.i.i.1, %._crit_edge382.i.i.unr-lcssa ], [ %indvars.iv.next425.i.i.epil, %.epil.preheader1143 ]
  %i.bvi = trunc nsw i64 %indvars.iv.next425.i.i.lcssa to i32
  %indvars.iv.next434.i.i = add nuw nsw i64 %indvars.iv433.i.i, 1 ; 2 uses
  %exitcond437.not.i.i = icmp eq i64 %indvars.iv.next434.i.i, %wide.trip.count436.i.i
  br i1 %exitcond437.not.i.i, label %._crit_edge387.i.i, label %.lr.ph381.i.i

._crit_edge387.i.i:                               ; preds = %._crit_edge382.i.i, %.lr.ph386.split.us.i.i.prol.loopexit, %.lr.ph386.split.us.i.i, %middle.block784, %.preheader.i.i
  %i.bvj = add nsw i32 %.pre452.i.i, 1
  %i.bvk = mul nsw i32 %i.bvj, %i.bsf
  %i.bvl = call i32 @N_VLinearSumVectorArray(i32 noundef %i.bvk, double noundef 1.000000e+00, ptr noundef %.pre453.i.i, double noundef 1.000000e+00, ptr noundef %.pre454.i.i, ptr noundef %.pre453.i.i) #14 ; 0 uses
  br label %IDAStep.exit.thread459

IDAStep.exit.thread459:                           ; preds = %bb.in, %._crit_edge387.i.i
  %i.bvm = load ptr, ptr %i.jm, align 8, !tbaa !91 ; 2 uses
  call void @N_VScale(double noundef %.186.i400.i, ptr noundef %i.bvm, ptr noundef %i.bvm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.io

IDAStep.exit.thread:                              ; preds = %bb.fv, %bb.eu, %bb.ev
  %.0117.i.ph = phi i32 [ -11, %bb.eu ], [ -11, %bb.ev ], [ -8, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.loopexit

IDAStep.exit:                                     ; preds = %select.unfold.i, %IDAQuadNls.exit.thread.i, %select.unfold327.i, %IDAQuadSensTestError.exit.thread.i
  %.0117.i = phi i32 [ %i.akb, %select.unfold.i ], [ %i.avm, %select.unfold327.i ], [ %i.bct, %IDAQuadSensTestError.exit.thread.i ], [ %i.ano, %IDAQuadNls.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %.not428 = icmp eq i32 %.0117.i, 0
  br i1 %.not428, label %bb.io, label %.loopexit

.loopexit:                                        ; preds = %IDAStep.exit, %IDAStep.exit.thread
  %.0117.i458 = phi i32 [ %.0117.i.ph, %IDAStep.exit.thread ], [ %.0117.i, %IDAStep.exit ]
  %i.bvn = call fastcc i32 @IDAHandleFailure(ptr noundef %0, i32 noundef %.0117.i458)
  %i.bvo = load double, ptr %i.ig, align 8, !tbaa !104 ; 3 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store double %i.bvo, ptr %i.bvp, align 8, !tbaa !233
  store double %i.bvo, ptr %2, align 8, !tbaa !24
  %i.bvq = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.bvo, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %IDAStopTest2.exit.thread

bb.io:                                            ; preds = %IDAStep.exit.thread459, %IDAStep.exit
  %i.bvr = add nuw nsw i64 %.0373, 1
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
  br i1 %i.bwg, label %bb.is, label %.thread462

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
  br i1 %i.bwp, label %.preheader, label %.thread462

.preheader:                                       ; preds = %bb.iv
  %i.bwq = load i32, ptr %i.lv, align 8, !tbaa !118 ; 2 uses
  %i.bwr = icmp sgt i32 %i.bwq, 0
  br i1 %i.bwr, label %.lr.ph549, label %.thread462

.lr.ph549:                                        ; preds = %.preheader
  %i.bws = load ptr, ptr %i.lw, align 8, !tbaa !209
  %wide.trip.count597 = zext nneg i32 %i.bwq to i64
  br label %bb.ix

bb.iw:                                            ; preds = %bb.ix
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 1 ; 2 uses
  %exitcond598.not = icmp eq i64 %indvars.iv.next595, %wide.trip.count597
  br i1 %exitcond598.not, label %.thread462, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph549, %bb.iw
  %indvars.iv594 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next595, %bb.iw ] ; 2 uses
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %i.bws, i64 %indvars.iv594
  %i.bwu = load i32, ptr %i.bwt, align 4, !tbaa !29
  %.not430 = icmp eq i32 %i.bwu, 0
  br i1 %.not430, label %bb.iy, label %bb.iw

bb.iy:                                            ; preds = %bb.ix
  %i.bwv = load i32, ptr %i.lx, align 8, !tbaa !119
  %i.bww = icmp sgt i32 %i.bwv, 0
  br i1 %i.bww, label %bb.iz, label %.thread462

bb.iz:                                            ; preds = %bb.iy
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 3062, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48)
  br label %.thread462

.thread462:                                       ; preds = %bb.iw, %.preheader, %bb.iv, %bb.iz, %bb.iy, %bb.ir
  %i.bwx = load i32, ptr %i.iw, align 8, !tbaa !223
  %.not.i452 = icmp eq i32 %i.bwx, 0
  br i1 %.not.i452, label %bb.jf, label %bb.ja

bb.ja:                                            ; preds = %.thread462
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

bb.jf:                                            ; preds = %bb.je, %bb.jd, %bb.jb, %.thread462
end_hunk_0
begin_hunk_1_@IDAGetQuadDky:bb.a
  %i.bk = fadd double %i.aa, %.17688
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
  %.077 = phi i32 [ -20, %bb.b ], [ -30, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ -26, %bb.k ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.077
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
  %.092 = select i1 %i.z, double %i.aa, double %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !113
  %i.ad = fsub double %i.s, %i.ac                 ; 2 uses
  %i.ae = fsub double %i.ad, %.092
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
  %scevgep138 = getelementptr i8, ptr %i.a, i64 -8
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
  %5 = add nuw i32 %i.m, 1
  %i.as = add i32 %i.m, 1
  %i.at = sub i32 %i.as, %2
  %xtraiter = and i32 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph118, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.ar, %.lr.ph118 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph118 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.prol
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !158
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = sub nuw nsw i64 %indvars.iv.prol, %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ay
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !352

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph118
  %indvars.iv.unr = phi i64 [ %i.ar, %.lr.ph118 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ba = icmp ult i32 %i.ak, 3
  br i1 %i.ba, label %._crit_edge, label %.lr.ph118.new

bb.o:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv124 = phi i64 [ 1, %.lr.ph115 ], [ %indvars.iv.next125, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph115 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext140 = shl i64 %indvars.iv124, 32
  %i.bb = ashr exact i64 %sext140, 29
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.bb
  %indvars129 = trunc i64 %indvars.iv124 to i32
  %i.bc = shl nuw nsw i64 %indvar, 3
  %i.bd = add nuw nsw i64 %i.bc, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bd
  %scevgep123 = getelementptr i8, ptr %i.a, i64 %i.bd
  %i.be = trunc i64 %indvar to i32
  %i.bf = add i32 %i.ak, %i.be
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %indvars129)
  %i.bg = trunc i64 %indvar to i32
  %i.bh = xor i32 %i.bg, -1
  %i.bi = add i32 %smax, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 8
  %sext = shl i64 %indvars.iv124, 32
  %i.bm = ashr exact i64 %sext, 32
  %i.bn = icmp eq i64 %indvar, 0
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bo = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = trunc nuw nsw i64 %indvar to i32
  %i.bs = uitofp nneg i32 %i.br to double
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bo
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24 ; 2 uses
  %i.bw = fdiv double %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bw, ptr %i.bx, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.090 = phi double [ 0.000000e+00, %bb.p ], [ %i.bv, %bb.q ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.by = add nuw nsw i64 %indvar, %i.al
  br i1 %.not102107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bz = trunc nuw nsw i64 %indvar to i32
  %i.ca = uitofp nneg i32 %i.bz to double
  %load_initial = load double, ptr %scevgep139, align 8
  br label %bb.s

.lr.ph112.preheader:                              ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123, i64 %i.bl, i1 false), !tbaa !24
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.cj, %bb.s ]
  %indvars.iv120 = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next121, %bb.s ] ; 4 uses
  %.191108 = phi double [ %.090, %.lr.ph ], [ %i.ci, %bb.s ]
  %i.cb = add nsw i64 %indvars.iv120, -1          ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !24
  %i.ce = fadd double %i.ai, %.191108
  %i.cf = fmul double %i.ce, %store_forwarded
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cd, double %i.cf)
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.cb
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.cj = fdiv double %i.cg, %i.ci                ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv120
  store double %i.cj, ptr %i.ck, align 8, !tbaa !24
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %.not102.not = icmp slt i64 %indvars.iv120, %i.by
  br i1 %.not102.not, label %bb.s, label %.lr.ph112.preheader

.lr.ph118.new:                                    ; preds = %.prol.loopexit, %.lr.ph118.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph118.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !158
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ao
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cp = sub nuw nsw i64 %indvars.iv, %i.ar
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cp
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !158
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ao
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !58
  %i.cv = sub nuw nsw i64 %indvars.iv.next, %i.ar
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !158
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ao
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !58
  %i.db = sub nuw nsw i64 %indvars.iv.next.1, %i.ar
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !158
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ao
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58
  %i.dh = sub nuw nsw i64 %indvars.iv.next.2, %i.ar
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dh
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond133.not.3 = icmp eq i32 %5, %lftr.wideiv.3
  br i1 %exitcond133.not.3, label %._crit_edge, label %.lr.ph118.new

._crit_edge:                                      ; preds = %.lr.ph118.new, %.prol.loopexit
  %reass.sub = sub nsw i32 %i.m, %2
  %i.dj = add i32 %reass.sub, 1
  %6 = zext nneg i32 %2 to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %6
  %i.dl = call i32 @N_VLinearCombination(i32 noundef %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.aq, ptr noundef nonnull %4) #14
  %.not101 = icmp eq i32 %i.dl, 0
  %. = select i1 %.not101, i32 0, i32 -28
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.n, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.093 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -43, %bb.i ], [ -25, %bb.l ], [ -26, %bb.n ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.093
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
  %.022 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ 0, %.preheader ], [ %i.s, %.lr.ph ], [ 0, %bb.j ]
  ret i32 %.022
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

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3657, ptr noundef nonnull @__func__.IDAGetQuadSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load i32, ptr %i.c, align 8, !tbaa !194
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3666, ptr noundef nonnull @__func__.IDAGetQuadSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
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
  %.094 = select i1 %i.ac, double %i.ad, double %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.af = load double, ptr %i.ae, align 8, !tbaa !113
  %i.ag = fsub double %i.v, %i.af                 ; 2 uses
  %i.ah = fsub double %i.ag, %.094
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
  %scevgep140 = getelementptr i8, ptr %i.a, i64 -8
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
  %5 = add nuw i32 %i.p, 1
  %i.av = add i32 %i.p, 1
  %i.aw = sub i32 %i.av, %2
  %xtraiter = and i32 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph120, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.au, %.lr.ph120 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph120 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = sub nuw nsw i64 %indvars.iv.prol, %i.au
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bb
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !353

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph120
  %indvars.iv.unr = phi i64 [ %i.au, %.lr.ph120 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bd = icmp ult i32 %i.an, 3
  br i1 %i.bd, label %._crit_edge, label %.lr.ph120.new

bb.q:                                             ; preds = %.lr.ph117, %.loopexit
  %indvars.iv126 = phi i64 [ 1, %.lr.ph117 ], [ %indvars.iv.next127, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph117 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext142 = shl i64 %indvars.iv126, 32
  %i.be = ashr exact i64 %sext142, 29
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.be
  %indvars131 = trunc i64 %indvars.iv126 to i32
  %i.bf = shl nuw nsw i64 %indvar, 3
  %i.bg = add nuw nsw i64 %i.bf, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bg
  %scevgep125 = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bh = trunc i64 %indvar to i32
  %i.bi = add i32 %i.an, %i.bh
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 %indvars131)
  %i.bj = trunc i64 %indvar to i32
  %i.bk = xor i32 %i.bj, -1
  %i.bl = add i32 %smax, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 8
  %sext = shl i64 %indvars.iv126, 32
  %i.bp = ashr exact i64 %sext, 32
  %i.bq = icmp eq i64 %indvar, 0
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.br = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24
  %i.bu = trunc nuw nsw i64 %indvar to i32
  %i.bv = uitofp nneg i32 %i.bu to double
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.br
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.bz = fdiv double %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bz, ptr %i.ca, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.092 = phi double [ 0.000000e+00, %bb.r ], [ %i.by, %bb.s ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.cb = add nuw nsw i64 %indvar, %i.ao
  br i1 %.not104109, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.cc = trunc nuw nsw i64 %indvar to i32
  %i.cd = uitofp nneg i32 %i.cc to double
  %load_initial = load double, ptr %scevgep141, align 8
  br label %bb.u

.lr.ph114.preheader:                              ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep125, i64 %i.bo, i1 false), !tbaa !24
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.cm, %bb.u ]
  %indvars.iv122 = phi i64 [ %i.bp, %.lr.ph ], [ %indvars.iv.next123, %bb.u ] ; 4 uses
  %.193110 = phi double [ %.092, %.lr.ph ], [ %i.cl, %bb.u ]
  %i.ce = add nsw i64 %indvars.iv122, -1          ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !24
  %i.ch = fadd double %i.al, %.193110
  %i.ci = fmul double %i.ch, %store_forwarded
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cg, double %i.ci)
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ce
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !24 ; 2 uses
  %i.cm = fdiv double %i.cj, %i.cl                ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122
  store double %i.cm, ptr %i.cn, align 8, !tbaa !24
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %.not104.not = icmp slt i64 %indvars.iv122, %i.cb
  br i1 %.not104.not, label %bb.u, label %.lr.ph114.preheader

.lr.ph120.new:                                    ; preds = %.prol.loopexit, %.lr.ph120.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph120.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !158
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ar
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !58
  %i.cs = sub nuw nsw i64 %indvars.iv, %i.au
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ar
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58
  %i.cy = sub nuw nsw i64 %indvars.iv.next, %i.au
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cy
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !158
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ar
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !58
  %i.de = sub nuw nsw i64 %indvars.iv.next.1, %i.au
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !158
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ar
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !58
  %i.dk = sub nuw nsw i64 %indvars.iv.next.2, %i.au
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dk
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond135.not.3 = icmp eq i32 %5, %lftr.wideiv.3
  br i1 %exitcond135.not.3, label %._crit_edge, label %.lr.ph120.new

._crit_edge:                                      ; preds = %.lr.ph120.new, %.prol.loopexit
  %reass.sub = sub nsw i32 %i.p, %2
  %i.dm = add i32 %reass.sub, 1
  %6 = zext nneg i32 %2 to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %6
  %i.do = call i32 @N_VLinearCombination(i32 noundef %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.at, ptr noundef nonnull %4) #14
  %.not103 = icmp eq i32 %i.do, 0
  %. = select i1 %.not103, i32 0, i32 -28
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.p, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.095 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -43, %bb.k ], [ -25, %bb.n ], [ -26, %bb.p ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.095
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
  %.024 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -25, %bb.k ], [ 0, %.preheader ], [ %i.v, %.lr.ph ], [ 0, %bb.l ]
  ret i32 %.024
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

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, i32 noundef 3784, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3792, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.j = load double, ptr %i.i, align 8, !tbaa !233 ; 2 uses
  store double %i.j, ptr %1, align 8, !tbaa !24
  %i.k = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %i.j, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ %i.k, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeY(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3955, ptr noundef nonnull @__func__.IDAComputeY, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeYp(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3980, ptr noundef nonnull @__func__.IDAComputeYp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.e = load double, ptr %i.d, align 8, !tbaa !237
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef %i.e, ptr noundef %1, ptr noundef %2) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeYSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 4005, ptr noundef nonnull @__func__.IDAComputeYSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i32, ptr %i.b, align 8, !tbaa !149
end_hunk_1
