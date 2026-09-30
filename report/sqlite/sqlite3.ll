Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Update:bb.a

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dp
  %.0732 = phi i16 [ 4, %bb.dp ], [ 12, %bb.ds ], [ 4, %bb.dr ]
  %i.wp = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef zeroext %.0732, i32 noundef %.0751) ; 8 uses
  %i.wq = icmp eq ptr %i.wp, null
  br i1 %i.wq, label %bb.id, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.ws = load i64, ptr %i.wr, align 8            ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ws to i32 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.ws, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 6 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 66
  %i.wu = load i8, ptr %i.wt, align 2, !tbaa !733 ; 3 uses
  %i.wv = getelementptr i8, ptr %i.wp, i64 68
  %.val862 = load i8, ptr %i.wv, align 4
  %i.ww = and i8 %.val862, 1                      ; 4 uses
  %.not814 = icmp eq i8 %i.wu, 1
  br i1 %.not814, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wx = zext i8 %i.wu to i32
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !2049 ; 2 uses
  %.not.i893 = icmp eq ptr %i.wz, null
  %..i894 = select i1 %.not.i893, ptr %0, ptr %i.wz
  %i.xa = getelementptr inbounds nuw i8, ptr %..i894, i64 32
  store i8 1, ptr %i.xa, align 8, !tbaa !1199
  %i.xb = icmp eq i8 %i.wu, 2
  br i1 %i.xb, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.xc = icmp slt i64 %i.ws, 0
  %.not815 = icmp eq i32 %.4, %.sroa.5.0.extract.trunc
  %or.cond852 = select i1 %i.xc, i1 true, i1 %.not815
  br i1 %or.cond852, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xd = sub nsw i32 %.sroa.5.0.extract.trunc, %i.cq
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds i8, ptr %i.ed, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !733
  %.not816 = icmp eq i8 %i.xg, 0
  %spec.select853 = select i1 %.not816, i32 2, i32 0
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dv, %.thread79
  %.46696 = phi i32 [ %.4, %bb.du ], [ %.4, %bb.dw ], [ %.4, %bb.dx ], [ %.4, %bb.dv ], [ %.46697, %.thread79 ] ; 8 uses
  %.07316994 = phi i32 [ %.0731, %bb.du ], [ %.0731, %bb.dw ], [ %.0731, %bb.dx ], [ %.0731, %bb.dv ], [ %.07316995, %.thread79 ] ; 8 uses
  %.07297192 = phi i32 [ %.0729, %bb.du ], [ %.0729, %bb.dw ], [ %.0729, %bb.dx ], [ %.0729, %bb.dv ], [ %.07297193, %.thread79 ] ; 4 uses
  %.07287390 = phi i32 [ %.0728, %bb.du ], [ %.0728, %bb.dw ], [ %.0728, %bb.dx ], [ %.0728, %bb.dv ], [ %.07287391, %.thread79 ] ; 11 uses
  %.07277788 = phi i16 [ %.0727, %bb.du ], [ %.0727, %bb.dw ], [ %.0727, %bb.dx ], [ %.0727, %bb.dv ], [ %.07277789, %.thread79 ] ; 8 uses
  %.07157886 = phi i32 [ %.0715, %bb.du ], [ %.0715, %bb.dw ], [ %.0715, %bb.dx ], [ %.0715, %bb.dv ], [ %.07157887, %.thread79 ] ; 6 uses
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.trunc, %bb.du ], [ %.sroa.5.0.extract.trunc, %bb.dw ], [ %.sroa.5.0.extract.trunc, %bb.dx ], [ %.sroa.5.0.extract.trunc, %bb.dv ], [ undef, %.thread79 ] ; 6 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %bb.du ], [ %.sroa.0.0.extract.trunc, %bb.dw ], [ %.sroa.0.0.extract.trunc, %bb.dx ], [ %.sroa.0.0.extract.trunc, %bb.dv ], [ undef, %.thread79 ] ; 6 uses
  %.0760 = phi ptr [ %i.wp, %bb.du ], [ %i.wp, %bb.dw ], [ %i.wp, %bb.dx ], [ %i.wp, %bb.dv ], [ null, %.thread79 ] ; 6 uses
  %.1736 = phi i32 [ 1, %bb.du ], [ 2, %bb.dw ], [ %spec.select853, %bb.dx ], [ %i.wx, %bb.dv ], [ 1, %.thread79 ] ; 6 uses
  %.0725.shrunk = phi i8 [ %i.ww, %bb.du ], [ %i.ww, %bb.dw ], [ %i.ww, %bb.dx ], [ %i.ww, %bb.dv ], [ 0, %.thread79 ] ; 6 uses
  %i.xh = load i32, ptr %i.cs, align 8, !tbaa !1083
  %i.xi = and i32 %i.xh, 128
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %bb.dz, label %.preheader122

.preheader122:                                    ; preds = %bb.dy
  %i.xk = sext i16 %.07277788 to i32              ; 6 uses
  %i.xl = icmp sgt i16 %.07277788, 0
  br i1 %i.xl, label %.lr.ph217, label %._crit_edge218

.lr.ph217:                                        ; preds = %.preheader122
  %i.xm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %wide.trip.count = zext nneg i32 %i.xk to i64
  br label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.xn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 137, i32 noundef %.46696, i32 noundef %.0723) ; 0 uses
  %i.xo = icmp eq i32 %.1736, 0
  br i1 %i.xo, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.xp = load i32, ptr %i.sv, align 4, !tbaa !1174
  %i.xq = add nsw i32 %i.xp, 1                    ; 2 uses
  store i32 %i.xq, ptr %i.sv, align 4, !tbaa !1174
  store i32 %i.xq, ptr %i.sy, align 4, !tbaa !570
  %i.xr = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 130, i32 noundef %.07316994, i32 noundef %.0717, i32 noundef %.0723) ; 0 uses
  br label %bb.ei

bb.eb:                                            ; preds = %bb.dz
  %.not819 = icmp eq i32 %.07297192, 0
  br i1 %.not819, label %bb.ei, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef nonnull %.0.i870381, i32 noundef %.07297192)
  br label %bb.ei

bb.ed:                                            ; preds = %.lr.ph217, %bb.ed
  %indvars.iv286 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next287, %bb.ed ] ; 3 uses
  %i.xs = load ptr, ptr %i.xm, align 8, !tbaa !1160
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.xs, i64 %indvars.iv286
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !783
  %i.xv = sext i16 %i.xu to i32
  %i.xw = trunc i64 %indvars.iv286 to i32
  %i.xx = add i32 %.07287390, %i.xw
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i870381, ptr noundef nonnull %i.t, i32 noundef %.46696, i32 noundef %i.xv, i32 noundef %i.xx)
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge218, label %bb.ed, !llvm.loop !4721

._crit_edge218:                                   ; preds = %bb.ed, %.preheader122
  %.not817 = icmp eq i32 %.1736, 0
  br i1 %.not817, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge218
  %.not818 = icmp eq i32 %.07297192, 0
  br i1 %.not818, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef nonnull %.0.i870381, i32 noundef %.07297192)
  br label %bb.ei

bb.eg:                                            ; preds = %._crit_edge218
  %i.xy = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !1759 ; 2 uses
  %.not.i895 = icmp eq ptr %i.xz, null
  br i1 %.not.i895, label %bb.eh, label %sqlite3IndexAffinityStr.exit

bb.eh:                                            ; preds = %bb.eg
  %i.ya = call fastcc ptr @computeIndexAffStr(ptr noundef nonnull %i.e, ptr noundef nonnull %i.dg), !inline_history !327
  br label %sqlite3IndexAffinityStr.exit

sqlite3IndexAffinityStr.exit:                     ; preds = %bb.eg, %bb.eh
  %.0.i896 = phi ptr [ %i.ya, %bb.eh ], [ %i.xz, %bb.eg ]
  %i.yb = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i870381, i32 noundef 99, i32 noundef %.07287390, i32 noundef %i.xk, i32 noundef %.07157886, ptr noundef %.0.i896, i32 noundef %i.xk) ; 0 uses
  %i.yc = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 140, i32 noundef %.07316994, i32 noundef %.07157886, i32 noundef %.07287390, i32 noundef %i.xk) ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ee, %bb.ef, %bb.eb, %bb.ec, %bb.ea, %sqlite3IndexAffinityStr.exit, %bb.dn
  %i.yd = phi i1 [ true, %bb.dn ], [ false, %bb.ea ], [ false, %bb.eb ], [ false, %bb.ec ], [ false, %sqlite3IndexAffinityStr.exit ], [ false, %bb.ee ], [ false, %bb.ef ] ; 3 uses
  %.072776 = phi i16 [ %.072775, %bb.dn ], [ %.07277788, %bb.ea ], [ %.07277788, %bb.eb ], [ %.07277788, %bb.ec ], [ %.07277788, %sqlite3IndexAffinityStr.exit ], [ %.07277788, %bb.ee ], [ %.07277788, %bb.ef ] ; 3 uses
  %.072872 = phi i32 [ %.072874, %bb.dn ], [ %.07287390, %bb.ea ], [ %.07287390, %bb.eb ], [ %.07287390, %bb.ec ], [ %.07287390, %sqlite3IndexAffinityStr.exit ], [ %.07287390, %bb.ee ], [ %.07287390, %bb.ef ] ; 2 uses
  %.073168 = phi i32 [ %.073170, %bb.dn ], [ %.07316994, %bb.ea ], [ %.07316994, %bb.eb ], [ %.07316994, %bb.ec ], [ %.07316994, %sqlite3IndexAffinityStr.exit ], [ %.07316994, %bb.ee ], [ %.07316994, %bb.ef ] ; 9 uses
  %.465 = phi i32 [ %.467, %bb.dn ], [ %.46696, %bb.ea ], [ %.46696, %bb.eb ], [ %.46696, %bb.ec ], [ %.46696, %sqlite3IndexAffinityStr.exit ], [ %.46696, %bb.ee ], [ %.46696, %bb.ef ] ; 20 uses
  %.sroa.5.1 = phi i32 [ undef, %bb.dn ], [ %.sroa.5.0, %bb.ea ], [ %.sroa.5.0, %bb.eb ], [ %.sroa.5.0, %bb.ec ], [ %.sroa.5.0, %sqlite3IndexAffinityStr.exit ], [ %.sroa.5.0, %bb.ee ], [ %.sroa.5.0, %bb.ef ] ; 3 uses
  %.sroa.0.1 = phi i32 [ undef, %bb.dn ], [ %.sroa.0.0, %bb.ea ], [ %.sroa.0.0, %bb.eb ], [ %.sroa.0.0, %bb.ec ], [ %.sroa.0.0, %sqlite3IndexAffinityStr.exit ], [ %.sroa.0.0, %bb.ee ], [ %.sroa.0.0, %bb.ef ] ; 3 uses
  %.1761 = phi ptr [ null, %bb.dn ], [ %.0760, %bb.ea ], [ %.0760, %bb.eb ], [ %.0760, %bb.ec ], [ %.0760, %sqlite3IndexAffinityStr.exit ], [ %.0760, %bb.ee ], [ %.0760, %bb.ef ] ; 2 uses
  %.2737 = phi i32 [ 0, %bb.dn ], [ 0, %bb.ea ], [ %.1736, %bb.eb ], [ %.1736, %bb.ec ], [ 0, %sqlite3IndexAffinityStr.exit ], [ %.1736, %bb.ee ], [ %.1736, %bb.ef ] ; 8 uses
  %.0730 = phi i32 [ %.pre-phi321, %bb.dn ], [ 0, %bb.ea ], [ 0, %bb.eb ], [ 0, %bb.ec ], [ 0, %sqlite3IndexAffinityStr.exit ], [ %i.xk, %bb.ee ], [ %i.xk, %bb.ef ] ; 3 uses
  %.1726.shrunk = phi i8 [ 1, %bb.dn ], [ %.0725.shrunk, %bb.ea ], [ %.0725.shrunk, %bb.eb ], [ %.0725.shrunk, %bb.ec ], [ %.0725.shrunk, %sqlite3IndexAffinityStr.exit ], [ %.0725.shrunk, %bb.ee ], [ %.0725.shrunk, %bb.ef ]
  %.1716 = phi i32 [ %.072874, %bb.dn ], [ %.07157886, %bb.ea ], [ %.07157886, %bb.eb ], [ %.07157886, %bb.ec ], [ %.07157886, %sqlite3IndexAffinityStr.exit ], [ %.07287390, %bb.ee ], [ %.07287390, %bb.ef ] ; 6 uses
  %.1726 = zext nneg i8 %.1726.shrunk to i32      ; 2 uses
  br i1 %.not801, label %bb.ej, label %bb.fl

bb.ej:                                            ; preds = %bb.ei
  %i.ye = icmp ne i32 %.2737, 2
  %or.cond23 = select i1 %i.uh, i1 %i.ye, i1 false
  br i1 %or.cond23, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call fastcc void @sqlite3WhereEnd(ptr noundef %.1761)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br i1 %i.ce, label %bb.ey, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i32 0, ptr %i.c, align 4, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store i32 0, ptr %i.d, align 4, !tbaa !570
  %cond = icmp eq i32 %.2737, 0
  br i1 %cond, label %.thread99, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.yf = icmp sgt i32 %.sroa.0.1, -1
  br i1 %i.yf, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.yg = sub nsw i32 %.sroa.0.1, %i.cq
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds i8, ptr %i.ed, i64 %i.yh
  store i8 0, ptr %i.yi, align 1, !tbaa !733
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.yj = icmp sgt i32 %.sroa.5.1, -1             ; 2 uses
  br i1 %i.yj, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.yk = sub nsw i32 %.sroa.5.1, %i.cq
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds i8, ptr %i.ed, i64 %i.yl
  store i8 0, ptr %i.ym, align 1, !tbaa !733
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.yn = icmp eq i32 %.2737, 2
  br i1 %i.yn, label %bb.es, label %.thread99

bb.es:                                            ; preds = %bb.er
  %.neg = sext i1 %i.yj to i32
  %i.yo = add nsw i32 %.0757.lcssa, %.neg
  %i.yp = icmp sgt i32 %i.yo, 0
  br i1 %i.yp, label %bb.et, label %.thread99

.thread99:                                        ; preds = %bb.es, %bb.er, %bb.em
  %i.yq = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 116, i8 noundef zeroext 0, i32 noundef %i.cq, ptr noundef nonnull %i.ed, ptr noundef %i.c, ptr noundef %i.d) ; 0 uses
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.et:                                            ; preds = %bb.es
  %i.yr = call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %.0.i870381, i32 noundef 15) ; 4 uses
  %i.ys = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 116, i8 noundef zeroext 0, i32 noundef %i.cq, ptr noundef nonnull %i.ed, ptr noundef %i.c, ptr noundef %i.d) ; 0 uses
  %.not821 = icmp eq i32 %i.yr, 0
  br i1 %.not821, label %sqlite3VdbeJumpHereOrPopInst.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i870381, i64 144 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !703 ; 2 uses
  %i.yv = add nsw i32 %i.yu, -1
  %i.yw = icmp eq i32 %i.yr, %i.yv
  br i1 %i.yw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 %i.yr, ptr %i.yt, align 8, !tbaa !703
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.ew:                                            ; preds = %bb.eu
  %i.yx = load ptr, ptr %.0.i870381, align 8, !tbaa !679
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 103
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !918
  %.not.i.i.i897 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i897, label %bb.ex, label %sqlite3VdbeChangeP2.exit.i

bb.ex:                                            ; preds = %bb.ew
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i870381, i64 136
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !702
  %i.zc = sext i32 %i.yr to i64
  %i.zd = getelementptr inbounds [32 x i8], ptr %i.zb, i64 %i.zc
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.ex, %bb.ew
  %.0.i.i.i = phi ptr [ %i.zd, %bb.ex ], [ @sqlite3VdbeGetOp.dummy, %bb.ew ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.yu, ptr %i.ze, align 8, !tbaa !927
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.ev, %.thread99, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.ey

bb.ey:                                            ; preds = %sqlite3VdbeJumpHereOrPopInst.exit, %bb.el
  %.not822 = icmp eq i32 %.2737, 0
  br i1 %.not822, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.not823 = icmp eq i32 %.sroa.0.1, %.465
  %.not824 = icmp eq i32 %.sroa.5.1, %.465
  %or.cond855 = select i1 %.not823, i1 true, i1 %.not824
  br i1 %or.cond855, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.zf = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 28, i32 noundef %.465, i32 noundef %i.ul, i32 noundef %.1716, i32 noundef %.0730) ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.not825 = icmp eq i32 %.2737, 1
  br i1 %.not825, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.zg = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.zh = add nsw i32 %i.zg, -1                   ; 2 uses
  store i32 %i.zh, ptr %i.uj, align 4, !tbaa !1881
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0733 = phi i32 [ %i.zh, %bb.fc ], [ %i.ul, %bb.fb ]
  %.not826 = icmp eq ptr %i.dg, null
  %i.zi = select i1 %.not826, i32 %.0723, i32 %.1716
  %i.zj = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 51, i32 noundef %i.zi, i32 noundef %i.ul) ; 0 uses
  br label %bb.fl

bb.fe:                                            ; preds = %bb.ey
  %i.zk = icmp ne ptr %i.dg, null                 ; 2 uses
  %or.cond25 = or i1 %i.zk, %i.yd
  br i1 %or.cond25, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.zl = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.zm = add nsw i32 %i.zl, -1                   ; 8 uses
  store i32 %i.zm, ptr %i.uj, align 4, !tbaa !1881
  %i.zn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 36, i32 noundef %.073168, i32 noundef %i.ul) ; 0 uses
  %i.zo = getelementptr i8, ptr %.0.i870381, i64 144
  %.val = load i32, ptr %i.zo, align 8, !tbaa !703 ; 4 uses
  br i1 %i.yd, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.ce, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.zk, label %.preheader, label %bb.fi

.preheader:                                       ; preds = %bb.fh
  %i.zp = sext i16 %.072776 to i32                ; 2 uses
  %i.zq = icmp sgt i16 %.072776, 0
  br i1 %i.zq, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %.preheader, %.lr.ph221
  %.5220 = phi i32 [ %i.zt, %.lr.ph221 ], [ 0, %.preheader ] ; 3 uses
  %i.zr = add nsw i32 %.5220, %.072872
  %i.zs = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 96, i32 noundef %.073168, i32 noundef %.5220, i32 noundef %i.zr) ; 0 uses
  %i.zt = add nuw nsw i32 %.5220, 1               ; 2 uses
  %exitcond289.not = icmp eq i32 %i.zt, %i.zp
  br i1 %exitcond289.not, label %._crit_edge222, label %.lr.ph221, !llvm.loop !4722

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader
  %i.zu = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.072872, i32 noundef %i.zp) ; 0 uses
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.zv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 137, i32 noundef %.073168, i32 noundef %.0723) ; 0 uses
  %i.zw = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 31, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.0723) ; 0 uses
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ff
  %i.zx = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 136, i32 noundef %.073168, i32 noundef %.1716) ; 0 uses
  %i.zy = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.1716, i32 noundef 0) ; 0 uses
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fe
  %i.zz = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 36, i32 noundef %.073168, i32 noundef %i.ul) ; 0 uses
  %i.aaa = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.aab = add nsw i32 %i.aaa, -1                 ; 3 uses
  store i32 %i.aab, ptr %i.uj, align 4, !tbaa !1881
  %i.aac = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 137, i32 noundef %.073168, i32 noundef %.0723)
  %i.aad = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 31, i32 noundef %.465, i32 noundef %i.aab, i32 noundef %.0723) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fd, %bb.fj, %._crit_edge222, %bb.fi, %bb.fg, %bb.fk, %bb.ei
  %.0762 = phi i32 [ 0, %bb.fd ], [ %.val, %bb.fg ], [ %.val, %._crit_edge222 ], [ %.val, %bb.fi ], [ %.val, %bb.fj ], [ %i.aac, %bb.fk ], [ 0, %bb.ei ]
  %.1734 = phi i32 [ %.0733, %bb.fd ], [ %i.zm, %bb.fg ], [ %i.zm, %._crit_edge222 ], [ %i.zm, %bb.fi ], [ %i.zm, %bb.fj ], [ %i.aab, %bb.fk ], [ %i.ul, %bb.ei ] ; 9 uses
  %.not827 = icmp eq i8 %.0744.lcssa397, 0        ; 2 uses
  br i1 %.not827, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.uh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %.0741.lcssa399, i32 noundef %.1722)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aae = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 96, i32 noundef %.073168, i32 noundef %.0738.lcssa401, i32 noundef %.1722) ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aaf = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i870381, i32 noundef 13, i32 noundef %.1722) ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fl
  %i.aag = icmp ne i8 %.0747.lcssa395, 0
  %or.cond27 = select i1 %i.aag, i1 true, i1 %i.tg
  %or.cond29 = or i1 %i.tf, %or.cond27
  br i1 %or.cond29, label %bb.fr, label %bb.gd

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.tg, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aah = call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %i.t)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.aai = phi i32 [ %i.aah, %bb.fs ], [ 0, %bb.fr ]
  %i.aaj = call fastcc i32 @sqlite3TriggerColmask(ptr noundef nonnull %0, ptr noundef %.0.i865, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 3, ptr noundef %i.t, i32 noundef %4)
  %i.aak = or i32 %i.aaj, %i.aai                  ; 2 uses
  %i.aal = load i16, ptr %i.dn, align 2, !tbaa !1150
  %i.aam = icmp sgt i16 %i.aal, 0
  br i1 %i.aam, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.ft
  %i.aan = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aap = icmp eq i32 %i.aak, -1
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph227, %bb.gb
  %indvars.iv290 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next291, %bb.gb ] ; 12 uses
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !1149 ; 22 uses
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv290
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 14
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !1364 ; 3 uses
  %i.aau = trunc nuw nsw i64 %indvars.iv290 to i32 ; 2 uses
  %i.aav = trunc i64 %indvars.iv290 to i16        ; 4 uses
  %i.aaw = load i32, ptr %i.cs, align 8, !tbaa !1083
  %i.aax = and i32 %i.aaw, 32
  %i.aay = icmp eq i32 %i.aax, 0
  %i.aaz = icmp slt i16 %i.aav, 0
  %or.cond.i = or i1 %i.aaz, %i.aay
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i898

.preheader.i898:                                  ; preds = %bb.fu
end_hunk_0
begin_hunk_1_@whereScanNext:bb.a
bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %sqlite3StrICmp.exit.thread
  store ptr %.190, ptr %i.c, align 8, !tbaa !2302
  %i.fj = add nsw i32 %.2148, 1
  store i32 %i.fj, ptr %i.a, align 8, !tbaa !2305
  br label %.loopexit

.thread131:                                       ; preds = %bb.aj, %bb.w, %bb.x, %.lr.ph150, %bb.d, %sqlite3ExprCompareSkip.exit, %bb.j, %whereRightSubexprIsColumn.exit.thread, %bb.ao
  %i.fk = add nsw i32 %.2148, 1                   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.088147, i64 56
  %i.fm = load i32, ptr %i.u, align 4, !tbaa !1284
  %i.fn = icmp slt i32 %i.fk, %i.fm
  br i1 %i.fn, label %.lr.ph150, label %._crit_edge151, !llvm.loop !5295

._crit_edge151:                                   ; preds = %.thread131, %bb.c
  %i.fo = getelementptr inbounds nuw i8, ptr %.190, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !2294 ; 2 uses
  %.not = icmp eq ptr %i.fp, null
  br i1 %.not, label %bb.aq, label %bb.c, !llvm.loop !5296

bb.aq:                                            ; preds = %._crit_edge151
  %i.fq = load i8, ptr %i.f, align 1, !tbaa !2307 ; 2 uses
  %i.fr = load i8, ptr %i.i, align 2, !tbaa !2306
  %.not99 = icmp ult i8 %i.fq, %i.fr
  br i1 %.not99, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.fs = load ptr, ptr %0, align 8, !tbaa !2301
  %i.ft = add nuw i8 %i.fq, 1                     ; 2 uses
  store i8 %i.ft, ptr %i.f, align 1, !tbaa !2307
  br label %bb.b

.loopexit:                                        ; preds = %bb.aq, %bb.ap
  %.091 = phi ptr [ %.088147, %bb.ap ], [ null, %bb.aq ]
  ret ptr %.091
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @whereScanInitIndexExpr(ptr nofree noundef nonnull captures(none) initializes((40, 41)) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2311
  %i.c = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.c, ptr %i.d, align 8, !tbaa !2303
  %i.e = tail call fastcc ptr @whereScanNext(ptr noundef %0)
  ret ptr %i.e
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @indexInAffinityOk(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.Expr, align 8               ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1287   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !796  ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1828  ; 2 uses
  %i.e = icmp eq i8 %i.d, -80
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !2000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i8 [ %i.g, %bb.b ], [ %i.d, %bb.a ]
  switch i8 %.0.i.i, label %sqlite3ExprIsVector.exit.thread [
    i8 -79, label %bb.d
    i8 -117, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %sqlite3ExprIsVector.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !733
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %sqlite3ExprIsVector.exit

sqlite3ExprIsVector.exit:                         ; preds = %bb.d, %bb.e
  %.sink.in.i.i = phi ptr [ %i.k, %bb.e ], [ %i.h, %bb.d ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !733
  %i.l = load i32, ptr %.sink.i.i, align 8, !tbaa !570
  %i.m = icmp slt i32 %i.l, 2
  br i1 %i.m, label %sqlite3ExprIsVector.exit.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3ExprIsVector.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !733
  %i.p = add nsw i32 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !795
  store i8 54, ptr %3, align 8, !tbaa !1828
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !733
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1998
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !796
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !733
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1842
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.u
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1998
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1288
  br label %sqlite3ExprIsVector.exit.thread

sqlite3ExprIsVector.exit.thread:                  ; preds = %bb.c, %bb.f, %sqlite3ExprIsVector.exit
  %.013 = phi ptr [ %3, %bb.f ], [ %i.a, %sqlite3ExprIsVector.exit ], [ %i.a, %bb.c ] ; 6 uses
  %i.ag = call fastcc i32 @sqlite3IndexAffinityOk(ptr noundef nonnull %.013, i8 noundef signext %2)
  %.not15 = icmp eq i32 %i.ag, 0
  br i1 %.not15, label %bb.p, label %bb.g

bb.g:                                             ; preds = %sqlite3ExprIsVector.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %.013, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !795
  %i.aj = and i32 %i.ai, 1024
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1288 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !796 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !795
  %i.aq = and i32 %i.ap, 512
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.i, label %sqlite3ExprCompareCollSeq.exit

bb.i:                                             ; preds = %bb.h
  %.not15.i.i = icmp eq ptr %i.an, null
  br i1 %.not15.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !795
  %i.at = and i32 %i.as, 512
  %.not16.i.i = icmp eq i32 %i.at, 0
  br i1 %.not16.i.i, label %bb.k, label %sqlite3ExprCompareCollSeq.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %0, ptr noundef nonnull readonly %i.al), !inline_history !112 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.au, null
  br i1 %.not17.i.i, label %sqlite3ExprCompareCollSeq.exit, label %sqlite3ExprCompareCollSeq.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !796 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1288 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !795
  %i.bb = and i32 %i.ba, 512
  %.not.i8.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i8.i, label %bb.m, label %sqlite3ExprCompareCollSeq.exit

bb.m:                                             ; preds = %bb.l
  %.not15.i12.i = icmp eq ptr %i.ay, null
  br i1 %.not15.i12.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !795
  %i.be = and i32 %i.bd, 512
  %.not16.i13.i = icmp eq i32 %i.be, 0
  br i1 %.not16.i13.i, label %bb.o, label %sqlite3ExprCompareCollSeq.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %0, ptr noundef nonnull readonly %i.aw), !inline_history !112 ; 2 uses
  %.not17.i14.i = icmp eq ptr %i.bf, null
  br i1 %.not17.i14.i, label %sqlite3ExprCompareCollSeq.exit, label %sqlite3ExprCompareCollSeq.exit.thread

sqlite3ExprCompareCollSeq.exit:                   ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o
  %.sink.i10.sink.i = phi ptr [ %i.an, %bb.k ], [ %i.al, %bb.h ], [ %i.an, %bb.j ], [ %i.aw, %bb.l ], [ %i.ay, %bb.n ], [ %i.ay, %bb.o ]
  %i.bg = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %0, ptr noundef %.sink.i10.sink.i), !inline_history !113 ; 2 uses
  %.not16 = icmp eq ptr %i.bg, null
  br i1 %.not16, label %bb.p, label %sqlite3ExprCompareCollSeq.exit.thread

sqlite3ExprCompareCollSeq.exit.thread:            ; preds = %bb.k, %bb.o, %sqlite3ExprCompareCollSeq.exit
  %.0.i21 = phi ptr [ %i.bg, %sqlite3ExprCompareCollSeq.exit ], [ %i.au, %bb.k ], [ %i.bf, %bb.o ]
  %i.bh = load ptr, ptr %.0.i21, align 8, !tbaa !1289
  br label %bb.p

bb.p:                                             ; preds = %sqlite3ExprIsVector.exit.thread, %sqlite3ExprCompareCollSeq.exit.thread, %sqlite3ExprCompareCollSeq.exit
  %.0 = phi ptr [ @.str.128, %sqlite3ExprCompareCollSeq.exit ], [ %i.bh, %sqlite3ExprCompareCollSeq.exit.thread ], [ null, %sqlite3ExprIsVector.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @sqlite3IndexAffinityOk(ptr nofree noundef readonly captures(none) %0, i8 noundef signext %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !796
  %i.c = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef %i.b) ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1288 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef nonnull readonly %i.e) ; 4 uses
  %i.g = icmp sgt i8 %i.f, 64
  %i.h = icmp sgt i8 %i.c, 64
  %or.cond.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i8 %i.f, 66
  %i.j = icmp samesign ugt i8 %i.c, 66
  %or.cond5.i.i = or i1 %i.j, %i.i
  br i1 %or.cond5.i.i, label %.thread, label %comparisonAffinity.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = icmp slt i8 %i.f, 65
  %i.l = select i1 %i.k, i8 %i.c, i8 %i.f
  %i.m = or i8 %i.l, 64
  br label %comparisonAffinity.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !795
  %i.p = and i32 %i.o, 4096
  %.not9.i = icmp eq i32 %i.p, 0
  br i1 %.not9.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !733
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1842
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1998
  %i.w = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef readonly %i.v) ; 4 uses
  %i.x = icmp sgt i8 %i.w, 64
  %i.y = icmp sgt i8 %i.c, 64
  %or.cond.i10.i = and i1 %i.y, %i.x
  br i1 %or.cond.i10.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp samesign ugt i8 %i.w, 66
  %i.aa = icmp samesign ugt i8 %i.c, 66
  %or.cond5.i12.i = or i1 %i.aa, %i.z
  br i1 %or.cond5.i12.i, label %.thread, label %comparisonAffinity.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp slt i8 %i.w, 65
  %i.ac = select i1 %i.ab, i8 %i.c, i8 %i.w
  %i.ad = or i8 %i.ac, 64
  br label %comparisonAffinity.exit

bb.i:                                             ; preds = %bb.e
  %i.ae = icmp eq i8 %i.c, 0
  br i1 %i.ae, label %comparisonAffinity.exit.thread, label %comparisonAffinity.exit

comparisonAffinity.exit:                          ; preds = %bb.i, %bb.d, %bb.h
  %.0.i = phi i8 [ %i.c, %bb.i ], [ %i.m, %bb.d ], [ %i.ad, %bb.h ] ; 2 uses
  %i.af = icmp slt i8 %.0.i, 66
  br i1 %i.af, label %comparisonAffinity.exit.thread, label %bb.j

bb.j:                                             ; preds = %comparisonAffinity.exit
  %i.ag = icmp eq i8 %.0.i, 66
  br i1 %i.ag, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i8 %1, 66
  br label %comparisonAffinity.exit.thread

.thread:                                          ; preds = %bb.c, %bb.g, %bb.j
  %i.ai = icmp sgt i8 %1, 66
  br label %comparisonAffinity.exit.thread

comparisonAffinity.exit.thread:                   ; preds = %bb.i, %bb.g, %bb.c, %comparisonAffinity.exit, %.thread, %bb.k
  %.0.shrunk = phi i1 [ %i.ai, %.thread ], [ %i.ah, %bb.k ], [ true, %comparisonAffinity.exit ], [ true, %bb.c ], [ true, %bb.g ], [ true, %bb.i ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddVirtual(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  %4 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %i.c = load ptr, ptr %0, align 8, !tbaa !2283   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1106 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2284 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2285 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2257
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2318
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2095 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1825 ; 3 uses
  %.not271.i.not = icmp eq ptr %i.f, null         ; 2 uses
  br i1 %.not271.i.not, label %._crit_edge276.i, label %.lr.ph275.i

.lr.ph275.i:                                      ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph275.i
  %.0170273.i = phi ptr [ %i.f, %.lr.ph275.i ], [ %i.bc, %._crit_edge.i ] ; 3 uses
  %.0181272.i = phi i32 [ 0, %.lr.ph275.i ], [ %.1182.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0170273.i, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1284 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.0170273.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1285
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !2056 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.thread.i, %.lr.ph.i
  %.0179269.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ba, %constraintCompatibleWithOuterJoin.exit.thread.i ] ; 6 uses
  %.1182268.i = phi i32 [ %.0181272.i, %.lr.ph.i ], [ %.2183.i, %constraintCompatibleWithOuterJoin.exit.thread.i ] ; 7 uses
  %.0189267.i = phi i32 [ 0, %.lr.ph.i ], [ %i.az, %constraintCompatibleWithOuterJoin.exit.thread.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0179269.i, i64 18 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !2297 ; 3 uses
  %i.ad = and i16 %i.ac, -65
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !2297
  %i.ae = getelementptr inbounds nuw i8, ptr %.0179269.i, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !2387
  %.not212.i = icmp eq i32 %i.af, %i.aa
  br i1 %.not212.i, label %bb.d, label %constraintCompatibleWithOuterJoin.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.0179269.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2308
  %i.ai = and i64 %i.ah, %2
  %.not213.i = icmp eq i64 %i.ai, 0
  br i1 %.not213.i, label %bb.e, label %constraintCompatibleWithOuterJoin.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.0179269.i, i64 20
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !2397
  %i.al = and i16 %i.ak, -2049
  %i.am = icmp ne i16 %i.al, 0
  %i.an = and i16 %i.ac, 128
  %.not214.i = icmp eq i16 %i.an, 0
  %or.cond.i = select i1 %i.am, i1 %.not214.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %constraintCompatibleWithOuterJoin.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ao = load i8, ptr %i.u, align 8, !tbaa !2009 ; 2 uses
  %i.ap = and i8 %i.ao, 88
  %.not215.i = icmp eq i8 %i.ap, 0
  br i1 %.not215.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0179.val.i = load ptr, ptr %.0179269.i, align 8, !tbaa !1287 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0179.val.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !795 ; 2 uses
  %i.as = and i32 %i.ar, 3
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %constraintCompatibleWithOuterJoin.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.0179.val.i, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !733
  %.not5.i.i = icmp eq i32 %i.au, %i.aa
  br i1 %.not5.i.i, label %constraintCompatibleWithOuterJoin.exit.i, label %constraintCompatibleWithOuterJoin.exit.thread.i

constraintCompatibleWithOuterJoin.exit.i:         ; preds = %bb.h
  %i.av = and i8 %i.ao, 24
  %.not6.i.i = icmp ne i8 %i.av, 0
  %i.aw = and i32 %i.ar, 2
  %.not7.i.i = icmp ne i32 %i.aw, 0
  %or.cond.i.not.i = and i1 %.not6.i.i, %.not7.i.i
  br i1 %or.cond.i.not.i, label %constraintCompatibleWithOuterJoin.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.i, %bb.f
  %i.ax = add nsw i32 %.1182268.i, 1
  %i.ay = or i16 %i.ac, 64
  store i16 %i.ay, ptr %i.ab, align 2, !tbaa !2297
  br label %constraintCompatibleWithOuterJoin.exit.thread.i

end_hunk_1
begin_hunk_2_@sqlite3Fts3SegReaderStep:bb.a
  %.0.i273 = phi i32 [ 0, %bb.bl ], [ 1, %sqlite3Fts3PutVarint.exit.i ] ; 2 uses
  %.not20.i.i = icmp ult i8 %i.lr, 2
  br i1 %.not20.i.i, label %fts3ColumnlistCopy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bm
  %i.ls = zext i8 %i.lr to i32
  br label %.lr.ph.i.i274

.lr.ph.i.i274:                                    ; preds = %.lr.ph.i.i274, %.lr.ph.preheader.i.i
  %i.lt = phi i32 [ %i.lx, %.lr.ph.i.i274 ], [ %i.ls, %.lr.ph.preheader.i.i ]
  %.021.i.i = phi ptr [ %i.lu, %.lr.ph.i.i274 ], [ %i.lc, %.lr.ph.preheader.i.i ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1 ; 3 uses
  %i.lv = and i32 %i.lt, 128
  %i.lw = load i8, ptr %i.lu, align 1, !tbaa !733
  %i.lx = zext i8 %i.lw to i32                    ; 2 uses
  %.masked.i.i = and i32 %i.lx, 254
  %i.ly = or i32 %.masked.i.i, %i.lv
  %.not.i32.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i32.i, label %fts3ColumnlistCopy.exit.i, label %.lr.ph.i.i274, !llvm.loop !490

fts3ColumnlistCopy.exit.i:                        ; preds = %.lr.ph.i.i274, %bb.bm, %bb.bl
  %.053.i = phi ptr [ %i.lc, %bb.bl ], [ %i.lc, %bb.bm ], [ %i.lu, %.lr.ph.i.i274 ] ; 2 uses
  %.126.i = phi i32 [ 0, %bb.bl ], [ %.025.i, %bb.bm ], [ %.025.i, %.lr.ph.i.i274 ] ; 2 uses
  %.1.i275 = phi i32 [ 0, %bb.bl ], [ %.0.i273, %bb.bm ], [ %.0.i273, %.lr.ph.i.i274 ] ; 2 uses
  %i.lz = icmp ult ptr %.053.i, %i.le
  br i1 %i.lz, label %.lr.ph.i277, label %._crit_edge.i276

.lr.ph.i277:                                      ; preds = %fts3ColumnlistCopy.exit.i, %fts3ColumnlistCopy.exit48.i
  %.265.i = phi i32 [ %.4.i, %fts3ColumnlistCopy.exit48.i ], [ %.1.i275, %fts3ColumnlistCopy.exit.i ] ; 2 uses
  %.22764.i = phi i32 [ %.429.i, %fts3ColumnlistCopy.exit48.i ], [ %.126.i, %fts3ColumnlistCopy.exit.i ] ; 4 uses
  %.15463.i = phi ptr [ %.0.lcssa.i47.i, %fts3ColumnlistCopy.exit48.i ], [ %.053.i, %fts3ColumnlistCopy.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ma = getelementptr inbounds nuw i8, ptr %.15463.i, i64 1 ; 2 uses
  %i.mb = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.ma, ptr noundef nonnull %i.a)
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds i8, ptr %i.ma, i64 %i.mc ; 4 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !733 ; 2 uses
  %i.mf = icmp eq i8 %i.me, 2
  br i1 %i.mf, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %.lr.ph.i277
  %i.mg = icmp eq i32 %.265.i, 0
  br i1 %i.mg, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.mh = sext i32 %.22764.i to i64
  %i.mi = getelementptr inbounds i8, ptr %i.lb, i64 %i.mh ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %.08.i33.i = phi ptr [ %i.mi, %bb.bo ], [ %i.ml, %bb.bp ] ; 3 uses
  %.0.i34.i = phi i64 [ %.0, %bb.bo ], [ %i.mm, %bb.bp ] ; 2 uses
  %i.mj = trunc i64 %.0.i34.i to i8               ; 2 uses
  %i.mk = or i8 %i.mj, -128
  %i.ml = getelementptr inbounds nuw i8, ptr %.08.i33.i, i64 1 ; 2 uses
  store i8 %i.mk, ptr %.08.i33.i, align 1, !tbaa !733
  %i.mm = lshr i64 %.0.i34.i, 7                   ; 2 uses
  %.not.i35.i = icmp eq i64 %i.mm, 0
  br i1 %.not.i35.i, label %sqlite3Fts3PutVarint.exit36.i, label %bb.bp, !llvm.loop !489

sqlite3Fts3PutVarint.exit36.i:                    ; preds = %bb.bp
  store i8 %i.mj, ptr %.08.i33.i, align 1, !tbaa !733
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = ptrtoint ptr %i.mi to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = add nsw i32 %.22764.i, %i.mq
  br label %bb.bq

bb.bq:                                            ; preds = %sqlite3Fts3PutVarint.exit36.i, %bb.bn
  %.328.i = phi i32 [ %i.mr, %sqlite3Fts3PutVarint.exit36.i ], [ %.22764.i, %bb.bn ] ; 2 uses
  %i.ms = add nsw i32 %.328.i, 1                  ; 2 uses
  %i.mt = sext i32 %.328.i to i64
  %i.mu = getelementptr inbounds i8, ptr %i.lb, i64 %i.mt
  store i8 1, ptr %i.mu, align 1, !tbaa !733
  %i.mv = sext i32 %i.ms to i64
  %i.mw = getelementptr inbounds i8, ptr %i.lb, i64 %i.mv ; 2 uses
  %i.mx = load i64, ptr %i.a, align 8, !tbaa !565
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.08.i37.i = phi ptr [ %i.mw, %bb.bq ], [ %i.na, %bb.br ] ; 3 uses
  %.0.i38.i = phi i64 [ %i.mx, %bb.bq ], [ %i.nb, %bb.br ] ; 2 uses
  %i.my = trunc i64 %.0.i38.i to i8               ; 2 uses
  %i.mz = or i8 %i.my, -128
  %i.na = getelementptr inbounds nuw i8, ptr %.08.i37.i, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.08.i37.i, align 1, !tbaa !733
  %i.nb = lshr i64 %.0.i38.i, 7                   ; 2 uses
  %.not.i39.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i39.i, label %sqlite3Fts3PutVarint.exit40.i, label %bb.br, !llvm.loop !489

sqlite3Fts3PutVarint.exit40.i:                    ; preds = %bb.br
  store i8 %i.my, ptr %.08.i37.i, align 1, !tbaa !733
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.mw to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = add nsw i32 %i.ms, %i.nf                ; 2 uses
  %i.nh = add nsw i32 %i.ng, 1
  %i.ni = sext i32 %i.ng to i64
  %i.nj = getelementptr inbounds i8, ptr %i.lb, i64 %i.ni
  store i8 2, ptr %i.nj, align 1, !tbaa !733
  %.pr55.i = load i8, ptr %i.md, align 1, !tbaa !733
  br label %bb.bs

bb.bs:                                            ; preds = %sqlite3Fts3PutVarint.exit40.i, %.lr.ph.i277
  %i.nk = phi i8 [ %.pr55.i, %sqlite3Fts3PutVarint.exit40.i ], [ %i.me, %.lr.ph.i277 ] ; 2 uses
  %.429.i = phi i32 [ %i.nh, %sqlite3Fts3PutVarint.exit40.i ], [ %.22764.i, %.lr.ph.i277 ] ; 2 uses
  %.4.i = phi i32 [ 1, %sqlite3Fts3PutVarint.exit40.i ], [ %.265.i, %.lr.ph.i277 ] ; 2 uses
  %.not20.i41.i = icmp ult i8 %i.nk, 2
  br i1 %.not20.i41.i, label %fts3ColumnlistCopy.exit48.i, label %.lr.ph.preheader.i42.i

.lr.ph.preheader.i42.i:                           ; preds = %bb.bs
  %i.nl = zext i8 %i.nk to i32
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i, %.lr.ph.preheader.i42.i
  %i.nm = phi i32 [ %i.nq, %.lr.ph.i43.i ], [ %i.nl, %.lr.ph.preheader.i42.i ]
  %.021.i44.i = phi ptr [ %i.nn, %.lr.ph.i43.i ], [ %i.md, %.lr.ph.preheader.i42.i ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.021.i44.i, i64 1 ; 3 uses
  %i.no = and i32 %i.nm, 128
  %i.np = load i8, ptr %i.nn, align 1, !tbaa !733
  %i.nq = zext i8 %i.np to i32                    ; 2 uses
  %.masked.i45.i = and i32 %i.nq, 254
  %i.nr = or i32 %.masked.i45.i, %i.no
  %.not.i46.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i46.i, label %fts3ColumnlistCopy.exit48.i, label %.lr.ph.i43.i, !llvm.loop !490

fts3ColumnlistCopy.exit48.i:                      ; preds = %.lr.ph.i43.i, %bb.bs
  %.0.lcssa.i47.i = phi ptr [ %i.md, %bb.bs ], [ %i.nn, %.lr.ph.i43.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.ns = icmp ult ptr %.0.lcssa.i47.i, %i.le
  br i1 %i.ns, label %.lr.ph.i277, label %._crit_edge.i276, !llvm.loop !5872

._crit_edge.i276:                                 ; preds = %fts3ColumnlistCopy.exit48.i, %fts3ColumnlistCopy.exit.i
  %.227.lcssa.i = phi i32 [ %.126.i, %fts3ColumnlistCopy.exit.i ], [ %.429.i, %fts3ColumnlistCopy.exit48.i ] ; 3 uses
  %.2.lcssa.i = phi i32 [ %.1.i275, %fts3ColumnlistCopy.exit.i ], [ %.4.i, %fts3ColumnlistCopy.exit48.i ]
  %.not31.i = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not31.i, label %sqlite3Fts3FirstFilter.exit, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i276
  %i.nt = add nsw i32 %.227.lcssa.i, 1
  %i.nu = sext i32 %.227.lcssa.i to i64
  %i.nv = getelementptr inbounds i8, ptr %i.lb, i64 %i.nu
  store i8 0, ptr %i.nv, align 1, !tbaa !733
  br label %sqlite3Fts3FirstFilter.exit

sqlite3Fts3FirstFilter.exit:                      ; preds = %._crit_edge.i276, %bb.bt
  %.5.i = phi i32 [ %i.nt, %bb.bt ], [ %.227.lcssa.i, %._crit_edge.i276 ] ; 2 uses
  %.not229 = icmp eq i32 %.5.i, 0
  %i.nw = add nsw i32 %.5.i, %.0175409
  %spec.select235 = select i1 %.not229, i64 %.0174410, i64 %i.fg
  br label %fts3GrowSegReaderBuffer.exit

.preheader543:                                    ; preds = %bb.bk, %.preheader543
  %.08.i = phi ptr [ %i.nz, %.preheader543 ], [ %i.lb, %bb.bk ] ; 3 uses
  %.0.i278 = phi i64 [ %i.oa, %.preheader543 ], [ %.0, %bb.bk ] ; 2 uses
  %i.nx = trunc i64 %.0.i278 to i8                ; 2 uses
  %i.ny = or i8 %i.nx, -128
  %i.nz = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  store i8 %i.ny, ptr %.08.i, align 1, !tbaa !733
  %i.oa = lshr i64 %.0.i278, 7                    ; 2 uses
  %.not.i279 = icmp eq i64 %i.oa, 0
  br i1 %.not.i279, label %sqlite3Fts3PutVarint.exit, label %.preheader543, !llvm.loop !489

sqlite3Fts3PutVarint.exit:                        ; preds = %.preheader543
  store i8 %i.nx, ptr %.08.i, align 1, !tbaa !733
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.lb to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = trunc i64 %i.od to i32
  %i.of = add nsw i32 %.0175409, %i.oe            ; 3 uses
  br i1 %.not227, label %fts3GrowSegReaderBuffer.exit, label %bb.bu

bb.bu:                                            ; preds = %sqlite3Fts3PutVarint.exit
  %i.og = load ptr, ptr %i.aj, align 8, !tbaa !2642
  %i.oh = sext i32 %i.of to i64
  %i.oi = getelementptr inbounds i8, ptr %i.og, i64 %i.oh
  %i.oj = load ptr, ptr %i.e, align 8, !tbaa !741
  %i.ok = sext i32 %i.ke to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oi, ptr align 1 %i.oj, i64 %i.ok, i1 false)
  %i.ol = add nsw i32 %i.of, %i.ke                ; 2 uses
  %i.om = load ptr, ptr %i.aj, align 8, !tbaa !2642
  %i.on = add nsw i32 %i.ol, 1
  %i.oo = sext i32 %i.ol to i64
  %i.op = getelementptr inbounds i8, ptr %i.om, i64 %i.oo
  store i8 0, ptr %i.op, align 1, !tbaa !733
  br label %fts3GrowSegReaderBuffer.exit

fts3SegReaderSort.exit295.thread:                 ; preds = %sqlite3_realloc64.exit.i269, %bb.bi, %bb.be, %bb.bc
  %.4199.ph = phi i32 [ 7, %bb.bi ], [ 7, %sqlite3_realloc64.exit.i269 ], [ 267, %bb.be ], [ 267, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %.thread334

fts3GrowSegReaderBuffer.exit:                     ; preds = %sqlite3Fts3PutVarint.exit, %bb.bu, %sqlite3Fts3FirstFilter.exit, %bb.ba
  %.4179 = phi i32 [ %.0175409, %bb.ba ], [ %i.nw, %sqlite3Fts3FirstFilter.exit ], [ %i.on, %bb.bu ], [ %i.of, %sqlite3Fts3PutVarint.exit ] ; 4 uses
  %.4 = phi i64 [ %.0174410, %bb.ba ], [ %spec.select235, %sqlite3Fts3FirstFilter.exit ], [ %i.fg, %bb.bu ], [ %i.fg, %sqlite3Fts3PutVarint.exit ]
  %i.oq = icmp eq i32 %.0173.lcssa, %.0183.lcssa
  %i.or = sext i1 %i.oq to i32
  %spec.select.i280 = add nsw i32 %.0173.lcssa, %i.or ; 3 uses
  %i.os = icmp sgt i32 %spec.select.i280, 0
  br i1 %i.os, label %.preheader.lr.ph.i282, label %fts3SegReaderSort.exit295

.preheader.lr.ph.i282:                            ; preds = %fts3GrowSegReaderBuffer.exit
  %i.ot = add nsw i32 %spec.select.i280, -1
  %i.ou = zext nneg i32 %i.ot to i64
  br label %.preheader.i283

.preheader.i283:                                  ; preds = %.thread.i287, %.preheader.lr.ph.i282
  %indvars.iv.i284 = phi i64 [ %i.ou, %.preheader.lr.ph.i282 ], [ %indvars.iv.next.i288, %.thread.i287 ] ; 3 uses
  %.02532.in.i285 = phi i32 [ %spec.select.i280, %.preheader.lr.ph.i282 ], [ %.02532.i286, %.thread.i287 ] ; 3 uses
  %.02532.i286 = add nsw i32 %.02532.in.i285, -1
  %i.ov = icmp slt i32 %.02532.in.i285, %.0183.lcssa
  br i1 %i.ov, label %.lr.ph.preheader.i289, label %.thread.i287

.lr.ph.preheader.i289:                            ; preds = %.preheader.i283
  %.phi.trans.insert.i290 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i284
  %.pre.i291 = load ptr, ptr %.phi.trans.insert.i290, align 8, !tbaa !2641
  br label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %bb.bv, %.lr.ph.preheader.i289
  %i.ow = phi ptr [ %.pre.i291, %.lr.ph.preheader.i289 ], [ %i.pd, %bb.bv ]
  %indvars.iv33.i293 = phi i64 [ %indvars.iv.i284, %.lr.ph.preheader.i289 ], [ %indvars.iv.next34.i294, %bb.bv ] ; 2 uses
  %indvars.iv.next34.i294 = add nuw nsw i64 %indvars.iv33.i293, 1 ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next34.i294 ; 3 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !2641
  %i.oz = call i32 %i.n(ptr noundef %i.ow, ptr noundef %i.oy) #58, !callees !483, !inline_history !484
  %i.pa = icmp slt i32 %i.oz, 0
  br i1 %i.pa, label %.thread.i287, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i292
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i293 ; 2 uses
  %i.pc = load ptr, ptr %i.ox, align 8, !tbaa !2641
  %i.pd = load ptr, ptr %i.pb, align 8, !tbaa !2641 ; 2 uses
  store ptr %i.pd, ptr %i.ox, align 8, !tbaa !2641
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !2641
  %i.pe = trunc nuw i64 %indvars.iv.next34.i294 to i32
  %i.pf = icmp sgt i32 %spec.select.i239, %i.pe
  br i1 %i.pf, label %.lr.ph.i292, label %.thread.i287, !llvm.loop !479

.thread.i287:                                     ; preds = %bb.bv, %.lr.ph.i292, %.preheader.i283
  %i.pg = icmp sgt i32 %.02532.in.i285, 1
  %indvars.iv.next.i288 = add nsw i64 %indvars.iv.i284, -1
  br i1 %i.pg, label %.preheader.i283, label %fts3SegReaderSort.exit295, !llvm.loop !480

fts3SegReaderSort.exit295:                        ; preds = %.thread.i287, %fts3GrowSegReaderBuffer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  %i.ph = load ptr, ptr %i.i, align 8, !tbaa !2641 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 112
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !2671
  %.not221 = icmp eq ptr %i.pj, null
  br i1 %.not221, label %._crit_edge412, label %.lr.ph411, !llvm.loop !5873

._crit_edge412:                                   ; preds = %fts3SegReaderSort.exit295
  %i.pk = icmp sgt i32 %.4179, 0
  br i1 %i.pk, label %bb.bw, label %._crit_edge412.thread

bb.bw:                                            ; preds = %._crit_edge412
  %i.pl = zext nneg i32 %.4179 to i64             ; 2 uses
  %i.pm = add nuw nsw i64 %i.pl, 20               ; 2 uses
  %i.pn = load i64, ptr %i.ai, align 8, !tbaa !2678
  %i.po = icmp sgt i64 %i.pm, %i.pn
  %.pre464 = load ptr, ptr %i.aj, align 8, !tbaa !2642 ; 2 uses
  br i1 %i.po, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.pp = shl nuw nsw i64 %i.pm, 1                ; 2 uses
  store i64 %i.pp, ptr %i.ai, align 8, !tbaa !2678
  %i.pq = call i32 @sqlite3_initialize(), !inline_history !5871
  %.not.i.i298 = icmp eq i32 %i.pq, 0
  br i1 %.not.i.i298, label %sqlite3_realloc64.exit.i299, label %.thread334

sqlite3_realloc64.exit.i299:                      ; preds = %bb.bx
  %i.pr = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre464, i64 noundef %i.pp), !inline_history !5871 ; 3 uses
  %.not.i300 = icmp eq ptr %i.pr, null
  br i1 %.not.i300, label %.thread334, label %bb.by

bb.by:                                            ; preds = %sqlite3_realloc64.exit.i299
  store ptr %i.pr, ptr %i.aj, align 8, !tbaa !2642
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bw, %bb.by
  %i.ps = phi ptr [ %.pre464, %bb.bw ], [ %i.pr, %bb.by ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.pt, i8 0, i64 20, i1 false)
  %i.pu = load ptr, ptr %i.aj, align 8, !tbaa !2642
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.pu, ptr %i.pv, align 8, !tbaa !2679
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %.4179, ptr %i.pw, align 8, !tbaa !2677
  br label %.thread345

.thread345:                                       ; preds = %.thread492, %bb.x, %.thread490, %bb.bz
  %.10.ph = phi i32 [ 100, %bb.bz ], [ 7, %.thread492 ], [ 100, %bb.x ], [ 100, %.thread490 ]
  store i32 %.0183.lcssa, ptr %i.x, align 4, !tbaa !2674
  br label %.thread334

._crit_edge412.thread:                            ; preds = %fts3SegReaderSort.exit254, %._crit_edge412
  store i32 %.0183.lcssa, ptr %i.x, align 4, !tbaa !2674
  br label %bb.b, !llvm.loop !5874

.thread334:                                       ; preds = %bb.l, %bb.m, %fts3SegReaderSort.exit, %bb.c, %sqlite3_realloc64.exit.i299, %bb.bx, %fts3SegReaderSort.exit295.thread, %.thread345, %bb.a
  %.10205 = phi i32 [ 0, %bb.a ], [ %i.aq, %bb.c ], [ %.10.ph, %.thread345 ], [ %.4199.ph, %fts3SegReaderSort.exit295.thread ], [ 7, %sqlite3_realloc64.exit.i299 ], [ 7, %bb.bx ], [ 0, %fts3SegReaderSort.exit ], [ 0, %bb.m ], [ 0, %bb.l ]
  ret i32 %.10205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts3SegReaderDoclistCmpRev(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2671
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2671
  %i.g = icmp eq ptr %i.f, null
  %.neg = sext i1 %i.g to i32
  %i.h = add nsw i32 %.neg, %i.d                  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2680 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2680 ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %1, align 8, !tbaa !2651
  %i.p = load i32, ptr %0, align 8, !tbaa !2651
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = icmp slt i64 %i.k, %i.m
  %i.s = select i1 %i.r, i32 1, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.h, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts3SegReaderDoclistCmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2671
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2671
  %i.g = icmp eq ptr %i.f, null
  %.neg = sext i1 %i.g to i32
  %i.h = add nsw i32 %.neg, %i.d                  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2680 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2680 ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %1, align 8, !tbaa !2651
  %i.p = load i32, ptr %0, align 8, !tbaa !2651
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = icmp sgt i64 %i.k, %i.m
  %i.s = select i1 %i.r, i32 1, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.h, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3SegReaderFirstDocid(i8 %.463.val, ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %.not = icmp eq i8 %.463.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2652
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
end_hunk_2
begin_hunk_3_@sqlite3Fts3MsrIncrNext:bb.a
  %or.cond97 = and i1 %i.z, %i.q
  br i1 %or.cond97, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %fts3SegReaderNextDocid.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %fts3SegReaderNextDocid.exit ], [ 1, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2641 ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2671 ; 3 uses
  %.not49 = icmp eq ptr %i.ad, null
  br i1 %.not49, label %.critedge.thread.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2680
  %i.ag = icmp eq i64 %i.af, %i.x
  br i1 %i.ag, label %bb.e, label %.critedge.thread.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !741
  %i.ah = load i8, ptr %i.i, align 1, !tbaa !2672
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2652
  %.not54.i = icmp eq ptr %i.aj, null
  br i1 %.not54.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i8 0, ptr %i.b, align 1, !tbaa !733
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2664
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2665
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  call fastcc void @sqlite3Fts3DoclistPrev(i32 noundef 0, ptr noundef %i.al, i32 noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.b), !inline_history !2681
  %i.ap = load i8, ptr %i.b, align 1, !tbaa !733
  %.not61.i = icmp eq i8 %i.ap, 0
  %i.aq = load ptr, ptr %i.a, align 8
  %storemerge.i = select i1 %.not61.i, ptr %i.aq, ptr null
  store ptr %storemerge.i, ptr %i.ac, align 8, !tbaa !2671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %fts3SegReaderNextDocid.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2664 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2665
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 52 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.lcssa7681.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa76.i, %bb.k ] ; 3 uses
  %.041.i = phi i8 [ 0, %bb.h ], [ %.1.lcssa.i, %bb.k ] ; 2 uses
  %i.bb = load i8, ptr %.lcssa7681.i, align 1, !tbaa !733 ; 2 uses
  %i.bc = or i8 %i.bb, %.041.i
  %.not5577.i = icmp eq i8 %i.bc, 0
  br i1 %.not5577.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.bd = phi i8 [ %i.bh, %.lr.ph.i ], [ %i.bb, %bb.i ]
  %i.be = phi ptr [ %i.bf, %.lr.ph.i ], [ %.lcssa7681.i, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  %i.bg = and i8 %i.bd, -128                      ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !733 ; 2 uses
  %i.bi = or i8 %i.bh, %i.bg
  %.not55.i = icmp eq i8 %i.bi, 0
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !485

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.lcssa76.i = phi ptr [ %.lcssa7681.i, %bb.i ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i8 [ %.041.i, %bb.i ], [ %i.bg, %.lr.ph.i ]
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !2648
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !2647
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !2669
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  %i.bp = icmp ult ptr %.lcssa76.i, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = call fastcc i32 @fts3SegReaderIncrRead(ptr noundef nonnull %i.ab), !inline_history !2681 ; 2 uses
  %.not56.i = icmp eq i32 %i.bq, 0
  br i1 %.not56.i, label %bb.i, label %.critedge.loopexit.thread

bb.l:                                             ; preds = %bb.j, %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa76.i, i64 1 ; 5 uses
  store ptr %i.br, ptr %i.a, align 8, !tbaa !741
  %i.bs = icmp ult ptr %i.br, %i.ax
  br i1 %i.bs, label %.lr.ph86.preheader.i, label %.critedge.i

.lr.ph86.preheader.i:                             ; preds = %bb.l
  %.promoted97.i = ptrtoaddr ptr %i.br to i64
  %i.bt = add i64 %i.aw, %i.at
  %i.bu = sub i64 %i.bt, %.promoted97.i
  %scevgep.i = getelementptr i8, ptr %i.br, i64 %i.bu
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.m, %.lr.ph86.preheader.i
  %i.bv = phi ptr [ %i.by, %bb.m ], [ %i.br, %.lr.ph86.preheader.i ] ; 6 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph86.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.by, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph86.i, !llvm.loop !486

.critedge.i:                                      ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.ac, align 8, !tbaa !2671
  br label %fts3SegReaderNextDocid.exit

bb.n:                                             ; preds = %.lr.ph86.i
  store ptr %i.bv, ptr %i.a, align 8
  br i1 %i.bk, label %fts3SegReaderRequire.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = add i64 %i.bz, 10
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !2647
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = load i32, ptr %i.ba, align 4, !tbaa !2669
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp sgt i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.p, label %fts3SegReaderRequire.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ch = call fastcc i32 @fts3SegReaderIncrRead(ptr noundef nonnull %i.ab), !inline_history !2682 ; 2 uses
  %i.ci = load ptr, ptr %i.ay, align 8, !tbaa !2648
  %i.cj = icmp ne ptr %i.ci, null
  %i.ck = icmp eq i32 %i.ch, 0                    ; 2 uses
  %or.cond.i.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i.i, label %bb.o, label %fts3SegReaderRequire.exit.i, !llvm.loop !481

fts3SegReaderRequire.exit.i:                      ; preds = %bb.p
  br i1 %i.ck, label %fts3SegReaderRequire.exit.thread.i, label %.critedge.loopexit.thread

fts3SegReaderRequire.exit.thread.i:               ; preds = %bb.o, %fts3SegReaderRequire.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.cl = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.c), !inline_history !2681
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 %i.cm
  store ptr %i.cn, ptr %i.ac, align 8, !tbaa !2671
  %i.co = load i8, ptr %i.i, align 1, !tbaa !2672
  %.not59.i = icmp eq i8 %i.co, 0
  %i.cp = load i64, ptr %i.ae, align 8, !tbaa !2680
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !565 ; 2 uses
  %i.cr = sub i64 0, %i.cq
  %.sink.p.i = select i1 %.not59.i, i64 %i.cq, i64 %i.cr
  %.sink.i = add i64 %.sink.p.i, %i.cp
  store i64 %.sink.i, ptr %i.ae, align 8, !tbaa !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %fts3SegReaderNextDocid.exit

.critedge.loopexit.thread:                        ; preds = %fts3SegReaderRequire.exit.i, %bb.k
  %.145.i.ph = phi i32 [ %i.bq, %bb.k ], [ %i.ch, %fts3SegReaderRequire.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.thread71

fts3SegReaderNextDocid.exit:                      ; preds = %bb.g, %.critedge.i, %fts3SegReaderRequire.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cs = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.cs, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !6171

.critedge.loopexit:                               ; preds = %fts3SegReaderNextDocid.exit
  %i.ct = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.c
  br i1 %i.z, label %.critedge.thread, label %.thread71

.critedge.thread.loopexit:                        ; preds = %.lr.ph, %bb.d
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.loopexit, %.critedge.thread.loopexit, %.critedge
  %.089 = phi i32 [ 1, %.critedge ], [ %i.ct, %.critedge.loopexit ], [ %i.cu, %.critedge.thread.loopexit ] ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !2639  ; 3 uses
  %i.cw = icmp eq i32 %.089, %i.g
  %i.cx = sext i1 %i.cw to i32
  %spec.select.i = add nsw i32 %.089, %i.cx       ; 3 uses
  %i.cy = icmp sgt i32 %spec.select.i, 0
  br i1 %i.cy, label %.preheader.lr.ph.i, label %fts3SegReaderSort.exit

.preheader.lr.ph.i:                               ; preds = %.critedge.thread
  %i.cz = add nsw i32 %spec.select.i, -1
  %i.da = zext nneg i32 %i.cz to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.da, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.02532.in.i = phi i32 [ %spec.select.i, %.preheader.lr.ph.i ], [ %.02532.i, %.thread.i ] ; 3 uses
  %.02532.i = add nsw i32 %.02532.in.i, -1
  %i.db = icmp slt i32 %.02532.in.i, %i.g
  br i1 %i.db, label %.lr.ph.preheader.i, label %.thread.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2641
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.q, %.lr.ph.preheader.i
  %i.dc = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.dj, %bb.q ]
  %indvars.iv33.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next34.i, %bb.q ] ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next34.i ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2641
  %i.df = call i32 %i.k(ptr noundef %i.dc, ptr noundef %i.de) #58, !callees !483, !inline_history !484
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i54
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv33.i ; 2 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !2641
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !2641 ; 2 uses
  store ptr %i.dj, ptr %i.dd, align 8, !tbaa !2641
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !2641
  %i.dk = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.dl = icmp sgt i32 %i.r, %i.dk
  br i1 %i.dl, label %.lr.ph.i54, label %.thread.i, !llvm.loop !479

.thread.i:                                        ; preds = %bb.q, %.lr.ph.i54, %.preheader.i
  %i.dm = icmp sgt i32 %.02532.in.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.dm, label %.preheader.i, label %fts3SegReaderSort.exit, !llvm.loop !480

fts3SegReaderSort.exit:                           ; preds = %.thread.i, %.critedge.thread
  %i.dn = load i32, ptr %i.e, align 4, !tbaa !570 ; 5 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %bb.r, label %bb.w

bb.r:                                             ; preds = %fts3SegReaderSort.exit
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !2641
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2652
  %.not51 = icmp eq ptr %i.dr, null
  br i1 %.not51, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !741
  %narrow = add nuw i32 %i.dn, 1                  ; 2 uses
  %i.dt = zext i32 %narrow to i64                 ; 3 uses
  %i.du = add nuw nsw i64 %i.dt, 20
  %i.dv = load i64, ptr %i.s, align 8, !tbaa !2678
  %i.dw = icmp sgt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %._crit_edge.i55

._crit_edge.i55:                                  ; preds = %bb.s
  %.pre.i57 = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dx = shl i32 %narrow, 1
  %i.dy = add i32 %i.dx, 20
  %i.dz = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  %i.ea = sext i32 %i.dy to i64                   ; 2 uses
  %i.eb = call i32 @sqlite3_initialize(), !inline_history !482
  %.not.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %.thread71

sqlite3_realloc64.exit.i:                         ; preds = %bb.t
  %i.ec = call fastcc ptr @sqlite3Realloc(ptr noundef %i.dz, i64 noundef %i.ea), !inline_history !482 ; 3 uses
  %.not.i59 = icmp eq ptr %i.ec, null
  br i1 %.not.i59, label %.thread71, label %bb.u

bb.u:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.ec, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  store i64 %i.ea, ptr %i.s, align 8, !tbaa !2678
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i55
  %i.ed = phi ptr [ %.pre.i57, %._crit_edge.i55 ], [ %i.ec, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ed, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ds, i64 range(i64 -2147483648, 2147483649) %i.dt, i1 false)
  %i.ee = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ef, i8 0, i64 20, i1 false)
  %i.eg = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !741
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r, %fts3SegReaderSort.exit
  %i.eh = load i32, ptr %i.t, align 8, !tbaa !2804 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.x, label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !741 ; 4 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = sext i32 %i.dn to i64                   ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %sqlite3Fts3GetVarint32.exit.i, %bb.x
  %.048.i = phi i32 [ 0, %bb.x ], [ %.149.i, %sqlite3Fts3GetVarint32.exit.i ]
  %.040.i = phi ptr [ %i.ej, %bb.x ], [ %.1.lcssa.i61, %sqlite3Fts3GetVarint32.exit.i ] ; 2 uses
  %.038.i = phi i32 [ %i.dn, %bb.x ], [ %i.fa, %sqlite3Fts3GetVarint32.exit.i ]
  %.037.i = phi ptr [ %i.ej, %bb.x ], [ %i.gj, %sqlite3Fts3GetVarint32.exit.i ] ; 5 uses
  %i.en = icmp ult ptr %.037.i, %i.em
  br i1 %i.en, label %.lr.ph.preheader.i62, label %.critedge.i60

.lr.ph.preheader.i62:                             ; preds = %bb.y
  %.03766.i = ptrtoaddr ptr %.037.i to i64
  %i.eo = getelementptr i8, ptr %.037.i, i64 %i.ek
  %scevgep.i63 = getelementptr i8, ptr %i.eo, i64 %i.el
  %i.ep = sub i64 0, %.03766.i
  %scevgep67.i = getelementptr i8, ptr %scevgep.i63, i64 %i.ep ; 2 uses
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.z, %.lr.ph.preheader.i62
  %.03661.i = phi i32 [ %i.eu, %bb.z ], [ 0, %.lr.ph.preheader.i62 ]
  %.160.i = phi ptr [ %i.et, %bb.z ], [ %.037.i, %.lr.ph.preheader.i62 ] ; 3 uses
  %i.eq = load i8, ptr %.160.i, align 1, !tbaa !733
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %.masked.i = and i32 %i.er, 254
  %i.es = or i32 %.masked.i, %.03661.i
  %.not.i65 = icmp eq i32 %i.es, 0
  br i1 %.not.i65, label %.critedge.i60, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i64
  %i.et = getelementptr inbounds nuw i8, ptr %.160.i, i64 1 ; 2 uses
  %i.eu = and i32 %i.er, 128
  %exitcond.not.i66 = icmp eq ptr %i.et, %scevgep67.i
  br i1 %exitcond.not.i66, label %.critedge.i60, label %.lr.ph.i64, !llvm.loop !487

.critedge.i60:                                    ; preds = %bb.z, %.lr.ph.i64, %bb.y
  %.1.lcssa.i61 = phi ptr [ %.037.i, %bb.y ], [ %.160.i, %.lr.ph.i64 ], [ %scevgep67.i, %bb.z ] ; 8 uses
  %i.ev = icmp eq i32 %i.eh, %.048.i
  %i.ew = ptrtoint ptr %.1.lcssa.i61 to i64       ; 2 uses
  %i.ex = ptrtoint ptr %.040.i to i64             ; 2 uses
  br i1 %i.ev, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge.i60
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  br label %.loopexit.i

bb.ab:                                            ; preds = %.critedge.i60
  %.neg.i = sub i64 %i.ex, %i.ew
  %.neg45.i = trunc i64 %.neg.i to i32
  %i.fa = add i32 %.038.i, %.neg45.i              ; 3 uses
  %i.fb = icmp slt i32 %i.fa, 1
  br i1 %i.fb, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !733 ; 3 uses
  %.not46.i = icmp sgt i8 %i.fd, -1
  br i1 %.not46.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 2
  %i.ff = and i8 %i.fd, 127
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = load i8, ptr %i.fe, align 1, !tbaa !733 ; 2 uses
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 7
  %i.fk = or disjoint i32 %i.fj, %i.fg            ; 2 uses
  %i.fl = icmp sgt i8 %i.fh, -1
  br i1 %i.fl, label %sqlite3Fts3GetVarint32.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 3
  %i.fn = and i32 %i.fk, 16383
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !733 ; 2 uses
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 14
  %i.fr = or disjoint i32 %i.fq, %i.fn            ; 2 uses
  %i.fs = icmp sgt i8 %i.fo, -1
  br i1 %i.fs, label %sqlite3Fts3GetVarint32.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 4
  %i.fu = and i32 %i.fr, 2097151
  %i.fv = load i8, ptr %i.ft, align 1, !tbaa !733 ; 2 uses
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 21
  %i.fy = or disjoint i32 %i.fx, %i.fu            ; 2 uses
  %i.fz = icmp sgt i8 %i.fv, -1
  br i1 %i.fz, label %sqlite3Fts3GetVarint32.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_3
