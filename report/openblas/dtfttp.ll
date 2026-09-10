Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtfttp?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dtfttp_:bb.a
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.se ; 2 uses
  %i.wv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !92
  %i.wx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wy = getelementptr i8, ptr %i.wx, i64 8
  store double %i.ww, ptr %i.wy, align 8, !tbaa !92
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.se ; 2 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.1
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !92
  %i.xb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xc = getelementptr i8, ptr %i.xb, i64 16
  store double %i.xa, ptr %i.xc, align 8, !tbaa !92
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.se ; 2 uses
  %i.xd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.2
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !92
  %i.xf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xg = getelementptr i8, ptr %i.xf, i64 24
  store double %i.xe, ptr %i.xg, align 8, !tbaa !92
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.se ; 2 uses
  %i.xh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.3
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !92
  %i.xj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xk = getelementptr i8, ptr %i.xj, i64 32
  store double %i.xi, ptr %i.xk, align 8, !tbaa !92
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.se ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.4
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !92
  %i.xn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xo = getelementptr i8, ptr %i.xn, i64 40
  store double %i.xm, ptr %i.xo, align 8, !tbaa !92
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.se ; 2 uses
  %i.xp = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.5
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !92
  %i.xr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xs = getelementptr i8, ptr %i.xr, i64 48
  store double %i.xq, ptr %i.xs, align 8, !tbaa !92
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.se ; 2 uses
  %i.xt = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.6
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !92
  %i.xv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xw = getelementptr i8, ptr %i.xv, i64 56
  store double %i.xu, ptr %i.xw, align 8, !tbaa !92
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.se
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vw, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1565, label %vec.epilog.scalar.ph1114, !llvm.loop !60

.loopexit1565:                                    ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114, %vec.epilog.middle.block1123, %middle.block1109
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1093 = add i32 %indvar1092, 1
  %indvar.next1096 = add i64 %indvar1095, 1
  %loop-unroll.iv.next1612 = add i32 %loop-unroll.iv1611, %i.vl
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1113, !llvm.loop !61

._crit_edge508:                                   ; preds = %.loopexit1565
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xx = zext nneg i32 %.0328 to i64
  %i.xy = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xz = sext i32 %i.vw to i64
  %i.ya = sub i64 %i.b, %i.a
  %i.yb = mul nsw i64 %i.se, -8
  %i.yc = add nuw nsw i64 %i.se, 1
  br label %iter.check1147

iter.check1147:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1128 = phi i64 [ %indvar.next1129, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xy, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xz, %.lr.ph522.preheader ] ; 7 uses
  %i.yd = mul i64 %i.yc, %indvar1128
  %i.ye = add i64 %i.yd, %i.xy
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ye, i64 %indvars.iv752)
  %i.yf = mul i64 %indvar1128, %i.se
  %reass.sub1567 = sub i64 %umax, %i.yf
  %i.yg = add i64 %reass.sub1567, 1               ; 7 uses
  %i.yh = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1131 = icmp ult i64 %i.yg, 4
  br i1 %min.iters.check1131, label %.lr.ph514.preheader, label %vector.memcheck1127

vector.memcheck1127:                              ; preds = %iter.check1147
  %i.yi = mul i64 %i.yb, %indvar1128
  %i.yj = add i64 %i.ya, %i.yi
  %i.yk = shl i64 %.22520, 3
  %i.yl = add i64 %i.yj, %i.yk
  %i.ym = add i64 %i.yl, -1
  %diff.check1130 = icmp ult i64 %i.ym, 127
  br i1 %diff.check1130, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %vector.memcheck1127
  %min.iters.check1133 = icmp ult i64 %i.yg, 16
  br i1 %min.iters.check1133, label %vec.epilog.ph1151, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %i.yn = and i64 %i.yg, 12
  %n.vec1135 = and i64 %i.yg, -16                 ; 5 uses
  %i.yo = add i64 %indvars.iv752, %n.vec1135
  %i.yp = add i64 %.22520, %n.vec1135             ; 2 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.yr = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1142, %vector.body1136 ] ; 3 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %index1137 ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.ys, align 8, !tbaa !92
  %wide.load1139 = load <4 x double>, ptr %i.yt, align 8, !tbaa !92
  %wide.load1140 = load <4 x double>, ptr %i.yu, align 8, !tbaa !92
  %wide.load1141 = load <4 x double>, ptr %i.yv, align 8, !tbaa !92
  %i.yw = getelementptr [8 x i8], ptr %i.yr, i64 %index1137 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 96
  store <4 x double> %wide.load1138, ptr %i.yw, align 8, !tbaa !92
  store <4 x double> %wide.load1139, ptr %i.yx, align 8, !tbaa !92
  store <4 x double> %wide.load1140, ptr %i.yy, align 8, !tbaa !92
  store <4 x double> %wide.load1141, ptr %i.yz, align 8, !tbaa !92
  %index.next1142 = add nuw i64 %index1137, 16    ; 2 uses
  %i.za = icmp eq i64 %index.next1142, %n.vec1135
  br i1 %i.za, label %middle.block1143, label %vector.body1136, !llvm.loop !62

middle.block1143:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %i.yg, %n.vec1135
  br i1 %cmp.n1144, label %._crit_edge515, label %vec.epilog.iter.check1149

vec.epilog.iter.check1149:                        ; preds = %middle.block1143
  %min.epilog.iters.check1150 = icmp eq i64 %i.yn, 0
  br i1 %min.epilog.iters.check1150, label %.lr.ph514.preheader, label %vec.epilog.ph1151, !prof !96

vec.epilog.ph1151:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1149
  %vec.epilog.resume.val1145 = phi i64 [ %n.vec1135, %vec.epilog.iter.check1149 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1152 = and i64 %i.yg, -4                  ; 4 uses
  %i.zb = add i64 %indvars.iv752, %n.vec1152
  %i.zc = add i64 %.22520, %n.vec1152             ; 2 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.ze = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vec.epilog.vector.body1153

vec.epilog.vector.body1153:                       ; preds = %vec.epilog.vector.body1153, %vec.epilog.ph1151
  %index1154 = phi i64 [ %vec.epilog.resume.val1145, %vec.epilog.ph1151 ], [ %index.next1156, %vec.epilog.vector.body1153 ] ; 3 uses
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %index1154
  %wide.load1155 = load <4 x double>, ptr %i.zf, align 8, !tbaa !92
  %i.zg = getelementptr [8 x i8], ptr %i.ze, i64 %index1154
  store <4 x double> %wide.load1155, ptr %i.zg, align 8, !tbaa !92
  %index.next1156 = add nuw i64 %index1154, 4     ; 2 uses
  %i.zh = icmp eq i64 %index.next1156, %n.vec1152
  br i1 %i.zh, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1153, !llvm.loop !63

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1153
  %cmp.n1158 = icmp eq i64 %i.yg, %n.vec1152
  br i1 %cmp.n1158, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %vector.memcheck1127, %iter.check1147, %vec.epilog.iter.check1149, %vec.epilog.middle.block1157
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1147 ], [ %indvars.iv752, %vector.memcheck1127 ], [ %i.yo, %vec.epilog.iter.check1149 ], [ %i.zb, %vec.epilog.middle.block1157 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1147 ], [ %.22520, %vector.memcheck1127 ], [ %i.yp, %vec.epilog.iter.check1149 ], [ %i.zc, %vec.epilog.middle.block1157 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv754
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !92
  %i.zk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv750
  store double %i.zj, ptr %i.zk, align 8, !tbaa !92
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.yh
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !64

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1157, %middle.block1143
  %indvars.iv.next751.lcssa = phi i64 [ %i.zc, %vec.epilog.middle.block1157 ], [ %i.yp, %middle.block1143 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xx
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1129 = add i64 %indvar1128, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1147, !llvm.loop !65

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.zl = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.zm = add nuw nsw i32 %i.s, 1
  %i.zn = zext nneg i32 %i.s to i64               ; 11 uses
  %i.zo = zext nneg i32 %i.zl to i64              ; 5 uses
  %scevgep1358 = getelementptr i8, ptr %4, i64 8
  %scevgep1363 = getelementptr i8, ptr %3, i64 8
  %i.zp = shl nuw nsw i64 %i.zn, 3
  %broadcast.splatinsert1375 = insertelement <4 x i64> poison, i64 %i.zn, i64 0
  %broadcast.splat1376 = shufflevector <4 x i64> %broadcast.splatinsert1375, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zq = shl nuw nsw <4 x i64> %broadcast.splat1376, splat (i64 2) ; 5 uses
  %i.zr = mul nuw nsw <4 x i64> %broadcast.splat1376, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1676 = add nsw <4 x i64> %i.zq, %i.zq ; 2 uses
  %invariant.op1677 = add nsw <4 x i64> %invariant.op1676, %i.zq ; 2 uses
  %invariant.op1680 = add nsw <4 x i64> %invariant.op1677, %i.zq
  %broadcast.splatinsert1409 = insertelement <4 x i64> poison, i64 %i.zn, i64 0
  %broadcast.splat1410 = shufflevector <4 x i64> %broadcast.splatinsert1409, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zs = mul nuw nsw <4 x i64> %broadcast.splat1410, <i64 0, i64 1, i64 2, i64 3>
  %i.zt = shl nuw nsw i64 %i.zn, 2
  %broadcast.splatinsert1412 = insertelement <4 x i64> poison, i64 %i.zt, i64 0
  %broadcast.splat1413 = shufflevector <4 x i64> %broadcast.splatinsert1412, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1421, %middle.block1396
  %indvars.iv.next821.lcssa = phi i64 [ %i.abg, %vec.epilog.middle.block1421 ], [ %i.aaz, %middle.block1396 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.zu = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.zu, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.zm
  %exitcond829.not = icmp eq i32 %i.aab, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !66

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 4 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.aab, %.loopexit427 ] ; 2 uses
  %i.zv = sext i32 %indvars.iv822 to i64          ; 2 uses
  %i.zw = add nsw i64 %i.zn, %i.zv                ; 3 uses
  %smax1359 = tail call i64 @llvm.smax.i64(i64 %i.zw, i64 %i.zo)
  %i.zx = icmp slt i64 %i.zw, %i.zo
  %umin1360 = zext i1 %i.zx to i64                ; 2 uses
  %i.zy = add nsw i64 %i.zw, %umin1360
  %i.zz = sub i64 %smax1359, %i.zy
  %i.aaa = shl nsw i64 %i.zv, 3                   ; 2 uses
  %scevgep1362 = getelementptr i8, ptr %3, i64 %i.aaa
  %i.aab = add nuw nsw i32 %.8374579, 1           ; 3 uses
  %i.aac = mul nuw nsw i32 %i.aab, %i.s
  %i.aad = add nuw nsw i32 %i.aac, %.8374579
  %i.aae = icmp slt i32 %i.aad, %i.zl
  br i1 %i.aae, label %iter.check1401, label %.loopexit427

iter.check1401:                                   ; preds = %bb.w
  %i.aaf = sext i32 %indvars.iv822 to i64
  %i.aag = add nsw i64 %i.zn, %i.aaf              ; 3 uses
  %i.aah = icmp slt i64 %i.aag, %i.zo             ; 2 uses
  %umin1369 = zext i1 %i.aah to i64
  %smax1368 = tail call i64 @llvm.smax.i64(i64 %i.aag, i64 %i.zo)
  %i.aai = add nsw i64 %i.aag, %umin1369
  %i.aaj = sub i64 %smax1368, %i.aai
  %i.aak = sext i32 %indvars.iv822 to i64         ; 6 uses
  %i.aal = sext i32 %.24580 to i64                ; 8 uses
  %i.aam = select i1 %i.aah, i64 2, i64 1
  %i.aan = udiv i64 %i.aaj, %i.zn
  %i.aao = add i64 %i.aam, %i.aan                 ; 7 uses
  %min.iters.check1370 = icmp ult i64 %i.aao, 4
  br i1 %min.iters.check1370, label %.lr.ph576.preheader, label %vector.memcheck1356

vector.memcheck1356:                              ; preds = %iter.check1401
  %i.aap = shl nsw i64 %i.aal, 3
  %scevgep1357 = getelementptr i8, ptr %4, i64 %i.aap
  %i.aaq = udiv i64 %i.zz, %i.zn
  %i.aar = add i64 %i.aaq, %umin1360              ; 2 uses
  %i.aas = add i64 %i.aar, %i.aal
  %i.aat = shl i64 %i.aas, 3
  %scevgep1361 = getelementptr i8, ptr %scevgep1358, i64 %i.aat
  %i.aau = mul i64 %i.zp, %i.aar
  %i.aav = getelementptr i8, ptr %scevgep1363, i64 %i.aau
  %scevgep1364 = getelementptr i8, ptr %i.aav, i64 %i.aaa
  %bound01365 = icmp ult ptr %scevgep1357, %scevgep1364
  %bound11366 = icmp ult ptr %scevgep1362, %scevgep1361
  %found.conflict1367 = and i1 %bound01365, %bound11366
  br i1 %found.conflict1367, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1371

vector.main.loop.iter.check1371:                  ; preds = %vector.memcheck1356
  %min.iters.check1372 = icmp ult i64 %i.aao, 16
  br i1 %min.iters.check1372, label %vec.epilog.ph1405, label %vector.ph1373

vector.ph1373:                                    ; preds = %vector.main.loop.iter.check1371
  %i.aaw = and i64 %i.aao, 12
  %n.vec1374 = and i64 %i.aao, -16                ; 5 uses
  %i.aax = mul i64 %n.vec1374, %i.zn
  %i.aay = add i64 %i.aax, %i.aak                 ; 2 uses
  %i.aaz = add i64 %n.vec1374, %i.aal             ; 2 uses
  %broadcast.splatinsert1377 = insertelement <4 x i64> poison, i64 %i.aak, i64 0
  %broadcast.splat1378 = shufflevector <4 x i64> %broadcast.splatinsert1377, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1379 = add nsw <4 x i64> %broadcast.splat1378, %i.zr
  %invariant.gep1678 = getelementptr [8 x i8], ptr %4, i64 %i.aal
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1373
  %index1381 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1394, %vector.body1380 ] ; 2 uses
  %vec.ind1382 = phi <4 x i64> [ %induction1379, %vector.ph1373 ], [ %vec.ind.next1395.reass, %vector.body1380 ] ; 5 uses
  %step.add1383 = add nsw <4 x i64> %vec.ind1382, %i.zq
  %step.add.21384.reass = add nsw <4 x i64> %vec.ind1382, %invariant.op1676
  %step.add.31385.reass = add nsw <4 x i64> %vec.ind1382, %invariant.op1677
  %wide.gep1386 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1382
  %wide.gep1387 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add1383
  %wide.gep1388 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.21384.reass
  %wide.gep1389 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.31385.reass
  %wide.masked.gather1390 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1386, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1391 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1387, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1392 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1388, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1393 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1389, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1679 = getelementptr [8 x i8], ptr %invariant.gep1678, i64 %index1381 ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %gep1679, i64 32
  %i.abb = getelementptr inbounds nuw i8, ptr %gep1679, i64 64
  %i.abc = getelementptr inbounds nuw i8, ptr %gep1679, i64 96
  store <4 x double> %wide.masked.gather1390, ptr %gep1679, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1391, ptr %i.aba, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1392, ptr %i.abb, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1393, ptr %i.abc, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1394 = add nuw i64 %index1381, 16    ; 2 uses
  %vec.ind.next1395.reass = add nsw <4 x i64> %vec.ind1382, %invariant.op1680
  %i.abd = icmp eq i64 %index.next1394, %n.vec1374
  br i1 %i.abd, label %middle.block1396, label %vector.body1380, !llvm.loop !70

middle.block1396:                                 ; preds = %vector.body1380
  %cmp.n1397 = icmp eq i64 %i.aao, %n.vec1374
  br i1 %cmp.n1397, label %.loopexit427.loopexit, label %vec.epilog.iter.check1403

vec.epilog.iter.check1403:                        ; preds = %middle.block1396
  %min.epilog.iters.check1404 = icmp eq i64 %i.aaw, 0
  br i1 %min.epilog.iters.check1404, label %.lr.ph576.preheader, label %vec.epilog.ph1405, !prof !96

vec.epilog.ph1405:                                ; preds = %vector.main.loop.iter.check1371, %vec.epilog.iter.check1403
  %vec.epilog.resume.val1398 = phi i64 [ %n.vec1374, %vec.epilog.iter.check1403 ], [ 0, %vector.main.loop.iter.check1371 ]
  %bc.resume.val1399 = phi i64 [ %i.aay, %vec.epilog.iter.check1403 ], [ %i.aak, %vector.main.loop.iter.check1371 ]
  %n.vec1406 = and i64 %i.aao, -4                 ; 4 uses
  %i.abe = mul i64 %n.vec1406, %i.zn
  %i.abf = add i64 %i.abe, %i.aak
  %i.abg = add i64 %n.vec1406, %i.aal             ; 2 uses
  %broadcast.splatinsert1407 = insertelement <4 x i64> poison, i64 %bc.resume.val1399, i64 0
  %broadcast.splat1408 = shufflevector <4 x i64> %broadcast.splatinsert1407, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1411 = add nsw <4 x i64> %broadcast.splat1408, %i.zs
  %invariant.gep1681 = getelementptr [8 x i8], ptr %4, i64 %i.aal
  br label %vec.epilog.vector.body1414

vec.epilog.vector.body1414:                       ; preds = %vec.epilog.vector.body1414, %vec.epilog.ph1405
  %index1415 = phi i64 [ %vec.epilog.resume.val1398, %vec.epilog.ph1405 ], [ %index.next1419, %vec.epilog.vector.body1414 ] ; 2 uses
  %vec.ind1416 = phi <4 x i64> [ %induction1411, %vec.epilog.ph1405 ], [ %vec.ind.next1420, %vec.epilog.vector.body1414 ] ; 2 uses
  %wide.gep1417 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1416
  %wide.masked.gather1418 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1417, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1682 = getelementptr [8 x i8], ptr %invariant.gep1681, i64 %index1415
  store <4 x double> %wide.masked.gather1418, ptr %gep1682, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1419 = add nuw i64 %index1415, 4     ; 2 uses
  %vec.ind.next1420 = add nsw <4 x i64> %vec.ind1416, %broadcast.splat1413
  %i.abh = icmp eq i64 %index.next1419, %n.vec1406
  br i1 %i.abh, label %vec.epilog.middle.block1421, label %vec.epilog.vector.body1414, !llvm.loop !71

vec.epilog.middle.block1421:                      ; preds = %vec.epilog.vector.body1414
  %cmp.n1422 = icmp eq i64 %i.aao, %n.vec1406
  br i1 %cmp.n1422, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %vector.memcheck1356, %iter.check1401, %vec.epilog.iter.check1403, %vec.epilog.middle.block1421
  %indvars.iv824.ph = phi i64 [ %i.aak, %iter.check1401 ], [ %i.aak, %vector.memcheck1356 ], [ %i.aay, %vec.epilog.iter.check1403 ], [ %i.abf, %vec.epilog.middle.block1421 ]
  %indvars.iv820.ph = phi i64 [ %i.aal, %iter.check1401 ], [ %i.aal, %vector.memcheck1356 ], [ %i.aaz, %vec.epilog.iter.check1403 ], [ %i.abg, %vec.epilog.middle.block1421 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.abi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv824
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !92
  %i.abk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv820
  store double %i.abj, ptr %i.abk, align 8, !tbaa !92
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.zn ; 2 uses
  %i.abl = icmp slt i64 %indvars.iv.next825, %i.zo
  br i1 %i.abl, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !72

.lr.ph597:                                        ; preds = %.loopexit427
  %i.abm = add nuw nsw i32 %i.s, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.aej, %._crit_edge590 ] ; 3 uses
  %i.abn = xor i32 %.10364593, -1
  %i.abo = add nsw i32 %i.q, %i.abn               ; 3 uses
  %i.abp = zext i32 %i.abo to i64
  %i.abq = add nuw nsw i64 %i.abp, 1              ; 5 uses
  %i.abr = sext i32 %indvars.iv833 to i64
  %i.abs = shl nsw i64 %i.abr, 3
  %i.abt = xor i32 %.10364593, -1
  %i.abu = add nsw i32 %i.q, %i.abt
  %i.abv = add i32 %i.abu, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abv
  br i1 %.not389585, label %._crit_edge590, label %iter.check1444

iter.check1444:                                   ; preds = %bb.x
  %i.abw = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abx = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1427 = icmp ult i32 %i.abo, 3
  br i1 %min.iters.check1427, label %.lr.ph589.preheader, label %vector.memcheck1425

vector.memcheck1425:                              ; preds = %iter.check1444
  %i.aby = shl nsw i64 %i.abx, 3
  %i.abz = add i64 %i.aby, %i.b
  %i.aca = add i64 %i.abs, %i.a
  %i.acb = sub i64 %i.aca, %i.abz
  %diff.check1426 = icmp ugt i64 %i.acb, -128
  br i1 %diff.check1426, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1428

vector.main.loop.iter.check1428:                  ; preds = %vector.memcheck1425
  %min.iters.check1429 = icmp ult i32 %i.abo, 15
  br i1 %min.iters.check1429, label %vec.epilog.ph1448, label %vector.ph1430

vector.ph1430:                                    ; preds = %vector.main.loop.iter.check1428
  %i.acc = and i64 %i.abq, 12
  %n.vec1431 = and i64 %i.abq, 8589934576         ; 5 uses
  %i.acd = add nsw i64 %n.vec1431, %i.abw
  %i.ace = add nsw i64 %n.vec1431, %i.abx         ; 2 uses
  %invariant.gep1683 = getelementptr [8 x i8], ptr %3, i64 %i.abw
  %invariant.gep1685 = getelementptr [8 x i8], ptr %4, i64 %i.abx
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %vector.ph1430
  %index1433 = phi i64 [ 0, %vector.ph1430 ], [ %index.next1438, %vector.body1432 ] ; 3 uses
  %gep1684 = getelementptr [8 x i8], ptr %invariant.gep1683, i64 %index1433 ; 4 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %gep1684, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %gep1684, i64 64
  %i.ach = getelementptr inbounds nuw i8, ptr %gep1684, i64 96
  %wide.load1434 = load <4 x double>, ptr %gep1684, align 8, !tbaa !92
  %wide.load1435 = load <4 x double>, ptr %i.acf, align 8, !tbaa !92
  %wide.load1436 = load <4 x double>, ptr %i.acg, align 8, !tbaa !92
  %wide.load1437 = load <4 x double>, ptr %i.ach, align 8, !tbaa !92
  %gep1686 = getelementptr [8 x i8], ptr %invariant.gep1685, i64 %index1433 ; 4 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %gep1686, i64 32
  %i.acj = getelementptr inbounds nuw i8, ptr %gep1686, i64 64
  %i.ack = getelementptr inbounds nuw i8, ptr %gep1686, i64 96
  store <4 x double> %wide.load1434, ptr %gep1686, align 8, !tbaa !92
  store <4 x double> %wide.load1435, ptr %i.aci, align 8, !tbaa !92
  store <4 x double> %wide.load1436, ptr %i.acj, align 8, !tbaa !92
  store <4 x double> %wide.load1437, ptr %i.ack, align 8, !tbaa !92
  %index.next1438 = add nuw i64 %index1433, 16    ; 2 uses
  %i.acl = icmp eq i64 %index.next1438, %n.vec1431
  br i1 %i.acl, label %middle.block1439, label %vector.body1432, !llvm.loop !73

middle.block1439:                                 ; preds = %vector.body1432
  %cmp.n1440 = icmp eq i64 %i.abq, %n.vec1431
  br i1 %cmp.n1440, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1446

vec.epilog.iter.check1446:                        ; preds = %middle.block1439
  %min.epilog.iters.check1447 = icmp eq i64 %i.acc, 0
  br i1 %min.epilog.iters.check1447, label %.lr.ph589.preheader, label %vec.epilog.ph1448, !prof !96

vec.epilog.ph1448:                                ; preds = %vector.main.loop.iter.check1428, %vec.epilog.iter.check1446
  %vec.epilog.resume.val1441 = phi i64 [ %n.vec1431, %vec.epilog.iter.check1446 ], [ 0, %vector.main.loop.iter.check1428 ]
  %n.vec1449 = and i64 %i.abq, 8589934588         ; 4 uses
  %i.acm = add nsw i64 %n.vec1449, %i.abw
  %i.acn = add nsw i64 %n.vec1449, %i.abx         ; 2 uses
  %invariant.gep1687 = getelementptr [8 x i8], ptr %3, i64 %i.abw
  %invariant.gep1689 = getelementptr [8 x i8], ptr %4, i64 %i.abx
  br label %vec.epilog.vector.body1450

vec.epilog.vector.body1450:                       ; preds = %vec.epilog.vector.body1450, %vec.epilog.ph1448
  %index1451 = phi i64 [ %vec.epilog.resume.val1441, %vec.epilog.ph1448 ], [ %index.next1453, %vec.epilog.vector.body1450 ] ; 3 uses
  %gep1688 = getelementptr [8 x i8], ptr %invariant.gep1687, i64 %index1451
  %wide.load1452 = load <4 x double>, ptr %gep1688, align 8, !tbaa !92
  %gep1690 = getelementptr [8 x i8], ptr %invariant.gep1689, i64 %index1451
  store <4 x double> %wide.load1452, ptr %gep1690, align 8, !tbaa !92
  %index.next1453 = add nuw i64 %index1451, 4     ; 2 uses
  %i.aco = icmp eq i64 %index.next1453, %n.vec1449
  br i1 %i.aco, label %vec.epilog.middle.block1454, label %vec.epilog.vector.body1450, !llvm.loop !74

vec.epilog.middle.block1454:                      ; preds = %vec.epilog.vector.body1450
  %cmp.n1455 = icmp eq i64 %i.abq, %n.vec1449
  br i1 %cmp.n1455, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %vector.memcheck1425, %iter.check1444, %vec.epilog.iter.check1446, %vec.epilog.middle.block1454
  %indvars.iv835.ph = phi i64 [ %i.abw, %iter.check1444 ], [ %i.abw, %vector.memcheck1425 ], [ %i.acd, %vec.epilog.iter.check1446 ], [ %i.acm, %vec.epilog.middle.block1454 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.abx, %iter.check1444 ], [ %i.abx, %vector.memcheck1425 ], [ %i.ace, %vec.epilog.iter.check1446 ], [ %i.acn, %vec.epilog.middle.block1454 ] ; 2 uses
  %i.acp = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.acq = sub i32 %indvars.iv840, %i.acp
  %i.acr = sub i32 %i.abv, %i.acp
  %xtraiter1619 = and i32 %i.acq, 7               ; 2 uses
  %lcmp.mod1620.not = icmp eq i32 %xtraiter1619, 0
  br i1 %lcmp.mod1620.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1621 = phi i32 [ %prol.iter1621.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.acs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835.prol
  %i.act = load double, ptr %i.acs, align 8, !tbaa !92
  %i.acu = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831.prol
  store double %i.act, ptr %i.acu, align 8, !tbaa !92
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1621.next = add i32 %prol.iter1621, 1 ; 2 uses
  %prol.iter1621.cmp.not = icmp eq i32 %prol.iter1621.next, %xtraiter1619
  br i1 %prol.iter1621.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !75

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1581.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.acv = icmp ult i32 %i.acr, 7
  br i1 %i.acv, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.acw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !92
  %i.acy = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831
  store double %i.acx, ptr %i.acy, align 8, !tbaa !92
  %i.acz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ada = getelementptr i8, ptr %i.acz, i64 8
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !92
  %i.adc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
end_hunk_0
