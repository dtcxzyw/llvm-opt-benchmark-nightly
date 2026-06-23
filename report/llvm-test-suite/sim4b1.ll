inline.NumInlined: 64
inline.NumDeleted: 23
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
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i.preheader, label %.lr.ph294.i, !llvm.loop !81

.lr.ph297.i.preheader:                            ; preds = %bb.cr
  %min.iters.check1086 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1141 = select i1 %min.iters.check1086, i1 true, i1 %diff.check1084
  br i1 %or.cond1141, label %.lr.ph297.i.preheader1152, label %vector.ph1087

vector.ph1087:                                    ; preds = %.lr.ph297.i.preheader
  %n.vec1089 = and i64 %i.vj, -8                  ; 2 uses
  %i.ys = add i64 %indvars.iv337.i387, %n.vec1089
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %vector.ph1087
  %index1091 = phi i64 [ 0, %vector.ph1087 ], [ %index.next1094, %vector.body1090 ] ; 2 uses
  %i.yt = add i64 %indvars.iv337.i387, %index1091 ; 2 uses
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.yt ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %wide.load1092 = load <4 x i32>, ptr %i.yu, align 4, !tbaa !4
  %wide.load1093 = load <4 x i32>, ptr %i.yv, align 4, !tbaa !4
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.yt ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store <4 x i32> %wide.load1092, ptr %i.yw, align 4, !tbaa !4
  store <4 x i32> %wide.load1093, ptr %i.yx, align 4, !tbaa !4
  %index.next1094 = add nuw i64 %index1091, 8     ; 2 uses
  %i.yy = icmp eq i64 %index.next1094, %n.vec1089
  br i1 %i.yy, label %.lr.ph297.i.preheader1152, label %vector.body1090, !llvm.loop !82

.lr.ph297.i.preheader1152:                        ; preds = %vector.body1090, %.lr.ph297.i.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i387, %.lr.ph297.i.preheader ], [ %i.ys, %vector.body1090 ] ; 4 uses
  %i.yz = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.za = sub i64 %i.vh, %indvars.iv356.i.ph
  %xtraiter1230 = and i64 %i.yz, 3                ; 2 uses
  %lcmp.mod1231.not = icmp eq i64 %xtraiter1230, 0
  br i1 %lcmp.mod1231.not, label %.lr.ph297.i.prol.loopexit, label %.lr.ph297.i.prol

.lr.ph297.i.prol:                                 ; preds = %.lr.ph297.i.preheader1152, %.lr.ph297.i.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i.preheader1152 ] ; 3 uses
  %prol.iter1232 = phi i64 [ %prol.iter1232.next, %.lr.ph297.i.prol ], [ 0, %.lr.ph297.i.preheader1152 ]
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv356.i.prol
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !4
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv356.i.prol
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !4
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1232.next = add i64 %prol.iter1232, 1 ; 2 uses
  %prol.iter1232.cmp.not = icmp eq i64 %prol.iter1232.next, %xtraiter1230
  br i1 %prol.iter1232.cmp.not, label %.lr.ph297.i.prol.loopexit, label %.lr.ph297.i.prol, !llvm.loop !83

.lr.ph297.i.prol.loopexit:                        ; preds = %.lr.ph297.i.prol, %.lr.ph297.i.preheader1152
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i.preheader1152 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i.prol ]
  %i.ze = icmp ult i64 %i.za, 3
  br i1 %i.ze, label %._crit_edge298.i, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %.lr.ph297.i.prol.loopexit, %.lr.ph297.i
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.3, %.lr.ph297.i ], [ %indvars.iv356.i.unr, %.lr.ph297.i.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond361.not.i.3, label %._crit_edge298.i, label %.lr.ph297.i, !llvm.loop !84

._crit_edge298.i:                                 ; preds = %.lr.ph297.i.prol.loopexit, %.lr.ph297.i, %._crit_edge290.thread.i
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
  %.lcssa.i391 = phi i32 [ %i.zs, %.critedge2.split.loop.exit402.i ], [ %i.zt, %.critedge2.split.loop.exit404.i ], [ %i.ve, %._crit_edge298.i ] ; 2 uses
  %smin.i392 = call i32 @llvm.smin.i32(i32 %.lcssa.i391, i32 1)
  %i.zu = add i32 %smin.i392, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i
  %.2228303.i = phi i32 [ %.lcssa.i391, %.critedge2.i ], [ %i.aac, %bb.ct ] ; 4 uses
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
  %.0540 = phi i32 [ %i.ug, %bb.bn ], [ %i.ui, %bb.bo ], [ %i.aal, %.critedge8.i ], [ %i.xv, %bb.cj ], [ %i.xx, %bb.cl ], [ %i.xz, %bb.cn ]
  %.0.i393 = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2228.lcssa.i, %.critedge8.i ], [ %i.xu, %bb.cj ], [ %i.xw, %bb.cl ], [ %i.xy, %bb.cn ]
  %.0541 = add nsw i32 %spec.select348.pn, %i.tg  ; 2 uses
  %i.aam = load i32, ptr %i.tf, align 4, !tbaa !51
  %i.aan = sub nsw i32 %.0541, %i.aam
  %i.aao = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !71
  %i.aap = mul nsw i32 %i.aan, %i.aao
  %i.aaq = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !72
  %i.aar = mul nsw i32 %i.aaq, %.0.i393
  %i.aas = add nsw i32 %i.aar, %i.aap
  %i.aat = icmp sgt i32 %i.aas, -1
  br i1 %i.aat, label %bb.cu, label %.thread553

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0541, ptr %i.tf, align 4, !tbaa !51
  store i32 %.0540, ptr %i.tm, align 4, !tbaa !50
  br label %.thread553

.thread553:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread546
  %i.aau = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aav = icmp ugt i32 %i.aau, 1
  br i1 %i.aav, label %.lr.ph661, label %.loopexit597

.lr.ph661:                                        ; preds = %.thread553, %bb.fi
  %i.aaw = phi i32 [ %i.auq, %bb.fi ], [ %i.aau, %.thread553 ] ; 2 uses
  %.0299660 = phi i32 [ %i.aur, %bb.fi ], [ 1, %.thread553 ] ; 6 uses
  %i.aax = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aay = add i32 %.0299660, -1                  ; 2 uses
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !31 ; 2 uses
  %i.abc = zext i32 %.0299660 to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.abc
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !31 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !33 ; 6 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 12 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !51 ; 9 uses
  %i.abj = xor i32 %i.abi, -1
  %i.abk = add i32 %i.abg, %i.abj                 ; 15 uses
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %bb.cv, label %bb.fi

bb.cv:                                            ; preds = %.lr.ph661
  %i.abm = load i32, ptr %i.abe, align 4, !tbaa !35 ; 2 uses
  %i.abn = add i32 %i.abm, -1                     ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abb, i64 8 ; 3 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !50 ; 10 uses
  %i.abq = icmp ugt i32 %i.abn, %i.abp
  br i1 %i.abq, label %bb.cw, label %bb.fi

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abr = icmp samesign ult i32 %i.abk, 501
  %.pre756 = load i32, ptr %i.x, align 4, !tbaa !39 ; 3 uses
  %.pre759 = load ptr, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  br i1 %i.abr, label %bb.cx, label %.thread557

bb.cx:                                            ; preds = %bb.cw
  %i.abs = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.abt = zext i32 %i.abi to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abt ; 4 uses
  %i.abv = zext i32 %i.abp to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.pre759, i64 %i.abv ; 4 uses
  %i.abx = xor i32 %i.abp, -1
  %i.aby = add i32 %i.abm, %i.abx                 ; 9 uses
  %i.abz = icmp ugt i32 %i.aby, 999999
  br i1 %i.abz, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aca = sub nsw i32 %i.aby, %i.abk             ; 3 uses
  %i.acb = uitofp nneg i32 %i.abk to double       ; 2 uses
  %i.acc = call double @llvm.fmuladd.f64(double %i.acb, double 2.000000e-01, double 1.000000e+00)
  %i.acd = fptoui double %i.acc to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre756, i32 %i.acd) ; 22 uses
  %i.ace = icmp slt i32 %i.aca, 0
  br i1 %i.ace, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.acf = uitofp i32 %.pre756 to double          ; 2 uses
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
  %.not.i.i427 = icmp ugt i32 %i.acr, %i.acs
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i427, label %add_col_elt.exit.i, label %bb.db

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

bb.dd:                                            ; preds = %bb.cy
  %.neg606.i = sub i32 %i.aca, %..i               ; 2 uses
  br label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %bb.dd, %bb.de
  %.0430532.i = phi i32 [ %i.adq, %bb.de ], [ %i.aby, %bb.dd ] ; 3 uses
  %.0438531.i = phi i32 [ %i.adp, %bb.de ], [ %i.abk, %bb.dd ] ; 3 uses
  %i.adg = zext nneg i32 %.0438531.i to i64
  %i.adh = getelementptr i8, ptr %i.abu, i64 %i.adg
  %i.adi = getelementptr i8, ptr %i.adh, i64 -1
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !20
  %i.adk = zext nneg i32 %.0430532.i to i64
  %i.adl = getelementptr i8, ptr %i.abw, i64 %i.adk
  %i.adm = getelementptr i8, ptr %i.adl, i64 -1
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !20
  %i.ado = icmp eq i8 %i.adj, %i.adn
  br i1 %i.ado, label %bb.de, label %.critedge.thread.i409

bb.de:                                            ; preds = %.lr.ph.i408
  %i.adp = add nsw i32 %.0438531.i, -1            ; 4 uses
  %i.adq = add nsw i32 %.0430532.i, -1
  %i.adr = icmp ne i32 %i.adp, 0
  %i.ads = icmp sgt i32 %.0430532.i, 1
  %or.cond.i425 = and i1 %i.ads, %i.adr
  br i1 %or.cond.i425, label %.lr.ph.i408, label %.critedge.i426, !llvm.loop !87

.critedge.i426:                                   ; preds = %bb.de
  %i.adt = icmp eq i32 %i.adp, 0
  br i1 %i.adt, label %bb.df, label %.critedge.thread.i409

bb.df:                                            ; preds = %.critedge.i426
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
  br i1 %.not.i505.i, label %add_col_elt.exit508.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aee = add i32 %i.aec, 5                      ; 2 uses
  store i32 %i.aee, ptr %i.s, align 4, !tbaa !17
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = shl nuw nsw i64 %i.aef, 3
  %i.aeh = call ptr @xrealloc(ptr noundef %.pre.i506.i, i64 noundef %i.aeg) #18 ; 2 uses
  store ptr %i.aeh, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit508.i

add_col_elt.exit508.i:                            ; preds = %bb.dg, %bb.df
  %i.aei = phi ptr [ %i.aeh, %bb.dg ], [ %.pre.i506.i, %bb.df ]
  %i.aej = add i32 %i.aed, 1                      ; 2 uses
  store i32 %i.aej, ptr %i.t, align 8, !tbaa !19
  %i.aek = zext i32 %i.aed to i64
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %i.aek
  store ptr %i.ady, ptr %i.ael, align 8, !tbaa !44
  br label %greedy.exit

.critedge.thread.i409:                            ; preds = %.lr.ph.i408, %.critedge.i426
  %.0438530.i = phi i32 [ %i.adp, %.critedge.i426 ], [ %.0438531.i, %.lr.ph.i408 ]
  %i.aem = add i32 %..i, %i.aby                   ; 4 uses
  %i.aen = add i32 %i.aem, 1
  %i.aeo = zext i32 %i.aen to i64
  %i.aep = shl nuw nsw i64 %i.aeo, 2              ; 4 uses
  %i.aeq = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 15 uses
  %i.aer = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 13 uses
  %i.aes = sub i32 %i.abg, %i.abi                 ; 18 uses
  %i.aet = zext i32 %i.aem to i64                 ; 8 uses
  %i.aeu = add nuw nsw i64 %i.aet, 1              ; 2 uses
  %min.iters.check1071 = icmp ult i32 %i.aem, 7
  %i.aev = ptrtoaddr ptr %i.aer to i64
  %i.aew = ptrtoaddr ptr %i.aeq to i64
  %i.aex = sub i64 %i.aev, %i.aew
  %diff.check1069 = icmp ult i64 %i.aex, 32
  %or.cond1144 = select i1 %min.iters.check1071, i1 true, i1 %diff.check1069
  br i1 %or.cond1144, label %scalar.ph1070.preheader, label %vector.ph1072

vector.ph1072:                                    ; preds = %.critedge.thread.i409
  %n.vec1074 = and i64 %i.aeu, 8589934584         ; 3 uses
  %broadcast.splatinsert1075 = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat1076 = shufflevector <4 x i32> %broadcast.splatinsert1075, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1072
  %index1078 = phi i64 [ 0, %vector.ph1072 ], [ %index.next1079, %vector.body1077 ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %index1078 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store <4 x i32> %broadcast.splat1076, ptr %i.aey, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1076, ptr %i.aez, align 4, !tbaa !4
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index1078 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  store <4 x i32> %broadcast.splat1076, ptr %i.afa, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1076, ptr %i.afb, align 4, !tbaa !4
  %index.next1079 = add nuw i64 %index1078, 8     ; 2 uses
  %i.afc = icmp eq i64 %index.next1079, %n.vec1074
  br i1 %i.afc, label %middle.block1080, label %vector.body1077, !llvm.loop !88

middle.block1080:                                 ; preds = %vector.body1077
  %cmp.n1081 = icmp eq i64 %i.aeu, %n.vec1074
  br i1 %cmp.n1081, label %.loopexit1139, label %scalar.ph1070.preheader

scalar.ph1070.preheader:                          ; preds = %.critedge.thread.i409, %middle.block1080
  %indvars.iv.i410.ph = phi i64 [ 0, %.critedge.thread.i409 ], [ %n.vec1074, %middle.block1080 ] ; 3 uses
  %i.afd = add nuw nsw i64 %i.aet, 1
  %i.afe = sub nsw i64 %i.aet, %indvars.iv.i410.ph
  %xtraiter1233 = and i64 %i.afd, 3               ; 2 uses
  %lcmp.mod1234.not = icmp eq i64 %xtraiter1233, 0
  br i1 %lcmp.mod1234.not, label %scalar.ph1070.prol.loopexit, label %scalar.ph1070.prol

scalar.ph1070.prol:                               ; preds = %scalar.ph1070.preheader, %scalar.ph1070.prol
  %indvars.iv.i410.prol = phi i64 [ %indvars.iv.next.i411.prol, %scalar.ph1070.prol ], [ %indvars.iv.i410.ph, %scalar.ph1070.preheader ] ; 3 uses
  %prol.iter1235 = phi i64 [ %prol.iter1235.next, %scalar.ph1070.prol ], [ 0, %scalar.ph1070.preheader ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i410.prol
  store i32 %i.aes, ptr %i.aff, align 4, !tbaa !4
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i410.prol
  store i32 %i.aes, ptr %i.afg, align 4, !tbaa !4
  %indvars.iv.next.i411.prol = add nuw nsw i64 %indvars.iv.i410.prol, 1 ; 2 uses
  %prol.iter1235.next = add i64 %prol.iter1235, 1 ; 2 uses
  %prol.iter1235.cmp.not = icmp eq i64 %prol.iter1235.next, %xtraiter1233
  br i1 %prol.iter1235.cmp.not, label %scalar.ph1070.prol.loopexit, label %scalar.ph1070.prol, !llvm.loop !89

scalar.ph1070.prol.loopexit:                      ; preds = %scalar.ph1070.prol, %scalar.ph1070.preheader
  %indvars.iv.i410.unr = phi i64 [ %indvars.iv.i410.ph, %scalar.ph1070.preheader ], [ %indvars.iv.next.i411.prol, %scalar.ph1070.prol ]
  %i.afh = icmp ult i64 %i.afe, 3
  br i1 %i.afh, label %.loopexit1139, label %scalar.ph1070

scalar.ph1070:                                    ; preds = %scalar.ph1070.prol.loopexit, %scalar.ph1070
  %indvars.iv.i410 = phi i64 [ %indvars.iv.next.i411.3, %scalar.ph1070 ], [ %indvars.iv.i410.unr, %scalar.ph1070.prol.loopexit ] ; 6 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i410
  store i32 %i.aes, ptr %i.afi, align 4, !tbaa !4
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i410
  store i32 %i.aes, ptr %i.afj, align 4, !tbaa !4
  %indvars.iv.next.i411 = add nuw nsw i64 %indvars.iv.i410, 1 ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next.i411
  store i32 %i.aes, ptr %i.afk, align 4, !tbaa !4
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next.i411
  store i32 %i.aes, ptr %i.afl, align 4, !tbaa !4
  %indvars.iv.next.i411.1 = add nuw nsw i64 %indvars.iv.i410, 2 ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next.i411.1
  store i32 %i.aes, ptr %i.afm, align 4, !tbaa !4
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next.i411.1
  store i32 %i.aes, ptr %i.afn, align 4, !tbaa !4
  %indvars.iv.next.i411.2 = add nuw nsw i64 %indvars.iv.i410, 3 ; 3 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.next.i411.2
  store i32 %i.aes, ptr %i.afo, align 4, !tbaa !4
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next.i411.2
  store i32 %i.aes, ptr %i.afp, align 4, !tbaa !4
  %indvars.iv.next.i411.3 = add nuw nsw i64 %indvars.iv.i410, 4
  %exitcond746.not.3 = icmp eq i64 %indvars.iv.next.i411.2, %i.aet
  br i1 %exitcond746.not.3, label %.loopexit1139, label %scalar.ph1070, !llvm.loop !90

.loopexit1139:                                    ; preds = %scalar.ph1070.prol.loopexit, %scalar.ph1070, %middle.block1080
  %i.afq = sext i32 %..i to i64                   ; 4 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.afq ; 3 uses
  store i32 %.0438530.i, ptr %i.afr, align 4, !tbaa !4
  %i.afs = add i32 %..i, -1
  %i.aft = add i32 %..i, 1                        ; 4 uses
  %invariant.umin.i = call i32 @llvm.umin.i32(i32 %i.aby, i32 range(i32 1, 501) %i.abk) ; 2 uses
  %wide.trip.count.i412 = zext nneg i32 %invariant.umin.i to i64
  br label %.lr.ph536.i

.lr.ph536.i:                                      ; preds = %bb.dh, %.loopexit1139
  %indvars.iv612.i = phi i64 [ 0, %.loopexit1139 ], [ %indvars.iv.next613.i, %bb.dh ] ; 4 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv612.i
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !20
  %i.afw = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv612.i
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !20
  %i.afy = icmp eq i8 %i.afv, %i.afx
  br i1 %i.afy, label %bb.dh, label %.critedge3.split.loop.exit.i

bb.dh:                                            ; preds = %.lr.ph536.i
  %indvars.iv.next613.i = add nuw nsw i64 %indvars.iv612.i, 1 ; 2 uses
  %exitcond.not.i424 = icmp eq i64 %indvars.iv.next613.i, %wide.trip.count.i412
  br i1 %exitcond.not.i424, label %.critedge3.i, label %.lr.ph536.i, !llvm.loop !91

.critedge3.split.loop.exit.i:                     ; preds = %.lr.ph536.i
  %i.afz = trunc nuw nsw i64 %indvars.iv612.i to i32
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %bb.dh, %.critedge3.split.loop.exit.i
  %.1439.lcssa.i = phi i32 [ %i.afz, %.critedge3.split.loop.exit.i ], [ %invariant.umin.i, %bb.dh ] ; 2 uses
  %i.aga = icmp eq i32 %.1439.lcssa.i, %i.abk
  br i1 %i.aga, label %bb.di, label %.critedge3.thread.i

bb.di:                                            ; preds = %.critedge3.i
  %i.agb = add i32 %i.abp, 1
  %i.agc = add i32 %i.abi, 1
  %i.agd = add i32 %i.abp, %i.abk
  %i.age = add i32 %i.abg, -1
  %i.agf = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.agb, ptr %i.agf, align 4, !tbaa !35
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  store i32 %i.agc, ptr %i.agg, align 4, !tbaa !33
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  store i32 %i.agd, ptr %i.agh, align 4, !tbaa !50
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 12
  store i32 %i.age, ptr %i.agi, align 4, !tbaa !51
  %i.agj = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.agk = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i509.i = icmp ugt i32 %i.agj, %i.agk
  %.pre.i510.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i509.i, label %add_col_elt.exit512.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.agl = add i32 %i.agj, 5                      ; 2 uses
  store i32 %i.agl, ptr %i.s, align 4, !tbaa !17
  %i.agm = zext i32 %i.agl to i64
  %i.agn = shl nuw nsw i64 %i.agm, 3
  %i.ago = call ptr @xrealloc(ptr noundef %.pre.i510.i, i64 noundef %i.agn) #18 ; 2 uses
  store ptr %i.ago, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit512.i

add_col_elt.exit512.i:                            ; preds = %bb.dj, %bb.di
  %i.agp = phi ptr [ %i.ago, %bb.dj ], [ %.pre.i510.i, %bb.di ]
  %i.agq = add i32 %i.agk, 1
  store i32 %i.agq, ptr %i.t, align 8, !tbaa !19
  %i.agr = zext i32 %i.agk to i64
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.agr
  store ptr %i.agf, ptr %i.ags, align 8, !tbaa !44
  call void @free(ptr noundef %i.aeq) #18
  call void @free(ptr noundef %i.aer) #18
  br label %greedy.exitthread-pre-split

.critedge3.thread.i:                              ; preds = %.critedge3.i
  %i.agt = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 14 uses
  %i.agu = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 12 uses
  %i.agv = add nuw nsw i64 %i.aet, 1              ; 2 uses
  %min.iters.check1058 = icmp ult i32 %i.aem, 7
  %i.agw = ptrtoaddr ptr %i.agu to i64
  %i.agx = ptrtoaddr ptr %i.agt to i64
  %i.agy = sub i64 %i.agw, %i.agx
  %diff.check1056 = icmp ult i64 %i.agy, 32
  %or.cond1147.a = select i1 %min.iters.check1058, i1 true, i1 %diff.check1056
  br i1 %or.cond1147.a, label %scalar.ph1057.preheader, label %vector.ph1059

vector.ph1059:                                    ; preds = %.critedge3.thread.i
  %n.vec1061 = and i64 %i.agv, 8589934584         ; 3 uses
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1059
  %index1063 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1064, %vector.body1062 ] ; 3 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %index1063 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.agz, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.aha, align 4, !tbaa !4
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %index1063 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ahb, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.ahc, align 4, !tbaa !4
  %index.next1064 = add nuw i64 %index1063, 8     ; 2 uses
  %i.ahd = icmp eq i64 %index.next1064, %n.vec1061
  br i1 %i.ahd, label %middle.block1065, label %vector.body1062, !llvm.loop !92

middle.block1065:                                 ; preds = %vector.body1062
  %cmp.n1066 = icmp eq i64 %i.agv, %n.vec1061
  br i1 %cmp.n1066, label %.loopexit, label %scalar.ph1057.preheader

scalar.ph1057.preheader:                          ; preds = %.critedge3.thread.i, %middle.block1065
  %indvars.iv615.i.ph = phi i64 [ 0, %.critedge3.thread.i ], [ %n.vec1061, %middle.block1065 ] ; 3 uses
  %i.ahe = add nuw nsw i64 %i.aet, 1
  %i.ahf = sub nsw i64 %i.aet, %indvars.iv615.i.ph
  %xtraiter1236 = and i64 %i.ahe, 3               ; 2 uses
  %lcmp.mod1237.not = icmp eq i64 %xtraiter1236, 0
  br i1 %lcmp.mod1237.not, label %scalar.ph1057.prol.loopexit, label %scalar.ph1057.prol

scalar.ph1057.prol:                               ; preds = %scalar.ph1057.preheader, %scalar.ph1057.prol
  %indvars.iv615.i.prol = phi i64 [ %indvars.iv.next616.i.prol, %scalar.ph1057.prol ], [ %indvars.iv615.i.ph, %scalar.ph1057.preheader ] ; 3 uses
  %prol.iter1238 = phi i64 [ %prol.iter1238.next, %scalar.ph1057.prol ], [ 0, %scalar.ph1057.preheader ]
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv615.i.prol
  store i32 -1, ptr %i.ahg, align 4, !tbaa !4
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv615.i.prol
  store i32 -1, ptr %i.ahh, align 4, !tbaa !4
  %indvars.iv.next616.i.prol = add nuw nsw i64 %indvars.iv615.i.prol, 1 ; 2 uses
  %prol.iter1238.next = add i64 %prol.iter1238, 1 ; 2 uses
  %prol.iter1238.cmp.not = icmp eq i64 %prol.iter1238.next, %xtraiter1236
  br i1 %prol.iter1238.cmp.not, label %scalar.ph1057.prol.loopexit, label %scalar.ph1057.prol, !llvm.loop !93

scalar.ph1057.prol.loopexit:                      ; preds = %scalar.ph1057.prol, %scalar.ph1057.preheader
  %indvars.iv615.i.unr = phi i64 [ %indvars.iv615.i.ph, %scalar.ph1057.preheader ], [ %indvars.iv.next616.i.prol, %scalar.ph1057.prol ]
  %i.ahi = icmp ult i64 %i.ahf, 3
  br i1 %i.ahi, label %.loopexit, label %scalar.ph1057

scalar.ph1057:                                    ; preds = %scalar.ph1057.prol.loopexit, %scalar.ph1057
  %indvars.iv615.i = phi i64 [ %indvars.iv.next616.i.3, %scalar.ph1057 ], [ %indvars.iv615.i.unr, %scalar.ph1057.prol.loopexit ] ; 6 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv615.i
  store i32 -1, ptr %i.ahj, align 4, !tbaa !4
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv615.i
  store i32 -1, ptr %i.ahk, align 4, !tbaa !4
  %indvars.iv.next616.i = add nuw nsw i64 %indvars.iv615.i, 1 ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.next616.i
  store i32 -1, ptr %i.ahl, align 4, !tbaa !4
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.next616.i
  store i32 -1, ptr %i.ahm, align 4, !tbaa !4
  %indvars.iv.next616.i.1 = add nuw nsw i64 %indvars.iv615.i, 2 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.next616.i.1
  store i32 -1, ptr %i.ahn, align 4, !tbaa !4
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.next616.i.1
  store i32 -1, ptr %i.aho, align 4, !tbaa !4
  %indvars.iv.next616.i.2 = add nuw nsw i64 %indvars.iv615.i, 3 ; 3 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.next616.i.2
  store i32 -1, ptr %i.ahp, align 4, !tbaa !4
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %indvars.iv.next616.i.2
  store i32 -1, ptr %i.ahq, align 4, !tbaa !4
  %indvars.iv.next616.i.3 = add nuw nsw i64 %indvars.iv615.i, 4
  %exitcond747.not.3 = icmp eq i64 %indvars.iv.next616.i.2, %i.aet
  br i1 %exitcond747.not.3, label %.loopexit, label %scalar.ph1057, !llvm.loop !94

.loopexit:                                        ; preds = %scalar.ph1057.prol.loopexit, %scalar.ph1057, %middle.block1065
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %i.afq ; 3 uses
  store i32 %.1439.lcssa.i, ptr %i.ahr, align 4, !tbaa !4
  %i.ahs = zext i32 %i.aft to i64
  %i.aht = shl nuw nsw i64 %i.ahs, 2              ; 4 uses
  %i.ahu = call ptr @xmalloc(i64 noundef %i.aht) #18 ; 15 uses
  %i.ahv = call ptr @xmalloc(i64 noundef %i.aht) #18 ; 15 uses
  %i.ahw = call ptr @xmalloc(i64 noundef %i.aht) #18 ; 7 uses
  %i.ahx = call ptr @xmalloc(i64 noundef %i.aht) #18 ; 7 uses
  %.not481541.i = icmp eq i32 %..i, 0
  br i1 %.not481541.i, label %._crit_edge.thread.i, label %.lr.ph543.i

._crit_edge.thread.i:                             ; preds = %.loopexit
  %i.ahy = load i32, ptr %i.afr, align 4, !tbaa !4
  store i32 %i.ahy, ptr %i.ahv, align 4, !tbaa !4
  store i32 0, ptr %i.ahx, align 4, !tbaa !4
  %i.ahz = load i32, ptr %i.ahr, align 4, !tbaa !4
  store i32 %i.ahz, ptr %i.ahu, align 4, !tbaa !4
  store i32 0, ptr %i.ahw, align 4, !tbaa !4
  br label %._crit_edge600.i

.lr.ph543.i:                                      ; preds = %.loopexit
  %i.aia = ptrtoaddr ptr %i.ahv to i64
  %i.aib = ptrtoaddr ptr %i.ahu to i64
  %umax.i413 = call i32 @llvm.umax.i32(i32 %i.aft, i32 2)
  %wide.trip.count621.i = zext i32 %umax.i413 to i64 ; 4 uses
  %i.aic = add nsw i64 %wide.trip.count621.i, -1  ; 2 uses
  %min.iters.check1045 = icmp ult i32 %i.aft, 9
  %i.aid = sub i64 %i.aib, %i.aia
  %diff.check = icmp ult i64 %i.aid, 32
  %or.cond1148 = select i1 %min.iters.check1045, i1 true, i1 %diff.check
  br i1 %or.cond1148, label %scalar.ph1044.preheader, label %vector.ph1046

vector.ph1046:                                    ; preds = %.lr.ph543.i
  %n.vec1048 = and i64 %i.aic, -8                 ; 3 uses
  %i.aie = or disjoint i64 %n.vec1048, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1046
  %index1050 = phi i64 [ 0, %vector.ph1046 ], [ %index.next1051, %vector.body1049 ] ; 2 uses
  %i.aif = or disjoint i64 %index1050, 1          ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %i.aif ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aig, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.aih, align 4, !tbaa !4
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.aif ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.aii, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.aij, align 4, !tbaa !4
  %index.next1051 = add nuw i64 %index1050, 8     ; 2 uses
  %i.aik = icmp eq i64 %index.next1051, %n.vec1048
  br i1 %i.aik, label %middle.block1052, label %vector.body1049, !llvm.loop !95

middle.block1052:                                 ; preds = %vector.body1049
  %cmp.n1053 = icmp eq i64 %i.aic, %n.vec1048
  br i1 %cmp.n1053, label %.preheader528.lr.ph.i, label %scalar.ph1044.preheader

scalar.ph1044.preheader:                          ; preds = %.lr.ph543.i, %middle.block1052
  %indvars.iv618.i.ph = phi i64 [ 1, %.lr.ph543.i ], [ %i.aie, %middle.block1052 ] ; 4 uses
  %i.ail = sub nsw i64 %wide.trip.count621.i, %indvars.iv618.i.ph
  %xtraiter1239 = and i64 %i.ail, 3               ; 2 uses
  %lcmp.mod1240.not = icmp eq i64 %xtraiter1239, 0
  br i1 %lcmp.mod1240.not, label %scalar.ph1044.prol.loopexit, label %scalar.ph1044.prol

scalar.ph1044.prol:                               ; preds = %scalar.ph1044.preheader, %scalar.ph1044.prol
  %indvars.iv618.i.prol = phi i64 [ %indvars.iv.next619.i.prol, %scalar.ph1044.prol ], [ %indvars.iv618.i.ph, %scalar.ph1044.preheader ] ; 3 uses
  %prol.iter1241 = phi i64 [ %prol.iter1241.next, %scalar.ph1044.prol ], [ 0, %scalar.ph1044.preheader ]
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv618.i.prol
  store i32 %i.aes, ptr %i.aim, align 4, !tbaa !4
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv618.i.prol
  store i32 -1, ptr %i.ain, align 4, !tbaa !4
  %indvars.iv.next619.i.prol = add nuw nsw i64 %indvars.iv618.i.prol, 1 ; 2 uses
  %prol.iter1241.next = add i64 %prol.iter1241, 1 ; 2 uses
  %prol.iter1241.cmp.not = icmp eq i64 %prol.iter1241.next, %xtraiter1239
  br i1 %prol.iter1241.cmp.not, label %scalar.ph1044.prol.loopexit, label %scalar.ph1044.prol, !llvm.loop !96

scalar.ph1044.prol.loopexit:                      ; preds = %scalar.ph1044.prol, %scalar.ph1044.preheader
  %indvars.iv618.i.unr = phi i64 [ %indvars.iv618.i.ph, %scalar.ph1044.preheader ], [ %indvars.iv.next619.i.prol, %scalar.ph1044.prol ]
  %i.aio = sub nsw i64 %indvars.iv618.i.ph, %wide.trip.count621.i
  %i.aip = icmp ugt i64 %i.aio, -4
  br i1 %i.aip, label %.preheader528.lr.ph.i, label %scalar.ph1044

scalar.ph1044:                                    ; preds = %scalar.ph1044.prol.loopexit, %scalar.ph1044
  %indvars.iv618.i = phi i64 [ %indvars.iv.next619.i.3, %scalar.ph1044 ], [ %indvars.iv618.i.unr, %scalar.ph1044.prol.loopexit ] ; 6 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv618.i
  store i32 %i.aes, ptr %i.aiq, align 4, !tbaa !4
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv618.i
  store i32 -1, ptr %i.air, align 4, !tbaa !4
  %indvars.iv.next619.i = add nuw nsw i64 %indvars.iv618.i, 1 ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.next619.i
  store i32 %i.aes, ptr %i.ais, align 4, !tbaa !4
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv.next619.i
  store i32 -1, ptr %i.ait, align 4, !tbaa !4
  %indvars.iv.next619.i.1 = add nuw nsw i64 %indvars.iv618.i, 2 ; 2 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.next619.i.1
  store i32 %i.aes, ptr %i.aiu, align 4, !tbaa !4
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv.next619.i.1
  store i32 -1, ptr %i.aiv, align 4, !tbaa !4
  %indvars.iv.next619.i.2 = add nuw nsw i64 %indvars.iv618.i, 3 ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv.next619.i.2
  store i32 %i.aes, ptr %i.aiw, align 4, !tbaa !4
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv.next619.i.2
  store i32 -1, ptr %i.aix, align 4, !tbaa !4
  %indvars.iv.next619.i.3 = add nuw nsw i64 %indvars.iv618.i, 4 ; 2 uses
  %exitcond622.i.3 = icmp eq i64 %indvars.iv.next619.i.3, %wide.trip.count621.i
  br i1 %exitcond622.i.3, label %.preheader528.lr.ph.i, label %scalar.ph1044, !llvm.loop !97

.preheader528.lr.ph.i:                            ; preds = %scalar.ph1044.prol.loopexit, %scalar.ph1044, %middle.block1052
  %i.aiy = load i32, ptr %i.afr, align 4, !tbaa !4
  store i32 %i.aiy, ptr %i.ahv, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahx, align 4, !tbaa !4
  %i.aiz = load i32, ptr %i.ahr, align 4, !tbaa !4
  store i32 %i.aiz, ptr %i.ahu, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahw, align 4, !tbaa !4
  %i.aja = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %i.afq ; 2 uses
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.afq ; 2 uses
  %i.ajc = sext i32 %i.afs to i64
  %i.ajd = add i32 %..i, 2
  %i.aje = zext nneg i32 %i.aby to i64
  %i.ajf = zext nneg i32 %i.abk to i64
  br label %.preheader528.i

.preheader528.i:                                  ; preds = %bb.em, %.preheader528.lr.ph.i
  %indvars.iv748 = phi i32 [ %indvars.iv.next749, %bb.em ], [ 2, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv642.i = phi i32 [ %indvars.iv.next643.i, %bb.em ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv629.i = phi i32 [ %indvars.iv.next630.i, %bb.em ], [ %i.ajd, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars.iv623.i = phi i64 [ %indvars.iv.next624.i, %bb.em ], [ %i.ajc, %.preheader528.lr.ph.i ] ; 6 uses
  %.0436597.i = phi i32 [ %i.als, %bb.em ], [ %i.aft, %.preheader528.lr.ph.i ] ; 2 uses
  %.0442595.i = phi i32 [ %.2444.i, %bb.em ], [ -1, %.preheader528.lr.ph.i ] ; 3 uses
  %.0445594.i = phi i32 [ %.2447.i, %bb.em ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %.1451593.i = phi i32 [ %i.aoc, %bb.em ], [ 1, %.preheader528.lr.ph.i ] ; 13 uses
  %.0454592.i = phi i32 [ %.2456.i, %bb.em ], [ %..i, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars667.i = trunc i64 %indvars.iv623.i to i32
  %.not486552.i = icmp slt i32 %.0436597.i, %indvars667.i ; 2 uses
  br i1 %.not486552.i, label %._crit_edge555.thread.i, label %.lr.ph554.i

._crit_edge555.thread.i:                          ; preds = %.preheader528.i
  %i.ajg = load i32, ptr %i.aja, align 4, !tbaa !4
  %i.ajh = zext i32 %.1451593.i to i64            ; 3 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %i.ajh ; 2 uses
  store i32 %i.ajg, ptr %i.aji, align 4, !tbaa !4
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.ajh
  store i32 %..i, ptr %i.ajj, align 4, !tbaa !4
  br label %.preheader527.i

.lr.ph554.i:                                      ; preds = %.preheader528.i
  %i.ajk = sub i32 %..i, %.1451593.i
  %i.ajl = add i32 %.1451593.i, %..i
  %sext.i = sext i32 %i.ajl to i64                ; 2 uses
  %sext627.i = sext i32 %i.ajk to i64             ; 2 uses
  %i.ajm = getelementptr [4 x i8], ptr %i.aeq, i64 %sext.i
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 -4
  %i.ajo = getelementptr [4 x i8], ptr %i.aeq, i64 %sext627.i
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 4
  br label %bb.dk

bb.dk:                                            ; preds = %.critedge7.i414, %.lr.ph554.i
  %indvars.iv625.i = phi i64 [ %indvars.iv623.i, %.lr.ph554.i ], [ %indvars.iv.next626.i, %.critedge7.i414 ] ; 6 uses
  %i.ajq = icmp eq i64 %indvars.iv625.i, %sext627.i
  br i1 %i.ajq, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ajr = load i32, ptr %i.ajp, align 4, !tbaa !4
  br label %bb.dr

bb.dm:                                            ; preds = %bb.dk
  %i.ajs = icmp eq i64 %indvars.iv625.i, %sext.i
  br i1 %i.ajs, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ajt = load i32, ptr %i.ajn, align 4, !tbaa !4
  %i.aju = add nsw i32 %i.ajt, -1
  br label %bb.dr

bb.do:                                            ; preds = %bb.dm
  %i.ajv = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %indvars.iv625.i ; 4 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !4 ; 3 uses
  %i.ajx = getelementptr i8, ptr %i.ajv, i64 4
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !4 ; 3 uses
  %.not497.i = icmp sgt i32 %i.ajw, %i.ajy
  br i1 %.not497.i, label %._crit_edge668.i, label %bb.dp

._crit_edge668.i:                                 ; preds = %bb.do
  %.phi.trans.insert.i422 = getelementptr i8, ptr %i.ajv, i64 -4
  %.pre.i423 = load i32, ptr %.phi.trans.insert.i422, align 4, !tbaa !4
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ajz = add nsw i32 %i.ajw, -1                 ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajv, i64 -4
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !4 ; 2 uses
  %.not498.i = icmp sgt i32 %i.ajz, %i.akb
  br i1 %.not498.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %._crit_edge668.i
  %i.akc = phi i32 [ %.pre.i423, %._crit_edge668.i ], [ %i.akb, %bb.dp ] ; 3 uses
  %.not499.not.i = icmp slt i32 %i.akc, %i.ajy
  %.not500.not.i = icmp slt i32 %i.akc, %i.ajw
  %or.cond521.i = and i1 %.not499.not.i, %.not500.not.i
  %i.akd = add nsw i32 %i.akc, -1
  %spec.select.i421 = select i1 %or.cond521.i, i32 %i.akd, i32 %i.ajy
end_hunk_0
