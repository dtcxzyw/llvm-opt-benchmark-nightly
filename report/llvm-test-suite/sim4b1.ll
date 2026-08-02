inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  %i.yk = load i32, ptr %i.yb, align 4, !tbaa !4
  %i.yl = icmp sgt i32 %i.yj, %i.yk
  br i1 %i.yl, label %bb.cp, label %.lr.ph294.i.1

bb.cp:                                            ; preds = %.lr.ph294.i
  store i32 %i.yj, ptr %i.yb, align 4, !tbaa !4
  %i.ym = trunc nsw i64 %indvars.iv348.i to i32
  store i32 %i.ym, ptr %i.yc, align 4, !tbaa !4
  br label %.lr.ph294.i.1

.lr.ph294.i.1:                                    ; preds = %bb.cp, %.lr.ph294.i
  %indvars.iv.next349.i = add nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next349.i
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !4  ; 2 uses
  %i.yp = load i32, ptr %i.yb, align 4, !tbaa !4
  %i.yq = icmp sgt i32 %i.yo, %i.yp
  br i1 %i.yq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph294.i.1
  store i32 %i.yo, ptr %i.yb, align 4, !tbaa !4
  %i.yr = trunc nsw i64 %indvars.iv.next349.i to i32
  store i32 %i.yr, ptr %i.yc, align 4, !tbaa !4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph294.i.1
  %indvars.iv.next349.i.1 = add nsw i64 %indvars.iv348.i, 2 ; 2 uses
  %exitcond353.not.i.1 = icmp eq i64 %indvars.iv.next349.i.1, %indvars.iv362.i
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i391.preheader, label %.lr.ph294.i, !llvm.loop !81

.lr.ph297.i391.preheader:                         ; preds = %bb.cr
  %min.iters.check1061 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1114 = select i1 %min.iters.check1061, i1 true, i1 %diff.check1059
  br i1 %or.cond1114, label %.lr.ph297.i391.preheader1122, label %vector.ph1062

vector.ph1062:                                    ; preds = %.lr.ph297.i391.preheader
  %n.vec1064 = and i64 %i.vj, -8                  ; 2 uses
  %i.ys = add i64 %indvars.iv337.i, %n.vec1064
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %vector.ph1062
  %index1066 = phi i64 [ 0, %vector.ph1062 ], [ %index.next1069, %vector.body1065 ] ; 2 uses
  %i.yt = add i64 %indvars.iv337.i, %index1066    ; 2 uses
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.yt ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %wide.load1067 = load <4 x i32>, ptr %i.yu, align 4, !tbaa !4
  %wide.load1068 = load <4 x i32>, ptr %i.yv, align 4, !tbaa !4
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.yt ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store <4 x i32> %wide.load1067, ptr %i.yw, align 4, !tbaa !4
  store <4 x i32> %wide.load1068, ptr %i.yx, align 4, !tbaa !4
  %index.next1069 = add nuw i64 %index1066, 8     ; 2 uses
  %i.yy = icmp eq i64 %index.next1069, %n.vec1064
  br i1 %i.yy, label %.lr.ph297.i391.preheader1122, label %vector.body1065, !llvm.loop !82

.lr.ph297.i391.preheader1122:                     ; preds = %vector.body1065, %.lr.ph297.i391.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i, %.lr.ph297.i391.preheader ], [ %i.ys, %vector.body1065 ] ; 4 uses
  %i.yz = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.za = sub i64 %i.vh, %indvars.iv356.i.ph
  %xtraiter1197 = and i64 %i.yz, 3                ; 2 uses
  %lcmp.mod1198.not = icmp eq i64 %xtraiter1197, 0
  br i1 %lcmp.mod1198.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol

.lr.ph297.i391.prol:                              ; preds = %.lr.ph297.i391.preheader1122, %.lr.ph297.i391.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1122 ] ; 3 uses
  %prol.iter1199 = phi i64 [ %prol.iter1199.next, %.lr.ph297.i391.prol ], [ 0, %.lr.ph297.i391.preheader1122 ]
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv356.i.prol
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !4
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv356.i.prol
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !4
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1199.next = add i64 %prol.iter1199, 1 ; 2 uses
  %prol.iter1199.cmp.not = icmp eq i64 %prol.iter1199.next, %xtraiter1197
  br i1 %prol.iter1199.cmp.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol, !llvm.loop !83

.lr.ph297.i391.prol.loopexit:                     ; preds = %.lr.ph297.i391.prol, %.lr.ph297.i391.preheader1122
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1122 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ]
  %i.ze = icmp ult i64 %i.za, 3
  br i1 %i.ze, label %._crit_edge298.i, label %.lr.ph297.i391

.lr.ph297.i391:                                   ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.3, %.lr.ph297.i391 ], [ %indvars.iv356.i.unr, %.lr.ph297.i391.prol.loopexit ] ; 6 uses
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv356.i
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !4
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv356.i
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !4
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next357.i
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !4
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv.next357.i
  store i32 %i.zj, ptr %i.zk, align 4, !tbaa !4
  %indvars.iv.next357.i.1 = add nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next357.i.1
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !4
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv.next357.i.1
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !4
  %indvars.iv.next357.i.2 = add nsw i64 %indvars.iv356.i, 3 ; 2 uses
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next357.i.2
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !4
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv.next357.i.2
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !4
  %indvars.iv.next357.i.3 = add nsw i64 %indvars.iv356.i, 4 ; 2 uses
  %exitcond361.not.i.3 = icmp eq i64 %indvars.iv.next357.i.3, %indvars.iv362.i
  br i1 %exitcond361.not.i.3, label %._crit_edge298.i, label %.lr.ph297.i391, !llvm.loop !84

._crit_edge298.i:                                 ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391, %._crit_edge290.thread.i
  %i.zr = add nuw nsw i32 %.0229300.i, 1
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1
  %indvars.iv.next326.i = add nsw i32 %indvars.iv325.i, -1
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond375.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count374.i
  br i1 %exitcond375.i, label %.critedge2.i, label %bb.bq, !llvm.loop !85

.critedge2.split.loop.exit402.i:                  ; preds = %bb.bu
  %i.zs = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.split.loop.exit404.i:                  ; preds = %good_ratio.exit258.i
  %i.zt = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %._crit_edge298.i, %.critedge2.split.loop.exit404.i, %.critedge2.split.loop.exit402.i
  %.lcssa.i392 = phi i32 [ %i.zs, %.critedge2.split.loop.exit402.i ], [ %i.zt, %.critedge2.split.loop.exit404.i ], [ %i.ve, %._crit_edge298.i ] ; 2 uses
  %smin.i393 = call i32 @llvm.smin.i32(i32 %.lcssa.i392, i32 1)
  %i.zu = add i32 %smin.i393, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i
  %.2228303.i = phi i32 [ %.lcssa.i392, %.critedge2.i ], [ %i.aac, %bb.ct ] ; 4 uses
  %i.zv = zext nneg i32 %.2228303.i to i64
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.zv ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !4
  %i.zy = getelementptr i8, ptr %i.zw, i64 -4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !4
  %i.aaa = sub nsw i32 %i.zx, %i.zz
  %i.aab = icmp slt i32 %i.aaa, 3
  br i1 %i.aab, label %bb.ct, label %.critedge8.i

bb.ct:                                            ; preds = %bb.cs
  %i.aac = add nsw i32 %.2228303.i, -1
  %i.aad = icmp sgt i32 %.2228303.i, 1
  br i1 %i.aad, label %bb.cs, label %.critedge8.i, !llvm.loop !86

.critedge8.i:                                     ; preds = %bb.ct, %bb.cs
  %.2228.lcssa.i = phi i32 [ %i.zu, %bb.ct ], [ %.2228303.i, %bb.cs ] ; 2 uses
  %i.aae = sext i32 %.2228.lcssa.i to i64         ; 2 uses
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !4 ; 2 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.aae
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !4
  %i.aaj = sub i32 %i.tn, %spec.select348
  %i.aak = add i32 %i.aaj, %i.aag
  %i.aal = add i32 %i.aak, %i.aai
  call void @free(ptr noundef nonnull %i.ux) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.un) #18
  call void @free(ptr noundef %i.up) #18
  br label %extend_fw.exit

extend_fw.exit:                                   ; preds = %bb.bn, %bb.bo, %bb.cj, %bb.cl, %bb.cn, %.critedge8.i
  %spec.select348.pn = phi i32 [ %spec.select348, %bb.bn ], [ %i.tt, %bb.bo ], [ %i.aag, %.critedge8.i ], [ %spec.select348, %bb.cj ], [ %spec.select348, %bb.cl ], [ %.3.i, %bb.cn ]
  %.0541 = phi i32 [ %i.ug, %bb.bn ], [ %i.ui, %bb.bo ], [ %i.aal, %.critedge8.i ], [ %i.xv, %bb.cj ], [ %i.xx, %bb.cl ], [ %i.xz, %bb.cn ]
  %.0.i394 = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2228.lcssa.i, %.critedge8.i ], [ %i.xu, %bb.cj ], [ %i.xw, %bb.cl ], [ %i.xy, %bb.cn ]
  %.0542 = add nsw i32 %spec.select348.pn, %i.tg  ; 2 uses
  %i.aam = load i32, ptr %i.tf, align 4, !tbaa !51
  %i.aan = sub nsw i32 %.0542, %i.aam
  %i.aao = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !71
  %i.aap = mul nsw i32 %i.aan, %i.aao
  %i.aaq = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !72
  %i.aar = mul nsw i32 %i.aaq, %.0.i394
  %i.aas = add nsw i32 %i.aar, %i.aap
  %i.aat = icmp sgt i32 %i.aas, -1
  br i1 %i.aat, label %bb.cu, label %.thread554

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0542, ptr %i.tf, align 4, !tbaa !51
  store i32 %.0541, ptr %i.tm, align 4, !tbaa !50
  br label %.thread554

.thread554:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread547
  %i.aau = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aav = icmp ugt i32 %i.aau, 1
  br i1 %i.aav, label %.lr.ph662, label %.loopexit598

.lr.ph662:                                        ; preds = %.thread554, %bb.fh
  %i.aaw = phi i32 [ %i.att, %bb.fh ], [ %i.aau, %.thread554 ] ; 2 uses
  %.0299661 = phi i32 [ %i.atu, %bb.fh ], [ 1, %.thread554 ] ; 6 uses
  %i.aax = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aay = add i32 %.0299661, -1                  ; 2 uses
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !31 ; 2 uses
  %i.abc = zext i32 %.0299661 to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.abc
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !31 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !33 ; 6 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 12 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !51 ; 9 uses
  %i.abj = xor i32 %i.abi, -1
  %i.abk = add i32 %i.abg, %i.abj                 ; 15 uses
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %bb.cv, label %bb.fh

bb.cv:                                            ; preds = %.lr.ph662
  %i.abm = load i32, ptr %i.abe, align 4, !tbaa !35 ; 2 uses
  %i.abn = add i32 %i.abm, -1                     ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abb, i64 8 ; 3 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !50 ; 10 uses
  %i.abq = icmp ugt i32 %i.abn, %i.abp
  br i1 %i.abq, label %bb.cw, label %bb.fh

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abr = icmp samesign ult i32 %i.abk, 501
  %.pre760 = load i32, ptr %i.x, align 4, !tbaa !39 ; 3 uses
  %.pre763 = load ptr, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  br i1 %i.abr, label %bb.cx, label %.thread558

bb.cx:                                            ; preds = %bb.cw
  %i.abs = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.abt = zext i32 %i.abi to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abt ; 4 uses
  %i.abv = zext i32 %i.abp to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.abv ; 4 uses
  %i.abx = xor i32 %i.abp, -1
  %i.aby = add i32 %i.abm, %i.abx                 ; 9 uses
  %i.abz = icmp ugt i32 %i.aby, 999999
  br i1 %i.abz, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aca = sub nsw i32 %i.aby, %i.abk             ; 3 uses
  %i.acb = uitofp nneg i32 %i.abk to double       ; 2 uses
  %i.acc = call double @llvm.fmuladd.f64(double %i.acb, double 2.000000e-01, double 1.000000e+00)
  %i.acd = fptoui double %i.acc to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre760, i32 %i.acd) ; 22 uses
  %i.ace = icmp slt i32 %i.aca, 0
  br i1 %i.ace, label %bb.cz, label %.lr.ph.i409.preheader

bb.cz:                                            ; preds = %bb.cy
  %i.acf = uitofp i32 %.pre760 to double          ; 2 uses
  %i.acg = uitofp nneg i32 %i.aby to double       ; 2 uses
  %i.ach = fmul nnan double %i.acg, 1.200000e+00  ; 2 uses
  %i.aci = fcmp olt double %i.ach, %i.acf
  %.501.i = select i1 %i.aci, double %i.ach, double %i.acf
  %i.acj = fcmp ult double %.501.i, %i.acb
  br i1 %i.acj, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ack = add nuw i32 %i.abp, 1
  %i.acl = add i32 %i.abi, 1
  %i.acm = add i32 %i.abg, -1
  %i.acn = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.ack, ptr %i.acn, align 4, !tbaa !35
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  store i32 %i.acl, ptr %i.aco, align 4, !tbaa !33
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  store i32 %i.abn, ptr %i.acp, align 4, !tbaa !50
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 12
  store i32 %i.acm, ptr %i.acq, align 4, !tbaa !51
  %i.acr = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.acs = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i.i428 = icmp ugt i32 %i.acr, %i.acs
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i428, label %add_col_elt.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.act = add i32 %i.acr, 5                      ; 2 uses
  store i32 %i.act, ptr %i.s, align 4, !tbaa !17
  %i.acu = zext i32 %i.act to i64
  %i.acv = shl nuw nsw i64 %i.acu, 3
  %i.acw = call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.acv) #18 ; 2 uses
  store ptr %i.acw, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit.i

add_col_elt.exit.i:                               ; preds = %bb.db, %bb.da
  %i.acx = phi ptr [ %i.acw, %bb.db ], [ %.pre.i.i, %bb.da ]
  %i.acy = add i32 %i.acs, 1
  store i32 %i.acy, ptr %i.t, align 8, !tbaa !19
  %i.acz = zext i32 %i.acs to i64
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %i.acz
  store ptr %i.acn, ptr %i.ada, align 8, !tbaa !44
  %i.adb = sub nsw i32 %i.abk, %i.aby
  %i.adc = call double @llvm.fmuladd.f64(double %i.acg, double 2.000000e-01, double 1.000000e+00)
  %i.add = fptoui double %i.adc to i32
  %i.ade = add i32 %i.adb, %i.add
  br label %greedy.exitthread-pre-split

bb.dc:                                            ; preds = %bb.cz
  %i.adf = add i32 %..i, 1
  br label %greedy.exitthread-pre-split

.lr.ph.i409.preheader:                            ; preds = %bb.cy
  %.neg606.i = sub i32 %i.aca, %..i               ; 2 uses
  br label %.lr.ph.i409

.lr.ph.i409:                                      ; preds = %.lr.ph.i409.preheader, %bb.dd
  %.0430532.i = phi i32 [ %i.adq, %bb.dd ], [ %i.aby, %.lr.ph.i409.preheader ] ; 3 uses
  %.0438531.i = phi i32 [ %i.adp, %bb.dd ], [ %i.abk, %.lr.ph.i409.preheader ] ; 3 uses
  %i.adg = zext nneg i32 %.0438531.i to i64
  %i.adh = getelementptr i8, ptr %i.abu, i64 %i.adg
  %i.adi = getelementptr i8, ptr %i.adh, i64 -1
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !20
  %i.adk = zext nneg i32 %.0430532.i to i64
  %i.adl = getelementptr i8, ptr %i.abw, i64 %i.adk
  %i.adm = getelementptr i8, ptr %i.adl, i64 -1
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !20
  %i.ado = icmp eq i8 %i.adj, %i.adn
  br i1 %i.ado, label %bb.dd, label %.critedge.thread.i410

bb.dd:                                            ; preds = %.lr.ph.i409
  %i.adp = add nsw i32 %.0438531.i, -1            ; 4 uses
  %i.adq = add nsw i32 %.0430532.i, -1
  %i.adr = icmp ne i32 %i.adp, 0
  %i.ads = icmp sgt i32 %.0430532.i, 1
  %or.cond.i426 = and i1 %i.ads, %i.adr
  br i1 %or.cond.i426, label %.lr.ph.i409, label %.critedge.i427, !llvm.loop !87

.critedge.i427:                                   ; preds = %bb.dd
  %i.adt = icmp eq i32 %i.adp, 0
  br i1 %i.adt, label %bb.de, label %.critedge.thread.i410

bb.de:                                            ; preds = %.critedge.i427
  %i.adu = add i32 %i.abp, 1
  %i.adv = add i32 %i.adu, %i.aca
  %i.adw = add i32 %i.abi, 1
  %i.adx = add i32 %i.abg, -1
  %i.ady = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.adv, ptr %i.ady, align 4, !tbaa !35
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  store i32 %i.adw, ptr %i.adz, align 4, !tbaa !33
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  store i32 %i.abn, ptr %i.aea, align 4, !tbaa !50
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 12
  store i32 %i.adx, ptr %i.aeb, align 4, !tbaa !51
  %i.aec = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.aed = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i505.i = icmp ugt i32 %i.aec, %i.aed
  %.pre.i506.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i505.i, label %add_col_elt.exit508.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aee = add i32 %i.aec, 5                      ; 2 uses
  store i32 %i.aee, ptr %i.s, align 4, !tbaa !17
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = shl nuw nsw i64 %i.aef, 3
  %i.aeh = call ptr @xrealloc(ptr noundef %.pre.i506.i, i64 noundef %i.aeg) #18 ; 2 uses
  store ptr %i.aeh, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit508.i

add_col_elt.exit508.i:                            ; preds = %bb.df, %bb.de
  %i.aei = phi ptr [ %i.aeh, %bb.df ], [ %.pre.i506.i, %bb.de ]
  %i.aej = add i32 %i.aed, 1                      ; 2 uses
  store i32 %i.aej, ptr %i.t, align 8, !tbaa !19
  %i.aek = zext i32 %i.aed to i64
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %i.aek
  store ptr %i.ady, ptr %i.ael, align 8, !tbaa !44
  br label %greedy.exit

.critedge.thread.i410:                            ; preds = %.lr.ph.i409, %.critedge.i427
  %.0438530.i = phi i32 [ %i.adp, %.critedge.i427 ], [ %.0438531.i, %.lr.ph.i409 ]
  %i.aem = add i32 %..i, %i.aby                   ; 3 uses
  %i.aen = add i32 %i.aem, 1
  %i.aeo = zext i32 %i.aen to i64                 ; 2 uses
  %i.aep = shl nuw nsw i64 %i.aeo, 2              ; 4 uses
  %i.aeq = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 15 uses
  %i.aer = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 13 uses
  %i.aes = sub i32 %i.abg, %i.abi                 ; 18 uses
  %i.aet = zext i32 %i.aem to i64                 ; 4 uses
  %i.aeu = add nuw nsw i64 %i.aet, 1              ; 2 uses
  %min.iters.check1046 = icmp ult i32 %i.aem, 7
  %i.aev = ptrtoaddr ptr %i.aer to i64
  %i.aew = ptrtoaddr ptr %i.aeq to i64
  %i.aex = sub i64 %i.aew, %i.aev
  %diff.check1044 = icmp ugt i64 %i.aex, -32
  %or.cond1117 = select i1 %min.iters.check1046, i1 true, i1 %diff.check1044
  br i1 %or.cond1117, label %scalar.ph1045.preheader, label %vector.ph1047

vector.ph1047:                                    ; preds = %.critedge.thread.i410
  %n.vec1049 = and i64 %i.aeu, 8589934584         ; 3 uses
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1047
  %index1053 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1054, %vector.body1052 ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %index1053 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store <4 x i32> %broadcast.splat1051, ptr %i.aey, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1051, ptr %i.aez, align 4, !tbaa !4
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index1053 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  store <4 x i32> %broadcast.splat1051, ptr %i.afa, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1051, ptr %i.afb, align 4, !tbaa !4
  %index.next1054 = add nuw i64 %index1053, 8     ; 2 uses
  %i.afc = icmp eq i64 %index.next1054, %n.vec1049
  br i1 %i.afc, label %middle.block1055, label %vector.body1052, !llvm.loop !88

middle.block1055:                                 ; preds = %vector.body1052
  %cmp.n1056 = icmp eq i64 %i.aeu, %n.vec1049
  br i1 %cmp.n1056, label %.lr.ph536.preheader.i, label %scalar.ph1045.preheader

scalar.ph1045.preheader:                          ; preds = %.critedge.thread.i410, %middle.block1055
  %indvars.iv.i411.ph = phi i64 [ 0, %.critedge.thread.i410 ], [ %n.vec1049, %middle.block1055 ] ; 3 uses
  %i.afd = add nuw nsw i64 %i.aet, 1
  %i.afe = sub nsw i64 %i.aet, %indvars.iv.i411.ph
  %xtraiter1200 = and i64 %i.afd, 3               ; 2 uses
  %lcmp.mod1201.not = icmp eq i64 %xtraiter1200, 0
  br i1 %lcmp.mod1201.not, label %scalar.ph1045.prol.loopexit, label %scalar.ph1045.prol

scalar.ph1045.prol:                               ; preds = %scalar.ph1045.preheader, %scalar.ph1045.prol
  %indvars.iv.i411.prol = phi i64 [ %indvars.iv.next.i412.prol, %scalar.ph1045.prol ], [ %indvars.iv.i411.ph, %scalar.ph1045.preheader ] ; 3 uses
  %prol.iter1202 = phi i64 [ %prol.iter1202.next, %scalar.ph1045.prol ], [ 0, %scalar.ph1045.preheader ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i411.prol
  store i32 %i.aes, ptr %i.aff, align 4, !tbaa !4
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i411.prol
  store i32 %i.aes, ptr %i.afg, align 4, !tbaa !4
  %indvars.iv.next.i412.prol = add nuw nsw i64 %indvars.iv.i411.prol, 1 ; 2 uses
  %prol.iter1202.next = add i64 %prol.iter1202, 1 ; 2 uses
  %prol.iter1202.cmp.not = icmp eq i64 %prol.iter1202.next, %xtraiter1200
  br i1 %prol.iter1202.cmp.not, label %scalar.ph1045.prol.loopexit, label %scalar.ph1045.prol, !llvm.loop !89

scalar.ph1045.prol.loopexit:                      ; preds = %scalar.ph1045.prol, %scalar.ph1045.preheader
  %indvars.iv.i411.unr = phi i64 [ %indvars.iv.i411.ph, %scalar.ph1045.preheader ], [ %indvars.iv.next.i412.prol, %scalar.ph1045.prol ]
  %i.afh = icmp ult i64 %i.afe, 3
  br i1 %i.afh, label %.lr.ph536.preheader.i, label %scalar.ph1045

scalar.ph1045:                                    ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045
  %indvars.iv.i411 = phi i64 [ %indvars.iv.next.i412.3, %scalar.ph1045 ], [ %indvars.iv.i411.unr, %scalar.ph1045.prol.loopexit ] ; 6 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i411
  store i32 %i.aes, ptr %i.afi, align 4, !tbaa !4
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i411
  store i32 %i.aes, ptr %i.afj, align 4, !tbaa !4
  %indvars.iv.next.i412 = add nuw nsw i64 %indvars.iv.i411, 1 ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next.i412
  store i32 %i.aes, ptr %i.afk, align 4, !tbaa !4
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next.i412
  store i32 %i.aes, ptr %i.afl, align 4, !tbaa !4
  %indvars.iv.next.i412.1 = add nuw nsw i64 %indvars.iv.i411, 2 ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next.i412.1
  store i32 %i.aes, ptr %i.afm, align 4, !tbaa !4
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next.i412.1
  store i32 %i.aes, ptr %i.afn, align 4, !tbaa !4
  %indvars.iv.next.i412.2 = add nuw nsw i64 %indvars.iv.i411, 3 ; 3 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next.i412.2
  store i32 %i.aes, ptr %i.afo, align 4, !tbaa !4
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next.i412.2
  store i32 %i.aes, ptr %i.afp, align 4, !tbaa !4
  %indvars.iv.next.i412.3 = add nuw nsw i64 %indvars.iv.i411, 4
  %exitcond747.not.3 = icmp eq i64 %indvars.iv.next.i412.2, %i.aet
  br i1 %exitcond747.not.3, label %.lr.ph536.preheader.i, label %scalar.ph1045, !llvm.loop !90

.lr.ph536.preheader.i:                            ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045, %middle.block1055
  %i.afq = sext i32 %..i to i64                   ; 4 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.afq ; 3 uses
  store i32 %.0438530.i, ptr %i.afr, align 4, !tbaa !4
  %i.afs = add i32 %..i, -1
  %i.aft = add i32 %..i, 1                        ; 4 uses
  %invariant.umin.i = call i32 @llvm.umin.i32(i32 %i.aby, i32 range(i32 1, 501) %i.abk) ; 2 uses
  %wide.trip.count.i413 = zext nneg i32 %invariant.umin.i to i64
  br label %.lr.ph536.i

.lr.ph536.i:                                      ; preds = %bb.dg, %.lr.ph536.preheader.i
  %indvars.iv612.i = phi i64 [ 0, %.lr.ph536.preheader.i ], [ %indvars.iv.next613.i, %bb.dg ] ; 4 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv612.i
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !20
  %i.afw = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv612.i
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !20
  %i.afy = icmp eq i8 %i.afv, %i.afx
  br i1 %i.afy, label %bb.dg, label %.critedge3.split.loop.exit.i

bb.dg:                                            ; preds = %.lr.ph536.i
  %indvars.iv.next613.i = add nuw nsw i64 %indvars.iv612.i, 1 ; 2 uses
  %exitcond.not.i425 = icmp eq i64 %indvars.iv.next613.i, %wide.trip.count.i413
  br i1 %exitcond.not.i425, label %.critedge3.i, label %.lr.ph536.i, !llvm.loop !91

.critedge3.split.loop.exit.i:                     ; preds = %.lr.ph536.i
  %11 = trunc nuw nsw i64 %indvars.iv612.i to i32
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %bb.dg, %.critedge3.split.loop.exit.i
  %.1439.lcssa.i = phi i32 [ %11, %.critedge3.split.loop.exit.i ], [ %invariant.umin.i, %bb.dg ] ; 2 uses
  %i.afz = icmp eq i32 %.1439.lcssa.i, %i.abk
  br i1 %i.afz, label %bb.dh, label %.critedge3.thread.i

bb.dh:                                            ; preds = %.critedge3.i
  %i.aga = add i32 %i.abp, 1
  %i.agb = add i32 %i.abi, 1
  %i.agc = add i32 %i.abp, %i.abk
  %i.agd = add i32 %i.abg, -1
  %i.age = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.aga, ptr %i.age, align 4, !tbaa !35
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  store i32 %i.agb, ptr %i.agf, align 4, !tbaa !33
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  store i32 %i.agc, ptr %i.agg, align 4, !tbaa !50
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 12
  store i32 %i.agd, ptr %i.agh, align 4, !tbaa !51
  %i.agi = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.agj = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i509.i = icmp ugt i32 %i.agi, %i.agj
  %.pre.i510.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i509.i, label %add_col_elt.exit512.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.agk = add i32 %i.agi, 5                      ; 2 uses
  store i32 %i.agk, ptr %i.s, align 4, !tbaa !17
  %i.agl = zext i32 %i.agk to i64
  %i.agm = shl nuw nsw i64 %i.agl, 3
  %i.agn = call ptr @xrealloc(ptr noundef %.pre.i510.i, i64 noundef %i.agm) #18 ; 2 uses
  store ptr %i.agn, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit512.i

add_col_elt.exit512.i:                            ; preds = %bb.di, %bb.dh
  %i.ago = phi ptr [ %i.agn, %bb.di ], [ %.pre.i510.i, %bb.dh ]
  %i.agp = add i32 %i.agj, 1
  store i32 %i.agp, ptr %i.t, align 8, !tbaa !19
  %i.agq = zext i32 %i.agj to i64
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %i.agq
  store ptr %i.age, ptr %i.agr, align 8, !tbaa !44
  call void @free(ptr noundef %i.aeq) #18
  call void @free(ptr noundef %i.aer) #18
  br label %greedy.exitthread-pre-split

.critedge3.thread.i:                              ; preds = %.critedge3.i
  %i.ags = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 8 uses
  %i.agt = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 6 uses
  %umax.i414 = call i64 @llvm.umax.i64(i64 %i.aeo, i64 1)
  %i.agu = shl nuw nsw i64 %umax.i414, 2          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ags, i8 -1, i64 %i.agu, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agt, i8 -1, i64 %i.agu, i1 false), !tbaa !4
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %i.afq ; 3 uses
  store i32 %.1439.lcssa.i, ptr %i.agv, align 4, !tbaa !4
  %i.agw = zext i32 %i.aft to i64
  %i.agx = shl nuw nsw i64 %i.agw, 2              ; 4 uses
  %i.agy = call ptr @xmalloc(i64 noundef %i.agx) #18 ; 15 uses
  %i.agz = call ptr @xmalloc(i64 noundef %i.agx) #18 ; 15 uses
  %i.aha = call ptr @xmalloc(i64 noundef %i.agx) #18 ; 7 uses
  %i.ahb = call ptr @xmalloc(i64 noundef %i.agx) #18 ; 7 uses
  %.not481541.i = icmp eq i32 %..i, 0
  br i1 %.not481541.i, label %._crit_edge.thread.i, label %.lr.ph543.i

._crit_edge.thread.i:                             ; preds = %.critedge3.thread.i
  %i.ahc = load i32, ptr %i.afr, align 4, !tbaa !4
  store i32 %i.ahc, ptr %i.agz, align 4, !tbaa !4
  store i32 0, ptr %i.ahb, align 4, !tbaa !4
  %i.ahd = load i32, ptr %i.agv, align 4, !tbaa !4
  store i32 %i.ahd, ptr %i.agy, align 4, !tbaa !4
  store i32 0, ptr %i.aha, align 4, !tbaa !4
  br label %._crit_edge600.i

.lr.ph543.i:                                      ; preds = %.critedge3.thread.i
  %i.ahe = ptrtoaddr ptr %i.agz to i64
  %i.ahf = ptrtoaddr ptr %i.agy to i64
  %umax622.i = call i32 @llvm.umax.i32(i32 %i.aft, i32 2)
  %wide.trip.count623.i = zext i32 %umax622.i to i64 ; 4 uses
  %i.ahg = add nsw i64 %wide.trip.count623.i, -1  ; 2 uses
  %min.iters.check1033 = icmp ult i32 %i.aft, 9
  %i.ahh = sub i64 %i.ahe, %i.ahf
  %diff.check = icmp ugt i64 %i.ahh, -32
  %or.cond1118 = select i1 %min.iters.check1033, i1 true, i1 %diff.check
  br i1 %or.cond1118, label %scalar.ph1032.preheader, label %vector.ph1034

vector.ph1034:                                    ; preds = %.lr.ph543.i
  %n.vec1036 = and i64 %i.ahg, -8                 ; 3 uses
  %i.ahi = or disjoint i64 %n.vec1036, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %vector.ph1034
  %index1038 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1039, %vector.body1037 ] ; 2 uses
  %i.ahj = or disjoint i64 %index1038, 1          ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ahj ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ahk, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ahl, align 4, !tbaa !4
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ahj ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ahm, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.ahn, align 4, !tbaa !4
  %index.next1039 = add nuw i64 %index1038, 8     ; 2 uses
  %i.aho = icmp eq i64 %index.next1039, %n.vec1036
  br i1 %i.aho, label %middle.block1040, label %vector.body1037, !llvm.loop !92

middle.block1040:                                 ; preds = %vector.body1037
  %cmp.n1041 = icmp eq i64 %i.ahg, %n.vec1036
  br i1 %cmp.n1041, label %.preheader528.lr.ph.i, label %scalar.ph1032.preheader

scalar.ph1032.preheader:                          ; preds = %.lr.ph543.i, %middle.block1040
  %indvars.iv619.i.ph = phi i64 [ 1, %.lr.ph543.i ], [ %i.ahi, %middle.block1040 ] ; 4 uses
  %i.ahp = sub nsw i64 %wide.trip.count623.i, %indvars.iv619.i.ph
  %xtraiter1203 = and i64 %i.ahp, 3               ; 2 uses
  %lcmp.mod1204.not = icmp eq i64 %xtraiter1203, 0
  br i1 %lcmp.mod1204.not, label %scalar.ph1032.prol.loopexit, label %scalar.ph1032.prol

scalar.ph1032.prol:                               ; preds = %scalar.ph1032.preheader, %scalar.ph1032.prol
  %indvars.iv619.i.prol = phi i64 [ %indvars.iv.next620.i.prol, %scalar.ph1032.prol ], [ %indvars.iv619.i.ph, %scalar.ph1032.preheader ] ; 3 uses
  %prol.iter1205 = phi i64 [ %prol.iter1205.next, %scalar.ph1032.prol ], [ 0, %scalar.ph1032.preheader ]
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv619.i.prol
  store i32 %i.aes, ptr %i.ahq, align 4, !tbaa !4
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv619.i.prol
  store i32 -1, ptr %i.ahr, align 4, !tbaa !4
  %indvars.iv.next620.i.prol = add nuw nsw i64 %indvars.iv619.i.prol, 1 ; 2 uses
  %prol.iter1205.next = add i64 %prol.iter1205, 1 ; 2 uses
  %prol.iter1205.cmp.not = icmp eq i64 %prol.iter1205.next, %xtraiter1203
  br i1 %prol.iter1205.cmp.not, label %scalar.ph1032.prol.loopexit, label %scalar.ph1032.prol, !llvm.loop !93

scalar.ph1032.prol.loopexit:                      ; preds = %scalar.ph1032.prol, %scalar.ph1032.preheader
  %indvars.iv619.i.unr = phi i64 [ %indvars.iv619.i.ph, %scalar.ph1032.preheader ], [ %indvars.iv.next620.i.prol, %scalar.ph1032.prol ]
  %i.ahs = sub nsw i64 %indvars.iv619.i.ph, %wide.trip.count623.i
  %i.aht = icmp ugt i64 %i.ahs, -4
  br i1 %i.aht, label %.preheader528.lr.ph.i, label %scalar.ph1032

scalar.ph1032:                                    ; preds = %scalar.ph1032.prol.loopexit, %scalar.ph1032
  %indvars.iv619.i = phi i64 [ %indvars.iv.next620.i.3, %scalar.ph1032 ], [ %indvars.iv619.i.unr, %scalar.ph1032.prol.loopexit ] ; 6 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv619.i
  store i32 %i.aes, ptr %i.ahu, align 4, !tbaa !4
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv619.i
  store i32 -1, ptr %i.ahv, align 4, !tbaa !4
  %indvars.iv.next620.i = add nuw nsw i64 %indvars.iv619.i, 1 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next620.i
  store i32 %i.aes, ptr %i.ahw, align 4, !tbaa !4
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv.next620.i
  store i32 -1, ptr %i.ahx, align 4, !tbaa !4
  %indvars.iv.next620.i.1 = add nuw nsw i64 %indvars.iv619.i, 2 ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next620.i.1
  store i32 %i.aes, ptr %i.ahy, align 4, !tbaa !4
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv.next620.i.1
  store i32 -1, ptr %i.ahz, align 4, !tbaa !4
  %indvars.iv.next620.i.2 = add nuw nsw i64 %indvars.iv619.i, 3 ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next620.i.2
  store i32 %i.aes, ptr %i.aia, align 4, !tbaa !4
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv.next620.i.2
  store i32 -1, ptr %i.aib, align 4, !tbaa !4
  %indvars.iv.next620.i.3 = add nuw nsw i64 %indvars.iv619.i, 4 ; 2 uses
  %exitcond624.i.3 = icmp eq i64 %indvars.iv.next620.i.3, %wide.trip.count623.i
  br i1 %exitcond624.i.3, label %.preheader528.lr.ph.i, label %scalar.ph1032, !llvm.loop !94

.preheader528.lr.ph.i:                            ; preds = %scalar.ph1032.prol.loopexit, %scalar.ph1032, %middle.block1040
  %i.aic = load i32, ptr %i.afr, align 4, !tbaa !4
  store i32 %i.aic, ptr %i.agz, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahb, align 4, !tbaa !4
  %i.aid = load i32, ptr %i.agv, align 4, !tbaa !4
  store i32 %i.aid, ptr %i.agy, align 4, !tbaa !4
  store i32 %..i, ptr %i.aha, align 4, !tbaa !4
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %i.afq ; 2 uses
  %i.aif = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %i.afq ; 2 uses
  %i.aig = sext i32 %i.afs to i64
  %i.aih = add i32 %..i, 2
  %i.aii = zext nneg i32 %i.aby to i64
  %12 = zext nneg i32 %i.abk to i64
  br label %.preheader528.i

.preheader528.i:                                  ; preds = %bb.el, %.preheader528.lr.ph.i
  %indvars.iv748 = phi i32 [ %indvars.iv.next749, %bb.el ], [ 2, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv644.i = phi i32 [ %indvars.iv.next645.i, %bb.el ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv631.i = phi i32 [ %indvars.iv.next632.i, %bb.el ], [ %i.aih, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars.iv625.i = phi i64 [ %indvars.iv.next626.i, %bb.el ], [ %i.aig, %.preheader528.lr.ph.i ] ; 6 uses
  %.0436597.i = phi i32 [ %i.akv, %bb.el ], [ %i.aft, %.preheader528.lr.ph.i ] ; 2 uses
  %.0442595.i = phi i32 [ %.2444.i, %bb.el ], [ -1, %.preheader528.lr.ph.i ] ; 3 uses
  %.0445594.i = phi i32 [ %.2447.i, %bb.el ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %.1451593.i = phi i32 [ %i.anf, %bb.el ], [ 1, %.preheader528.lr.ph.i ] ; 13 uses
  %.0454592.i = phi i32 [ %.2456.i, %bb.el ], [ %..i, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars669.i = trunc i64 %indvars.iv625.i to i32
  %.not486552.i = icmp slt i32 %.0436597.i, %indvars669.i ; 2 uses
  br i1 %.not486552.i, label %._crit_edge555.thread.i, label %.lr.ph554.i

._crit_edge555.thread.i:                          ; preds = %.preheader528.i
  %i.aij = load i32, ptr %i.aie, align 4, !tbaa !4
  %i.aik = zext i32 %.1451593.i to i64            ; 3 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.aik ; 2 uses
  store i32 %i.aij, ptr %i.ail, align 4, !tbaa !4
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.aik
  store i32 %..i, ptr %i.aim, align 4, !tbaa !4
  br label %.preheader527.i

.lr.ph554.i:                                      ; preds = %.preheader528.i
  %i.ain = sub i32 %..i, %.1451593.i
  %i.aio = add i32 %.1451593.i, %..i
  %sext.i = sext i32 %i.aio to i64                ; 2 uses
  %sext629.i = sext i32 %i.ain to i64             ; 2 uses
  %i.aip = getelementptr [4 x i8], ptr %i.aeq, i64 %sext.i
  %i.aiq = getelementptr i8, ptr %i.aip, i64 -4
  %i.air = getelementptr [4 x i8], ptr %i.aeq, i64 %sext629.i
  %i.ais = getelementptr i8, ptr %i.air, i64 4
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge7.i415, %.lr.ph554.i
  %indvars.iv627.i = phi i64 [ %indvars.iv625.i, %.lr.ph554.i ], [ %indvars.iv.next628.i, %.critedge7.i415 ] ; 6 uses
  %i.ait = icmp eq i64 %indvars.iv627.i, %sext629.i
  br i1 %i.ait, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.aiu = load i32, ptr %i.ais, align 4, !tbaa !4
  br label %bb.dq

bb.dl:                                            ; preds = %bb.dj
  %i.aiv = icmp eq i64 %indvars.iv627.i, %sext.i
  br i1 %i.aiv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.aiw = load i32, ptr %i.aiq, align 4, !tbaa !4
  %i.aix = add nsw i32 %i.aiw, -1
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.aiy = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %indvars.iv627.i ; 4 uses
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !4 ; 3 uses
  %i.aja = getelementptr i8, ptr %i.aiy, i64 4
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !4 ; 3 uses
  %.not497.i = icmp sgt i32 %i.aiz, %i.ajb
  br i1 %.not497.i, label %._crit_edge670.i, label %bb.do

._crit_edge670.i:                                 ; preds = %bb.dn
  %.phi.trans.insert.i423 = getelementptr i8, ptr %i.aiy, i64 -4
  %.pre.i424 = load i32, ptr %.phi.trans.insert.i423, align 4, !tbaa !4
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ajc = add nsw i32 %i.aiz, -1                 ; 2 uses
  %i.ajd = getelementptr i8, ptr %i.aiy, i64 -4
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !4 ; 2 uses
  %.not498.i = icmp sgt i32 %i.ajc, %i.aje
  br i1 %.not498.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do, %._crit_edge670.i
  %i.ajf = phi i32 [ %.pre.i424, %._crit_edge670.i ], [ %i.aje, %bb.do ] ; 3 uses
  %.not499.not.i = icmp slt i32 %i.ajf, %i.ajb
  %.not500.not.i = icmp slt i32 %i.ajf, %i.aiz
  %or.cond521.i = and i1 %.not499.not.i, %.not500.not.i
  %i.ajg = add nsw i32 %i.ajf, -1
  %spec.select.i422 = select i1 %or.cond521.i, i32 %i.ajg, i32 %i.ajb
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm, %bb.dk
  %.2440.i = phi i32 [ %i.aiu, %bb.dk ], [ %i.aix, %bb.dm ], [ %i.ajc, %bb.do ], [ %spec.select.i422, %bb.dp ] ; 4 uses
  %i.ajh = trunc nsw i64 %indvars.iv627.i to i32
  %i.aji = add i32 %.neg606.i, %i.ajh
  %i.ajj = add i32 %i.aji, %.2440.i               ; 2 uses
  %i.ajk = icmp sgt i32 %.2440.i, 0
  %i.ajl = icmp sgt i32 %i.ajj, 0
  %or.cond5544.i = select i1 %i.ajk, i1 %i.ajl, i1 false
  br i1 %or.cond5544.i, label %.lr.ph548.i, label %.critedge7.i415

.lr.ph548.i:                                      ; preds = %bb.dq, %bb.dr
  %.1546.i = phi i32 [ %i.ajw, %bb.dr ], [ %i.ajj, %bb.dq ] ; 3 uses
  %.3441545.i = phi i32 [ %i.ajv, %bb.dr ], [ %.2440.i, %bb.dq ] ; 4 uses
  %i.ajm = zext nneg i32 %.3441545.i to i64
  %i.ajn = getelementptr i8, ptr %i.abu, i64 %i.ajm
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -1
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !20
  %i.ajq = zext nneg i32 %.1546.i to i64
  %i.ajr = getelementptr i8, ptr %i.abw, i64 %i.ajq
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 -1
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !20
  %i.aju = icmp eq i8 %i.ajp, %i.ajt
  br i1 %i.aju, label %bb.dr, label %.critedge7.i415

bb.dr:                                            ; preds = %.lr.ph548.i
  %i.ajv = add nsw i32 %.3441545.i, -1            ; 2 uses
  %i.ajw = add nsw i32 %.1546.i, -1
  %i.ajx = icmp sgt i32 %.3441545.i, 1
  %i.ajy = icmp sgt i32 %.1546.i, 1
  %or.cond5.i = and i1 %i.ajy, %i.ajx
  br i1 %or.cond5.i, label %.lr.ph548.i, label %.critedge7.i415, !llvm.loop !95

.critedge7.i415:                                  ; preds = %bb.dr, %.lr.ph548.i, %bb.dq
  %.3441.lcssa.i = phi i32 [ %.2440.i, %bb.dq ], [ %.3441545.i, %.lr.ph548.i ], [ %i.ajv, %bb.dr ]
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %indvars.iv627.i
  store i32 %.3441.lcssa.i, ptr %i.ajz, align 4, !tbaa !4
  %indvars.iv.next628.i = add nsw i64 %indvars.iv627.i, 1 ; 2 uses
  %lftr.wideiv.i416 = trunc i64 %indvars.iv.next628.i to i32
  %exitcond633.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv.i416
  br i1 %exitcond633.not.i, label %._crit_edge555.i, label %bb.dj, !llvm.loop !96

._crit_edge555.i:                                 ; preds = %.critedge7.i415
  %i.aka = load i32, ptr %i.aie, align 4, !tbaa !4
  %i.akb = zext i32 %.1451593.i to i64            ; 3 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.akb ; 4 uses
  store i32 %i.aka, ptr %i.akc, align 4, !tbaa !4
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.akb ; 2 uses
  store i32 %..i, ptr %i.akd, align 4, !tbaa !4
  br label %.lr.ph559.i

.preheader527.i:                                  ; preds = %bb.dt, %._crit_edge555.thread.i
  %i.ake = phi ptr [ %i.ail, %._crit_edge555.thread.i ], [ %i.akc, %bb.dt ]
  %i.akf = phi i64 [ %i.aik, %._crit_edge555.thread.i ], [ %i.akb, %bb.dt ] ; 5 uses
  %.not608.i = icmp eq i32 %.1451593.i, 0
  br i1 %.not608.i, label %._crit_edge562.i, label %.lr.ph561.i

.lr.ph561.i:                                      ; preds = %.preheader527.i
  %i.akg = load i32, ptr %i.ake, align 4, !tbaa !4
  %i.akh = icmp slt i32 %.0442595.i, 0
  br label %bb.du

.lr.ph559.i:                                      ; preds = %bb.dt, %._crit_edge555.i
  %indvars.iv634.i = phi i64 [ %indvars.iv.next635.i, %bb.dt ], [ %indvars.iv625.i, %._crit_edge555.i ] ; 4 uses
  %i.aki = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %indvars.iv634.i ; 2 uses
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !4
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %indvars.iv634.i ; 2 uses
  store i32 %i.akj, ptr %i.akk, align 4, !tbaa !4
  store i32 %i.aes, ptr %i.aki, align 4, !tbaa !4
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !4 ; 2 uses
  %i.akm = load i32, ptr %i.akc, align 4, !tbaa !4
  %i.akn = icmp slt i32 %i.akl, %i.akm
  br i1 %i.akn, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph559.i
  store i32 %i.akl, ptr %i.akc, align 4, !tbaa !4
  %i.ako = trunc nsw i64 %indvars.iv634.i to i32
  store i32 %i.ako, ptr %i.akd, align 4, !tbaa !4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.lr.ph559.i
  %indvars.iv.next635.i = add nsw i64 %indvars.iv634.i, 1 ; 2 uses
  %lftr.wideiv637.i = trunc i64 %indvars.iv.next635.i to i32
  %exitcond638.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv637.i
  br i1 %exitcond638.not.i, label %.preheader527.i, label %.lr.ph559.i, !llvm.loop !97

bb.du:                                            ; preds = %bb.dw, %.lr.ph561.i
  %indvars.iv639.i = phi i64 [ 0, %.lr.ph561.i ], [ %indvars.iv.next640.i, %bb.dw ] ; 3 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv639.i
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !4
  %.not488.i = icmp sgt i32 %i.akg, %i.akq
  br i1 %.not488.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.akr = trunc nuw i64 %indvars.iv639.i to i32  ; 2 uses
  %i.aks = add i32 %.1451593.i, %i.akr            ; 3 uses
  %i.akt = icmp ugt i32 %.0454592.i, %i.aks
  %i.aku = icmp eq i32 %.0454592.i, %i.aks
  %or.cond9.i417 = select i1 %i.aku, i1 %i.akh, i1 false
  %or.cond605.i = select i1 %i.akt, i1 true, i1 %or.cond9.i417
  br i1 %or.cond605.i, label %._crit_edge562.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %indvars.iv.next640.i = add nuw nsw i64 %indvars.iv639.i, 1 ; 2 uses
  %exitcond643.not.i = icmp eq i64 %indvars.iv.next640.i, %i.akf
  br i1 %exitcond643.not.i, label %._crit_edge562.i, label %bb.du, !llvm.loop !98

._crit_edge562.i:                                 ; preds = %bb.dw, %bb.dv, %.preheader527.i
  %.1455.i = phi i32 [ %.0454592.i, %.preheader527.i ], [ %i.aks, %bb.dv ], [ %.0454592.i, %bb.dw ] ; 3 uses
  %.1446.i = phi i32 [ %.0445594.i, %.preheader527.i ], [ %.1451593.i, %bb.dv ], [ %.0445594.i, %bb.dw ]
  %.1443.i = phi i32 [ %.0442595.i, %.preheader527.i ], [ %i.akr, %bb.dv ], [ %.0442595.i, %bb.dw ] ; 2 uses
  %indvars.iv.next626.i = add i64 %indvars.iv625.i, -1
  %i.akv = add nsw i32 %.0436597.i, 1
  br i1 %.not486552.i, label %._crit_edge585.thread.i, label %.lr.ph584.i

._crit_edge585.thread.i:                          ; preds = %._crit_edge562.i
  %i.akw = load i32, ptr %i.aif, align 4, !tbaa !4
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.akf ; 2 uses
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !4
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.akf
  store i32 %..i, ptr %i.aky, align 4, !tbaa !4
  br label %.preheader526.i

.lr.ph584.i:                                      ; preds = %._crit_edge562.i
  %i.akz = sub nsw i32 %..i, %.1451593.i
  %i.ala = add nsw i32 %.1451593.i, %..i
  %sext657.i = sext i32 %i.ala to i64             ; 2 uses
  %sext658.i = sext i32 %i.akz to i64             ; 2 uses
  %i.alb = getelementptr [4 x i8], ptr %i.ags, i64 %sext657.i
  %i.alc = getelementptr i8, ptr %i.alb, i64 -4
  %i.ald = getelementptr [4 x i8], ptr %i.ags, i64 %sext658.i
  %i.ale = getelementptr i8, ptr %i.ald, i64 4
  br label %bb.dx

bb.dx:                                            ; preds = %.critedge11.i418, %.lr.ph584.i
  %indvars.iv655.i = phi i64 [ %indvars.iv625.i, %.lr.ph584.i ], [ %indvars.iv.next656.i, %.critedge11.i418 ] ; 6 uses
  %indvars.iv646.i = phi i32 [ %indvars.iv644.i, %.lr.ph584.i ], [ %indvars.iv.next647.i, %.critedge11.i418 ] ; 2 uses
  %i.alf = icmp eq i64 %indvars.iv655.i, %sext658.i
  br i1 %i.alf, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.alg = load i32, ptr %i.ale, align 4, !tbaa !4
  %i.alh = add nsw i32 %i.alg, 1
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %i.ali = icmp eq i64 %indvars.iv655.i, %sext657.i
  br i1 %i.ali, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.alj = load i32, ptr %i.alc, align 4, !tbaa !4
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dz
  %i.alk = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %indvars.iv655.i ; 4 uses
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !4 ; 3 uses
  %i.alm = getelementptr i8, ptr %i.alk, i64 4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !4 ; 3 uses
  %.not493.i = icmp slt i32 %i.all, %i.aln
  br i1 %.not493.i, label %._crit_edge671.i, label %bb.ec

._crit_edge671.i:                                 ; preds = %bb.eb
  %.phi.trans.insert672.i = getelementptr i8, ptr %i.alk, i64 -4
  %.pre673.i = load i32, ptr %.phi.trans.insert672.i, align 4, !tbaa !4
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.alo = add nsw i32 %i.all, 1                  ; 2 uses
  %i.alp = getelementptr i8, ptr %i.alk, i64 -4
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !4 ; 2 uses
  %.not494.i = icmp slt i32 %i.alo, %i.alq
  br i1 %.not494.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec, %._crit_edge671.i
  %i.alr = phi i32 [ %.pre673.i, %._crit_edge671.i ], [ %i.alq, %bb.ec ] ; 2 uses
  %i.als = add nsw i32 %i.aln, 1
  %.not496.i = icmp slt i32 %i.aln, %i.all
  %i.alt = call i32 @llvm.smax.i32(i32 %i.als, i32 %i.alr)
  %spec.select523.i = select i1 %.not496.i, i32 %i.alr, i32 %i.alt
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.ea, %bb.dy
  %.4.i = phi i32 [ %i.alh, %bb.dy ], [ %i.alj, %bb.ea ], [ %spec.select523.i, %bb.ed ], [ %i.alo, %bb.ec ] ; 7 uses
  %i.alu = icmp sgt i32 %.4.i, -1
  br i1 %i.alu, label %.preheader.i421, label %.critedge11.i418

.preheader.i421:                                  ; preds = %bb.ee
  %i.alv = trunc nsw i64 %indvars.iv655.i to i32
  %i.alw = sub i32 %i.alv, %..i
  %i.alx = add i32 %i.alw, %.4.i
  %i.aly = icmp ult i32 %.4.i, %i.abk
  %i.alz = icmp ult i32 %i.alx, %i.aby
  %or.cond504574.i = select i1 %i.aly, i1 %i.alz, i1 false
  br i1 %or.cond504574.i, label %.lr.ph577.preheader.i, label %.critedge11.i418

.lr.ph577.preheader.i:                            ; preds = %.preheader.i421
  %i.ama = add i32 %.4.i, %indvars.iv646.i
  %i.amb = zext i32 %i.ama to i64
  %i.amc = zext nneg i32 %.4.i to i64
  br label %.lr.ph577.i

.lr.ph577.i:                                      ; preds = %bb.ef, %.lr.ph577.preheader.i
  %indvars.iv650.i = phi i64 [ %i.amc, %.lr.ph577.preheader.i ], [ %indvars.iv.next651.i, %bb.ef ] ; 3 uses
  %indvars.iv648.i = phi i64 [ %i.amb, %.lr.ph577.preheader.i ], [ %indvars.iv.next649.i, %bb.ef ] ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv650.i
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !20
  %i.amf = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv648.i
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !20
  %i.amh = icmp eq i8 %i.ame, %i.amg
  br i1 %i.amh, label %bb.ef, label %.critedge11.loopexit.i

bb.ef:                                            ; preds = %.lr.ph577.i
  %indvars.iv.next651.i = add nuw nsw i64 %indvars.iv650.i, 1 ; 3 uses
  %indvars.iv.next649.i = add nuw nsw i64 %indvars.iv648.i, 1 ; 2 uses
  %i.ami = icmp samesign ult i64 %indvars.iv.next651.i, %12
  %i.amj = icmp samesign ult i64 %indvars.iv.next649.i, %i.aii
  %or.cond504.i = select i1 %i.ami, i1 %i.amj, i1 false
  br i1 %or.cond504.i, label %.lr.ph577.i, label %.critedge11.loopexit.i, !llvm.loop !99

.critedge11.loopexit.i:                           ; preds = %bb.ef, %.lr.ph577.i
  %.6.ph.in.i = phi i64 [ %indvars.iv650.i, %.lr.ph577.i ], [ %indvars.iv.next651.i, %bb.ef ]
  %.6.ph.i = trunc nuw nsw i64 %.6.ph.in.i to i32
  br label %.critedge11.i418

.critedge11.i418:                                 ; preds = %.critedge11.loopexit.i, %.preheader.i421, %bb.ee
  %.6.i = phi i32 [ %.4.i, %bb.ee ], [ %.4.i, %.preheader.i421 ], [ %.6.ph.i, %.critedge11.loopexit.i ]
  %i.amk = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %indvars.iv655.i
  store i32 %.6.i, ptr %i.amk, align 4, !tbaa !4
  %indvars.iv.next656.i = add nsw i64 %indvars.iv655.i, 1
  %indvars.iv.next647.i = add i32 %indvars.iv646.i, 1 ; 2 uses
  %exitcond750 = icmp eq i32 %indvars.iv.next647.i, %indvars.iv748
  br i1 %exitcond750, label %._crit_edge585.i, label %bb.dx, !llvm.loop !100

._crit_edge585.i:                                 ; preds = %.critedge11.i418
  %i.aml = load i32, ptr %i.aif, align 4, !tbaa !4
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.akf ; 4 uses
  store i32 %i.aml, ptr %i.amm, align 4, !tbaa !4
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.akf ; 2 uses
  store i32 %..i, ptr %i.amn, align 4, !tbaa !4
  br label %.lr.ph589.i

.preheader526.i:                                  ; preds = %bb.eh, %._crit_edge585.thread.i
  %i.amo = phi ptr [ %i.akx, %._crit_edge585.thread.i ], [ %i.amm, %bb.eh ]
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !4
  %i.amq = icmp slt i32 %.1443.i, 0
  br label %bb.ei

.lr.ph589.i:                                      ; preds = %bb.eh, %._crit_edge585.i
  %indvars.iv662.i = phi i64 [ %indvars.iv.next663.i, %bb.eh ], [ %indvars.iv625.i, %._crit_edge585.i ] ; 4 uses
  %i.amr = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %indvars.iv662.i ; 2 uses
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !4
  %i.amt = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %indvars.iv662.i ; 2 uses
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !4
  store i32 -1, ptr %i.amr, align 4, !tbaa !4
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !4 ; 2 uses
  %i.amv = load i32, ptr %i.amm, align 4, !tbaa !4
  %i.amw = icmp sgt i32 %i.amu, %i.amv
  br i1 %i.amw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph589.i
  store i32 %i.amu, ptr %i.amm, align 4, !tbaa !4
  %i.amx = trunc nsw i64 %indvars.iv662.i to i32
  store i32 %i.amx, ptr %i.amn, align 4, !tbaa !4
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph589.i
  %indvars.iv.next663.i = add nsw i64 %indvars.iv662.i, 1 ; 2 uses
  %lftr.wideiv665.i = trunc i64 %indvars.iv.next663.i to i32
  %exitcond666.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv665.i
  br i1 %exitcond666.not.i, label %.preheader526.i, label %.lr.ph589.i, !llvm.loop !101

bb.ei:                                            ; preds = %bb.ek, %.preheader526.i
  %.1453590.i = phi i32 [ 0, %.preheader526.i ], [ %i.ane, %bb.ek ] ; 4 uses
  %i.amy = zext i32 %.1453590.i to i64
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.amy
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !4
  %.not492.i = icmp sgt i32 %i.ana, %i.amp
  br i1 %.not492.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.anb = add i32 %.1453590.i, %.1451593.i       ; 3 uses
  %i.anc = icmp ugt i32 %.1455.i, %i.anb
  %i.and = icmp eq i32 %.1455.i, %i.anb
  %or.cond13.i419 = select i1 %i.and, i1 %i.amq, i1 false
  %or.cond604.i = select i1 %i.anc, i1 true, i1 %or.cond13.i419
  br i1 %or.cond604.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.ane = add i32 %.1453590.i, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.ane, %.1451593.i
  br i1 %.not491.i, label %bb.el, label %bb.ei, !llvm.loop !102

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.2456.i = phi i32 [ %.1455.i, %bb.ek ], [ %i.anb, %bb.ej ] ; 2 uses
  %.2447.i = phi i32 [ %.1446.i, %bb.ek ], [ %.1453590.i, %bb.ej ] ; 2 uses
  %.2444.i = phi i32 [ %.1443.i, %bb.ek ], [ %.1451593.i, %bb.ej ] ; 2 uses
  %i.anf = add i32 %.1451593.i, 1                 ; 3 uses
  %.not482.i = icmp ugt i32 %i.anf, %.2456.i
  %indvars.iv.next632.i = add i32 %indvars.iv631.i, 1
  %indvars.iv.next645.i = add i32 %indvars.iv644.i, -1
  %indvars.iv.next749 = add i32 %indvars.iv748, 1
  br i1 %.not482.i, label %._crit_edge600.i, label %.preheader528.i, !llvm.loop !103

._crit_edge600.i:                                 ; preds = %bb.el, %._crit_edge.thread.i
  %.1451.lcssa.i = phi i32 [ 1, %._crit_edge.thread.i ], [ %i.anf, %bb.el ] ; 2 uses
  %.0445.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2447.i, %bb.el ] ; 2 uses
  %.0442.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2444.i, %bb.el ] ; 2 uses
  %i.ang = icmp ugt i32 %.1451.lcssa.i, %..i
  br i1 %i.ang, label %bb.em, label %bb.en

bb.em:                                            ; preds = %._crit_edge600.i
  call void @free(ptr noundef %i.aeq) #18
  call void @free(ptr noundef %i.aer) #18
  call void @free(ptr noundef %i.ags) #18
  call void @free(ptr noundef %i.agt) #18
  call void @free(ptr noundef nonnull %i.agz) #18
  call void @free(ptr noundef %i.ahb) #18
  call void @free(ptr noundef %i.agy) #18
  call void @free(ptr noundef %i.aha) #18
  br label %greedy.exitthread-pre-split

bb.en:                                            ; preds = %._crit_edge600.i
  %i.anh = sext i32 %.0445.lcssa.i to i64         ; 2 uses
  %i.ani = getelementptr inbounds [4 x i8], ptr %i.agz, i64 %i.anh
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !4 ; 2 uses
  %i.ank = sub nsw i32 %i.abk, %i.anj
  %i.anl = sext i32 %.0442.lcssa.i to i64         ; 2 uses
  %i.anm = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.anl
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !4 ; 2 uses
  %.not483.i = icmp slt i32 %i.ank, %i.ann
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.ahb, i64 %i.anh
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !4
  %.710.i = select i1 %.not483.i, i32 %i.ann, i32 %i.anj ; 6 uses
  %.not485.i = icmp eq i32 %.710.i, 0
  br i1 %.not485.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.anl
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !4
  %i.ans = add i32 %i.abp, 1
  %i.ant = add i32 %i.abi, 1
  %i.anu = sub i32 %i.abp, %..i
  %.0427.i = add i32 %i.anu, %.710.i
  %i.anv = add i32 %.0427.i, %i.anr
  %i.anw = add i32 %.710.i, %i.abi
  %i.anx = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.ans, ptr %i.anx, align 4, !tbaa !35
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 4
  store i32 %i.ant, ptr %i.any, align 4, !tbaa !33
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  store i32 %i.anv, ptr %i.anz, align 4, !tbaa !50
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 12
  store i32 %i.anw, ptr %i.aoa, align 4, !tbaa !51
  %i.aob = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.aoc = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i513.i = icmp ugt i32 %i.aob, %i.aoc
  %.pre.i514.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i513.i, label %add_col_elt.exit516.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aod = add i32 %i.aob, 5                      ; 2 uses
  store i32 %i.aod, ptr %i.s, align 4, !tbaa !17
  %i.aoe = zext i32 %i.aod to i64
  %i.aof = shl nuw nsw i64 %i.aoe, 3
  %i.aog = call ptr @xrealloc(ptr noundef %.pre.i514.i, i64 noundef %i.aof) #18 ; 2 uses
  store ptr %i.aog, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit516.i

add_col_elt.exit516.i:                            ; preds = %bb.ep, %bb.eo
  %i.aoh = phi ptr [ %i.aog, %bb.ep ], [ %.pre.i514.i, %bb.eo ]
  %i.aoi = add i32 %i.aoc, 1
  store i32 %i.aoi, ptr %i.t, align 8, !tbaa !19
  %i.aoj = zext i32 %i.aoc to i64
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.aoh, i64 %i.aoj
  store ptr %i.anx, ptr %i.aok, align 8, !tbaa !44
  br label %bb.eq

bb.eq:                                            ; preds = %add_col_elt.exit516.i, %bb.en
  %i.aol = icmp ult i32 %.710.i, %i.abk
  br i1 %i.aol, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.aom = add i32 %i.abp, 1
  %.0.i420 = add i32 %i.aom, %.neg606.i
  %i.aon = add i32 %.0.i420, %i.anp
  %i.aoo = add i32 %i.aon, %.710.i
  %i.aop = add i32 %i.abi, 1
  %i.aoq = add i32 %i.aop, %.710.i
  %i.aor = add i32 %i.abg, -1
  %i.aos = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.aoo, ptr %i.aos, align 4, !tbaa !35
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 4
  store i32 %i.aoq, ptr %i.aot, align 4, !tbaa !33
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  store i32 %i.abn, ptr %i.aou, align 4, !tbaa !50
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 12
  store i32 %i.aor, ptr %i.aov, align 4, !tbaa !51
  %i.aow = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.aox = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i517.i = icmp ugt i32 %i.aow, %i.aox
  %.pre.i518.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i517.i, label %add_col_elt.exit520.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aoy = add i32 %i.aow, 5                      ; 2 uses
  store i32 %i.aoy, ptr %i.s, align 4, !tbaa !17
  %i.aoz = zext i32 %i.aoy to i64
  %i.apa = shl nuw nsw i64 %i.aoz, 3
  %i.apb = call ptr @xrealloc(ptr noundef %.pre.i518.i, i64 noundef %i.apa) #18 ; 2 uses
  store ptr %i.apb, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit520.i

add_col_elt.exit520.i:                            ; preds = %bb.es, %bb.er
  %i.apc = phi ptr [ %i.apb, %bb.es ], [ %.pre.i518.i, %bb.er ]
  %i.apd = add i32 %i.aox, 1
end_hunk_0
