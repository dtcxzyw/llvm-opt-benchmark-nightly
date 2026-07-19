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
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i.preheader, label %.lr.ph294.i, !llvm.loop !81

.lr.ph297.i.preheader:                            ; preds = %bb.cr
  %min.iters.check1071 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1125 = select i1 %min.iters.check1071, i1 true, i1 %diff.check1069
  br i1 %or.cond1125, label %.lr.ph297.i.preheader1133, label %vector.ph1072

vector.ph1072:                                    ; preds = %.lr.ph297.i.preheader
  %n.vec1074 = and i64 %i.vj, -8                  ; 2 uses
  %i.ys = add i64 %indvars.iv337.i387, %n.vec1074
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %vector.ph1072
  %index1076 = phi i64 [ 0, %vector.ph1072 ], [ %index.next1079, %vector.body1075 ] ; 2 uses
  %i.yt = add i64 %indvars.iv337.i387, %index1076 ; 2 uses
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.yt ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %wide.load1077 = load <4 x i32>, ptr %i.yu, align 4, !tbaa !4
  %wide.load1078 = load <4 x i32>, ptr %i.yv, align 4, !tbaa !4
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.yt ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store <4 x i32> %wide.load1077, ptr %i.yw, align 4, !tbaa !4
  store <4 x i32> %wide.load1078, ptr %i.yx, align 4, !tbaa !4
  %index.next1079 = add nuw i64 %index1076, 8     ; 2 uses
  %i.yy = icmp eq i64 %index.next1079, %n.vec1074
  br i1 %i.yy, label %.lr.ph297.i.preheader1133, label %vector.body1075, !llvm.loop !82

.lr.ph297.i.preheader1133:                        ; preds = %vector.body1075, %.lr.ph297.i.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i387, %.lr.ph297.i.preheader ], [ %i.ys, %vector.body1075 ] ; 4 uses
  %i.yz = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.za = sub i64 %i.vh, %indvars.iv356.i.ph
  %xtraiter1211 = and i64 %i.yz, 3                ; 2 uses
  %lcmp.mod1212.not = icmp eq i64 %xtraiter1211, 0
  br i1 %lcmp.mod1212.not, label %.lr.ph297.i.prol.loopexit, label %.lr.ph297.i.prol

.lr.ph297.i.prol:                                 ; preds = %.lr.ph297.i.preheader1133, %.lr.ph297.i.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i.preheader1133 ] ; 3 uses
  %prol.iter1213 = phi i64 [ %prol.iter1213.next, %.lr.ph297.i.prol ], [ 0, %.lr.ph297.i.preheader1133 ]
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv356.i.prol
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !4
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv356.i.prol
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !4
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1213.next = add i64 %prol.iter1213, 1 ; 2 uses
  %prol.iter1213.cmp.not = icmp eq i64 %prol.iter1213.next, %xtraiter1211
  br i1 %prol.iter1213.cmp.not, label %.lr.ph297.i.prol.loopexit, label %.lr.ph297.i.prol, !llvm.loop !83

.lr.ph297.i.prol.loopexit:                        ; preds = %.lr.ph297.i.prol, %.lr.ph297.i.preheader1133
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i.preheader1133 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i.prol ]
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
  %i.aaw = phi i32 [ %i.atv, %bb.fi ], [ %i.aau, %.thread553 ] ; 2 uses
  %.0299660 = phi i32 [ %i.atw, %bb.fi ], [ 1, %.thread553 ] ; 6 uses
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
  %.pre755 = load i32, ptr %i.x, align 4, !tbaa !39 ; 3 uses
  %.pre758.a = load ptr, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  br i1 %i.abr, label %bb.cx, label %.thread557

bb.cx:                                            ; preds = %bb.cw
  %i.abs = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.abt = zext i32 %i.abi to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abt ; 4 uses
  %i.abv = zext i32 %i.abp to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.pre758.a, i64 %i.abv ; 4 uses
  %i.abx = xor i32 %i.abp, -1
  %i.aby = add i32 %i.abm, %i.abx                 ; 9 uses
  %i.abz = icmp ugt i32 %i.aby, 999999
  br i1 %i.abz, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aca = sub nsw i32 %i.aby, %i.abk             ; 3 uses
  %i.acb = uitofp nneg i32 %i.abk to double       ; 2 uses
  %i.acc = call double @llvm.fmuladd.f64(double %i.acb, double 2.000000e-01, double 1.000000e+00)
  %i.acd = fptoui double %i.acc to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre755, i32 %i.acd) ; 22 uses
  %i.ace = icmp slt i32 %i.aca, 0
  br i1 %i.ace, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.acf = uitofp i32 %.pre755 to double          ; 2 uses
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
  %i.aem = add i32 %..i, %i.aby                   ; 3 uses
  %i.aen = add i32 %i.aem, 1
  %i.aeo = zext i32 %i.aen to i64                 ; 2 uses
  %i.aep = shl nuw nsw i64 %i.aeo, 2              ; 4 uses
  %i.aeq = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 15 uses
  %i.aer = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 13 uses
  %i.aes = sub i32 %i.abg, %i.abi                 ; 18 uses
  %i.aet = zext i32 %i.aem to i64                 ; 4 uses
  %i.aeu = add nuw nsw i64 %i.aet, 1              ; 2 uses
  %min.iters.check1056 = icmp ult i32 %i.aem, 7
  %i.aev = ptrtoaddr ptr %i.aer to i64
  %i.aew = ptrtoaddr ptr %i.aeq to i64
  %i.aex = sub i64 %i.aew, %i.aev
  %diff.check1054 = icmp ugt i64 %i.aex, -32
  %or.cond1128 = select i1 %min.iters.check1056, i1 true, i1 %diff.check1054
  br i1 %or.cond1128, label %scalar.ph1055.preheader, label %vector.ph1057

vector.ph1057:                                    ; preds = %.critedge.thread.i409
  %n.vec1059 = and i64 %i.aeu, 8589934584         ; 3 uses
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1057
  %index1063 = phi i64 [ 0, %vector.ph1057 ], [ %index.next1064, %vector.body1062 ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %index1063 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store <4 x i32> %broadcast.splat1061, ptr %i.aey, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1061, ptr %i.aez, align 4, !tbaa !4
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index1063 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  store <4 x i32> %broadcast.splat1061, ptr %i.afa, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1061, ptr %i.afb, align 4, !tbaa !4
  %index.next1064 = add nuw i64 %index1063, 8     ; 2 uses
  %i.afc = icmp eq i64 %index.next1064, %n.vec1059
  br i1 %i.afc, label %middle.block1065, label %vector.body1062, !llvm.loop !88

middle.block1065:                                 ; preds = %vector.body1062
  %cmp.n1066 = icmp eq i64 %i.aeu, %n.vec1059
  br i1 %cmp.n1066, label %.loopexit, label %scalar.ph1055.preheader

scalar.ph1055.preheader:                          ; preds = %.critedge.thread.i409, %middle.block1065
  %indvars.iv.i410.ph = phi i64 [ 0, %.critedge.thread.i409 ], [ %n.vec1059, %middle.block1065 ] ; 3 uses
  %i.afd = add nuw nsw i64 %i.aet, 1
  %i.afe = sub nsw i64 %i.aet, %indvars.iv.i410.ph
  %xtraiter1214 = and i64 %i.afd, 3               ; 2 uses
  %lcmp.mod1215.not = icmp eq i64 %xtraiter1214, 0
  br i1 %lcmp.mod1215.not, label %scalar.ph1055.prol.loopexit, label %scalar.ph1055.prol

scalar.ph1055.prol:                               ; preds = %scalar.ph1055.preheader, %scalar.ph1055.prol
  %indvars.iv.i410.prol = phi i64 [ %indvars.iv.next.i411.prol, %scalar.ph1055.prol ], [ %indvars.iv.i410.ph, %scalar.ph1055.preheader ] ; 3 uses
  %prol.iter1216 = phi i64 [ %prol.iter1216.next, %scalar.ph1055.prol ], [ 0, %scalar.ph1055.preheader ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i410.prol
  store i32 %i.aes, ptr %i.aff, align 4, !tbaa !4
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i410.prol
  store i32 %i.aes, ptr %i.afg, align 4, !tbaa !4
  %indvars.iv.next.i411.prol = add nuw nsw i64 %indvars.iv.i410.prol, 1 ; 2 uses
  %prol.iter1216.next = add i64 %prol.iter1216, 1 ; 2 uses
  %prol.iter1216.cmp.not = icmp eq i64 %prol.iter1216.next, %xtraiter1214
  br i1 %prol.iter1216.cmp.not, label %scalar.ph1055.prol.loopexit, label %scalar.ph1055.prol, !llvm.loop !89

scalar.ph1055.prol.loopexit:                      ; preds = %scalar.ph1055.prol, %scalar.ph1055.preheader
  %indvars.iv.i410.unr = phi i64 [ %indvars.iv.i410.ph, %scalar.ph1055.preheader ], [ %indvars.iv.next.i411.prol, %scalar.ph1055.prol ]
  %i.afh = icmp ult i64 %i.afe, 3
  br i1 %i.afh, label %.loopexit, label %scalar.ph1055

scalar.ph1055:                                    ; preds = %scalar.ph1055.prol.loopexit, %scalar.ph1055
  %indvars.iv.i410 = phi i64 [ %indvars.iv.next.i411.3, %scalar.ph1055 ], [ %indvars.iv.i410.unr, %scalar.ph1055.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond746.not.3, label %.loopexit, label %scalar.ph1055, !llvm.loop !90

.loopexit:                                        ; preds = %scalar.ph1055.prol.loopexit, %scalar.ph1055, %middle.block1065
  %i.afq = sext i32 %..i to i64                   ; 4 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.afq ; 3 uses
  store i32 %.0438530.i, ptr %i.afr, align 4, !tbaa !4
  %i.afs = add i32 %..i, -1
  %i.aft = add i32 %..i, 1                        ; 4 uses
  %invariant.umin.i = call i32 @llvm.umin.i32(i32 %i.aby, i32 range(i32 1, 501) %i.abk) ; 2 uses
  %wide.trip.count.i412 = zext nneg i32 %invariant.umin.i to i64
  br label %.lr.ph536.i

.lr.ph536.i:                                      ; preds = %bb.dh, %.loopexit
  %indvars.iv612.i = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next613.i, %bb.dh ] ; 4 uses
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
  %i.agt = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 8 uses
  %i.agu = call ptr @xmalloc(i64 noundef %i.aep) #18 ; 6 uses
  %umax.i413 = call i64 @llvm.umax.i64(i64 %i.aeo, i64 1)
  %i.agv = shl nuw nsw i64 %umax.i413, 2          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agt, i8 -1, i64 %i.agv, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agu, i8 -1, i64 %i.agv, i1 false), !tbaa !4
  %i.agw = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %i.afq ; 3 uses
  store i32 %.1439.lcssa.i, ptr %i.agw, align 4, !tbaa !4
  %i.agx = zext i32 %i.aft to i64
  %i.agy = shl nuw nsw i64 %i.agx, 2              ; 4 uses
  %i.agz = call ptr @xmalloc(i64 noundef %i.agy) #18 ; 15 uses
  %i.aha = call ptr @xmalloc(i64 noundef %i.agy) #18 ; 15 uses
  %i.ahb = call ptr @xmalloc(i64 noundef %i.agy) #18 ; 7 uses
  %i.ahc = call ptr @xmalloc(i64 noundef %i.agy) #18 ; 7 uses
  %.not481541.i = icmp eq i32 %..i, 0
  br i1 %.not481541.i, label %._crit_edge.thread.i, label %.lr.ph543.i

._crit_edge.thread.i:                             ; preds = %.critedge3.thread.i
  %i.ahd = load i32, ptr %i.afr, align 4, !tbaa !4
  store i32 %i.ahd, ptr %i.aha, align 4, !tbaa !4
  store i32 0, ptr %i.ahc, align 4, !tbaa !4
  %i.ahe = load i32, ptr %i.agw, align 4, !tbaa !4
  store i32 %i.ahe, ptr %i.agz, align 4, !tbaa !4
  store i32 0, ptr %i.ahb, align 4, !tbaa !4
  br label %._crit_edge600.i

.lr.ph543.i:                                      ; preds = %.critedge3.thread.i
  %i.ahf = ptrtoaddr ptr %i.aha to i64
  %i.ahg = ptrtoaddr ptr %i.agz to i64
  %umax622.i = call i32 @llvm.umax.i32(i32 %i.aft, i32 2)
  %wide.trip.count623.i = zext i32 %umax622.i to i64 ; 4 uses
  %i.ahh = add nsw i64 %wide.trip.count623.i, -1  ; 2 uses
  %min.iters.check1043 = icmp ult i32 %i.aft, 9
  %i.ahi = sub i64 %i.ahf, %i.ahg
  %diff.check = icmp ugt i64 %i.ahi, -32
  %or.cond1129 = select i1 %min.iters.check1043, i1 true, i1 %diff.check
  br i1 %or.cond1129, label %scalar.ph1042.preheader, label %vector.ph1044

vector.ph1044:                                    ; preds = %.lr.ph543.i
  %n.vec1046 = and i64 %i.ahh, -8                 ; 3 uses
  %i.ahj = or disjoint i64 %n.vec1046, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %vector.ph1044
  %index1048 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1049, %vector.body1047 ] ; 2 uses
  %i.ahk = or disjoint i64 %index1048, 1          ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.ahk ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ahl, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ahm, align 4, !tbaa !4
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ahk ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ahn, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.aho, align 4, !tbaa !4
  %index.next1049 = add nuw i64 %index1048, 8     ; 2 uses
  %i.ahp = icmp eq i64 %index.next1049, %n.vec1046
  br i1 %i.ahp, label %middle.block1050, label %vector.body1047, !llvm.loop !92

middle.block1050:                                 ; preds = %vector.body1047
  %cmp.n1051 = icmp eq i64 %i.ahh, %n.vec1046
  br i1 %cmp.n1051, label %.preheader528.lr.ph.i, label %scalar.ph1042.preheader

scalar.ph1042.preheader:                          ; preds = %.lr.ph543.i, %middle.block1050
  %indvars.iv619.i.ph = phi i64 [ 1, %.lr.ph543.i ], [ %i.ahj, %middle.block1050 ] ; 4 uses
  %i.ahq = sub nsw i64 %wide.trip.count623.i, %indvars.iv619.i.ph
  %xtraiter1217 = and i64 %i.ahq, 3               ; 2 uses
  %lcmp.mod1218.not = icmp eq i64 %xtraiter1217, 0
  br i1 %lcmp.mod1218.not, label %scalar.ph1042.prol.loopexit, label %scalar.ph1042.prol

scalar.ph1042.prol:                               ; preds = %scalar.ph1042.preheader, %scalar.ph1042.prol
  %indvars.iv619.i.prol = phi i64 [ %indvars.iv.next620.i.prol, %scalar.ph1042.prol ], [ %indvars.iv619.i.ph, %scalar.ph1042.preheader ] ; 3 uses
  %prol.iter1219 = phi i64 [ %prol.iter1219.next, %scalar.ph1042.prol ], [ 0, %scalar.ph1042.preheader ]
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv619.i.prol
  store i32 %i.aes, ptr %i.ahr, align 4, !tbaa !4
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv619.i.prol
  store i32 -1, ptr %i.ahs, align 4, !tbaa !4
  %indvars.iv.next620.i.prol = add nuw nsw i64 %indvars.iv619.i.prol, 1 ; 2 uses
  %prol.iter1219.next = add i64 %prol.iter1219, 1 ; 2 uses
  %prol.iter1219.cmp.not = icmp eq i64 %prol.iter1219.next, %xtraiter1217
  br i1 %prol.iter1219.cmp.not, label %scalar.ph1042.prol.loopexit, label %scalar.ph1042.prol, !llvm.loop !93

scalar.ph1042.prol.loopexit:                      ; preds = %scalar.ph1042.prol, %scalar.ph1042.preheader
  %indvars.iv619.i.unr = phi i64 [ %indvars.iv619.i.ph, %scalar.ph1042.preheader ], [ %indvars.iv.next620.i.prol, %scalar.ph1042.prol ]
  %i.aht = sub nsw i64 %indvars.iv619.i.ph, %wide.trip.count623.i
  %i.ahu = icmp ugt i64 %i.aht, -4
  br i1 %i.ahu, label %.preheader528.lr.ph.i, label %scalar.ph1042

scalar.ph1042:                                    ; preds = %scalar.ph1042.prol.loopexit, %scalar.ph1042
  %indvars.iv619.i = phi i64 [ %indvars.iv.next620.i.3, %scalar.ph1042 ], [ %indvars.iv619.i.unr, %scalar.ph1042.prol.loopexit ] ; 6 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv619.i
  store i32 %i.aes, ptr %i.ahv, align 4, !tbaa !4
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv619.i
  store i32 -1, ptr %i.ahw, align 4, !tbaa !4
  %indvars.iv.next620.i = add nuw nsw i64 %indvars.iv619.i, 1 ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.next620.i
  store i32 %i.aes, ptr %i.ahx, align 4, !tbaa !4
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next620.i
  store i32 -1, ptr %i.ahy, align 4, !tbaa !4
  %indvars.iv.next620.i.1 = add nuw nsw i64 %indvars.iv619.i, 2 ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.next620.i.1
  store i32 %i.aes, ptr %i.ahz, align 4, !tbaa !4
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next620.i.1
  store i32 -1, ptr %i.aia, align 4, !tbaa !4
  %indvars.iv.next620.i.2 = add nuw nsw i64 %indvars.iv619.i, 3 ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.next620.i.2
  store i32 %i.aes, ptr %i.aib, align 4, !tbaa !4
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.next620.i.2
  store i32 -1, ptr %i.aic, align 4, !tbaa !4
  %indvars.iv.next620.i.3 = add nuw nsw i64 %indvars.iv619.i, 4 ; 2 uses
  %exitcond624.i.3 = icmp eq i64 %indvars.iv.next620.i.3, %wide.trip.count623.i
  br i1 %exitcond624.i.3, label %.preheader528.lr.ph.i, label %scalar.ph1042, !llvm.loop !94

.preheader528.lr.ph.i:                            ; preds = %scalar.ph1042.prol.loopexit, %scalar.ph1042, %middle.block1050
  %i.aid = load i32, ptr %i.afr, align 4, !tbaa !4
  store i32 %i.aid, ptr %i.aha, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahc, align 4, !tbaa !4
  %i.aie = load i32, ptr %i.agw, align 4, !tbaa !4
  store i32 %i.aie, ptr %i.agz, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahb, align 4, !tbaa !4
  %i.aif = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %i.afq ; 2 uses
  %i.aig = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.afq ; 2 uses
  %i.aih = sext i32 %i.afs to i64
  %i.aii = add i32 %..i, 2
  %i.aij = zext nneg i32 %i.aby to i64
  %i.aik = zext nneg i32 %i.abk to i64
  br label %.preheader528.i

.preheader528.i:                                  ; preds = %bb.em, %.preheader528.lr.ph.i
  %indvars.iv747 = phi i32 [ %indvars.iv.next748, %bb.em ], [ 2, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv644.i = phi i32 [ %indvars.iv.next645.i, %bb.em ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv631.i = phi i32 [ %indvars.iv.next632.i, %bb.em ], [ %i.aii, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars.iv625.i = phi i64 [ %indvars.iv.next626.i, %bb.em ], [ %i.aih, %.preheader528.lr.ph.i ] ; 6 uses
  %.0436597.i = phi i32 [ %i.akx, %bb.em ], [ %i.aft, %.preheader528.lr.ph.i ] ; 2 uses
  %.0442595.i = phi i32 [ %.2444.i, %bb.em ], [ -1, %.preheader528.lr.ph.i ] ; 3 uses
  %.0445594.i = phi i32 [ %.2447.i, %bb.em ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %.1451593.i = phi i32 [ %i.anh, %bb.em ], [ 1, %.preheader528.lr.ph.i ] ; 13 uses
  %.0454592.i = phi i32 [ %.2456.i, %bb.em ], [ %..i, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars669.i = trunc i64 %indvars.iv625.i to i32
  %.not486552.i = icmp slt i32 %.0436597.i, %indvars669.i ; 2 uses
  br i1 %.not486552.i, label %._crit_edge555.thread.i, label %.lr.ph554.i

._crit_edge555.thread.i:                          ; preds = %.preheader528.i
  %i.ail = load i32, ptr %i.aif, align 4, !tbaa !4
  %i.aim = zext i32 %.1451593.i to i64            ; 3 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.aim ; 2 uses
  store i32 %i.ail, ptr %i.ain, align 4, !tbaa !4
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.aim
  store i32 %..i, ptr %i.aio, align 4, !tbaa !4
  br label %.preheader527.i

.lr.ph554.i:                                      ; preds = %.preheader528.i
  %i.aip = sub i32 %..i, %.1451593.i
  %i.aiq = add i32 %.1451593.i, %..i
  %sext.i = sext i32 %i.aiq to i64                ; 2 uses
  %sext629.i = sext i32 %i.aip to i64             ; 2 uses
  %i.air = getelementptr [4 x i8], ptr %i.aeq, i64 %sext.i
  %i.ais = getelementptr i8, ptr %i.air, i64 -4
  %i.ait = getelementptr [4 x i8], ptr %i.aeq, i64 %sext629.i
  %i.aiu = getelementptr i8, ptr %i.ait, i64 4
  br label %bb.dk

bb.dk:                                            ; preds = %.critedge7.i414, %.lr.ph554.i
  %indvars.iv627.i = phi i64 [ %indvars.iv625.i, %.lr.ph554.i ], [ %indvars.iv.next628.i, %.critedge7.i414 ] ; 6 uses
  %i.aiv = icmp eq i64 %indvars.iv627.i, %sext629.i
  br i1 %i.aiv, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aiw = load i32, ptr %i.aiu, align 4, !tbaa !4
  br label %bb.dr

bb.dm:                                            ; preds = %bb.dk
  %i.aix = icmp eq i64 %indvars.iv627.i, %sext.i
  br i1 %i.aix, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.aiy = load i32, ptr %i.ais, align 4, !tbaa !4
  %i.aiz = add nsw i32 %i.aiy, -1
  br label %bb.dr

bb.do:                                            ; preds = %bb.dm
  %i.aja = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %indvars.iv627.i ; 4 uses
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !4 ; 3 uses
  %i.ajc = getelementptr i8, ptr %i.aja, i64 4
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !4 ; 3 uses
  %.not497.i = icmp sgt i32 %i.ajb, %i.ajd
  br i1 %.not497.i, label %._crit_edge670.i, label %bb.dp

._crit_edge670.i:                                 ; preds = %bb.do
  %.phi.trans.insert.i422 = getelementptr i8, ptr %i.aja, i64 -4
  %.pre.i423 = load i32, ptr %.phi.trans.insert.i422, align 4, !tbaa !4
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.aje = add nsw i32 %i.ajb, -1                 ; 2 uses
  %i.ajf = getelementptr i8, ptr %i.aja, i64 -4
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !4 ; 2 uses
  %.not498.i = icmp sgt i32 %i.aje, %i.ajg
  br i1 %.not498.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %._crit_edge670.i
  %i.ajh = phi i32 [ %.pre.i423, %._crit_edge670.i ], [ %i.ajg, %bb.dp ] ; 3 uses
  %.not499.not.i = icmp slt i32 %i.ajh, %i.ajd
  %.not500.not.i = icmp slt i32 %i.ajh, %i.ajb
  %or.cond521.i = and i1 %.not499.not.i, %.not500.not.i
  %i.aji = add nsw i32 %i.ajh, -1
  %spec.select.i421 = select i1 %or.cond521.i, i32 %i.aji, i32 %i.ajd
end_hunk_0
begin_hunk_1_@SIM4:bb.a
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.aug, i64 %i.aui
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !31 ; 4 uses
  %i.aul = zext i32 %.084.i to i64                ; 4 uses
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.aug, i64 %i.aul
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !31 ; 5 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 4
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !33
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !33
  %i.aus = sub i32 %i.aup, %i.aur                 ; 3 uses
  %i.aut = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 36), align 4, !tbaa !105
  %.not81.i = icmp ugt i32 %i.aus, %i.aut
  br i1 %.not81.i, label %bb.fo, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i484
  %i.auu = add i32 %i.auf, -1
  store i32 %i.auu, ptr %i.bl, align 8, !tbaa !19
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auk, i64 12
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !51
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aun, i64 12
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !51
  %i.auz = icmp ugt i32 %i.auw, %i.auy
  br i1 %i.auz, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.aun) #18
  %i.ava = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %i.aul ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.avd = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.ave = sub i32 %i.avd, %.084.i
  %i.avf = zext i32 %i.ave to i64
  %i.avg = shl nuw nsw i64 %i.avf, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.avb, ptr nonnull align 8 %i.avc, i64 %i.avg, i1 false)
  %i.avh = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.avi = icmp ult i32 %.084.i, %i.avh
  br i1 %i.avi, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  %i.avj = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %i.aul
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !31 ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.auk, i64 8 ; 2 uses
  %i.avn = load <2 x i32>, ptr %i.avm, align 4, !tbaa !4
  %i.avo = insertelement <2 x i32> poison, i32 %i.aus, i64 0
  %i.avp = shufflevector <2 x i32> %i.avo, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.avq = add <2 x i32> %i.avn, %i.avp
  store <2 x i32> %i.avq, ptr %i.avm, align 4, !tbaa !4
  %i.avr = load <2 x i32>, ptr %i.avl, align 4, !tbaa !4
  %i.avs = sub <2 x i32> %i.avr, %i.avp
  store <2 x i32> %i.avs, ptr %i.avl, align 4, !tbaa !4
  br label %thread-pre-split

bb.fm:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.auk) #18
  %i.avt = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avu = getelementptr inbounds nuw [8 x i8], ptr %i.avt, i64 %i.aul ; 2 uses
  %i.avv = getelementptr inbounds i8, ptr %i.avu, i64 -8
  %i.avw = load i32, ptr %i.bl, align 8, !tbaa !19
  %reass.sub = sub i32 %i.avw, %.084.i
  %i.avx = add i32 %reass.sub, 1
  %i.avy = zext i32 %i.avx to i64
  %i.avz = shl nuw nsw i64 %i.avy, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.avv, ptr align 8 %i.avu, i64 %i.avz, i1 false)
  %i.awa = icmp ugt i32 %.084.i, 1
  br i1 %i.awa, label %bb.fn, label %thread-pre-split

bb.fn:                                            ; preds = %bb.fm
  %i.awb = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.awc = add i32 %.084.i, -2
  %i.awd = zext i32 %i.awc to i64
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.awb, i64 %i.awd
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !31
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 8 ; 2 uses
  %i.awh = load <2 x i32>, ptr %i.awg, align 4, !tbaa !4
  %i.awi = insertelement <2 x i32> poison, i32 %i.aus, i64 0
  %i.awj = shufflevector <2 x i32> %i.awi, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.awk = add <2 x i32> %i.awh, %i.awj
  store <2 x i32> %i.awk, ptr %i.awg, align 4, !tbaa !4
  %i.awl = load <2 x i32>, ptr %i.aun, align 4, !tbaa !4
  %i.awm = sub <2 x i32> %i.awl, %i.awj
  store <2 x i32> %i.awm, ptr %i.aun, align 4, !tbaa !4
  br label %thread-pre-split

bb.fo:                                            ; preds = %.lr.ph.i484
  %i.awn = add nuw i32 %.084.i, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.fl, %bb.fm, %bb.fn, %bb.fo
  %.1.i.ph = phi i32 [ %i.awn, %bb.fo ], [ %.084.i, %bb.fm ], [ %.084.i, %bb.fn ], [ %.084.i, %bb.fl ]
  %.pr560 = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %bb.fp

bb.fp:                                            ; preds = %thread-pre-split, %bb.fk
  %i.awo = phi i32 [ %.pr560, %thread-pre-split ], [ %i.avh, %bb.fk ] ; 5 uses
  %.1.i = phi i32 [ %.1.i.ph, %thread-pre-split ], [ %.084.i, %bb.fk ] ; 2 uses
  %i.awp = icmp ult i32 %.1.i, %i.awo
  br i1 %i.awp, label %.lr.ph.i484, label %.preheader.i485, !llvm.loop !106

bb.fq:                                            ; preds = %about_same_gap_p.exit.thread.i, %.lr.ph86.i
  %i.awq = phi i32 [ %i.awo, %.lr.ph86.i ], [ %i.ayd, %about_same_gap_p.exit.thread.i ] ; 2 uses
  %.285.i = phi i32 [ 1, %.lr.ph86.i ], [ %i.aye, %about_same_gap_p.exit.thread.i ] ; 5 uses
  %i.awr = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aws = add i32 %.285.i, -1                    ; 2 uses
  %i.awt = zext i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.awt
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !31 ; 3 uses
  %i.aww = zext i32 %.285.i to i64                ; 2 uses
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.aww
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !31 ; 5 uses
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !35 ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awv, i64 8 ; 2 uses
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !50 ; 3 uses
  %i.axc = add i32 %i.axb, 31
  %i.axd = icmp ult i32 %i.awz, %i.axc
  br i1 %i.axd, label %bb.fr, label %._crit_edge87.i

._crit_edge87.i:                                  ; preds = %bb.fq
  %.phi.trans.insert.i486 = getelementptr inbounds nuw i8, ptr %i.awv, i64 12
  %.pre.i487 = load i32, ptr %.phi.trans.insert.i486, align 4, !tbaa !51
  %.phi.trans.insert88.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 4
  %.pre89.i = load i32, ptr %.phi.trans.insert88.i, align 4, !tbaa !33
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awy, i64 4
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !33 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awv, i64 12
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !51 ; 2 uses
  %i.axi = add i32 %i.aue, %i.axh
  %.not.i490 = icmp ugt i32 %i.axf, %i.axi
  br i1 %.not.i490, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr, %._crit_edge87.i
  %i.axj = phi i32 [ %.pre89.i, %._crit_edge87.i ], [ %i.axf, %bb.fr ] ; 2 uses
  %i.axk = phi i32 [ %.pre.i487, %._crit_edge87.i ], [ %i.axh, %bb.fr ] ; 2 uses
  %.not.i.i488 = icmp ugt i32 %i.awz, %i.axb
  %.not27.i.i = icmp ugt i32 %i.axj, %i.axk
  %or.cond.i.i = and i1 %.not.i.i488, %.not27.i.i
  br i1 %or.cond.i.i, label %about_same_gap_p.exit.i, label %about_same_gap_p.exit.thread.i

about_same_gap_p.exit.i:                          ; preds = %bb.fs
  %i.axl = xor i32 %i.axb, -1
  %i.axm = add i32 %i.awz, %i.axl                 ; 2 uses
  %i.axn = xor i32 %i.axk, -1
  %i.axo = add i32 %i.axj, %i.axn                 ; 2 uses
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.axo, i32 %i.axm)
  %spec.select29.i.i = call i32 @llvm.umax.i32(i32 %i.axo, i32 %i.axm) ; 2 uses
  %i.axp = sub i32 %spec.select29.i.i, %spec.select.i.i
  %i.axq = mul i32 %i.axp, 100
  %i.axr = udiv i32 %i.axq, %spec.select29.i.i
  %i.axs = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 32), align 8, !tbaa !107
  %.not28.i.not.i = icmp ugt i32 %i.axr, %i.axs
  br i1 %.not28.i.not.i, label %about_same_gap_p.exit.thread.i, label %bb.ft

bb.ft:                                            ; preds = %about_same_gap_p.exit.i, %bb.fr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axu = load <2 x i32>, ptr %i.axt, align 4, !tbaa !4
  store <2 x i32> %i.axu, ptr %i.axa, align 4, !tbaa !4
  call void @free(ptr noundef nonnull %i.awy) #18
  %i.axv = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.axw = add i32 %i.axv, -1                     ; 2 uses
  store i32 %i.axw, ptr %i.bl, align 8, !tbaa !19
  %i.axx = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.axy = getelementptr inbounds nuw [8 x i8], ptr %i.axx, i64 %i.aww ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 8
  %i.aya = sub i32 %i.axw, %.285.i
  %i.ayb = zext i32 %i.aya to i64
  %i.ayc = shl nuw nsw i64 %i.ayb, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axy, ptr nonnull align 8 %i.axz, i64 %i.ayc, i1 false)
  %.pre90.i = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %about_same_gap_p.exit.thread.i

about_same_gap_p.exit.thread.i:                   ; preds = %bb.ft, %about_same_gap_p.exit.i, %bb.fs
  %i.ayd = phi i32 [ %.pre90.i, %bb.ft ], [ %i.awq, %about_same_gap_p.exit.i ], [ %i.awq, %bb.fs ] ; 3 uses
  %.3.i489 = phi i32 [ %i.aws, %bb.ft ], [ %.285.i, %about_same_gap_p.exit.i ], [ %.285.i, %bb.fs ]
  %i.aye = add i32 %.3.i489, 1                    ; 2 uses
  %i.ayf = icmp ult i32 %i.aye, %i.ayd
  br i1 %i.ayf, label %bb.fq, label %compact_exons.exit, !llvm.loop !108

compact_exons.exit:                               ; preds = %about_same_gap_p.exit.thread.i, %.loopexit597, %.preheader.i485
  %i.ayg = phi i32 [ %i.awo, %.preheader.i485 ], [ %i.aub, %.loopexit597 ], [ %i.ayd, %about_same_gap_p.exit.thread.i ] ; 2 uses
  %.not339 = icmp eq i32 %i.ayg, 0
  br i1 %.not339, label %._crit_edge232.i.thread, label %.lr.ph663.preheader

.lr.ph663.preheader:                              ; preds = %compact_exons.exit
  %i.ayh = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !31 ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 12
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !51
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayi, i64 4
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !33
  %i.ayn = add i32 %i.ayk, 1
  %i.ayo = sub i32 %i.ayn, %i.aym
  %i.ayp = load i32, ptr %i.x, align 4, !tbaa !39
  %.not3401022 = icmp ult i32 %i.ayo, %i.ayp
  br i1 %.not3401022, label %.lr.ph1024, label %.thread561

.lr.ph663:                                        ; preds = %.lr.ph1024
  %i.ayq = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next751
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !31 ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 12
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !51
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ays, i64 4
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !33
  %i.ayx = add i32 %i.ayu, 1
  %i.ayy = sub i32 %i.ayx, %i.ayw
  %i.ayz = load i32, ptr %i.x, align 4, !tbaa !39
  %.not340 = icmp ult i32 %i.ayy, %i.ayz
  br i1 %.not340, label %.lr.ph1024, label %.thread561

.lr.ph1024:                                       ; preds = %.lr.ph663.preheader, %.lr.ph663
  %i.aza = phi ptr [ %i.ays, %.lr.ph663 ], [ %i.ayi, %.lr.ph663.preheader ]
  %indvars.iv7501010 = phi i64 [ %indvars.iv.next751, %.lr.ph663 ], [ 0, %.lr.ph663.preheader ]
  call void @free(ptr noundef nonnull %i.aza) #18
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv7501010, 1 ; 5 uses
  %i.azb = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %11 = zext i32 %i.azb to i64
  %i.azc = icmp samesign ult i64 %indvars.iv.next751, %11
  br i1 %i.azc, label %.lr.ph663, label %.thread561

.thread561:                                       ; preds = %.lr.ph663, %.lr.ph1024, %.lr.ph663.preheader
  %12 = phi i32 [ %i.ayg, %.lr.ph663.preheader ], [ %i.azb, %.lr.ph1024 ], [ %i.azb, %.lr.ph663 ] ; 2 uses
  %.0286.lcssa.ph.in = phi i64 [ 0, %.lr.ph663.preheader ], [ %indvars.iv.next751, %.lr.ph1024 ], [ %indvars.iv.next751, %.lr.ph663 ] ; 3 uses
  %.not341 = icmp eq i64 %.0286.lcssa.ph.in, 0
  br i1 %.not341, label %thread-pre-split564, label %.thread561.thread

.thread561.thread:                                ; preds = %.thread561
  %.0286.lcssa.ph = trunc nuw i64 %.0286.lcssa.ph.in to i32 ; 2 uses
  %i.azd = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %i.azd, i64 %.0286.lcssa.ph.in
  %i.azf = sub i32 %12, %.0286.lcssa.ph
  %i.azg = zext i32 %i.azf to i64
  %i.azh = shl nuw nsw i64 %i.azg, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.azd, ptr nonnull align 8 %i.aze, i64 %i.azh, i1 false)
  %i.azi = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.azj = sub i32 %i.azi, %.0286.lcssa.ph        ; 2 uses
  store i32 %i.azj, ptr %i.bl, align 8, !tbaa !19
  br label %thread-pre-split564

thread-pre-split564:                              ; preds = %.thread561, %.thread561.thread
  %i.azk = phi i32 [ %i.azj, %.thread561.thread ], [ %12, %.thread561 ] ; 3 uses
  %.0283667 = add i32 %i.azk, -1                  ; 3 uses
  %i.azl = icmp sgt i32 %.0283667, -1
  br i1 %i.azl, label %.lr.ph669.preheader, label %.thread568

.lr.ph669.preheader:                              ; preds = %thread-pre-split564
  %i.azm = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.azn = zext nneg i32 %.0283667 to i64
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.azm, i64 %i.azn
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !31 ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 12
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !51
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azp, i64 4
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !33
  %i.azu = add i32 %i.azr, 1
  %i.azv = sub i32 %i.azu, %i.azt
  %i.azw = load i32, ptr %i.x, align 4, !tbaa !39
  %.not3431026 = icmp ult i32 %i.azv, %i.azw
  br i1 %.not3431026, label %.lr.ph1028, label %.thread568

.lr.ph669:                                        ; preds = %.lr.ph1028
  %.0283 = add nsw i32 %.02836681027, -1          ; 2 uses
  %i.azx = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.azy = zext nneg i32 %.0283 to i64
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr %i.azx, i64 %i.azy
  %i.baa = load ptr, ptr %i.azz, align 8, !tbaa !31 ; 3 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 12
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !51
  %i.bad = getelementptr inbounds nuw i8, ptr %i.baa, i64 4
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !33
  %i.baf = add i32 %i.bac, 1
  %i.bag = sub i32 %i.baf, %i.bae
  %i.bah = load i32, ptr %i.x, align 4, !tbaa !39
  %.not343 = icmp ult i32 %i.bag, %i.bah
  br i1 %.not343, label %.lr.ph1028, label %.thread568

.lr.ph1028:                                       ; preds = %.lr.ph669.preheader, %.lr.ph669
  %i.bai = phi ptr [ %i.baa, %.lr.ph669 ], [ %i.azp, %.lr.ph669.preheader ]
  %.02836681027 = phi i32 [ %.0283, %.lr.ph669 ], [ %.0283667, %.lr.ph669.preheader ] ; 2 uses
  call void @free(ptr noundef nonnull %i.bai) #18
  %i.baj = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.bak = add i32 %i.baj, -1                     ; 3 uses
  store i32 %i.bak, ptr %i.bl, align 8, !tbaa !19
  %i.bal = icmp sgt i32 %.02836681027, 0
  br i1 %i.bal, label %.lr.ph669, label %.thread568

.thread568:                                       ; preds = %.lr.ph669, %.lr.ph1028, %.lr.ph669.preheader, %thread-pre-split564
  %.pr572 = phi i32 [ %i.azk, %thread-pre-split564 ], [ %i.azk, %.lr.ph669.preheader ], [ %i.bak, %.lr.ph1028 ], [ %i.bak, %.lr.ph669 ] ; 2 uses
  %i.bam = load ptr, ptr %i.w, align 8, !tbaa !30 ; 13 uses
  %i.ban = load ptr, ptr %i.o, align 8, !tbaa !21 ; 7 uses
  %i.bao = icmp ugt i32 %.pr572, 1
  br i1 %i.bao, label %.lr.ph.i493, label %._crit_edge232.i

.lr.ph.i493:                                      ; preds = %.thread568
  %i.bap = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 4 uses
  %i.baq = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 16), align 8 ; 2 uses
  %.not.i523 = icmp eq i32 %i.baq, 0
  %i.bar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8
  %wide.trip.count.i525 = zext i32 %i.baq to i64
  br label %bb.fu

.preheader216.i:                                  ; preds = %bb.gb
  %i.bas = icmp ugt i32 %i.bfk, 1
  br i1 %i.bas, label %.lr.ph231.i, label %._crit_edge232.i

bb.fu:                                            ; preds = %bb.gb, %.lr.ph.i493
  %indvars.iv.i494 = phi i64 [ 1, %.lr.ph.i493 ], [ %indvars.iv.next.i495, %bb.gb ] ; 2 uses
  %i.bat = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bau = getelementptr [8 x i8], ptr %i.bat, i64 %indvars.iv.i494 ; 2 uses
  %i.bav = getelementptr i8, ptr %i.bau, i64 -8
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !31 ; 3 uses
  %i.bax = load ptr, ptr %i.bau, align 8, !tbaa !31 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 24 ; 5 uses
  %i.baz = load i64, ptr %i.bay, align 4
  %i.bba = and i64 %i.baz, 4294967295
  %i.bbb = or disjoint i64 %i.bba, -72057594037927936
  store i64 %i.bbb, ptr %i.bay, align 4
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !33
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baw, i64 12
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !51 ; 2 uses
  %i.bbg = sub i32 %i.bbd, %i.bbf
  %.not181.i = icmp eq i32 %i.bbg, 1
  br i1 %.not181.i, label %bb.fv, label %bb.gb

bb.fv:                                            ; preds = %bb.fu
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !50
  %i.bbj = load i32, ptr %i.bax, align 4, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bbk = zext i32 %i.bbi to i64
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bbk ; 2 uses
  %i.bbm = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 44), align 4, !tbaa !109 ; 5 uses
  %i.bbn = zext i32 %i.bbm to i64                 ; 3 uses
  %i.bbo = sub nsw i64 0, %i.bbn                  ; 2 uses
  %i.bbp = getelementptr inbounds i8, ptr %i.bbl, i64 %i.bbo ; 2 uses
  %i.bbq = zext i32 %i.bbf to i64
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.ban, i64 %i.bbq ; 4 uses
  %i.bbs = getelementptr inbounds i8, ptr %i.bbr, i64 %i.bbo ; 2 uses
  %i.bbt = load i8, ptr %i.bbp, align 1, !tbaa !20 ; 2 uses
  %i.bbu = load i8, ptr %i.bbs, align 1, !tbaa !20 ; 2 uses
  %i.bbv = icmp eq i8 %i.bbt, %i.bbu
  %i.bbw = zext i1 %i.bbv to i32                  ; 2 uses
  %i.bbx = icmp ugt i32 %i.bbm, 1
  br i1 %i.bbx, label %.lr.ph.i.i530, label %SWscore.exit.thread.i

.lr.ph.i.i530:                                    ; preds = %bb.fv, %.lr.ph.i.i530
  %i.bby = phi i8 [ %i.bcb, %.lr.ph.i.i530 ], [ %i.bbu, %bb.fv ]
  %i.bbz = phi i8 [ %i.bcg, %.lr.ph.i.i530 ], [ %i.bbt, %bb.fv ]
  %indvars.iv.i.i531 = phi i64 [ %indvars.iv.next.i.i533, %.lr.ph.i.i530 ], [ 1, %bb.fv ] ; 3 uses
  %.sroa.0.051.i.i = phi i32 [ %.sroa.10.0..i.i, %.lr.ph.i.i530 ], [ 0, %bb.fv ]
  %.sroa.10.050.i.i = phi i32 [ %i.bcq, %.lr.ph.i.i530 ], [ %i.bbw, %bb.fv ] ; 3 uses
  %.sroa.19.049.i.i = phi i32 [ %i.bck, %.lr.ph.i.i530 ], [ 0, %bb.fv ]
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %indvars.iv.i.i531
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !20 ; 3 uses
  %i.bcc = icmp eq i8 %i.bbz, %i.bcb
  %i.bcd = zext i1 %i.bcc to i32
  %i.bce = add nuw nsw i32 %.sroa.0.051.i.i, %i.bcd
  %.sroa.10.0..i.i = call i32 @llvm.smax.i32(i32 %i.bce, i32 %.sroa.10.050.i.i) ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %indvars.iv.i.i531
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !20 ; 3 uses
  %i.bch = icmp eq i8 %i.bcg, %i.bby
  %i.bci = zext i1 %i.bch to i32
  %i.bcj = add nuw nsw i32 %.sroa.19.049.i.i, %i.bci
  %i.bck = call i32 @llvm.smax.i32(i32 %i.bcj, i32 %.sroa.10.050.i.i) ; 2 uses
  %i.bcl = call i32 @llvm.smax.i32(i32 %.sroa.10.0..i.i, i32 %i.bck) ; 2 uses
  %i.bcm = icmp eq i8 %i.bcg, %i.bcb
  %i.bcn = zext i1 %i.bcm to i32
  %i.bco = add nsw i32 %.sroa.10.050.i.i, %i.bcn  ; 2 uses
  %.not.i.i532 = icmp sgt i32 %i.bcl, %i.bco
  %i.bcp = add nsw i32 %i.bcl, -1
  %i.bcq = select i1 %.not.i.i532, i32 %i.bcp, i32 %i.bco ; 2 uses
  %indvars.iv.next.i.i533 = add nuw nsw i64 %indvars.iv.i.i531, 1 ; 2 uses
  %exitcond.not.i.i534 = icmp eq i64 %indvars.iv.next.i.i533, %i.bbn
  br i1 %exitcond.not.i.i534, label %SWscore.exit.i, label %.lr.ph.i.i530, !llvm.loop !110

SWscore.exit.i:                                   ; preds = %.lr.ph.i.i530
  %i.bcr = icmp ult i32 %i.bcq, %i.bbm
  br i1 %i.bcr, label %perfect_spl_p.exit.thread, label %bb.fw

SWscore.exit.thread.i:                            ; preds = %bb.fv
  %i.bcs = icmp samesign ugt i32 %i.bbm, %i.bbw
  br i1 %i.bcs, label %perfect_spl_p.exit.thread, label %.thread.i522

.thread.i522:                                     ; preds = %SWscore.exit.thread.i
  %i.bct = zext i32 %i.bbj to i64                 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bct
  %i.bcv = getelementptr inbounds i8, ptr %i.bcu, i64 -1
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !20
  %i.bcx = load i8, ptr %i.bbr, align 1, !tbaa !20
  %i.bcy = icmp eq i8 %i.bcw, %i.bcx
  %i.bcz = zext i1 %i.bcy to i32
  br label %SWscore.exit39.i

bb.fw:                                            ; preds = %SWscore.exit.i
  %i.bda = zext i32 %i.bbj to i64                 ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bda
  %i.bdc = getelementptr inbounds i8, ptr %i.bdb, i64 -1 ; 2 uses
  %i.bdd = load i8, ptr %i.bdc, align 1, !tbaa !20 ; 2 uses
  %i.bde = load i8, ptr %i.bbr, align 1, !tbaa !20 ; 2 uses
  %i.bdf = icmp eq i8 %i.bdd, %i.bde
  %i.bdg = zext i1 %i.bdf to i32
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %bb.fw
  %i.bdh = phi i8 [ %i.bdk, %.lr.ph.i30.i ], [ %i.bde, %bb.fw ]
  %i.bdi = phi i8 [ %i.bdp, %.lr.ph.i30.i ], [ %i.bdd, %bb.fw ]
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i37.i, %.lr.ph.i30.i ], [ 1, %bb.fw ] ; 3 uses
  %.sroa.0.051.i32.i = phi i32 [ %.sroa.10.0..i35.i, %.lr.ph.i30.i ], [ 0, %bb.fw ]
  %.sroa.10.050.i33.i = phi i32 [ %i.bdz, %.lr.ph.i30.i ], [ %i.bdg, %bb.fw ] ; 3 uses
  %.sroa.19.049.i34.i = phi i32 [ %i.bdt, %.lr.ph.i30.i ], [ 0, %bb.fw ]
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %indvars.iv.i31.i
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !20 ; 3 uses
  %i.bdl = icmp eq i8 %i.bdi, %i.bdk
  %i.bdm = zext i1 %i.bdl to i32
  %i.bdn = add nuw nsw i32 %.sroa.0.051.i32.i, %i.bdm
  %.sroa.10.0..i35.i = call i32 @llvm.smax.i32(i32 %i.bdn, i32 %.sroa.10.050.i33.i) ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdc, i64 %indvars.iv.i31.i
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !20 ; 3 uses
  %i.bdq = icmp eq i8 %i.bdp, %i.bdh
  %i.bdr = zext i1 %i.bdq to i32
  %i.bds = add nuw nsw i32 %.sroa.19.049.i34.i, %i.bdr
  %i.bdt = call i32 @llvm.smax.i32(i32 %i.bds, i32 %.sroa.10.050.i33.i) ; 2 uses
  %i.bdu = call i32 @llvm.smax.i32(i32 %.sroa.10.0..i35.i, i32 %i.bdt) ; 2 uses
  %i.bdv = icmp eq i8 %i.bdp, %i.bdk
  %i.bdw = zext i1 %i.bdv to i32
  %i.bdx = add nsw i32 %.sroa.10.050.i33.i, %i.bdw ; 2 uses
  %.not.i36.i = icmp sgt i32 %i.bdu, %i.bdx
  %i.bdy = add nsw i32 %i.bdu, -1
  %i.bdz = select i1 %.not.i36.i, i32 %i.bdy, i32 %i.bdx ; 2 uses
  %indvars.iv.next.i37.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i38.i = icmp eq i64 %indvars.iv.next.i37.i, %i.bbn
  br i1 %exitcond.not.i38.i, label %SWscore.exit39.i, label %.lr.ph.i30.i, !llvm.loop !110

SWscore.exit39.i:                                 ; preds = %.lr.ph.i30.i, %.thread.i522
  %i.bea = phi i64 [ %i.bct, %.thread.i522 ], [ %i.bda, %.lr.ph.i30.i ]
  %.sroa.10.0.lcssa.i27.i = phi i32 [ %i.bcz, %.thread.i522 ], [ %i.bdz, %.lr.ph.i30.i ]
  %i.beb = icmp ult i32 %.sroa.10.0.lcssa.i27.i, %i.bbm
  br i1 %i.beb, label %perfect_spl_p.exit.thread, label %bb.fx

bb.fx:                                            ; preds = %SWscore.exit39.i
end_hunk_1
