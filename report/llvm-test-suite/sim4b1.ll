inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  %i.yo = load i32, ptr %i.yf, align 4, !tbaa !4
  %i.yp = icmp sgt i32 %i.yn, %i.yo
  br i1 %i.yp, label %bb.cp, label %.lr.ph294.i.1

bb.cp:                                            ; preds = %.lr.ph294.i
  store i32 %i.yn, ptr %i.yf, align 4, !tbaa !4
  %i.yq = trunc nsw i64 %indvars.iv348.i to i32
  store i32 %i.yq, ptr %i.yg, align 4, !tbaa !4
  br label %.lr.ph294.i.1

.lr.ph294.i.1:                                    ; preds = %bb.cp, %.lr.ph294.i
  %indvars.iv.next349.i = add nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %indvars.iv.next349.i
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !4  ; 2 uses
  %i.yt = load i32, ptr %i.yf, align 4, !tbaa !4
  %i.yu = icmp sgt i32 %i.ys, %i.yt
  br i1 %i.yu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph294.i.1
  store i32 %i.ys, ptr %i.yf, align 4, !tbaa !4
  %i.yv = trunc nsw i64 %indvars.iv.next349.i to i32
  store i32 %i.yv, ptr %i.yg, align 4, !tbaa !4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph294.i.1
  %indvars.iv.next349.i.1 = add nsw i64 %indvars.iv348.i, 2 ; 2 uses
  %exitcond353.not.i.1 = icmp eq i64 %indvars.iv.next349.i.1, %indvars.iv362.i
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i391.preheader, label %.lr.ph294.i, !llvm.loop !81

.lr.ph297.i391.preheader:                         ; preds = %bb.cr
  %min.iters.check1059 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1108 = select i1 %min.iters.check1059, i1 true, i1 %diff.check1057
  br i1 %or.cond1108, label %.lr.ph297.i391.preheader1116, label %vector.ph1060

vector.ph1060:                                    ; preds = %.lr.ph297.i391.preheader
  %n.vec1061 = and i64 %i.vn, -8                  ; 2 uses
  %i.yw = add i64 %indvars.iv337.i, %n.vec1061
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1060
  %index1063 = phi i64 [ 0, %vector.ph1060 ], [ %index.next1066, %vector.body1062 ] ; 2 uses
  %i.yx = add i64 %indvars.iv337.i, %index1063    ; 2 uses
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.yx ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %wide.load1064 = load <4 x i32>, ptr %i.yy, align 4, !tbaa !4
  %wide.load1065 = load <4 x i32>, ptr %i.yz, align 4, !tbaa !4
  %i.za = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.yx ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  store <4 x i32> %wide.load1064, ptr %i.za, align 4, !tbaa !4
  store <4 x i32> %wide.load1065, ptr %i.zb, align 4, !tbaa !4
  %index.next1066 = add nuw i64 %index1063, 8     ; 2 uses
  %i.zc = icmp eq i64 %index.next1066, %n.vec1061
  br i1 %i.zc, label %.lr.ph297.i391.preheader1116, label %vector.body1062, !llvm.loop !82

.lr.ph297.i391.preheader1116:                     ; preds = %vector.body1062, %.lr.ph297.i391.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i, %.lr.ph297.i391.preheader ], [ %i.yw, %vector.body1062 ] ; 4 uses
  %i.zd = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.ze = sub i64 %i.vl, %indvars.iv356.i.ph
  %xtraiter1191 = and i64 %i.zd, 3                ; 2 uses
  %lcmp.mod1192.not = icmp eq i64 %xtraiter1191, 0
  br i1 %lcmp.mod1192.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol

.lr.ph297.i391.prol:                              ; preds = %.lr.ph297.i391.preheader1116, %.lr.ph297.i391.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1116 ] ; 3 uses
  %prol.iter1193 = phi i64 [ %prol.iter1193.next, %.lr.ph297.i391.prol ], [ 0, %.lr.ph297.i391.preheader1116 ]
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %indvars.iv356.i.prol
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !4
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %indvars.iv356.i.prol
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !4
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1193.next = add i64 %prol.iter1193, 1 ; 2 uses
  %prol.iter1193.cmp.not = icmp eq i64 %prol.iter1193.next, %xtraiter1191
  br i1 %prol.iter1193.cmp.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol, !llvm.loop !83

.lr.ph297.i391.prol.loopexit:                     ; preds = %.lr.ph297.i391.prol, %.lr.ph297.i391.preheader1116
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1116 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ]
  %i.zi = icmp ult i64 %i.ze, 3
  br i1 %i.zi, label %._crit_edge298.i, label %.lr.ph297.i391

.lr.ph297.i391:                                   ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.3, %.lr.ph297.i391 ], [ %indvars.iv356.i.unr, %.lr.ph297.i391.prol.loopexit ] ; 6 uses
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %indvars.iv356.i
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !4
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %indvars.iv356.i
  store i32 %i.zk, ptr %i.zl, align 4, !tbaa !4
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %indvars.iv.next357.i
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !4
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %indvars.iv.next357.i
  store i32 %i.zn, ptr %i.zo, align 4, !tbaa !4
  %indvars.iv.next357.i.1 = add nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %indvars.iv.next357.i.1
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !4
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %indvars.iv.next357.i.1
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !4
  %indvars.iv.next357.i.2 = add nsw i64 %indvars.iv356.i, 3 ; 2 uses
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %indvars.iv.next357.i.2
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !4
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %indvars.iv.next357.i.2
  store i32 %i.zt, ptr %i.zu, align 4, !tbaa !4
  %indvars.iv.next357.i.3 = add nsw i64 %indvars.iv356.i, 4 ; 2 uses
  %exitcond361.not.i.3 = icmp eq i64 %indvars.iv.next357.i.3, %indvars.iv362.i
  br i1 %exitcond361.not.i.3, label %._crit_edge298.i, label %.lr.ph297.i391, !llvm.loop !84

._crit_edge298.i:                                 ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391, %._crit_edge290.thread.i
  %i.zv = add nuw nsw i32 %.0229300.i, 1
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1
  %indvars.iv.next326.i = add nsw i32 %indvars.iv325.i, -1
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond375.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count374.i
  br i1 %exitcond375.i, label %.critedge2.i, label %bb.bq, !llvm.loop !85

.critedge2.split.loop.exit402.i:                  ; preds = %bb.bu
  %i.zw = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.split.loop.exit404.i:                  ; preds = %good_ratio.exit258.i
  %i.zx = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %._crit_edge298.i, %.critedge2.split.loop.exit404.i, %.critedge2.split.loop.exit402.i
  %.lcssa.i392 = phi i32 [ %i.zw, %.critedge2.split.loop.exit402.i ], [ %i.zx, %.critedge2.split.loop.exit404.i ], [ %i.vi, %._crit_edge298.i ] ; 2 uses
  %smin.i393 = call i32 @llvm.smin.i32(i32 %.lcssa.i392, i32 1)
  %i.zy = add i32 %smin.i393, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i
  %.2228303.i = phi i32 [ %.lcssa.i392, %.critedge2.i ], [ %i.aag, %bb.ct ] ; 4 uses
  %i.zz = zext nneg i32 %.2228303.i to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.zz ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !4
  %i.aac = getelementptr i8, ptr %i.aaa, i64 -4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !4
  %i.aae = sub nsw i32 %i.aab, %i.aad
  %i.aaf = icmp slt i32 %i.aae, 3
  br i1 %i.aaf, label %bb.ct, label %.critedge8.i

bb.ct:                                            ; preds = %bb.cs
  %i.aag = add nsw i32 %.2228303.i, -1
  %i.aah = icmp sgt i32 %.2228303.i, 1
  br i1 %i.aah, label %bb.cs, label %.critedge8.i, !llvm.loop !86

.critedge8.i:                                     ; preds = %bb.ct, %bb.cs
  %.2228.lcssa.i = phi i32 [ %i.zy, %bb.ct ], [ %.2228303.i, %bb.cs ] ; 2 uses
  %i.aai = sext i32 %.2228.lcssa.i to i64         ; 2 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !4 ; 2 uses
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.aai
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !4
  %i.aan = sub i32 %i.tr, %spec.select348
  %i.aao = add i32 %i.aan, %i.aak
  %i.aap = add i32 %i.aao, %i.aam
  call void @free(ptr noundef nonnull %i.vb) #18
  call void @free(ptr noundef %i.vc) #18
  call void @free(ptr noundef %i.ur) #18
  call void @free(ptr noundef %i.ut) #18
  br label %extend_fw.exit

extend_fw.exit:                                   ; preds = %bb.bn, %bb.bo, %bb.cj, %bb.cl, %bb.cn, %.critedge8.i
  %spec.select348.pn = phi i32 [ %spec.select348, %bb.bn ], [ %i.tx, %bb.bo ], [ %i.aak, %.critedge8.i ], [ %spec.select348, %bb.cj ], [ %spec.select348, %bb.cl ], [ %.3.i, %bb.cn ]
  %.0541 = phi i32 [ %i.uk, %bb.bn ], [ %i.um, %bb.bo ], [ %i.aap, %.critedge8.i ], [ %i.xz, %bb.cj ], [ %i.yb, %bb.cl ], [ %i.yd, %bb.cn ]
  %.0.i394 = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2228.lcssa.i, %.critedge8.i ], [ %i.xy, %bb.cj ], [ %i.ya, %bb.cl ], [ %i.yc, %bb.cn ]
  %.0542 = add nsw i32 %spec.select348.pn, %i.tk  ; 2 uses
  %i.aaq = load i32, ptr %i.tj, align 4, !tbaa !51
  %i.aar = sub nsw i32 %.0542, %i.aaq
  %i.aas = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !71
  %i.aat = mul nsw i32 %i.aar, %i.aas
  %i.aau = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !72
  %i.aav = mul nsw i32 %i.aau, %.0.i394
  %i.aaw = add nsw i32 %i.aav, %i.aat
  %i.aax = icmp sgt i32 %i.aaw, -1
  br i1 %i.aax, label %bb.cu, label %.thread554

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0542, ptr %i.tj, align 4, !tbaa !51
  store i32 %.0541, ptr %i.tq, align 4, !tbaa !50
  br label %.thread554

.thread554:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread547
  %i.aay = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aaz = icmp ugt i32 %i.aay, 1
  br i1 %i.aaz, label %.lr.ph662, label %.loopexit598

.lr.ph662:                                        ; preds = %.thread554, %bb.fh
  %i.aba = phi i32 [ %i.atx, %bb.fh ], [ %i.aay, %.thread554 ] ; 2 uses
  %.0299661 = phi i32 [ %i.aty, %bb.fh ], [ 1, %.thread554 ] ; 6 uses
  %i.abb = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.abc = add i32 %.0299661, -1                  ; 2 uses
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abd
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !31 ; 2 uses
  %i.abg = zext i32 %.0299661 to i64
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abg
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !31 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !33 ; 6 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abf, i64 12 ; 2 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !51 ; 9 uses
  %i.abn = xor i32 %i.abm, -1
  %i.abo = add i32 %i.abk, %i.abn                 ; 15 uses
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %bb.cv, label %bb.fh

bb.cv:                                            ; preds = %.lr.ph662
  %i.abq = load i32, ptr %i.abi, align 4, !tbaa !35 ; 2 uses
  %i.abr = add i32 %i.abq, -1                     ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abf, i64 8 ; 3 uses
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !50 ; 10 uses
  %i.abu = icmp ugt i32 %i.abr, %i.abt
  br i1 %i.abu, label %bb.cw, label %bb.fh

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abv = icmp samesign ult i32 %i.abo, 501
  %.pre760 = load i32, ptr %i.x, align 4, !tbaa !39 ; 3 uses
  %.pre763 = load ptr, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  br i1 %i.abv, label %bb.cx, label %.thread558

bb.cx:                                            ; preds = %bb.cw
  %i.abw = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.abx = zext i32 %i.abm to i64
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.abx ; 4 uses
  %i.abz = zext i32 %i.abt to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.abz ; 4 uses
  %i.acb = xor i32 %i.abt, -1
  %i.acc = add i32 %i.abq, %i.acb                 ; 9 uses
  %i.acd = icmp ugt i32 %i.acc, 999999
  br i1 %i.acd, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ace = sub nsw i32 %i.acc, %i.abo             ; 3 uses
  %i.acf = uitofp nneg i32 %i.abo to double       ; 2 uses
  %i.acg = call double @llvm.fmuladd.f64(double %i.acf, double 2.000000e-01, double 1.000000e+00)
  %i.ach = fptoui double %i.acg to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre760, i32 %i.ach) ; 22 uses
  %i.aci = icmp slt i32 %i.ace, 0
  br i1 %i.aci, label %bb.cz, label %.lr.ph.i409.preheader

bb.cz:                                            ; preds = %bb.cy
  %i.acj = uitofp i32 %.pre760 to double          ; 2 uses
  %i.ack = uitofp nneg i32 %i.acc to double       ; 2 uses
  %i.acl = fmul nnan double %i.ack, 1.200000e+00  ; 2 uses
  %i.acm = fcmp olt double %i.acl, %i.acj
  %.501.i = select i1 %i.acm, double %i.acl, double %i.acj
  %i.acn = fcmp ult double %.501.i, %i.acf
  br i1 %i.acn, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aco = add nuw i32 %i.abt, 1
  %i.acp = add i32 %i.abm, 1
  %i.acq = add i32 %i.abk, -1
  %i.acr = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.aco, ptr %i.acr, align 4, !tbaa !35
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  store i32 %i.acp, ptr %i.acs, align 4, !tbaa !33
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  store i32 %i.abr, ptr %i.act, align 4, !tbaa !50
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 12
  store i32 %i.acq, ptr %i.acu, align 4, !tbaa !51
  %i.acv = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.acw = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i.i428 = icmp ugt i32 %i.acv, %i.acw
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i428, label %add_col_elt.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acx = add i32 %i.acv, 5                      ; 2 uses
  store i32 %i.acx, ptr %i.s, align 4, !tbaa !17
  %i.acy = zext i32 %i.acx to i64
  %i.acz = shl nuw nsw i64 %i.acy, 3
  %i.ada = call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.acz) #18 ; 2 uses
  store ptr %i.ada, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit.i

add_col_elt.exit.i:                               ; preds = %bb.db, %bb.da
  %i.adb = phi ptr [ %i.ada, %bb.db ], [ %.pre.i.i, %bb.da ]
  %i.adc = add i32 %i.acw, 1
  store i32 %i.adc, ptr %i.t, align 8, !tbaa !19
  %i.add = zext i32 %i.acw to i64
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.add
  store ptr %i.acr, ptr %i.ade, align 8, !tbaa !44
  %i.adf = sub nsw i32 %i.abo, %i.acc
  %i.adg = call double @llvm.fmuladd.f64(double %i.ack, double 2.000000e-01, double 1.000000e+00)
  %i.adh = fptoui double %i.adg to i32
  %i.adi = add i32 %i.adf, %i.adh
  br label %greedy.exitthread-pre-split

bb.dc:                                            ; preds = %bb.cz
  %i.adj = add i32 %..i, 1
  br label %greedy.exitthread-pre-split

.lr.ph.i409.preheader:                            ; preds = %bb.cy
  %.neg606.i = sub i32 %i.ace, %..i               ; 2 uses
  br label %.lr.ph.i409

.lr.ph.i409:                                      ; preds = %.lr.ph.i409.preheader, %bb.dd
  %.0430532.i = phi i32 [ %i.adu, %bb.dd ], [ %i.acc, %.lr.ph.i409.preheader ] ; 3 uses
  %.0438531.i = phi i32 [ %i.adt, %bb.dd ], [ %i.abo, %.lr.ph.i409.preheader ] ; 3 uses
  %i.adk = zext nneg i32 %.0438531.i to i64
  %i.adl = getelementptr i8, ptr %i.aby, i64 %i.adk
  %i.adm = getelementptr i8, ptr %i.adl, i64 -1
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !20
  %i.ado = zext nneg i32 %.0430532.i to i64
  %i.adp = getelementptr i8, ptr %i.aca, i64 %i.ado
  %i.adq = getelementptr i8, ptr %i.adp, i64 -1
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !20
  %i.ads = icmp eq i8 %i.adn, %i.adr
  br i1 %i.ads, label %bb.dd, label %.critedge.thread.i410

bb.dd:                                            ; preds = %.lr.ph.i409
  %i.adt = add nsw i32 %.0438531.i, -1            ; 4 uses
  %i.adu = add nsw i32 %.0430532.i, -1
  %i.adv = icmp ne i32 %i.adt, 0
  %i.adw = icmp sgt i32 %.0430532.i, 1
  %or.cond.i426 = and i1 %i.adw, %i.adv
  br i1 %or.cond.i426, label %.lr.ph.i409, label %.critedge.i427, !llvm.loop !87

.critedge.i427:                                   ; preds = %bb.dd
  %i.adx = icmp eq i32 %i.adt, 0
  br i1 %i.adx, label %bb.de, label %.critedge.thread.i410

bb.de:                                            ; preds = %.critedge.i427
  %i.ady = add i32 %i.abt, 1
  %i.adz = add i32 %i.ady, %i.ace
  %i.aea = add i32 %i.abm, 1
  %i.aeb = add i32 %i.abk, -1
  %i.aec = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.adz, ptr %i.aec, align 4, !tbaa !35
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  store i32 %i.aea, ptr %i.aed, align 4, !tbaa !33
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i32 %i.abr, ptr %i.aee, align 4, !tbaa !50
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 12
  store i32 %i.aeb, ptr %i.aef, align 4, !tbaa !51
  %i.aeg = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.aeh = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i505.i = icmp ugt i32 %i.aeg, %i.aeh
  %.pre.i506.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i505.i, label %add_col_elt.exit508.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aei = add i32 %i.aeg, 5                      ; 2 uses
  store i32 %i.aei, ptr %i.s, align 4, !tbaa !17
  %i.aej = zext i32 %i.aei to i64
  %i.aek = shl nuw nsw i64 %i.aej, 3
  %i.ael = call ptr @xrealloc(ptr noundef %.pre.i506.i, i64 noundef %i.aek) #18 ; 2 uses
  store ptr %i.ael, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit508.i

add_col_elt.exit508.i:                            ; preds = %bb.df, %bb.de
  %i.aem = phi ptr [ %i.ael, %bb.df ], [ %.pre.i506.i, %bb.de ]
  %i.aen = add i32 %i.aeh, 1                      ; 2 uses
  store i32 %i.aen, ptr %i.t, align 8, !tbaa !19
  %i.aeo = zext i32 %i.aeh to i64
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %i.aeo
  store ptr %i.aec, ptr %i.aep, align 8, !tbaa !44
  br label %greedy.exit

.critedge.thread.i410:                            ; preds = %.lr.ph.i409, %.critedge.i427
  %.0438530.i = phi i32 [ %i.adt, %.critedge.i427 ], [ %.0438531.i, %.lr.ph.i409 ]
  %i.aeq = add i32 %..i, %i.acc                   ; 3 uses
  %i.aer = add i32 %i.aeq, 1
  %i.aes = zext i32 %i.aer to i64                 ; 2 uses
  %i.aet = shl nuw nsw i64 %i.aes, 2              ; 4 uses
  %i.aeu = call ptr @xmalloc(i64 noundef %i.aet) #18 ; 15 uses
  %i.aev = call ptr @xmalloc(i64 noundef %i.aet) #18 ; 13 uses
  %i.aew = sub i32 %i.abk, %i.abm                 ; 18 uses
  %i.aex = zext i32 %i.aeq to i64                 ; 4 uses
  %i.aey = add nuw nsw i64 %i.aex, 1              ; 2 uses
  %min.iters.check1045 = icmp ult i32 %i.aeq, 7
  %i.aez = ptrtoaddr ptr %i.aev to i64
  %i.afa = ptrtoaddr ptr %i.aeu to i64
  %i.afb = sub i64 %i.afa, %i.aez
  %diff.check1043 = icmp ugt i64 %i.afb, -32
  %or.cond1111 = select i1 %min.iters.check1045, i1 true, i1 %diff.check1043
  br i1 %or.cond1111, label %scalar.ph1044.preheader, label %vector.ph1046

vector.ph1046:                                    ; preds = %.critedge.thread.i410
  %n.vec1047 = and i64 %i.aey, 8589934584         ; 3 uses
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %i.aew, i64 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1046
  %index1051 = phi i64 [ 0, %vector.ph1046 ], [ %index.next1052, %vector.body1050 ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %index1051 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  store <4 x i32> %broadcast.splat1049, ptr %i.afc, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1049, ptr %i.afd, align 4, !tbaa !4
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %index1051 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  store <4 x i32> %broadcast.splat1049, ptr %i.afe, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1049, ptr %i.aff, align 4, !tbaa !4
  %index.next1052 = add nuw i64 %index1051, 8     ; 2 uses
  %i.afg = icmp eq i64 %index.next1052, %n.vec1047
  br i1 %i.afg, label %middle.block1053, label %vector.body1050, !llvm.loop !88

middle.block1053:                                 ; preds = %vector.body1050
  %cmp.n1054 = icmp eq i64 %i.aey, %n.vec1047
  br i1 %cmp.n1054, label %.lr.ph536.preheader.i, label %scalar.ph1044.preheader

scalar.ph1044.preheader:                          ; preds = %.critedge.thread.i410, %middle.block1053
  %indvars.iv.i411.ph = phi i64 [ 0, %.critedge.thread.i410 ], [ %n.vec1047, %middle.block1053 ] ; 3 uses
  %i.afh = add nuw nsw i64 %i.aex, 1
  %i.afi = sub nsw i64 %i.aex, %indvars.iv.i411.ph
  %xtraiter1194 = and i64 %i.afh, 3               ; 2 uses
  %lcmp.mod1195.not = icmp eq i64 %xtraiter1194, 0
  br i1 %lcmp.mod1195.not, label %scalar.ph1044.prol.loopexit, label %scalar.ph1044.prol

scalar.ph1044.prol:                               ; preds = %scalar.ph1044.preheader, %scalar.ph1044.prol
  %indvars.iv.i411.prol = phi i64 [ %indvars.iv.next.i412.prol, %scalar.ph1044.prol ], [ %indvars.iv.i411.ph, %scalar.ph1044.preheader ] ; 3 uses
  %prol.iter1196 = phi i64 [ %prol.iter1196.next, %scalar.ph1044.prol ], [ 0, %scalar.ph1044.preheader ]
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.i411.prol
  store i32 %i.aew, ptr %i.afj, align 4, !tbaa !4
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv.i411.prol
  store i32 %i.aew, ptr %i.afk, align 4, !tbaa !4
  %indvars.iv.next.i412.prol = add nuw nsw i64 %indvars.iv.i411.prol, 1 ; 2 uses
  %prol.iter1196.next = add i64 %prol.iter1196, 1 ; 2 uses
  %prol.iter1196.cmp.not = icmp eq i64 %prol.iter1196.next, %xtraiter1194
  br i1 %prol.iter1196.cmp.not, label %scalar.ph1044.prol.loopexit, label %scalar.ph1044.prol, !llvm.loop !89

scalar.ph1044.prol.loopexit:                      ; preds = %scalar.ph1044.prol, %scalar.ph1044.preheader
  %indvars.iv.i411.unr = phi i64 [ %indvars.iv.i411.ph, %scalar.ph1044.preheader ], [ %indvars.iv.next.i412.prol, %scalar.ph1044.prol ]
  %i.afl = icmp ult i64 %i.afi, 3
  br i1 %i.afl, label %.lr.ph536.preheader.i, label %scalar.ph1044

scalar.ph1044:                                    ; preds = %scalar.ph1044.prol.loopexit, %scalar.ph1044
  %indvars.iv.i411 = phi i64 [ %indvars.iv.next.i412.3, %scalar.ph1044 ], [ %indvars.iv.i411.unr, %scalar.ph1044.prol.loopexit ] ; 6 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.i411
  store i32 %i.aew, ptr %i.afm, align 4, !tbaa !4
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv.i411
  store i32 %i.aew, ptr %i.afn, align 4, !tbaa !4
  %indvars.iv.next.i412 = add nuw nsw i64 %indvars.iv.i411, 1 ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.next.i412
  store i32 %i.aew, ptr %i.afo, align 4, !tbaa !4
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv.next.i412
  store i32 %i.aew, ptr %i.afp, align 4, !tbaa !4
  %indvars.iv.next.i412.1 = add nuw nsw i64 %indvars.iv.i411, 2 ; 2 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.next.i412.1
  store i32 %i.aew, ptr %i.afq, align 4, !tbaa !4
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv.next.i412.1
  store i32 %i.aew, ptr %i.afr, align 4, !tbaa !4
  %indvars.iv.next.i412.2 = add nuw nsw i64 %indvars.iv.i411, 3 ; 3 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.next.i412.2
  store i32 %i.aew, ptr %i.afs, align 4, !tbaa !4
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv.next.i412.2
  store i32 %i.aew, ptr %i.aft, align 4, !tbaa !4
  %indvars.iv.next.i412.3 = add nuw nsw i64 %indvars.iv.i411, 4
  %exitcond747.not.3 = icmp eq i64 %indvars.iv.next.i412.2, %i.aex
  br i1 %exitcond747.not.3, label %.lr.ph536.preheader.i, label %scalar.ph1044, !llvm.loop !90

.lr.ph536.preheader.i:                            ; preds = %scalar.ph1044.prol.loopexit, %scalar.ph1044, %middle.block1053
  %i.afu = sext i32 %..i to i64                   ; 4 uses
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.afu ; 3 uses
  store i32 %.0438530.i, ptr %i.afv, align 4, !tbaa !4
  %i.afw = add i32 %..i, -1
  %i.afx = add i32 %..i, 1                        ; 4 uses
  %invariant.umin.i = call i32 @llvm.umin.i32(i32 %i.acc, i32 range(i32 1, 501) %i.abo) ; 2 uses
  %wide.trip.count.i413 = zext nneg i32 %invariant.umin.i to i64
  br label %.lr.ph536.i

.lr.ph536.i:                                      ; preds = %bb.dg, %.lr.ph536.preheader.i
  %indvars.iv612.i = phi i64 [ 0, %.lr.ph536.preheader.i ], [ %indvars.iv.next613.i, %bb.dg ] ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aby, i64 %indvars.iv612.i
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !20
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aca, i64 %indvars.iv612.i
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !20
  %i.agc = icmp eq i8 %i.afz, %i.agb
  br i1 %i.agc, label %bb.dg, label %.critedge3.split.loop.exit.i

bb.dg:                                            ; preds = %.lr.ph536.i
  %indvars.iv.next613.i = add nuw nsw i64 %indvars.iv612.i, 1 ; 2 uses
  %exitcond.not.i425 = icmp eq i64 %indvars.iv.next613.i, %wide.trip.count.i413
  br i1 %exitcond.not.i425, label %.critedge3.i, label %.lr.ph536.i, !llvm.loop !91

.critedge3.split.loop.exit.i:                     ; preds = %.lr.ph536.i
  %11 = trunc nuw nsw i64 %indvars.iv612.i to i32
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %bb.dg, %.critedge3.split.loop.exit.i
  %.1439.lcssa.i = phi i32 [ %11, %.critedge3.split.loop.exit.i ], [ %invariant.umin.i, %bb.dg ] ; 2 uses
  %i.agd = icmp eq i32 %.1439.lcssa.i, %i.abo
  br i1 %i.agd, label %bb.dh, label %.critedge3.thread.i

bb.dh:                                            ; preds = %.critedge3.i
  %i.age = add i32 %i.abt, 1
  %i.agf = add i32 %i.abm, 1
  %i.agg = add i32 %i.abt, %i.abo
  %i.agh = add i32 %i.abk, -1
  %i.agi = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.age, ptr %i.agi, align 4, !tbaa !35
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  store i32 %i.agf, ptr %i.agj, align 4, !tbaa !33
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  store i32 %i.agg, ptr %i.agk, align 4, !tbaa !50
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agi, i64 12
  store i32 %i.agh, ptr %i.agl, align 4, !tbaa !51
  %i.agm = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.agn = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i509.i = icmp ugt i32 %i.agm, %i.agn
  %.pre.i510.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i509.i, label %add_col_elt.exit512.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ago = add i32 %i.agm, 5                      ; 2 uses
  store i32 %i.ago, ptr %i.s, align 4, !tbaa !17
  %i.agp = zext i32 %i.ago to i64
  %i.agq = shl nuw nsw i64 %i.agp, 3
  %i.agr = call ptr @xrealloc(ptr noundef %.pre.i510.i, i64 noundef %i.agq) #18 ; 2 uses
  store ptr %i.agr, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit512.i

add_col_elt.exit512.i:                            ; preds = %bb.di, %bb.dh
  %i.ags = phi ptr [ %i.agr, %bb.di ], [ %.pre.i510.i, %bb.dh ]
  %i.agt = add i32 %i.agn, 1
  store i32 %i.agt, ptr %i.t, align 8, !tbaa !19
  %i.agu = zext i32 %i.agn to i64
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %i.agu
  store ptr %i.agi, ptr %i.agv, align 8, !tbaa !44
  call void @free(ptr noundef %i.aeu) #18
  call void @free(ptr noundef %i.aev) #18
  br label %greedy.exitthread-pre-split

.critedge3.thread.i:                              ; preds = %.critedge3.i
  %i.agw = call ptr @xmalloc(i64 noundef %i.aet) #18 ; 8 uses
  %i.agx = call ptr @xmalloc(i64 noundef %i.aet) #18 ; 6 uses
  %umax.i414 = call i64 @llvm.umax.i64(i64 %i.aes, i64 1)
  %i.agy = shl nuw nsw i64 %umax.i414, 2          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agw, i8 -1, i64 %i.agy, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agx, i8 -1, i64 %i.agy, i1 false), !tbaa !4
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.afu ; 3 uses
  store i32 %.1439.lcssa.i, ptr %i.agz, align 4, !tbaa !4
  %i.aha = zext i32 %i.afx to i64
  %i.ahb = shl nuw nsw i64 %i.aha, 2              ; 4 uses
  %i.ahc = call ptr @xmalloc(i64 noundef %i.ahb) #18 ; 15 uses
  %i.ahd = call ptr @xmalloc(i64 noundef %i.ahb) #18 ; 15 uses
  %i.ahe = call ptr @xmalloc(i64 noundef %i.ahb) #18 ; 7 uses
  %i.ahf = call ptr @xmalloc(i64 noundef %i.ahb) #18 ; 7 uses
  %.not481541.i = icmp eq i32 %..i, 0
  br i1 %.not481541.i, label %._crit_edge.thread.i, label %.lr.ph543.i

._crit_edge.thread.i:                             ; preds = %.critedge3.thread.i
  %i.ahg = load i32, ptr %i.afv, align 4, !tbaa !4
  store i32 %i.ahg, ptr %i.ahd, align 4, !tbaa !4
  store i32 0, ptr %i.ahf, align 4, !tbaa !4
  %i.ahh = load i32, ptr %i.agz, align 4, !tbaa !4
  store i32 %i.ahh, ptr %i.ahc, align 4, !tbaa !4
  store i32 0, ptr %i.ahe, align 4, !tbaa !4
  br label %._crit_edge600.i

.lr.ph543.i:                                      ; preds = %.critedge3.thread.i
  %i.ahi = ptrtoaddr ptr %i.ahd to i64
  %i.ahj = ptrtoaddr ptr %i.ahc to i64
  %umax622.i = call i32 @llvm.umax.i32(i32 %i.afx, i32 2)
  %wide.trip.count623.i = zext i32 %umax622.i to i64 ; 4 uses
  %i.ahk = add nsw i64 %wide.trip.count623.i, -1  ; 2 uses
  %min.iters.check1033 = icmp ult i32 %i.afx, 9
  %i.ahl = sub i64 %i.ahi, %i.ahj
  %diff.check = icmp ugt i64 %i.ahl, -32
  %or.cond1112 = select i1 %min.iters.check1033, i1 true, i1 %diff.check
  br i1 %or.cond1112, label %scalar.ph1032.preheader, label %vector.ph1034

vector.ph1034:                                    ; preds = %.lr.ph543.i
  %n.vec1035 = and i64 %i.ahk, -8                 ; 3 uses
  %i.ahm = or disjoint i64 %n.vec1035, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aew, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1034
  %index1037 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1038, %vector.body1036 ] ; 2 uses
  %i.ahn = or disjoint i64 %index1037, 1          ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ahn ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aho, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ahp, align 4, !tbaa !4
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.ahn ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ahq, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.ahr, align 4, !tbaa !4
  %index.next1038 = add nuw i64 %index1037, 8     ; 2 uses
  %i.ahs = icmp eq i64 %index.next1038, %n.vec1035
  br i1 %i.ahs, label %middle.block1039, label %vector.body1036, !llvm.loop !92

middle.block1039:                                 ; preds = %vector.body1036
  %cmp.n1040 = icmp eq i64 %i.ahk, %n.vec1035
  br i1 %cmp.n1040, label %.preheader528.lr.ph.i, label %scalar.ph1032.preheader

scalar.ph1032.preheader:                          ; preds = %.lr.ph543.i, %middle.block1039
  %indvars.iv619.i.ph = phi i64 [ 1, %.lr.ph543.i ], [ %i.ahm, %middle.block1039 ] ; 4 uses
  %i.aht = sub nsw i64 %wide.trip.count623.i, %indvars.iv619.i.ph
  %xtraiter1197 = and i64 %i.aht, 3               ; 2 uses
  %lcmp.mod1198.not = icmp eq i64 %xtraiter1197, 0
  br i1 %lcmp.mod1198.not, label %scalar.ph1032.prol.loopexit, label %scalar.ph1032.prol

scalar.ph1032.prol:                               ; preds = %scalar.ph1032.preheader, %scalar.ph1032.prol
  %indvars.iv619.i.prol = phi i64 [ %indvars.iv.next620.i.prol, %scalar.ph1032.prol ], [ %indvars.iv619.i.ph, %scalar.ph1032.preheader ] ; 3 uses
  %prol.iter1199 = phi i64 [ %prol.iter1199.next, %scalar.ph1032.prol ], [ 0, %scalar.ph1032.preheader ]
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv619.i.prol
  store i32 %i.aew, ptr %i.ahu, align 4, !tbaa !4
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv619.i.prol
  store i32 -1, ptr %i.ahv, align 4, !tbaa !4
  %indvars.iv.next620.i.prol = add nuw nsw i64 %indvars.iv619.i.prol, 1 ; 2 uses
  %prol.iter1199.next = add i64 %prol.iter1199, 1 ; 2 uses
  %prol.iter1199.cmp.not = icmp eq i64 %prol.iter1199.next, %xtraiter1197
  br i1 %prol.iter1199.cmp.not, label %scalar.ph1032.prol.loopexit, label %scalar.ph1032.prol, !llvm.loop !93

scalar.ph1032.prol.loopexit:                      ; preds = %scalar.ph1032.prol, %scalar.ph1032.preheader
  %indvars.iv619.i.unr = phi i64 [ %indvars.iv619.i.ph, %scalar.ph1032.preheader ], [ %indvars.iv.next620.i.prol, %scalar.ph1032.prol ]
  %i.ahw = sub nsw i64 %indvars.iv619.i.ph, %wide.trip.count623.i
  %i.ahx = icmp ugt i64 %i.ahw, -4
  br i1 %i.ahx, label %.preheader528.lr.ph.i, label %scalar.ph1032

scalar.ph1032:                                    ; preds = %scalar.ph1032.prol.loopexit, %scalar.ph1032
  %indvars.iv619.i = phi i64 [ %indvars.iv.next620.i.3, %scalar.ph1032 ], [ %indvars.iv619.i.unr, %scalar.ph1032.prol.loopexit ] ; 6 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv619.i
  store i32 %i.aew, ptr %i.ahy, align 4, !tbaa !4
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv619.i
  store i32 -1, ptr %i.ahz, align 4, !tbaa !4
  %indvars.iv.next620.i = add nuw nsw i64 %indvars.iv619.i, 1 ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv.next620.i
  store i32 %i.aew, ptr %i.aia, align 4, !tbaa !4
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next620.i
  store i32 -1, ptr %i.aib, align 4, !tbaa !4
  %indvars.iv.next620.i.1 = add nuw nsw i64 %indvars.iv619.i, 2 ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv.next620.i.1
  store i32 %i.aew, ptr %i.aic, align 4, !tbaa !4
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next620.i.1
  store i32 -1, ptr %i.aid, align 4, !tbaa !4
  %indvars.iv.next620.i.2 = add nuw nsw i64 %indvars.iv619.i, 3 ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv.next620.i.2
  store i32 %i.aew, ptr %i.aie, align 4, !tbaa !4
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next620.i.2
  store i32 -1, ptr %i.aif, align 4, !tbaa !4
  %indvars.iv.next620.i.3 = add nuw nsw i64 %indvars.iv619.i, 4 ; 2 uses
  %exitcond624.i.3 = icmp eq i64 %indvars.iv.next620.i.3, %wide.trip.count623.i
  br i1 %exitcond624.i.3, label %.preheader528.lr.ph.i, label %scalar.ph1032, !llvm.loop !94

.preheader528.lr.ph.i:                            ; preds = %scalar.ph1032.prol.loopexit, %scalar.ph1032, %middle.block1039
  %i.aig = load i32, ptr %i.afv, align 4, !tbaa !4
  store i32 %i.aig, ptr %i.ahd, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahf, align 4, !tbaa !4
  %i.aih = load i32, ptr %i.agz, align 4, !tbaa !4
  store i32 %i.aih, ptr %i.ahc, align 4, !tbaa !4
  store i32 %..i, ptr %i.ahe, align 4, !tbaa !4
  %i.aii = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.afu ; 2 uses
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %i.afu ; 2 uses
  %i.aik = sext i32 %i.afw to i64
  %i.ail = add i32 %..i, 2
  %i.aim = zext nneg i32 %i.acc to i64
  %12 = zext nneg i32 %i.abo to i64
  br label %.preheader528.i

.preheader528.i:                                  ; preds = %bb.el, %.preheader528.lr.ph.i
  %indvars.iv748 = phi i32 [ %indvars.iv.next749, %bb.el ], [ 2, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv644.i = phi i32 [ %indvars.iv.next645.i, %bb.el ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv631.i = phi i32 [ %indvars.iv.next632.i, %bb.el ], [ %i.ail, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars.iv625.i = phi i64 [ %indvars.iv.next626.i, %bb.el ], [ %i.aik, %.preheader528.lr.ph.i ] ; 6 uses
  %.0436597.i = phi i32 [ %i.akz, %bb.el ], [ %i.afx, %.preheader528.lr.ph.i ] ; 2 uses
  %.0442595.i = phi i32 [ %.2444.i, %bb.el ], [ -1, %.preheader528.lr.ph.i ] ; 3 uses
  %.0445594.i = phi i32 [ %.2447.i, %bb.el ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %.1451593.i = phi i32 [ %i.anj, %bb.el ], [ 1, %.preheader528.lr.ph.i ] ; 13 uses
  %.0454592.i = phi i32 [ %.2456.i, %bb.el ], [ %..i, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars669.i = trunc i64 %indvars.iv625.i to i32
  %.not486552.i = icmp slt i32 %.0436597.i, %indvars669.i ; 2 uses
  br i1 %.not486552.i, label %._crit_edge555.thread.i, label %.lr.ph554.i

._crit_edge555.thread.i:                          ; preds = %.preheader528.i
  %i.ain = load i32, ptr %i.aii, align 4, !tbaa !4
  %i.aio = zext i32 %.1451593.i to i64            ; 3 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.aio ; 2 uses
  store i32 %i.ain, ptr %i.aip, align 4, !tbaa !4
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.aio
  store i32 %..i, ptr %i.aiq, align 4, !tbaa !4
  br label %.preheader527.i

.lr.ph554.i:                                      ; preds = %.preheader528.i
  %i.air = sub i32 %..i, %.1451593.i
  %i.ais = add i32 %.1451593.i, %..i
  %sext.i = sext i32 %i.ais to i64                ; 2 uses
  %sext629.i = sext i32 %i.air to i64             ; 2 uses
  %i.ait = getelementptr [4 x i8], ptr %i.aeu, i64 %sext.i
  %i.aiu = getelementptr i8, ptr %i.ait, i64 -4
  %i.aiv = getelementptr [4 x i8], ptr %i.aeu, i64 %sext629.i
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 4
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge7.i415, %.lr.ph554.i
  %indvars.iv627.i = phi i64 [ %indvars.iv625.i, %.lr.ph554.i ], [ %indvars.iv.next628.i, %.critedge7.i415 ] ; 6 uses
  %i.aix = icmp eq i64 %indvars.iv627.i, %sext629.i
  br i1 %i.aix, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.aiy = load i32, ptr %i.aiw, align 4, !tbaa !4
  br label %bb.dq

bb.dl:                                            ; preds = %bb.dj
  %i.aiz = icmp eq i64 %indvars.iv627.i, %sext.i
  br i1 %i.aiz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.aja = load i32, ptr %i.aiu, align 4, !tbaa !4
  %i.ajb = add nsw i32 %i.aja, -1
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %indvars.iv627.i ; 4 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !4 ; 3 uses
  %i.aje = getelementptr i8, ptr %i.ajc, i64 4
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !4 ; 3 uses
  %.not497.i = icmp sgt i32 %i.ajd, %i.ajf
  br i1 %.not497.i, label %._crit_edge670.i, label %bb.do

._crit_edge670.i:                                 ; preds = %bb.dn
  %.phi.trans.insert.i423 = getelementptr i8, ptr %i.ajc, i64 -4
  %.pre.i424 = load i32, ptr %.phi.trans.insert.i423, align 4, !tbaa !4
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ajg = add nsw i32 %i.ajd, -1                 ; 2 uses
  %i.ajh = getelementptr i8, ptr %i.ajc, i64 -4
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !4 ; 2 uses
  %.not498.i = icmp sgt i32 %i.ajg, %i.aji
  br i1 %.not498.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do, %._crit_edge670.i
  %i.ajj = phi i32 [ %.pre.i424, %._crit_edge670.i ], [ %i.aji, %bb.do ] ; 3 uses
  %.not499.not.i = icmp slt i32 %i.ajj, %i.ajf
  %.not500.not.i = icmp slt i32 %i.ajj, %i.ajd
  %or.cond521.i = and i1 %.not499.not.i, %.not500.not.i
  %i.ajk = add nsw i32 %i.ajj, -1
  %spec.select.i422 = select i1 %or.cond521.i, i32 %i.ajk, i32 %i.ajf
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm, %bb.dk
  %.2440.i = phi i32 [ %i.aiy, %bb.dk ], [ %i.ajb, %bb.dm ], [ %i.ajg, %bb.do ], [ %spec.select.i422, %bb.dp ] ; 4 uses
  %i.ajl = trunc nsw i64 %indvars.iv627.i to i32
  %i.ajm = add i32 %.neg606.i, %i.ajl
  %i.ajn = add i32 %i.ajm, %.2440.i               ; 2 uses
  %i.ajo = icmp sgt i32 %.2440.i, 0
  %i.ajp = icmp sgt i32 %i.ajn, 0
  %or.cond5544.i = select i1 %i.ajo, i1 %i.ajp, i1 false
  br i1 %or.cond5544.i, label %.lr.ph548.i, label %.critedge7.i415

.lr.ph548.i:                                      ; preds = %bb.dq, %bb.dr
  %.1546.i = phi i32 [ %i.aka, %bb.dr ], [ %i.ajn, %bb.dq ] ; 3 uses
  %.3441545.i = phi i32 [ %i.ajz, %bb.dr ], [ %.2440.i, %bb.dq ] ; 4 uses
  %i.ajq = zext nneg i32 %.3441545.i to i64
  %i.ajr = getelementptr i8, ptr %i.aby, i64 %i.ajq
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 -1
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !20
  %i.aju = zext nneg i32 %.1546.i to i64
  %i.ajv = getelementptr i8, ptr %i.aca, i64 %i.aju
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 -1
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !20
  %i.ajy = icmp eq i8 %i.ajt, %i.ajx
  br i1 %i.ajy, label %bb.dr, label %.critedge7.i415

bb.dr:                                            ; preds = %.lr.ph548.i
  %i.ajz = add nsw i32 %.3441545.i, -1            ; 2 uses
  %i.aka = add nsw i32 %.1546.i, -1
  %i.akb = icmp sgt i32 %.3441545.i, 1
  %i.akc = icmp sgt i32 %.1546.i, 1
  %or.cond5.i = and i1 %i.akc, %i.akb
  br i1 %or.cond5.i, label %.lr.ph548.i, label %.critedge7.i415, !llvm.loop !95

.critedge7.i415:                                  ; preds = %bb.dr, %.lr.ph548.i, %bb.dq
  %.3441.lcssa.i = phi i32 [ %.2440.i, %bb.dq ], [ %.3441545.i, %.lr.ph548.i ], [ %i.ajz, %bb.dr ]
  %i.akd = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %indvars.iv627.i
  store i32 %.3441.lcssa.i, ptr %i.akd, align 4, !tbaa !4
  %indvars.iv.next628.i = add nsw i64 %indvars.iv627.i, 1 ; 2 uses
  %lftr.wideiv.i416 = trunc i64 %indvars.iv.next628.i to i32
  %exitcond633.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv.i416
  br i1 %exitcond633.not.i, label %._crit_edge555.i, label %bb.dj, !llvm.loop !96

._crit_edge555.i:                                 ; preds = %.critedge7.i415
  %i.ake = load i32, ptr %i.aii, align 4, !tbaa !4
  %i.akf = zext i32 %.1451593.i to i64            ; 3 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.akf ; 4 uses
  store i32 %i.ake, ptr %i.akg, align 4, !tbaa !4
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.akf ; 2 uses
  store i32 %..i, ptr %i.akh, align 4, !tbaa !4
  br label %.lr.ph559.i

.preheader527.i:                                  ; preds = %bb.dt, %._crit_edge555.thread.i
  %i.aki = phi ptr [ %i.aip, %._crit_edge555.thread.i ], [ %i.akg, %bb.dt ]
  %i.akj = phi i64 [ %i.aio, %._crit_edge555.thread.i ], [ %i.akf, %bb.dt ] ; 5 uses
  %.not608.i = icmp eq i32 %.1451593.i, 0
  br i1 %.not608.i, label %._crit_edge562.i, label %.lr.ph561.i

.lr.ph561.i:                                      ; preds = %.preheader527.i
  %i.akk = load i32, ptr %i.aki, align 4, !tbaa !4
  %i.akl = icmp slt i32 %.0442595.i, 0
  br label %bb.du

.lr.ph559.i:                                      ; preds = %bb.dt, %._crit_edge555.i
  %indvars.iv634.i = phi i64 [ %indvars.iv.next635.i, %bb.dt ], [ %indvars.iv625.i, %._crit_edge555.i ] ; 4 uses
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %indvars.iv634.i ; 2 uses
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !4
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %indvars.iv634.i ; 2 uses
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !4
  store i32 %i.aew, ptr %i.akm, align 4, !tbaa !4
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !4 ; 2 uses
  %i.akq = load i32, ptr %i.akg, align 4, !tbaa !4
  %i.akr = icmp slt i32 %i.akp, %i.akq
  br i1 %i.akr, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph559.i
  store i32 %i.akp, ptr %i.akg, align 4, !tbaa !4
  %i.aks = trunc nsw i64 %indvars.iv634.i to i32
  store i32 %i.aks, ptr %i.akh, align 4, !tbaa !4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.lr.ph559.i
  %indvars.iv.next635.i = add nsw i64 %indvars.iv634.i, 1 ; 2 uses
  %lftr.wideiv637.i = trunc i64 %indvars.iv.next635.i to i32
  %exitcond638.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv637.i
  br i1 %exitcond638.not.i, label %.preheader527.i, label %.lr.ph559.i, !llvm.loop !97

bb.du:                                            ; preds = %bb.dw, %.lr.ph561.i
  %indvars.iv639.i = phi i64 [ 0, %.lr.ph561.i ], [ %indvars.iv.next640.i, %bb.dw ] ; 3 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv639.i
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !4
  %.not488.i = icmp sgt i32 %i.akk, %i.aku
  br i1 %.not488.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.akv = trunc nuw i64 %indvars.iv639.i to i32  ; 2 uses
  %i.akw = add i32 %.1451593.i, %i.akv            ; 3 uses
  %i.akx = icmp ugt i32 %.0454592.i, %i.akw
  %i.aky = icmp eq i32 %.0454592.i, %i.akw
  %or.cond9.i417 = select i1 %i.aky, i1 %i.akl, i1 false
  %or.cond605.i = select i1 %i.akx, i1 true, i1 %or.cond9.i417
  br i1 %or.cond605.i, label %._crit_edge562.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %indvars.iv.next640.i = add nuw nsw i64 %indvars.iv639.i, 1 ; 2 uses
  %exitcond643.not.i = icmp eq i64 %indvars.iv.next640.i, %i.akj
  br i1 %exitcond643.not.i, label %._crit_edge562.i, label %bb.du, !llvm.loop !98

._crit_edge562.i:                                 ; preds = %bb.dw, %bb.dv, %.preheader527.i
  %.1455.i = phi i32 [ %.0454592.i, %.preheader527.i ], [ %i.akw, %bb.dv ], [ %.0454592.i, %bb.dw ] ; 3 uses
  %.1446.i = phi i32 [ %.0445594.i, %.preheader527.i ], [ %.1451593.i, %bb.dv ], [ %.0445594.i, %bb.dw ]
  %.1443.i = phi i32 [ %.0442595.i, %.preheader527.i ], [ %i.akv, %bb.dv ], [ %.0442595.i, %bb.dw ] ; 2 uses
  %indvars.iv.next626.i = add i64 %indvars.iv625.i, -1
  %i.akz = add nsw i32 %.0436597.i, 1
  br i1 %.not486552.i, label %._crit_edge585.thread.i, label %.lr.ph584.i

._crit_edge585.thread.i:                          ; preds = %._crit_edge562.i
  %i.ala = load i32, ptr %i.aij, align 4, !tbaa !4
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.akj ; 2 uses
  store i32 %i.ala, ptr %i.alb, align 4, !tbaa !4
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.akj
  store i32 %..i, ptr %i.alc, align 4, !tbaa !4
  br label %.preheader526.i

.lr.ph584.i:                                      ; preds = %._crit_edge562.i
  %i.ald = sub nsw i32 %..i, %.1451593.i
  %i.ale = add nsw i32 %.1451593.i, %..i
  %sext657.i = sext i32 %i.ale to i64             ; 2 uses
  %sext658.i = sext i32 %i.ald to i64             ; 2 uses
  %i.alf = getelementptr [4 x i8], ptr %i.agw, i64 %sext657.i
  %i.alg = getelementptr i8, ptr %i.alf, i64 -4
  %i.alh = getelementptr [4 x i8], ptr %i.agw, i64 %sext658.i
  %i.ali = getelementptr i8, ptr %i.alh, i64 4
  br label %bb.dx

bb.dx:                                            ; preds = %.critedge11.i418, %.lr.ph584.i
  %indvars.iv655.i = phi i64 [ %indvars.iv625.i, %.lr.ph584.i ], [ %indvars.iv.next656.i, %.critedge11.i418 ] ; 6 uses
  %indvars.iv646.i = phi i32 [ %indvars.iv644.i, %.lr.ph584.i ], [ %indvars.iv.next647.i, %.critedge11.i418 ] ; 2 uses
  %i.alj = icmp eq i64 %indvars.iv655.i, %sext658.i
  br i1 %i.alj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.alk = load i32, ptr %i.ali, align 4, !tbaa !4
  %i.all = add nsw i32 %i.alk, 1
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %i.alm = icmp eq i64 %indvars.iv655.i, %sext657.i
  br i1 %i.alm, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aln = load i32, ptr %i.alg, align 4, !tbaa !4
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dz
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %indvars.iv655.i ; 4 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !4 ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alo, i64 4
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !4 ; 3 uses
  %.not493.i = icmp slt i32 %i.alp, %i.alr
  br i1 %.not493.i, label %._crit_edge671.i, label %bb.ec

._crit_edge671.i:                                 ; preds = %bb.eb
  %.phi.trans.insert672.i = getelementptr i8, ptr %i.alo, i64 -4
  %.pre673.i = load i32, ptr %.phi.trans.insert672.i, align 4, !tbaa !4
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.als = add nsw i32 %i.alp, 1                  ; 2 uses
  %i.alt = getelementptr i8, ptr %i.alo, i64 -4
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !4 ; 2 uses
  %.not494.i = icmp slt i32 %i.als, %i.alu
  br i1 %.not494.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec, %._crit_edge671.i
  %i.alv = phi i32 [ %.pre673.i, %._crit_edge671.i ], [ %i.alu, %bb.ec ] ; 2 uses
  %i.alw = add nsw i32 %i.alr, 1
  %.not496.i = icmp slt i32 %i.alr, %i.alp
  %i.alx = call i32 @llvm.smax.i32(i32 %i.alw, i32 %i.alv)
  %spec.select523.i = select i1 %.not496.i, i32 %i.alv, i32 %i.alx
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.ea, %bb.dy
  %.4.i = phi i32 [ %i.all, %bb.dy ], [ %i.aln, %bb.ea ], [ %spec.select523.i, %bb.ed ], [ %i.als, %bb.ec ] ; 7 uses
  %i.aly = icmp sgt i32 %.4.i, -1
  br i1 %i.aly, label %.preheader.i421, label %.critedge11.i418

.preheader.i421:                                  ; preds = %bb.ee
  %i.alz = trunc nsw i64 %indvars.iv655.i to i32
  %i.ama = sub i32 %i.alz, %..i
  %i.amb = add i32 %i.ama, %.4.i
  %i.amc = icmp ult i32 %.4.i, %i.abo
  %i.amd = icmp ult i32 %i.amb, %i.acc
  %or.cond504574.i = select i1 %i.amc, i1 %i.amd, i1 false
  br i1 %or.cond504574.i, label %.lr.ph577.preheader.i, label %.critedge11.i418

.lr.ph577.preheader.i:                            ; preds = %.preheader.i421
  %i.ame = add i32 %.4.i, %indvars.iv646.i
  %i.amf = zext i32 %i.ame to i64
  %i.amg = zext nneg i32 %.4.i to i64
  br label %.lr.ph577.i

.lr.ph577.i:                                      ; preds = %bb.ef, %.lr.ph577.preheader.i
  %indvars.iv650.i = phi i64 [ %i.amg, %.lr.ph577.preheader.i ], [ %indvars.iv.next651.i, %bb.ef ] ; 3 uses
  %indvars.iv648.i = phi i64 [ %i.amf, %.lr.ph577.preheader.i ], [ %indvars.iv.next649.i, %bb.ef ] ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.aby, i64 %indvars.iv650.i
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !20
  %i.amj = getelementptr inbounds nuw i8, ptr %i.aca, i64 %indvars.iv648.i
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !20
  %i.aml = icmp eq i8 %i.ami, %i.amk
  br i1 %i.aml, label %bb.ef, label %.critedge11.loopexit.i

bb.ef:                                            ; preds = %.lr.ph577.i
  %indvars.iv.next651.i = add nuw nsw i64 %indvars.iv650.i, 1 ; 3 uses
  %indvars.iv.next649.i = add nuw nsw i64 %indvars.iv648.i, 1 ; 2 uses
  %i.amm = icmp samesign ult i64 %indvars.iv.next651.i, %12
  %i.amn = icmp samesign ult i64 %indvars.iv.next649.i, %i.aim
  %or.cond504.i = select i1 %i.amm, i1 %i.amn, i1 false
  br i1 %or.cond504.i, label %.lr.ph577.i, label %.critedge11.loopexit.i, !llvm.loop !99

.critedge11.loopexit.i:                           ; preds = %bb.ef, %.lr.ph577.i
  %.6.ph.in.i = phi i64 [ %indvars.iv650.i, %.lr.ph577.i ], [ %indvars.iv.next651.i, %bb.ef ]
  %.6.ph.i = trunc nuw nsw i64 %.6.ph.in.i to i32
  br label %.critedge11.i418

.critedge11.i418:                                 ; preds = %.critedge11.loopexit.i, %.preheader.i421, %bb.ee
  %.6.i = phi i32 [ %.4.i, %bb.ee ], [ %.4.i, %.preheader.i421 ], [ %.6.ph.i, %.critedge11.loopexit.i ]
  %i.amo = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %indvars.iv655.i
  store i32 %.6.i, ptr %i.amo, align 4, !tbaa !4
  %indvars.iv.next656.i = add nsw i64 %indvars.iv655.i, 1
  %indvars.iv.next647.i = add i32 %indvars.iv646.i, 1 ; 2 uses
  %exitcond750 = icmp eq i32 %indvars.iv.next647.i, %indvars.iv748
  br i1 %exitcond750, label %._crit_edge585.i, label %bb.dx, !llvm.loop !100

._crit_edge585.i:                                 ; preds = %.critedge11.i418
  %i.amp = load i32, ptr %i.aij, align 4, !tbaa !4
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.akj ; 4 uses
  store i32 %i.amp, ptr %i.amq, align 4, !tbaa !4
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.akj ; 2 uses
  store i32 %..i, ptr %i.amr, align 4, !tbaa !4
  br label %.lr.ph589.i

.preheader526.i:                                  ; preds = %bb.eh, %._crit_edge585.thread.i
  %i.ams = phi ptr [ %i.alb, %._crit_edge585.thread.i ], [ %i.amq, %bb.eh ]
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !4
  %i.amu = icmp slt i32 %.1443.i, 0
  br label %bb.ei

.lr.ph589.i:                                      ; preds = %bb.eh, %._crit_edge585.i
  %indvars.iv662.i = phi i64 [ %indvars.iv.next663.i, %bb.eh ], [ %indvars.iv625.i, %._crit_edge585.i ] ; 4 uses
  %i.amv = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %indvars.iv662.i ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !4
  %i.amx = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %indvars.iv662.i ; 2 uses
  store i32 %i.amw, ptr %i.amx, align 4, !tbaa !4
  store i32 -1, ptr %i.amv, align 4, !tbaa !4
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !4 ; 2 uses
  %i.amz = load i32, ptr %i.amq, align 4, !tbaa !4
  %i.ana = icmp sgt i32 %i.amy, %i.amz
  br i1 %i.ana, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph589.i
  store i32 %i.amy, ptr %i.amq, align 4, !tbaa !4
  %i.anb = trunc nsw i64 %indvars.iv662.i to i32
  store i32 %i.anb, ptr %i.amr, align 4, !tbaa !4
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph589.i
  %indvars.iv.next663.i = add nsw i64 %indvars.iv662.i, 1 ; 2 uses
  %lftr.wideiv665.i = trunc i64 %indvars.iv.next663.i to i32
  %exitcond666.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv665.i
  br i1 %exitcond666.not.i, label %.preheader526.i, label %.lr.ph589.i, !llvm.loop !101

bb.ei:                                            ; preds = %bb.ek, %.preheader526.i
  %.1453590.i = phi i32 [ 0, %.preheader526.i ], [ %i.ani, %bb.ek ] ; 4 uses
  %i.anc = zext i32 %.1453590.i to i64
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.anc
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !4
  %.not492.i = icmp sgt i32 %i.ane, %i.amt
  br i1 %.not492.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.anf = add i32 %.1453590.i, %.1451593.i       ; 3 uses
  %i.ang = icmp ugt i32 %.1455.i, %i.anf
  %i.anh = icmp eq i32 %.1455.i, %i.anf
  %or.cond13.i419 = select i1 %i.anh, i1 %i.amu, i1 false
  %or.cond604.i = select i1 %i.ang, i1 true, i1 %or.cond13.i419
  br i1 %or.cond604.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.ani = add i32 %.1453590.i, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.ani, %.1451593.i
  br i1 %.not491.i, label %bb.el, label %bb.ei, !llvm.loop !102

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.2456.i = phi i32 [ %.1455.i, %bb.ek ], [ %i.anf, %bb.ej ] ; 2 uses
  %.2447.i = phi i32 [ %.1446.i, %bb.ek ], [ %.1453590.i, %bb.ej ] ; 2 uses
  %.2444.i = phi i32 [ %.1443.i, %bb.ek ], [ %.1451593.i, %bb.ej ] ; 2 uses
  %i.anj = add i32 %.1451593.i, 1                 ; 3 uses
  %.not482.i = icmp ugt i32 %i.anj, %.2456.i
  %indvars.iv.next632.i = add i32 %indvars.iv631.i, 1
  %indvars.iv.next645.i = add i32 %indvars.iv644.i, -1
  %indvars.iv.next749 = add i32 %indvars.iv748, 1
  br i1 %.not482.i, label %._crit_edge600.i, label %.preheader528.i, !llvm.loop !103

._crit_edge600.i:                                 ; preds = %bb.el, %._crit_edge.thread.i
  %.1451.lcssa.i = phi i32 [ 1, %._crit_edge.thread.i ], [ %i.anj, %bb.el ] ; 2 uses
  %.0445.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2447.i, %bb.el ] ; 2 uses
  %.0442.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2444.i, %bb.el ] ; 2 uses
  %i.ank = icmp ugt i32 %.1451.lcssa.i, %..i
  br i1 %i.ank, label %bb.em, label %bb.en

bb.em:                                            ; preds = %._crit_edge600.i
  call void @free(ptr noundef %i.aeu) #18
  call void @free(ptr noundef %i.aev) #18
  call void @free(ptr noundef %i.agw) #18
  call void @free(ptr noundef %i.agx) #18
  call void @free(ptr noundef nonnull %i.ahd) #18
  call void @free(ptr noundef %i.ahf) #18
  call void @free(ptr noundef %i.ahc) #18
  call void @free(ptr noundef %i.ahe) #18
  br label %greedy.exitthread-pre-split

bb.en:                                            ; preds = %._crit_edge600.i
  %i.anl = sext i32 %.0445.lcssa.i to i64         ; 2 uses
  %i.anm = getelementptr inbounds [4 x i8], ptr %i.ahd, i64 %i.anl
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !4 ; 2 uses
  %i.ano = sub nsw i32 %i.abo, %i.ann
  %i.anp = sext i32 %.0442.lcssa.i to i64         ; 2 uses
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.ahc, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !4 ; 2 uses
  %.not483.i = icmp slt i32 %i.ano, %i.anr
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.ahf, i64 %i.anl
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !4
  %.710.i = select i1 %.not483.i, i32 %i.anr, i32 %i.ann ; 6 uses
  %.not485.i = icmp eq i32 %.710.i, 0
  br i1 %.not485.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.ahe, i64 %i.anp
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !4
  %i.anw = add i32 %i.abt, 1
  %i.anx = add i32 %i.abm, 1
  %i.any = sub i32 %i.abt, %..i
  %.0427.i = add i32 %i.any, %.710.i
  %i.anz = add i32 %.0427.i, %i.anv
  %i.aoa = add i32 %.710.i, %i.abm
  %i.aob = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.anw, ptr %i.aob, align 4, !tbaa !35
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 4
  store i32 %i.anx, ptr %i.aoc, align 4, !tbaa !33
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  store i32 %i.anz, ptr %i.aod, align 4, !tbaa !50
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aob, i64 12
  store i32 %i.aoa, ptr %i.aoe, align 4, !tbaa !51
  %i.aof = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.aog = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i513.i = icmp ugt i32 %i.aof, %i.aog
  %.pre.i514.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i513.i, label %add_col_elt.exit516.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aoh = add i32 %i.aof, 5                      ; 2 uses
  store i32 %i.aoh, ptr %i.s, align 4, !tbaa !17
  %i.aoi = zext i32 %i.aoh to i64
  %i.aoj = shl nuw nsw i64 %i.aoi, 3
  %i.aok = call ptr @xrealloc(ptr noundef %.pre.i514.i, i64 noundef %i.aoj) #18 ; 2 uses
  store ptr %i.aok, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit516.i

add_col_elt.exit516.i:                            ; preds = %bb.ep, %bb.eo
  %i.aol = phi ptr [ %i.aok, %bb.ep ], [ %.pre.i514.i, %bb.eo ]
  %i.aom = add i32 %i.aog, 1
  store i32 %i.aom, ptr %i.t, align 8, !tbaa !19
  %i.aon = zext i32 %i.aog to i64
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr %i.aol, i64 %i.aon
  store ptr %i.aob, ptr %i.aoo, align 8, !tbaa !44
  br label %bb.eq

bb.eq:                                            ; preds = %add_col_elt.exit516.i, %bb.en
  %i.aop = icmp ult i32 %.710.i, %i.abo
  br i1 %i.aop, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.aoq = add i32 %i.abt, 1
  %.0.i420 = add i32 %i.aoq, %.neg606.i
  %i.aor = add i32 %.0.i420, %i.ant
  %i.aos = add i32 %i.aor, %.710.i
  %i.aot = add i32 %i.abm, 1
  %i.aou = add i32 %i.aot, %.710.i
  %i.aov = add i32 %i.abk, -1
  %i.aow = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.aos, ptr %i.aow, align 4, !tbaa !35
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  store i32 %i.aou, ptr %i.aox, align 4, !tbaa !33
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i32 %i.abr, ptr %i.aoy, align 4, !tbaa !50
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i32 %i.aov, ptr %i.aoz, align 4, !tbaa !51
  %i.apa = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.apb = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i517.i = icmp ugt i32 %i.apa, %i.apb
  %.pre.i518.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i517.i, label %add_col_elt.exit520.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.apc = add i32 %i.apa, 5                      ; 2 uses
  store i32 %i.apc, ptr %i.s, align 4, !tbaa !17
  %i.apd = zext i32 %i.apc to i64
  %i.ape = shl nuw nsw i64 %i.apd, 3
  %i.apf = call ptr @xrealloc(ptr noundef %.pre.i518.i, i64 noundef %i.ape) #18 ; 2 uses
  store ptr %i.apf, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit520.i

add_col_elt.exit520.i:                            ; preds = %bb.es, %bb.er
  %i.apg = phi ptr [ %i.apf, %bb.es ], [ %.pre.i518.i, %bb.er ]
  %i.aph = add i32 %i.apb, 1
end_hunk_0
